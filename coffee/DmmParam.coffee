validator = require('validator')
util      = require('./util')
define    = require('./define')
ecl       = require('./ecl')


class ParameterError extends Error
  constructor: (message)->
    @message = "ParameterError: #{message}"


class DmmParam

  @param = define.param

  # optional parameter
  paramValidator =
    api_id:       (value) -> validator.isAscii(value)
    affiliate_id: (value) -> validator.isAscii(value)
    service:      (value) -> validator.isLength(value, 0, 20)
    floor:        (value) -> validator.isLength(value, 0, 20)
    hits:         (value) -> validator.isInt(value) and value >= 1 and value <= 100
    offset:       (value) -> validator.isInt(value) and value >= 1
    sort:         (value) -> validator.isLength(value, 0, 20)
    keyword:      (value) -> validator.isLength(value, 0, 100)
    site:         (value) -> validator.matches(value, /(DMM.com|DMM.co.jp)/)

  # parameter key list
  validKeys = []
  for key of paramValidator then validKeys.push key

  # if error exists, rise an exception
  checkParam = (key, value) ->
    if not validator.isIn(key, validKeys) then return false
    if not paramValidator[key](value) then return false
    return true

  ###
   build query
  ###
  @buildQuery: (optionalParams) ->

    # validate
    for k, v of optionalParams when v?
      if not checkParam(k, v)
        throw new ParameterError("{ #{k}: #{v} }")

    # merge
    param = {}
    for k, v of @param then param[k] = v
    for k, v of optionalParams then param[k] = v if v?

    # encode
    param.timestamp = encodeURIComponent util.getTimestamp()
    if param.keyword? && param.keyword.length isnt 0
      param.keyword = ecl.EscapeEUCJP param.keyword

    # build
    query = define.URL + '?'
    for k, v of param
      if( v? && v.length isnt 0 )
        query += k + '=' + v + '&'
    query = query.slice(0, -1)

    return query


module.exports = DmmParam
