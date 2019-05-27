$(document).ready(function () {
    alertify.set('notifier', 'position', 'top-right');

    $("button[name='Add']").click(function () {
        if ($("form[name='AddWord']").valid()) {
            var data = JSON.stringify({
                word: {
                    _Word: $("input[name='addWord_Word']").val(),
                    Meaning: $("input[name='addWord_Meaning']").val(),
                    Language: $('select[name=addWord_Languages]').val()
                }
            });
            $.ajax({
                type: "POST",
                url: "../../../AuthorizedAPI.asmx/AddWord",
                data: data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alertify.notify('Kelime Eklendi', 'customSuccess', 5);
                    $("input[name='addWord_Word']").val("");
                    $("input[name='addWord_Meaning']").val("");
                },
                error: function (r) {
                    console.log(r.responseText);
                },
                failure: function (r) {
                    console.log(r.responseText);
                }
            });
        }
    });

    $("button[name='Delete']").click(function () {
        var data = JSON.stringify({
            word: {
                Id: $("select[name='deleteWord_Words']").val()
            }
        });
        $.ajax({
            type: "POST",
            url: "../../../AuthorizedAPI.asmx/DeleteWord",
            data: data,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (r) {
                alertify.notify('Kelime Silindi', 'customSuccess', 5);
                getWords("deleteWord_Words");
            },
            error: function (r) {
                console.log(r.responseText);
            },
            failure: function (r) {
                console.log(r.responseText);
            }
        });
    });

    $("button[name='Update']").click(function () {
        if ($("form[name='UpdateWord']").valid()) {
            var data = JSON.stringify({
                word: {
                    Id: $('select[name=updateWord_Words]').val(),
                    _Word: $("input[name='updateWord_Word']").val(),
                    Meaning: $("input[name='updateWord_Meaning']").val(),
                    Language: $('select[name=updateWord_Languages]').val()
                }
            });
            $.ajax({
                type: "POST",
                url: "../../../AuthorizedAPI.asmx/UpdateWord",
                data: data,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    if (r.d == true) {
                        alertify.notify('Kelime Güncellendi', 'customSuccess', 5);
                        $("input[name='updateWord_Word']").val("").fadeOut(0);
                        $("input[name='updateWord_Meaning']").val("").fadeOut(0);
                        $('select[name=updateWord_Languages]').attr('disabled', true);
                        $("button[name=Update]").fadeOut(0);
                        getWords("updateWord_Words");
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
    });

    $('select[name=updateWord_Words]').on('change', function () {
        if ($('select[name=updateWord_Words]').val() !== '0') {
            getWord($('select[name=updateWord_Words]').val(), $('select[name=updateWord_Languages]').val());
        }
        else {
            $("input[name='updateWord_Word']").val("").fadeOut(0);
            $("input[name='updateWord_Meaning']").val("").fadeOut(0);
            $('select[name=updateWord_Languages]').attr('disabled', true);
            $("button[name=Update]").fadeOut(0);
        }
    });

    $('select[name=updateWord_Languages]').on('change', function () {
        getWord($('select[name=updateWord_Words]').val(), $('select[name=updateWord_Languages]').val());
    });

    HomePage();
});

function Show(name) {
    var Panels = [];
    $(".content-body .container section").each(function () {
        Panels.push($(this).attr("id"));
    });
    $(".content-body .container #" + name).fadeIn("slow");
    if (name !== "Home") {
        $("form[name='" + name + "']").validate().destroy();
        $("select").select2();
    }
    for (var a = 0; a < Panels.length; a++) {
        if (name !== Panels[a]) {
            $(".content-body .container #" + Panels[a]).fadeOut(0);
        }
    }
}

function HomePage() {
    $("#EWL").attr("name", "Home");
    jQuery.validator.addMethod("notNumber", function (value, element, param) {
        var reg = /[0-9]/;
        if (reg.test(value)) {
            return false;
        } else {
            return true;
        }
    }, "Number is not permitted");
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

function getLanguages(name) {
    $("select[name=" + name + "] option").remove();
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

function getWord(wordId, langId) {
    var data = JSON.stringify({
        word: {
            Id: wordId,
            Language: langId
        }
    });
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/GetWord",
        data: data,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            var data = JSON.parse(r.d);
            if (data.GetWord != 0) {
                $("input[name=updateWord_Word]").val(data.GetWord[0].word).fadeIn(250);
                $("input[name=updateWord_Meaning]").val(data.GetWord[0].meaning).fadeIn(250);
                $('select[name=updateWord_Languages]').removeAttr('disabled');
                $("button[name=Update]").fadeIn(250);
            }
            else {
                alertify.notify('Kelimenin Bu Dilde Bir Anlamı Yok', 'customError', 5);
                $("input[name=updateWord_Word]").fadeOut(0);
                $("input[name=updateWord_Meaning]").fadeOut(0);
                $("button[name=Update]").fadeOut(0);
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

function getWords(name) {
    $("select[name=" + name + "] option").remove();
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

function AddWord() {
    $("#EWL").attr("name", "AddWord");
    getLanguages("addWord_Languages");
    Show("AddWord");
    $("form[name='AddWord']").validate({
        errorElement: 'div',
        rules: {
            addWord_Word: {
                required: true,
                minlength: 2,
                notNumber: true,
            },
            addWord_Meaning: {
                required: true,
                minlength: 2,
                notNumber: true
            }
        },
        messages: {
            addWord_Word: {
                required: "Lütfen Kelime Girin",
                minlength: "Kelime En Az 2 Harfden Oluşmalıdır",
                notNumber: "Kelime Sayı İçeremez"
            },
            addWord_Meaning: {
                required: "Lütfen Kelimenin Anlamını Girin",
                minlength: "Kelimenin Anlamı En Az 2 Harfden Oluşmalıdır",
                notNumber: "Kelimenin Anlamı Sayı İçeremez"
            }
        }
    });
}

function DeleteWord() {
    $("#EWL").attr("name", "DeleteWord");
    getWords("deleteWord_Words");
    Show("DeleteWord");
}

function UpdateWord() {
    $("#EWL").attr("name", "UpdateWord");
    getWords("updateWord_Words");
    getLanguages("updateWord_Languages");
    Show("UpdateWord");
    $("input[name=updateWord_Word]").fadeOut(0);
    $("input[name=updateWord_Meaning]").fadeOut(0);
    $("button[name=Update]").fadeOut(0);
    $("form[name='UpdateWord']").validate({
        errorElement: 'div',
        rules: {
            updateWord_Word: {
                required: true,
                minlength: 2,
                notNumber: true
            },
            updateWord_Meaning: {
                required: true,
                minlength: 2,
                notNumber: true
            }
        },
        messages: {
            updateWord_Word: {
                required: "Lütfen Kelime Girin",
                minlength: "Kelime En Az 2 Harfden Oluşmalıdır",
                notNumber: "Kelime Sayı İçeremez"
            },
            updateWord_Meaning: {
                required: "Lütfen Kelimenin Anlamını Girin",
                minlength: "Kelimenin Anlamı En Az 2 Harfden Oluşmalıdır",
                notNumber: "Kelimenin Anlamı Sayı İçeremez"
            }
        }
    });
}