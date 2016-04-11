<h3>Lista de contatos</h3>

<div ng-app="agendaContatos" ng-controller="contatos">

    <table class="table">
        <thead>
            <th>ID</th>
            <th>NOME</th>
            <th>E-MAIL</th>
            <th>TELEFONE</th>
            <th>CELULAR</th>
            <th colspan="2">OPÇÕES</th>
        </thead>
        <tr ng-repeat="x in names">
            <td>{literal}{{ x.contact_id }}{/literal}</td>
            <td>{literal}{{ x.name }}{/literal}</td>
            <td>{literal}{{ x.email }}{/literal}</td>
            <td>{literal}{{ x.phone }}{/literal}</td>
            <td>{literal}{{ x.cellphone }}{/literal}</td>
            <td><a href="{$basePath}contact/edit/{literal}{{ x.contact_id }}{/literal}"><i class="fa fa-edit"></i></a></td>
            <td><a href="{$basePath}contact/remove/{literal}{{ x.contact_id }}{/literal}"><i class="fa fa-remove"></i></a></td>
        </tr>
    </table>

</div>

<script>

{literal}

var app = angular.module('agendaContatos', []);
app.controller('contatos', function($scope, $http) {
   $http.get(basePath + "contact?list=contact")
   .then(function (response) {$scope.names = response.data.records;});
});

{/literal}

</script>
