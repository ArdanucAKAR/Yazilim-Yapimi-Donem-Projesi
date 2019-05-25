$(document).ready(function () {
    alertify.set('notifier', 'position', 'top-center');
    $("#EWL").addClass("form-signin").attr("action", "/").attr("name", "login");
    $("form[name='login']").validate({
        errorElement: 'div',
        rules: {
            Username: 'required',
            Password: {
                required: true
            }
        },
        messages: {
            Username: 'Kullanıcı Adı Boş Geçilemez',
            Password: {
                required: "Şifre Boş Geçilez"
            }
        }
    });
});