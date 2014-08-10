request  = require('request')
status   = require('http-status')
util     = require('./util')
DmmParam = require('./DmmParam')


# called when received search results
onReceiveResponse = (callback) ->
  (error, response, body) ->
    if error
      callback(error, null)
      return

    if response.statusCode isnt status.OK
      error = new Error('http status error')
      callback(error, null)
      return

    parseResponse(body, callback)


# parse search results
parseResponse = (xml, callback) ->
  data = util.xml2json xml

  if data.response.result.errors
    error = data.response.result.errors
    callback(error, data.response.result)
    return

  callback(null, data.response.result)


# execute search
search = (params, callback) ->
  try
    uri = DmmParam.buildQuery params
  catch e
    callback(e, null)

  request
    uri: uri
    encoding: null
  , onReceiveResponse(callback)


# execute
exports.search = search
