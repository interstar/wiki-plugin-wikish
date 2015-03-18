# build time tests for wikish plugin
# see http://mochajs.org/

wikish = require '../client/wikish'
expect = require 'expect.js'

describe 'wikish plugin', ->

  describe 'expand', ->

    it 'can italicise', ->
      result = wikish.expand """hello ''world''"""
      expect(result).to.be 'hello <i>world</i>'
      
    it 'can bold', ->
      result = wikish.expand """hello '''world'''"""
      expect(result).to.be 'hello <b>world</b>'
      
