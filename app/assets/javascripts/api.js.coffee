#= require 'angular-resource'

api = angular.module 'api', [
  'ngResource'
]

api.factory 'Trail', ['$resource', ($resource) ->
  $resource '/trails/:id.json'
]
