<#macro lab number>
<div id="${number}" class="row my-3 ml-1" style="display: none">
    <div class="row">

        <#if number == "1">
            <#import "labs/lab1.ftlh" as l1>
            <@l1.lab1>
            </@l1.lab1>
        </#if>

    </div>
</div>
</#macro>
