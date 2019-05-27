function Login(userType) {
    if ($("form[name='login']").valid()) {
        var data;
        if (userType === "Authorized") {
            data = JSON.stringify({
                authorized: {
                    Username: $("input[name='Username']").val(),
                    Password: $("input[name='Password']").val()
                }
            });
            $.ajax({
                type: "POST",
                url: "../../../AuthenticationServiceAPI.asmx/AuthorizedLogin",
                data: data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    if (r.d != null) {
                        $("#WelcomeMessage").fadeOut(250).html("HOŞGELDİNİZ<br/>" + r.d.Username).fadeIn(250);
                        $(".form-group").fadeOut('slow');
                        setTimeout(function () {
                            location.replace("Home");
                        }, 1000);
                    }
                    else {
                        alertify.notify('Kullanıcı Adı veya Şifre Yalnış', 'customError', 5);
                        $("input[name='Password']").val("");
                        $("input[name='Username']").focus();
                    }
                },
                error: function (r) {
                    console.log(r.responseText);
                },
                failure: function (r) {
                    console.log(r.responseText);
                }
            });
        }
        else {
            data = JSON.stringify({
                member: {
                    Username: $("input[name='Username']").val(),
                    Password: $("input[name='Password']").val()
                }
            });
            $.ajax({
                type: "POST",
                url: "../../../AuthenticationServiceAPI.asmx/MemberLogin",
                data: data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    if (r.d != null) {
                        $("#WelcomeMessage").fadeOut(250).html("HOŞGELDİNİZ<br/>" + r.d.Name + " " + r.d.Surname).fadeIn(250);
                        $("#SignIn").fadeOut('slow');
                        setTimeout(function () {
                            location.replace("Home");
                        }, 1000);
                    }
                    else {
                        alertify.notify('Kullanıcı Adı veya Şifre Yalnış', 'customError', 5);
                        $("input[name='Password']").val("");
                        $("input[name='Username']").focus();
                    }
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
    return false;
}
function Logout() {
    $.ajax({
        type: "POST",
        url: "../../../AuthenticationServiceAPI.asmx/Logout",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            setTimeout(function () {
                location.replace("Login");
            }, 1000);
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
}