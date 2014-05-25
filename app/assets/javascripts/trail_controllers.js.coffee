controllers = angular.module 'trailControllers', []

controllers.controller 'TrailCtrl', ['$scope', '$routeParams', '$location', '$sce', 'Trail',
($scope, $routeParams, $location, $sce, Trail) ->
  $scope.trail = Trail.get id: $routeParams.id

  $scope.trail.$promise.then (trail) ->
    $scope.trail.weather_url = $sce.trustAsResourceUrl(trail.weather_url)
    $scope.map =
      center:
        latitude  : trail.lat
        longitude : trail.lng
      zoom: 15

  $scope.backToHome = ->
    $location.url '/'
]
