var app = angular.module("lista2", []);
app.controller("Minhalista2", function ($scope) {
  $scope.abrirGlobo = function () {
    window.open("https://www.globo.com");
  };
  $scope.abrirTerra = function () {
    window.open("https://www.terra.com");
  };
  $scope.abrirUol = function () {
    window.open("https://www.uol.com");
  };
});
