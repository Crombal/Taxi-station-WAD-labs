<#import "parts/common.ftlh" as c>

<@c.page>

    <link rel="stylesheet" type="text/css" href="../static/css/user_orders.css"/>


    <div style="display: table" class="main-table">
        <#list driverOrders as order>
            <div style="display: table-row" data-id="${order.id}">
                <h4>Поїздка №${order.id}</h4>
            </div>
            <div class="main-table-cell" data-id="${order.id}">
                <p>Дата створення: ${order.creationDate}</p>
            </div>
            <div class="main-table-cell" data-id="${order.id}">
                <p>Звідки: ${order.fromStr}</p>
            </div>
            <div class="main-table-cell" data-id="${order.id}">
                <p>Куди: ${order.toStr}</p>
            </div>
            <div class="main-table-cell" data-id="${order.id}">
                <p>Замовник: ${order.authorName}</p>
            </div>
            <div class="main-table-cell" data-id="${order.id}">
                <form method="post" action="/complete-order/${order.id}" id="complete_order_form">
                    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                    <a href="javascript:;" onclick="document.getElementById('complete_order_form').submit()">
                        <span></span>
                        <span></span>
                        <span></span>
                        <span></span>
                        Виконати
                    </a>
                </form>
            </div>

        <#else>
            No orders
        </#list>
    </div>


</@c.page>