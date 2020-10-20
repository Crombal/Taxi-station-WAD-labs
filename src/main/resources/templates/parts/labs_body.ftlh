<#macro lab number>

    <div id="${number}" class="row my-3 ml-1" style="display: none">
        <div class="row">

            <#if number == "1">
                <#import "labs/lab1.ftlh" as l1>
                <@l1.lab1>
                </@l1.lab1>
            </#if>

            <#if number == "2">
                <#import "labs/lab2.ftlh" as l2>
                <@l2.lab2>
                </@l2.lab2>
            </#if>

            <#if number == "3">
                <#import "labs/lab3.ftlh" as l3>
                <@l3.lab3>
                </@l3.lab3>
            </#if>

            <#if number == "4">
                <#import "labs/lab4.ftlh" as l4>
                <@l4.lab4>
                </@l4.lab4>
            </#if>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</#macro>
