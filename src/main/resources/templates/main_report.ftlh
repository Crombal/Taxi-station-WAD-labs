<#import "parts/common.ftlh" as c>

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
            <button type="button" class="btn btn-outline-danger rounded-left" onclick="toggle_visibility('lab1');">Лабораторна робота №1</button>
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

    <div id="lab1" class="row my-3 ml-1" style="display: none">
        <div class="row">
            <div class="col-3">
                <div class="nav btn-group-vertical" id="l1-pills-tab" role="tablist" aria-orientation="vertical">
                    <button type="button" class="btn btn-outline-danger" id="l1-desc-pills-tab" data-toggle="tab" href="#l1-desc-pills" role="tab" aria-controls="l1-desc-pills">Опис предметного середовища</button>
                    <button type="button" class="btn btn-outline-danger" id="l1-ex-pills-tab" data-toggle="tab" href="#l1-ex-pills" role="tab" aria-controls="l1-ex-pills">Загальна постановка задачі програми</button>
                    <button type="button" class="btn btn-outline-danger" id="l1-ex-l1-pills-tab" data-toggle="tab" href="#l1-ex-l1-pills" role="tab" aria-controls="l1-ex-l1-pills">Постановка задачі лабораторної роботи №1</button>
                    <div class="btn-group" role="group">
                        <button type="button" id="l1dropdownMenuButton" class="btn btn-outline-danger dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Структура документа</button>
                        <div class="dropdown-menu" aria-labelledby="l1dropdownMenuButton">
                            <div class="nav btn-group-vertical" role="tablist">
                                <a class="dropdown-item btn-outline-danger" id="l1-main-pills-tab" data-toggle="tab" href="#l1-main-pills" role="tab" aria-controls="l1-main-pills">HTML-код файлу "main.html"</a>
                                <a class="dropdown-item btn-outline-danger" id="l1-description-pills-tab" data-toggle="tab" href="#l1-description-pills" role="tab" aria-controls="l1-description-pills">HTML-код файлу "description.html"</a>
                                <a class="dropdown-item btn-outline-danger" id="l1-main_report-pills-tab" data-toggle="tab" href="#l1-main_report-pills" role="tab" aria-controls="l1-main_report-pills">HTML-код файлу "main_report.html"</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-9">
                <div class="tab-content" id="l1-pills-tabContent">
                    <div class="tab-pane fade card border-danger text-danger text-center" id="l1-desc-pills" role="tabpanel" aria-labelledby="l1-desc-pills-tab">
                        <div class="card-header">Опис предметного середовища</div>
                        <div class="card-body text-danger">
                            <a href="/description" class="list-group-item list-group-item-action bg-light border-danger text-danger">Переглянути детальну інформацію.</a>
                        </div>
                    </div>
                    <div class="tab-pane fade card border-danger text-danger text-center" id="l1-ex-pills" role="tabpanel" aria-labelledby="l1-ex-pills-tab">
                        <div class="card-header">Загальна постановка задачі програми</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title">Створити сайт для управління таксопарком</h5>
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
                                    Всі дані, які можна отримати або надіслати на сайт є реальними та зберігаються на локальній базі даних
                                </li>
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">4</span>
                                    Обробка форм, посилань та інших дій, що робить користувач, мають оброблятися за допомогою логіки написаної на Java (використовуючи Spring)
                                </li>
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">5</span>
                                    Будь-яка дія користувача має бути опрацьована правильно, тому потрібно зробити обробку помилок
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-pane fade card border-danger text-danger text-center" id="l1-ex-l1-pills" role="tabpanel" aria-labelledby="l1-ex-l1-pills-tab">
                        <div class="card-header">Постановка задачі лабораторної роботи №1</div>
                        <div class="card-body text-danger">
                            <h5 class="card-title">Мета та хід виконання роботи</h5>
                            <ul class="list-group my-3">
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">1</span>
                                    Створити головну сторінку таксопарка
                                </li>
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">2</span>
                                    Створити сторінку зі звітами усіх лабораторних робіт
                                </li>
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">3</span>
                                    Створити сторінку із описом предметної області
                                </li>
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">4</span>
                                    Створити звіт ЛР №1
                                </li>
                                <li class="list-group-item d-flex align-items-center border-danger">
                                    <span class="badge badge-danger badge-pill mr-3">5</span>
                                    Опціонально: створити репозиторій на GitHub
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="tab-pane fade card border-danger text-danger text-center" id="l1-main-pills" role="tabpanel" aria-labelledby="l1-main-pills-tab">
                        <div class="card-header">HTML-код файлу "main.html"</div>
                        <div class="card-body text-danger">
                            <a href="cods/view-source_taxi-station_static_main.html" class="list-group-item list-group-item-action bg-light border-danger text-danger">HTML-код файлу "main.html"</a>
                        </div>
                    </div>
                    <div class="tab-pane fade card border-danger text-danger text-center" id="l1-description-pills" role="tabpanel" aria-labelledby="l1-description-pills-tab">
                        <div class="card-header">HTML-код файлу "description.html"</div>
                        <div class="card-body text-danger">
                            <a href="cods/view-source_taxi-station_static_description.html" class="list-group-item list-group-item-action bg-light border-danger text-danger">HTML-код файлу "description.html"</a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade card border-danger text-danger text-center" id="l1-main_report-pills" role="tabpanel" aria-labelledby="l1-main_report-pills-tab">
                    <div class="card-header">HTML-код файлу "main_report.html"</div>
                    <div class="card-body text-danger">
                        <a href="cods/view-source_taxi-station_static_reports_main_report.html" class="list-group-item list-group-item-action bg-light border-danger text-danger">HTML-код файлу "main_report.html"</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</@c.page>