<div class="container">

    <div class="page-header">
        <h1>Contatos <small>Cadastro</small></h1>
    </div>

    <ol class="breadcrumb">
        <li><a href="{$basePath}dashboard">Agenda</a></li>
        <li><a href="{$basePath}contact/list">Contatos</a></li>
        <li class="active">Cadastro</li>
    </ol>


    <div class="row">

        <div class="col-md-12">

            <div id="return-success" class="alert alert-success hidden" role="alert"></div>

            <div id="return-error" class="alert alert-warning hidden" role="alert"></div>

            <form>
              <div class="form-group">
                <label for="name">Nome</label>
                <input type="text" class="form-control" id="name" placeholder="Nome completo...">
              </div>
              <div class="form-group">
                <label for="email">E-mail</label>
                <input type="email" class="form-control" id="email" placeholder="E-mail de contato">
              </div>
              <div class="form-group">
                <label for="phone">Telefone</label>
                <input type="text" class="form-control" id="phone" placeholder="Telefone Residêncial">
              </div>
              <div class="form-group">
                <label for="cellphone">Celular</label>
                <input type="text" class="form-control" id="cellphone" placeholder="Telefone Celular">
              </div>
              <div class="form-group">
                <label for="note">Observações</label>
                <input type="text" class="form-control" id="note" placeholder="Notas / Observações">
              </div>
              <button type="submit" class="btn btn-default">Salvar</button>
            </form>

        </div>

    </div>


</div>
