$(document).ready(function () {
    HomePage();
});
function HomePage() {
    //WordCount , MemberCount
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
}
function AddWord() {
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/HomePage",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            alert(r.d);
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
}