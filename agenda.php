<!DOCTYPE html>

<html lang="pt">

    <head>

        <meta charset="utf-8">

        <title>Agenda de Contatos</title>

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="">

        <meta name="author" content="">

        <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>

        <!--[if lt IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.min.js"></script>
        <![endif]-->

    </head><!--/head-->

    <body>

        <div ng-app="myApp" ng-controller="customersCtrl">

        <table>
          <tr ng-repeat="x in names">
            <td>{{ x.Name }}</td>
            <td>{{ x.Country }}</td>
          </tr>
        </table>

        </div>


        <script>
        var app = angular.module('myApp', []);
        app.controller('customersCtrl', function($scope, $http) {
            $http.get("http://www.w3schools.com/angular/customers.php")
            .then(function (response) {$scope.names = response.data.records;});
        });
        </script>


    </body>

</html>
