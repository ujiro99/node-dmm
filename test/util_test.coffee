fs     = require('fs')
chai   = require('chai')
expect = chai.expect
util   = require('../lib/util')

describe 'util.coffee のテスト', ->

  describe 'getTimestamp のテスト', ->
    it 'getTimestamp()', ->
      timestamp = util.getTimestamp()
      expect(timestamp).to.match(/^\d{4}-\d{2}-\d{2} \d{2}:\d{2}:\d{2}$/)

  describe 'xml2json のテスト', ->

    it 'rental ppr_cd やくしまるえつこ', ->
      xml = fs.readFileSync('./test/data/response.xml')
      json = util.xml2json xml
      expect(json).to.have.keys('response')
      expect(json.response.result.items.item[0].title).to.equal('RADIO ONSEN EUTOPIA/やくしまるえつこ')
      expect(json.response.result.items.item[19].title).to.equal('Keiichi Suzuki:Music for Films and Games/Original Soundtracks/鈴木慶一')

