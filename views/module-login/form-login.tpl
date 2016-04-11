<div id="form-login" class="container">
    <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h3 class="panel-title">Login</h3>
                </div>
                <div class="panel-body">
                    <div id="return-message" class="alert alert-warning hidden" role="alert"></div>
                    <form id="login" name="form-login">
                        <input type="hidden" name="formRequest" value="login" />
                        <div class="form-group">
                            <label for="email">E-mail</label>
                            <input type="text" class="form-control" id="email" name="email" value="" placeholder="E-mail" />
                        </div>
                        <div class="form-group">
                            <label for="password">Senha</label>
                            <input type="password" class="form-control" id="password" name="password" value="" placeholder="Senha" />
                        </div>
                        <div class="text-right">
                            <button class="btn btn-primary" id="bt-login">Entrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div><!--/.container-->
