chai     = require 'chai'
expect   = chai.expect
DmmParam = require '../lib/DmmParam'

describe 'DmmParam.coffee のテスト', ->

  describe 'buildQuery(params)', ->

    it 'site: DMM.co.jp', ->
      param =
        site: 'DMM.co.jp'
      uri = DmmParam.buildQuery param
      expect(uri).to.contain('DMM.co.jp')

    it 'raises an exception, when hits exceeds 100', ->
      param =
        hits: 101
      expect(() -> DmmParam.buildQuery(param)).to.throw(Error)

    it 'raises an exception, when hits is less than 1', ->
      param =
        hits: 0
      expect(() -> DmmParam.buildQuery(param)).to.throw(Error)
