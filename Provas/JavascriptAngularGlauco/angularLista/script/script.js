var app = angular.module("lista", []);
app.controller("Minhalista", function ($scope) {
  $scope.url = "google";
  $scope.abrirLink = function () {
    window.open("https://www." + $scope.url + ".com");
  };
});
