<#macro lab6>

    <div class="col-3">
        <div class="nav btn-group-vertical" id="l6-pills-tab" role="tablist" aria-orientation="vertical">
            <button type="button" class="btn btn-outline-danger" id="l6-ex-l6-pills-tab" data-toggle="tab"
                    href="#l6-ex-l6-pills" role="tab" aria-controls="l6-ex-l6-pills">Постановка задачі лабораторної роботи №9
            </button>

            <button type="button" class="btn btn-outline-danger" id="l6-js-pills-tab" data-toggle="tab"
                    href="#l6-js-pills" role="tab" aria-controls="l6-js-pills">JS-code for ajax mail
            </button>

            <button type="button" class="btn btn-outline-danger" id="l6-rest-pills-tab" data-toggle="tab"
                    href="#l6-rest-pills" role="tab" aria-controls="l6-rest-pills">RestController for ajax mail
            </button>

            <button type="button" class="btn btn-outline-danger" id="l6-html-pills-tab" data-toggle="tab"
                    href="#l6-html-pills" role="tab" aria-controls="l6-html-pills">HTML-code for ajax mail
            </button>

            <button type="button" class="btn btn-outline-danger" id="l6-list-pills-tab" data-toggle="tab"
                    href="#l6-list-pills" role="tab" aria-controls="l6-list-pills">Повний список функціоналу програми
            </button>

            <button type="button" class="btn btn-outline-danger" id="l6-compare-pills-tab" data-toggle="tab"
                    href="#l6-compare-pills" role="tab" aria-controls="l6-compare-pills">Порівняння функціоналу 1 та 9 лаб
            </button>

            <button type="button" class="btn btn-outline-danger" id="l6-concl-pills-tab" data-toggle="tab"
                    href="#l6-concl-pills" role="tab" aria-controls="l6-concl-pills">Висновок
            </button>
        </div>
    </div>

    <div class="col-9">
        <div class="tab-content" id="l6-pills-tabContent">

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-ex-l6-pills"
                 role="tabpanel" aria-labelledby="l6-ex-l6-pills-tab">
                <div class="card-header">Постановка задачі лабораторної роботи №9</div>
                <div class="card-body text-danger">
                    <h5 class="card-title">Мета</h5>
                    <ul class="list-group my-3">
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">1</span>
                            Вивчення основ асинхронного обміну даними мовою JavaScript за допомогою технології Ajax та бібліотеки
                            JQuery при реалізації практичних задач Web-програмування.
                        </li>
                    </ul>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-js-pills" role="tabpanel"
                 aria-labelledby="l6-js-pills-tab">
                <div class="card-header">JS-code for ajax mail</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/JS_code_mail.png" width="100%"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-rest-pills" role="tabpanel"
                 aria-labelledby="l6-rest-pills-tab">
                <div class="card-header">RestController for ajax mail</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/Rest_code_mail.png" width="100%"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-html-pills" role="tabpanel"
                 aria-labelledby="l6-html-pills-tab">
                <div class="card-header">HTML-code for ajax mail</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/HTML_code_mail1.png" width="100%"/>
                    <img src="../../../static/img/HTML_code_mail2.png"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-list-pills" role="tabpanel"
                 aria-labelledby="l6-list-pills-tab">
                <div class="card-header">Повний список функціоналу програми</div>
                <div class="card-body text-danger">
                    <p>На сайті можна:</p>
                    <p>1. Замовити поїздку</p>
                    <p>2. Виконати поїздку (для водія)</p>
                    <p>3. Надіслати повідомлення користувачу або менеджеру</p>
                    <p>4. Переглянути галерею сайту</p>
                    <p>5. Переглянути інформацію про сайт</p>
                    <p>6. Авторизуватися</p>
                    <p>7. Зареєструватися</p>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-compare-pills" role="tabpanel"
                 aria-labelledby="l6-compare-pills-tab">
                <div class="card-header">Порівняння функціоналу 1 та 9 лаб</div>
                <div class="card-body text-danger">
                    <p>Перша лаба містила тільки звіт, а дев'ята містить все, що є в пункті вище</p>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l6-concl-pills" role="tabpanel"
                 aria-labelledby="l6-concl-pills-tab">
                <div class="card-header">Висновок</div>
                <div class="card-body text-danger">
                    <h5 class="card-title">Висновок</h5>
                    Протягом дев'яти лабораторних робіт ми створили повноцінний сайт для таксопарку. Логіка сайту написана на Spring boot,
                    розмітка на темплейтах freemarker, дизвйн на css та js. Весь функціонал описаний у загальному звітному файлі, який поділений на
                    розділи відповідно до номерів лабораторних робіт.
                    Виконувавши всю цю роботу ми вивчили нову для нас тему: ajax-запити, все інше вже було нам відоме.
                </div>
            </div>
        </div>
    </div>

</#macro>

