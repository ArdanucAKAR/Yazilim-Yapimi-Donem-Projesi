$(document).ready(function () {
    HomePage();
    getLanguages("Languages");
    getWords("Words");
});
function Show(name) {
    var Panels = [];
    $(".content-body .container section").each(function () {
        Panels.push($(this).attr("id"));
    });
    $(".content-body .container #" + name).fadeIn("slow");
    for (var a = 0; a < Panels.length; a++) {
        if (name !== Panels[a])
            $(".content-body .container #" + Panels[a]).fadeOut(0);
    }
}
function HomePage() {
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/HomePage",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            var data = JSON.parse(r.d);
            $("#MemberCount").html(data.HomePage[0].MemberCount);
            $("#WordCount").html(data.HomePage[0].WordCount);
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
    Show("Home");
}
function AddWord() {
    Show("AddWord");
}
function DeleteWord() {
    Show("DeleteWord");
}
function UpdateWord() {
    Show("UpdateWord");
}
function getLanguages(name) {
    $("select[name=Language]").find('option').remove()
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/AllLanguage",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            var data = JSON.parse(r.d);
            for (var a = 0; a < data.AllLanguage.length; a++)
                $("select[name=" + name + "]").append("<option value='" + data.AllLanguage[a].id + "'>İngilizce - " + data.AllLanguage[a].language + "</option>");
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
}
function getWords(name) {
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/AllWord",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            var data = JSON.parse(r.d);
            for (var a = 0; a < data.AllWord.length; a++)
                $("select[name=" + name + "]").append("<option value='" + data.AllWord[a].id + "'>" + data.AllWord[a].word + "</option>");
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
}
$("button[name='Add']").click(function () {
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
    var data = JSON.stringify({
        word: {
            _Word: $("input[name='Word']").val(),
            Meaning: $("input[name='Meaning']").val(),
            Language: $("select[name='Language']").val()
        }
    });
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/AddWord",
        data: data,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            var data = JSON.parse(r.d);
            for (var a = 0; a < data.AllLanguage.length; a++)
                $("select[name=" + name + "]").append("<option value='" + data.AllLanguage[a].id + "'>" + data.AllLanguage[a].language + "</option>");
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
});
$("button[name='Delete']").click(function () {
    var data = JSON.stringify({
        word: {
            _Word: $("input[name='Word']").val(),
            Meaning: $("input[name='Meaning']").val(),
            Language: $("select[name='Language']").val()
        }
    });
});
$("button[name='Update']").click(function () {
    var data = JSON.stringify({
        word: {
            _Word: $("input[name='Word']").val(),
            Meaning: $("input[name='Meaning']").val(),
            Language: $("select[name='Language']").val()
        }
    });
});