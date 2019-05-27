$(document).ready(function () {
    alertify.set('notifier', 'position', 'top-center');
    LoginValid();
});
function LoginValid() {
    $("form[name='signup']").html() !== undefined ? $("form[name='signup']").validate().destroy() : "";
    $("#EWL").addClass("form-signin").attr("action", "/").attr("name", "login");
    $("form[name='login']").validate({
        errorElement: 'div',
        rules: {
            Username: 'required',
            Password: 'required'
        },
        messages: {
            Username: 'Kullanıcı Adı Boş Geçilemez',
            Password: "Şifre Boş Geçilez"
        }
    });
}