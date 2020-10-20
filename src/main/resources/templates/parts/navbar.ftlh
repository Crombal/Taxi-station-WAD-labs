<#include "security.ftlh">
<#import "login.ftlh" as l>

<nav class="navbar navbar-expand-lg navbar-dark bg-danger">

    <a class="navbar-brand" href="/">Таксопарк</a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">

            <li class="nav-item">
                <a class="nav-link" href="/main"><#if user?? && name!="Guest">Подорож<#else>Війти</#if></a>
            </li>

            <#if user?? && name!="Guest">
                <li class="nav-item">
                    <a class="nav-link" href="/user-orders/${currentUserId}">Мої замовлення</a>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="/user/profile">Мій профіль</a>
                </li>
            </#if>

            <#if user?? && name!="Guest" && isDriver>
                <li class="nav-item">
                    <a class="nav-link" href="/driver-orders">Актуальні замовлення</a>
                </li>
            </#if>

            <#if isAdmin>
                <li class="nav-item">
                    <a class="nav-link" href="/user">Користувачі</a>
                </li>
            </#if>

        </ul>

        <div class="navbar-text mr-3">${name}</div>

        <#if isPresent><@l.logout/></#if>

    </div>

</nav>

