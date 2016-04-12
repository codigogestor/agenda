var appList = angular.module('agendaContatos', []);
appList.controller('contatos', function($scope, $http) {
   $http.get(basePath + "contact?list=contact")
   .then(function (response) {$scope.names = response.data.records;});
});

var appSet = angular.module('setContact',[]);
appSet.controller('ctrlContact', function($scope, $http){
    $scope.contact = {contact_id: contactID};
    $scope.sendContact = function() {
        var request = $http({
            method: "post",
            url: basePath + "contact?add=contact",
            data: {
                value: $scope.contact
            },
            headers: { 'Content-Type': 'application/x-www-form-urlencoded' }
        });

      request.success(function (data) {

      });
    }
});


  var appGet = angular.module('setContact', []);
  appGet.controller('ctrlContact', function($scope, $http) {
     $http.get(basePath + "contact?edit=" + contactID)
     .then(function (response) {$scope.contact = response.data.records.data;});
  });
