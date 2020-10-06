<#import "parts/common.ftlh" as c>

<@c.page>

    <link rel="stylesheet" type="text/css" href="../static/css/add_order.css"/>

    <div class="login-box">
        <h2>Замовити поїздку</h2>
        <form method="post" action="/main" id="add_order_form">
            <div class="user-box">
                <input type="text" name="fromStr" required="required">
                <label>Звідки?</label>
            </div>
            <div class="user-box">
                <input type="text" name="toStr" required="required">
                <label>Куди?</label>
            </div>
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <a href="javascript:;" onclick="document.getElementById('add_order_form').submit()">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                Підтвердити
            </a>
        </form>
    </div>

</@c.page>