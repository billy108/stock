var app = angular.module("stock", ["ngRoute", "myCtrl"]);

app.config(function ($routeProvider) {
  $routeProvider
    .when("/", {
      templateUrl: "./view/start.html",
      controller: "startCtrl"
    });
});
