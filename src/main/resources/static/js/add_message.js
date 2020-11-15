$(document).ready(function () {

    $("#add_message_form").submit(function (event) {

        var messageData = {
            'receiver': $('input[receiver=receiver]').val(),
            'messageName': $('input[messageName=messageName]').val(),
            'messageSubject': $('input[messageSubject=messageSubject]').val(),
            'messageText': $('input[messageText=messageText]').val(),
        }

        $.ajax({
            type: "POST",
            url: "/send",
            data: JSON.stringify(messageData),
            dataType: 'json',
            contentType:'application/json; charset=utf-8',
            crossDomain: true,
            encode: true
        })

            .done(function(data) {
                console.log(data);

                $("#feedback").html('<p>' + JSON.stringify(data) + '</p>');
            })

        event.preventDefault();
    });

});