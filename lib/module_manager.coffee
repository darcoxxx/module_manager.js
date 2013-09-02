class window.ModuleManager
  version: '1.0.0'
  name: 'ModuleManager'
  _modules: []
  constructor: ->
    @_modules = []

  add: (module) ->
    @_modules.push module unless @isPresent(module.name)

  isPresent: (moduleName) -> @get(moduleName) isnt null

  get: (moduleName) ->
    (return m if m.name is moduleName) for m in @_modules
    null

  clear: () ->
  	@_modules = []

#find index of module by name | should be in method name _getIndex
#remove element from array by method splice | should be in method remove
