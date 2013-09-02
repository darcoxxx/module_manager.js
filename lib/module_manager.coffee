class window.ModuleManager
  version: '1.0.0'
  name: 'ModuleManager'
  _modules: []
  constructor: ->
    @_modules = []

  add: (module) ->
    @_modules.push module unless @isPresent(module.name)

  isPresent: (moduleName) -> 
    (return m if m.name is moduleName) for m in @_modules
    null