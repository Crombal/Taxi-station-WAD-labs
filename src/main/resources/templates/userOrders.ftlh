<#import "parts/common.ftlh" as c>

<@c.page>

    <link rel="stylesheet" type="text/css" href="../static/css/user_orders.css"/>

    <div style="display: table" class="main-table">
        <#list orders as order>
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
                <#if order.isComplete()>
                    <p>Стан: виконав ${order.driverName}</p>
                <#else>
                    <p>Стан: у процесі</p>
                </#if>
            </div>

        <#else>
            No orders
        </#list>
    </div>

</@c.page>