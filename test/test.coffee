'use strict'
log = (msg) -> console.log msg

describe "Self test", ->

  it "is ok", -> expect(true).toBe(true)

describe "ModuleManager", ->
  beforeEach ->
    @subject = new window.ModuleManager()
  
  it '#version is 1.0.0', ->
    expect(@subject.version).toEqual('1.0.0')

  it '#name is ModuleManager', ->
    expect(@subject.name).toEqual('ModuleManager')

  it '#_modules array of modules, empty at initialization', ->
    expect(@subject._modules).toEqual([])