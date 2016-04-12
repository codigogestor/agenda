<div class="container">

    <div class="page-header">
        <h1>Contatos <small>{if $addressPath[1] eq 'edit'}Edição{else}Novo{/if}</small></h1>
    </div>

    <ol class="breadcrumb">
        <li><a href="{$basePath}dashboard">Agenda</a></li>
        <li><a href="{$basePath}contact/list">Contatos</a></li>
        <li class="active">{if $addressPath[1] eq 'edit'}Editar{else}Cadastro{/if}</li>
    </ol>

    <div class="row">

        <div class="col-md-8">

            <div id="return-success" class="alert alert-success hidden" role="alert"></div>

            <div id="return-error" class="alert alert-warning hidden" role="alert"></div>

            <div ng-app="setContact" ng-controller="ctrlContact">

              <form  ng-submit="sendContact()">

                {if $addressPath[1] eq 'edit'}
                  <input type="hidden" ng-model="contact.contact_id" >
                {/if}

                <div class="form-group">
                  <label for="name">Nome</label>
                  <input type="text" class="form-control" id="name" ng-model="contact.name" placeholder="Nome completo...">
                </div>

                <div class="form-group">
                  <label for="email">E-mail</label>
                  <input type="email" class="form-control" id="email" ng-model="contact.email" placeholder="E-mail de contato">
                </div>

                <div class="form-group">
                  <label for="phone">Telefone</label>
                  <input type="text" class="form-control" id="phone" ng-model="contact.phone" placeholder="Telefone Residêncial">
                </div>

                <div class="form-group">
                  <label for="cellphone">Celular</label>
                  <input type="text" class="form-control" id="cellphone" ng-model="contact.cellphone" placeholder="Telefone Celular">
                </div>

                <div class="form-group">
                  <label for="note">Observações</label>
                  <input type="text" class="form-control" id="note"  ng-model="contact.note"placeholder="Notas / Observações">
                </div>

                <button type="submit" class="btn btn-primary">Salvar</button>

              </form>

            </div>

        </div>

    </div>

</div>

<script>

var contactID = "{$data.contact_id}";
var contactName = "{$data.name}";
var contactEmail = "{$data.email}";
var contactPhone = "{$data.phone}";
var contactCellPhone = "{$data.cellphone}";
var contactNote = "{$data.note}";

{literal}
var appSet = angular.module('setContact',[]);
appSet.controller('ctrlContact', function($scope, $http){
    $scope.contact = {
      contact_id: contactID,
      name: contactName,
      email: contactEmail,
      phone: contactPhone,
      cellphone: contactCellPhone,
      note: contactNote
    };

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

        document.location.href=basePath + "contact/edit/" + data.id;

      });
    }
});
{/literal}
</script>
