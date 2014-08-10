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

