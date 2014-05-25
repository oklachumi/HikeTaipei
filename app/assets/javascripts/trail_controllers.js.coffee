controllers = angular.module 'trailControllers', []

controllers.controller 'TrailCtrl', ['$scope', '$routeParams', '$location', 'Trail',
($scope, $routeParams, $location, Trail) ->
  $scope.trail = Trail.get id: $routeParams.id

  $scope.trail.$promise.then (trail) ->
    $scope.map =
      center:
        latitude  : trail.lat
        longitude : trail.lng
      zoom: 15

  $scope.backToHome = ->
    $location.url '/'
]
