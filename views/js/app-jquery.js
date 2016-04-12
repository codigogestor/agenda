$(document).ready(function () {
    //LOGIN
    $(document).on('click', '#bt-login', function (e) {
        e.preventDefault();
        $.post(basePath + 'login', $("#form-login #login").serialize(), function (data) {
            if (data.status == 'success') {
                document.location.href = basePath + 'dashboard';
            } else {
                $("#return-message").html(data.message);
                $("#return-message").removeClass('hidden');
                setTimeout(function () {
                    $("#return-message").addClass('hidden');
                }, 4500);
            }
        }, 'json').fail(function () {
            console.log('ERROR');
        });
    }); /*click login button*/
    $('#userTable').DataTable();
}); /*document-ready*/ 
