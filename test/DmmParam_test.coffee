chai     = require 'chai'
expect   = chai.expect
DmmParam = require '../lib/DmmParam'
ecl      = require '../lib/ecl'

describe 'DmmParam.coffee のテスト', ->

  describe 'buildQuery(params)', ->

    it 'site: DMM.co.jp', ->
      param =
        site: 'DMM.co.jp'
      uri = DmmParam.buildQuery param
      expect(uri).to.contain('DMM.co.jp')

    it 'set all parameters.', ->
      param =
        api_id:       "apiaccount"
        affiliate_id: "affiliate-999"
        operation:    "ItemList"
        version:      "2.00"
        timestamp:    "2012-01-13 14:08:16"
        site:         "DMM.com"
        service:      "lod"
        floor:        "akb48"
        hits:         "1"
        offset:       "1"
        sort:         "+price"
        keyword:      "ハリーポッター"
      uri = DmmParam.buildQuery param
      for k, v of param
        # encode
        if k.match(/timestamp/)
          v = encodeURIComponent(v)
        else if k.match(/keyword/)
          v = ecl.EscapeEUCJP(v)
        # check
        expect(uri).to.contain(k + "=" + v)

    it 'raises an exception, when hits exceeds 100', ->
      param =
        hits: 101
      expect(() -> DmmParam.buildQuery(param)).to.throw(Error)

    it 'raises an exception, when hits is less than 1', ->
      param =
        hits: 0
      expect(() -> DmmParam.buildQuery(param)).to.throw(Error)
