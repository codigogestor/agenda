var appList = angular.module('agendaContatos', []);
appList.controller('contatos', function($scope, $http) {
   $http.get(basePath + "contact?list=contact")
   .then(function (response) {$scope.names = response.data.records;});
});
