<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>

    <title>Таксопарк</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link rel="stylesheet" type="text/css" href="../static/css/add_messages.css"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                heightStyle: "content",
                icons: icons
            });
        });
    </script>

</head>
<body>
<#include "parts/navbar.ftlh">
<div class="container my-5">

    <div id="accordion">
        <h3>Написати повідомлення</h3>
        <div class="accordion-body">
                <form method="post" action="/send" id="add_message_form">
                    <div class="message-box" style="background: transparent; box-shadow: none">
                        <input type="text" name="receiver" required="required">
                        <label>Логін одержувача</label>
                    </div>
                    <div class="message-box" style="background: transparent; box-shadow: none">
                        <input type="text" name="messageName" required="required" id="messageName">
                        <label>Заголовок листа</label>
                    </div>
                    <div class="message-box" style="background: transparent; box-shadow: none">
                        <input type="text" name="messageSubject" required="required">
                        <label>Тема листа</label>
                    </div>
                    <div class="message-box" style="background: transparent; box-shadow: none">
                        <input type="text" name="messageText" required="required">
                        <label>Текст листа</label>
                    </div>
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <a href="javascript:;" onclick="document.getElementById('add_message_form').submit()">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        Надіслати
                    </a>
                </form>
        </div>
        <#list receivedMessages as message>
            <h3>${message.messageName}</h3>
            <div class="accordion-body">
                <p>Тема: ${message.messageSubject}</p>
                <p>Відправник: ${message.senderName}</p>
                <p>${message.messageText}</p>
            </div>
        </#list>
    </div>

</div>

</body>
</html>