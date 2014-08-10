# node-dmm [![Build Status](https://travis-ci.org/ujiro99/node-dmm.svg)](https://travis-ci.org/ujiro99/node-dmm) [![NPM version](https://badge.fury.io/js/dmm.svg)](http://badge.fury.io/js/dmm)
------

Node.js Client for DMM Web Service API 2.0.

## Installation

  npm install dmm --save

## Usage

Sample.

```js
var dmm = require('dmm');

params = {
  api_id: your api_id
  affiliate_id: your affiliate_id
  site: 'DMM.co.jp'
  service: ''
  floor: ''
  keyword: ''
}

dmm.search(params, function(err, res) {
  if (err) { return; }

  console.log(res.items.item);

});
```

## License

MIT License
