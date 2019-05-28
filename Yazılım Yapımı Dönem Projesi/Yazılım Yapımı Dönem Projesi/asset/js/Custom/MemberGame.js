var Question;
function NewQuestion() {
    $(".content-body").fadeToggle(1000);
    $.ajax({
        type: "POST",
        url: "../../../Utils.asmx/NewQuestion",
        async: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            var data = JSON.parse(r.d);
            Question = data["Question"];
            var x = Math.floor(Math.random() * 10 + 1);
            var answers = ["A", "B", "C", "D"];
            if (x % 2 === 0) {
                $("#Question .card-text").html(data["Question"][0].word);
                for (var a = 0; a < answers.length; a++) {
                    $("#Answer" + answers[a] + " .card").removeClass("bg-gradient-y-success").removeClass("bg-gradient-y-danger");
                    $("#Answer" + answers[a] + " .card-text").html(data["Answers"][a].meaning);
                    $("#Answer" + answers[a]).attr("onclick", "AnswerQuestion(" + data["Answers"][a].id + ",'" + answers[a] + "')");
                }
            }
            else {
                $("#Question .card-text").html(data["Question"][0].meaning);
                for (var b = 0; b < answers.length; b++) {
                    $("#Answer" + answers[b] + " .card").removeClass("bg-gradient-y-success").removeClass("bg-gradient-y-danger");
                    $("#Answer" + answers[b] + " .card-text").html(data["Answers"][b].word);
                    $("#Answer" + answers[b]).attr("onclick", "AnswerQuestion(" + data["Answers"][b].id + ",'" + answers[b] + "')");
                }
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
function AnswerQuestion(answerId, answer) {
    if (answerId === Question[0].id)
        $("#Answer" + answer + " .card").addClass("bg-gradient-y-success");
    else
        $("#Answer" + answer + " .card").addClass("bg-gradient-y-danger");
    var data = JSON.stringify({
        member: { Id: MemberId },
        word: { Id: answerId },
        isCorret: (answerId === Question[0].id ? 1 : 0)
    });
    $.ajax({
        type: "POST",
        url: "../../../MemberAPI.asmx/AddAction",
        data: data,
        async: false,
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            console.log(r.d);
        },
        error: function (r) {
            console.log(r.responseText);
        },
        failure: function (r) {
            console.log(r.responseText);
        }
    });
    $(".content-body").fadeToggle(1000);
    setTimeout(function () {
        NewQuestion();
    }, 1000);
}
$(document).ready(function () {
    NewQuestion();
});