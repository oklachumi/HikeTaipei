controllers = angular.module 'homeControllers', []

controllers.controller 'HomeCtrl', ['$scope', 'Trail', ($scope, Trail) ->
  $scope.trails = Trail.query()
]
