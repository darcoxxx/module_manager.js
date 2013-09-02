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

  describe "#add", ->
    class FakeModule
      constructor: (@name) ->

    it 'add new module', ->
      moduleOne = new FakeModule("one")
      expect(@subject._modules.length).toEqual(0)

      @subject.add(moduleOne)
      expect(@subject._modules[0]).toEqual(moduleOne)

    it 'not add module when was added before', ->
      moduleOne = new FakeModule("one")
      expect(@subject._modules.length).toEqual(0)
      @subject.add(moduleOne)
      expect(@subject._modules.length).toEqual(1)
      expect(@subject._modules[0]).toEqual(moduleOne)

      @subject.add(moduleOne)
      expect(@subject._modules.length).toEqual(1)
