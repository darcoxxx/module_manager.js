'use strict'
log = (msg) -> console.log msg

describe "Self test", ->

  it "is ok", -> expect(true).toBe(true)

describe "ModuleManager", ->
  beforeEach ->
    @subject = new window.ModuleManager()
  
  it 'version is 1.0.0', ->
    expect(@subject.version).toEqual('1.0.0')

