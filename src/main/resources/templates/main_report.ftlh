<#import "parts/common.ftlh" as c>
<#import "parts/labs_body.ftlh" as b>

<@c.page>
    <script>
        function toggle_visibility(doc_id) {
            var x = document.getElementById(doc_id);
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>

    <div class="card-group">
        <div class="card text-white text-center bg-danger rounded-left mt-3" style="max-width: 36rem;">
            <div class="card-header">ЗВІТИ ЛАБОРАТОРНИХ РОБІТ</div>
            <div class="card-body">
                <h5 class="card-title">З ДИСЦИПЛІНИ</h5>
                <h5 class="card-title">«РОЗРОБЛЕННЯ WEB-ЗАСТОСУВАННЬ»</h5>
            </div>
        </div>
        <div class="card border-danger text-danger text-center rounded-right mt-3" style="max-width: 36rem;">
            <div class="card-header">Виконали</div>
            <div class="card-body text-danger">
                <h5 class="card-title">Студенти групи  ІА-94</h5>
                <p class="card-text">Треущенко Антон Романович</p>
                <p class="card-text">Єлісевич Владислав Олегович</p>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="btn-group col" role="group">
            <button type="button" class="btn btn-outline-danger rounded-left" onclick="toggle_visibility('1');">Лабораторна робота №1</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №2</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №3</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №4</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №5</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №6</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №7</button>
            <button type="button" class="btn btn-outline-danger rounded-0">Лабораторна робота №8</button>
            <button type="button" class="btn btn-outline-danger rounded-right">Лабораторна робота №9</button>
        </div>
        <div class="col">
            <a class="btn btn-outline-danger list-group-item border-danger rounded" href="/">Головна сторінка</a>
        </div>
    </div>

    <@b.lab "1" />

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</@c.page>