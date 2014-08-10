chai   = require('chai')
expect = chai.expect
param  = require('./data/param')
dmm    = require('../index')

describe 'index.js のテスト', ->

  describe 'search(params, callback)', ->

    it 'fail if not set auth.', (done) ->
      params =
        site: 'DMM.co.jp'
        service: ''
        floor: ''
        keyword: ''
      dmm.search params, (err, res) ->
        expect(err).to.be.exist
        done()

    it 'success', (done) ->
      params =
        api_id: param.api_id
        affiliate_id: param.affiliate_id
        site: 'DMM.co.jp'
        service: ''
        floor: ''
        keyword: ''
      dmm.search params, (err, res) ->
        expect(err).to.be.null
        expect(res).to.exist
        done()
