controllers = angular.module 'trailControllers', []

controllers.controller 'TrailCtrl', ['$scope', '$routeParams', '$location', 'Trail',
($scope, $routeParams, $location, Trail) ->
  $scope.trail = Trail.get id: $routeParams.id

  $scope.backToHome = ->
    $location.url '/'
]
