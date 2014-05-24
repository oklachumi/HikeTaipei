controllers = angular.module 'homeControllers', []

controllers.controller 'HomeCtrl', ['$scope', 'Trail', ($scope, Trail) ->
  window.navigator.geolocation.getCurrentPosition (position) ->
    coords = position.coords
    $scope.trails = Trail.query(
      lat: coords.latitude
      lng: coords.longitude
    )
]
