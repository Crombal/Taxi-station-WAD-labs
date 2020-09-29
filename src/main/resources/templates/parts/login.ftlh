<#include "security.ftlh">
<#macro login path isRegisterForm>

    <link rel="stylesheet" type="text/css" href="../static/css/sign_up.css"/>

    <div class="container-main-form" id="container-main-form">
        <div class="form-container sign-up-container">
            <form class="reg-form" action="/registration" method="post">
                <h1 class="reg-h1">Створити аккаунт</h1>
                <span class="reg-span">Придумайте свій логін та пароль</span>

                <input type="text" name="username" placeholder="Ім`я користувача"
                       value="<#if user??>${user.username}</#if>"
                       class="${(usernameError??)?string('is-invalid', '')}"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>

                <input type="password" name="password" placeholder="Пароль"
                       class="${(passwordError??)?string('is-invalid', '')}"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>

                <input type="password" name="password2" placeholder="Повторіть пароль"
                       class="${(password2Error??)?string('is-invalid', '')}"/>
                <#if password2Error??>
                    <div class="invalid-feedback">
                        ${password2Error}
                    </div>
                </#if>

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button class="reg-button" type="submit">Зареєєструватися</button>
            </form>
        </div>
        <div class="form-container sign-in-container">
            <form class="reg-form" action="/login" method="post">
                <h1 class="reg-h1">Ввійти</h1>
                <span class="reg-span">Використовуйте свій аккаунт</span>

                <input type="text" name="username" placeholder="Ім`я користувача"
                       value="<#if user??>${user.username}</#if>"
                       class="${(usernameError??)?string('is-invalid', '')}"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
                <input type="password" name="password" placeholder="Пароль"
                       class="${(passwordError??)?string('is-invalid', '')}"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>

                <input type="hidden" name="_csrf" value="${_csrf.token}"/>
                <button class="reg-button" type="submit">Ввійти</button>
            </form>
        </div>
        <div class="overlay-container">
            <div class="overlay">
                <div class="overlay-panel overlay-left">
                    <h1 class="reg-h1-o">Вітаємо вас знову!</h1>
                    <p class="reg-p">Щоб мати найновішу інформацію, ввійдіть у свій аккаунт</p>
                    <button class="ghost" id="signIn">Ввійти</button>
                </div>
                <div class="overlay-panel overlay-right">
                    <h1 class="reg-h1-o">Вітаємо, Госте!</h1>
                    <p class="reg-p">Введіть свої дані й починайте подорожувати разом з нами</p>
                    <button class="ghost" id="signUp">Зареєєструватися</button>
                </div>
            </div>
        </div>
    </div>

    <script src="../static/js/sign_up.js"></script>

</#macro>

<#macro logout>

    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-danger"><#if user??>Вийти<#else>Війти</#if></button>
    </form>

</#macro>