<#macro lab2>

    <div class="col-3">
        <div class="nav btn-group-vertical" id="l2-pills-tab" role="tablist" aria-orientation="vertical">

            <button type="button" class="btn btn-outline-danger" id="l2-ex-l2-pills-tab" data-toggle="tab"
                    href="#l2-ex-l2-pills" role="tab" aria-controls="l2-ex-l2-pills">Постановка задачі лабораторної
                роботи №2
            </button>

            <button type="button" class="btn btn-outline-danger" id="l2-list-pills-tab" data-toggle="tab"
                    href="#l2-list-pills" role="tab" aria-controls="l2-list-pills">Списки
            </button>

            <button type="button" class="btn btn-outline-danger" id="l2-mp-pills-tab" data-toggle="tab"
                    href="#l2-mp-pills" role="tab" aria-controls="l2-mp-pills">Відступи
            </button>

            <button type="button" class="btn btn-outline-danger" id="l2-id-pills-tab" data-toggle="tab"
                    href="#l2-id-pills" role="tab" aria-controls="l2-id-pills">At-rules
            </button>

            <div class="btn-group" role="group">
                <button type="button" id="l2dropdownMenuButton" class="btn btn-outline-danger dropdown-toggle"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Селектори
                </button>
                <div class="dropdown-menu" aria-labelledby="l2dropdownMenuButton">
                    <div class="nav btn-group-vertical" role="tablist">
                        <a class="dropdown-item btn-outline-danger" id="l2-tc-pills-tab" data-toggle="tab"
                           href="#l2-tc-pills" role="tab" aria-controls="l2-tc-pills">Селектори тегу і класу</a>

                        <a class="dropdown-item btn-outline-danger" id="l2-other-pills-tab" data-toggle="tab"
                           href="#l2-other-pills" role="tab" aria-controls="l2-other-pills">Інші селектори</a>

                        <a class="dropdown-item btn-outline-danger" id="l2-group-sel-pills-tab" data-toggle="tab"
                           href="#l2-group-sel-pills" role="tab" aria-controls="l2-group-sel-pills">Групування
                            селекторів</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-9">
        <div class="tab-content" id="l2-pills-tabContent">

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-ex-l2-pills"
                 role="tabpanel" aria-labelledby="l2-ex-l2-pills-tab">
                <div class="card-header">Постановка задачі лабораторної роботи №2</div>
                <div class="card-body text-danger">
                    <h5 class="card-title">Мета та хід виконання роботи</h5>
                    <ul class="list-group my-3">
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">1</span>
                            Мета: придбати практичні навички роботи з селекторами, ідентифікаторами, списками,
                            різноманітними властивостями кольору і фону, зовнішними та внутрішними відступами,
                            плаваючими елементами, оформленням текстових елементів
                        </li>
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">2</span>
                            У програмному коду лабораторної работи №2 застосувати селектори тегу і класу на свій розсуд.
                            Вміти пояснити викладачу. Програмний код даного пункту відобразити у звітному HTML-документі
                        </li>
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">3</span>
                            У програмному коду лабораторної работи №2 застосувати ідентифікатори. Вміти пояснити
                            викладачу. Програмний код даного пункту відобразити у звітному HTML-документі
                        </li>
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">4</span>
                            На свій розсуд застосувати сосідні, дочерні селектори, селектор атрибута та універсальний
                            селектор. Програмні коди даного пункту відобразити у звітному HTML-документі
                        </li>
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">5</span>
                            За допомогою каскадних таблиць стилів виконати на свій розусуд стильове оформлення текстовіх
                            елементів
                        </li>
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">6</span>
                            Програмні коди даного пункту відобразити у звітному HTML-документі
                        </li>
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">7</span>
                            У звітному HTML-документі оформити звіт лабораторної роблти №2
                        </li>
                    </ul>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-list-pills" role="tabpanel"
                 aria-labelledby="l2-list-pills-tab">
                <div class="card-header">Списки</div>
                <div class="card-body text-danger">
                    <pre>
<script type="text/plain" style="display:block;">
    <ul class="list-group my-3">
        <li class="list-group-item d-flex align-items-center border-danger">
            <span class="badge badge-danger badge-pill mr-3">1</span>
            Сайт має бути динамічним
        </li>
        <li class="list-group-item d-flex align-items-center border-danger">
            <span class="badge badge-danger badge-pill mr-3">2</span>
            Сайт має управлятися з клієнтської частини через веб-інтерфейс користувача
        </li>
        <li class="list-group-item d-flex align-items-center border-danger">
            <span class="badge badge-danger badge-pill mr-3">3</span>
            Всі дані, які можна отримати або надіслати на сайт є реальними та зберігаються на
            локальній базі даних
        </li>
        <li class="list-group-item d-flex align-items-center border-danger">
            <span class="badge badge-danger badge-pill mr-3">4</span>
            Обробка форм, посилань та інших дій, що робить користувач, мають оброблятися за
            допомогою логіки написаної на Java (використовуючи Spring)
        </li>
        <li class="list-group-item d-flex align-items-center border-danger">
            <span class="badge badge-danger badge-pill mr-3">5</span>
            Будь-яка дія користувача має бути опрацьована правильно, тому потрібно зробити обробку
            помилок
        </li>
    </ul>
</script>
                    </pre>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-mp-pills" role="tabpanel"
                 aria-labelledby="l2-mp-pills-tab">
                <div class="card-header">Відступи</div>
                <div class="card-body text-danger">
                    <pre>
                        <script type="text/plain" style="display:block;">
input {
    background-color: #eee;
    border: none;
    padding: 10px 8px;
    margin: 4px 0;
    width: 100%;
}
                        </script>
                    </pre>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-id-pills" role="tabpanel"
                 aria-labelledby="l2-id-pills-tab">
                <div class="card-header">At-rules</div>
                <div class="card-body text-danger">
                    <pre>
                        <script type="text/plain" style="display:block;">
@keyframes show {
    0%, 49.99% {
    opacity: 0;
    z-index: 1;
}

50%, 100% {
    opacity: 1;
    z-index: 5;
    }
}
                        </script>
                    </pre>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-tc-pills"
                 role="tabpanel" aria-labelledby="l2-tc-pills-tab">
                <div class="card-header">Селектори тегу і класу</div>
                <div class="card-body text-danger">
                    <pre>
                        <script type="text/plain" style="display:block;">
button.ghost {
    border-radius: 20px;
    color: #FFFFFF;
    font-size: 12px;
    font-weight: bold;
    padding: 12px 45px;
    letter-spacing: 1px;
    text-transform: uppercase;
    transition: transform 80ms ease-in;
    background-color: transparent;
    border-color: #FFFFFF;
}

form.reg-form {
    background-color: #FFFFFF;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
    padding: 0 50px;
    height: 100%;
    text-align: center;
}

input {
    background-color: #eee;
    border: none;
    padding: 10px 8px;
    margin: 4px 0;
    width: 100%;
}
                        </script>
                    </pre>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-other-pills"
                 role="tabpanel" aria-labelledby="l2-other-pills-tab">
                <div class="card-header">Інші селектори</div>
                <div class="card-body text-danger">
                    <pre>
                        <script type="text/plain" style="display:block;">
@keyframes show {
    0%, 49.99% {
    opacity: 0;
    z-index: 1;
}

50%, 100% {
    opacity: 1;
    z-index: 5;
    }
}
                            </script>
                        </pre>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l2-group-sel-pills"
                 role="tabpanel" aria-labelledby="l2-group-sel-pills-tab">
                <div class="card-header">Групування селекторів</div>
                <div class="card-body text-danger">
                    <pre>
                        <script type="text/plain" style="display:block;">
.container-main-form.right-panel-active .sign-up-container {
    transform: translateX(100%);
    opacity: 1;
    z-index: 5;
    animation: show 0.6s;
}
                        </script>
                    </pre>
                </div>
            </div>

        </div>
    </div>

</#macro>

