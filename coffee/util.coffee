{Iconv}  = require "iconv"
iconvUtf8 = new Iconv('EUC-JP', 'UTF-8//TRANSLIT//IGNORE')


###
 XMLをEUC-JPからUTF-8へ変換したのち、JSONへ変換する
###
exports.xml2json = (xml) ->
  xml = iconvUtf8.convert(xml).toString()
  JSON.parse(require('xml2json').toJson(xml))


###
 タイムスタンプを生成する
###
exports.getTimestamp = ->

  d = new Date()
  year  = d.getFullYear()
  month = d.getMonth() + 1
  day   = d.getDate()
  hour  = d.getHours()
  min   = d.getMinutes()
  sec   = d.getSeconds()

  # format
  month = if month < 10 then '0' + month else month
  day   = if day   < 10 then '0' + day   else day
  hour  = if hour  < 10 then '0' + hour  else hour
  min   = if min   < 10 then '0' + min   else min
  sec   = if sec   < 10 then '0' + sec   else sec

  timestamp = "#{year}-#{month}-#{day} #{hour}:#{min}:#{sec}"
