<div class="container">

    <div class="page-header">
        <h1>Contatos <small>Lista</small>
            <a href="{$basePath}contact/add" class="btn btn-primary pull-right" >Novo Contato</a>
        </h1>
    </div>

    <ol class="breadcrumb">
        <li><a href="{$basePath}dashboard">Agenda</a></li>
        <li class="active">Contatos</li>
    </ol>

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
