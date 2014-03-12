# Power DMS Demo

This is web project build for Power DMS as a demo.

## Getting started to run locally

1. Clone the project from GitHub

2. Replace `"proxyURL": "http://power-dms-demo.herokuapp.com"` from package.json to `"proxyURL": "http://0.0.0.0:3333"`
3. Replace `host: 'http://power-dms-demo.herokuapp.com'` from app/adapters/application.coffee to `host: 'http://0.0.0.0:3333'`

4. `npm install`
5. `grunt server` 