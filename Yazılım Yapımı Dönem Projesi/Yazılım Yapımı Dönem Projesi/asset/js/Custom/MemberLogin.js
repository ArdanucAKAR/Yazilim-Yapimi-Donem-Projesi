function SignUp() {
    if ($("form[name='signup']").valid()) {
        data = JSON.stringify({
            member: {
                Name: $("input[name='suName']").val(),
                Surname: $("input[name='suSurname']").val(),
                Username: $("input[name='suUsername']").val(),
                Password: $("input[name='suPassword']").val(),
                Language: $("select[name='suLanguages']").val()
            }
        });
        $.ajax({
            type: "POST",
            url: "../../../MemberAPI.asmx/Add",
            data: data,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (r) {
                alertify.notify('Kayıdınız Başarıyla Eklendi', 'customSuccess', 5);
                $("input[name='Username']").val($("input[name='suUsername']").val());
                $("input[name='Password']").val("").focus();
                Show();
            },
            error: function (r) {
                console.log(r.responseText);
            },
            failure: function (r) {
                console.log(r.responseText);
            }
        });
    }
}

var animateForm = ["#SignIn", "#SignUp"];
var animate = 0;
function Show() {
    $(animate === 0 ? animateForm[0] : animateForm[1]).animate({
        height: 'toggle'
    }, 1000, function () {
        $(animate === 0 ? animateForm[1] : animateForm[0]).animate({
            height: 'toggle'
        }, 1000);
        animate = animate === 0 ? 1 : 0;
        $("#btnSingUp").html(animate === 0 ? 'Üye Ol<span><i class="fa fa-user-plus"></i></span>' : 'Giriş Yap<span><i class="fa fa-arrow-left "></i></span>');
        if (animate === 1) {
            $("input[name='suName']").val("");
            $("input[name='suSurname']").val("");
            $("input[name='suUsername']").val("");
            $("input[name='suPassword']").val("");
            $("select[name=suLanguages] option").remove();
            $.ajax({
                type: "POST",
                url: "../../../Utils.asmx/AllLanguage",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var data = JSON.parse(r.d);
                    console.log(data);
                    for (var a = 0; a < data.AllLanguage.length; a++)
                        $("select[name=suLanguages]").append("<option value='" + data.AllLanguage[a].id + "'>" + data.AllLanguage[a].country + "</option>");
                },
                error: function (r) {
                    console.log(r.responseText);
                },
                failure: function (r) {
                    console.log(r.responseText);
                }
            });
            $("form[name='login']").validate().destroy();
            $("#EWL").attr("name", "signup");
            $("form[name='signup']").validate({
                errorElement: 'div',
                rules: {
                    suName: 'required',
                    suSurname: 'required',
                    suUsername: 'required',
                    suPassword: 'required'
                },
                messages: {
                    suName: 'Ad Boş Geçilemez',
                    suSurname: 'Soyad Boş Geçilemez',
                    suUsername: 'Kullanıcı Adı Boş Geçilemez',
                    suPassword: 'Şifre Boş Geçilemez'
                }
            });
        }
        else 
            LoginValid();
    });
}
$(document).ready(function () {
    $("#btnSingUp").click(function () {
        Show();
    });
});