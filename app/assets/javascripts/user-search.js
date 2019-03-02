$(function() {
  $(document).on('turbolinks:load', function() {

    var userSearchAnswer = $("#username-answer");

    function appendAnswerTrue() {
      userSearchAnswer.append(`<div class="no_here">使用できます</div>`);
    }
    function appendAnswerFalse() {
      userSearchAnswer.append(`<div class="here">その名前は既に使われています</div>`);
    }

    $("#username").on("keyup", function() {
      var inputUserSearch = $(this).val();
      if (inputUserSearch != 0) {
        $.ajax({
          type: 'GET',
          url: '/users/search',
          data: { keyword: inputUserSearch },
          dataType: 'json'
        })
        .done(function(here) {
          userSearchAnswer.empty();
          if (here == 0){
            appendAnswerTrue(here);
          } else {
            appendAnswerFalse(here);
          }
        })
        .fail(function() {
          alert('ユーザー検索に失敗しました');
        });
      } else {
        userSearchAnswer.empty();
      }
    });
  });
});
