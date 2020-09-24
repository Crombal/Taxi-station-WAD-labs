<#include "security.ftlh">
<#macro login path isRegisterForm>
    <form action="${path}" method="post">

        <div class="form-group row">
            <div class="col-sm-3">
                <input type="text" name="username" placeholder="Ім`я користувача"
                       value="<#if user??>${user.username}</#if>"
                       class="form-control ${(usernameError??)?string('is-invalid', '')}"/>
                <#if usernameError??>
                    <div class="invalid-feedback">
                        ${usernameError}
                    </div>
                </#if>
            </div>
        </div>

        <div class="form-group row">
            <div class="col-sm-3">
                <input type="password" name="password" placeholder="Пароль"
                       class="form-control ${(passwordError??)?string('is-invalid', '')}"/>
                <#if passwordError??>
                    <div class="invalid-feedback">
                        ${passwordError}
                    </div>
                </#if>
            </div>
        </div>

        <#if isRegisterForm>
            <div class="form-group row">
                <div class="col-sm-3">
                    <input type="password" name="password2" placeholder="Повторіть пароль"
                           class="form-control ${(password2Error??)?string('is-invalid', '')}"/>
                    <#if password2Error??>
                        <div class="invalid-feedback">
                            ${password2Error}
                        </div>
                    </#if>
                </div>
            </div>
        </#if>

        <input type="hidden" name="_csrf" value="${_csrf.token}"/>

        <#if !isRegisterForm>
            <a class="btn btn-success" href="/registration">Реєстрація</a>
        </#if>

        <button type="submit" class="btn btn-primary"><#if isRegisterForm>Зареєструватися<#else>Війти</#if></button>

    </form>
</#macro>

<#macro logout>

    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit" class="btn btn-dark"><#if user??>Вийти<#else>Війти</#if></button>
    </form>

</#macro>