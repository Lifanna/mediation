# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
    $("#sendReqBtn").on "click", (event) ->
        entry = $('meta[name=csrf-token]').attr('content')
        $.ajax "/mail",
            type: "POST",
            data: { 
                mail: {
                    name: $("#senderName").val(),
                    email: $("#senderEmail").val(),
                    phone: $("#senderPhone").val(),
                    message: $("#messageText").val()
                }
            },
            headers : {
                'X-CSRF-TOKEN': entry
            },
            success: (response) ->
                if response.status == 200
                    asd = $("#reqResult").text(response.result)
                    debugger
                    qwe = $("#reqResult").toggle()
                    debugger
                    zxc = $("#reqResult").text("")
                    debugger
                else
                    debugger
                    $("#reqResult").text(response.result)
                    $("#reqResult").toggle()
                    $("#reqResult").text("")
