<#macro lab1>

    <div class="col-3">
        <div class="nav btn-group-vertical" id="l1-pills-tab" role="tablist" aria-orientation="vertical">
            <button type="button" class="btn btn-outline-danger" id="l1-desc-pills-tab" data-toggle="tab"
                    href="#l1-desc-pills" role="tab" aria-controls="l1-desc-pills">Опис предметного середовища
            </button>
            <button type="button" class="btn btn-outline-danger" id="l1-ex-pills-tab" data-toggle="tab"
                    href="#l1-ex-pills" role="tab" aria-controls="l1-ex-pills">Загальна постановка задачі програми
            </button>
            <button type="button" class="btn btn-outline-danger" id="l1-ex-l1-pills-tab" data-toggle="tab"
                    href="#l1-ex-l1-pills" role="tab" aria-controls="l1-ex-l1-pills">Постановка задачі лабораторної
                роботи №1
            </button>
            <div class="btn-group" role="group">
                <button type="button" id="l1dropdownMenuButton" class="btn btn-outline-danger dropdown-toggle"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Структура документа
                </button>
                <div class="dropdown-menu" aria-labelledby="l1dropdownMenuButton">
                    <div class="nav btn-group-vertical" role="tablist">
                        <a class="dropdown-item btn-outline-danger" id="l1-main-pills-tab" data-toggle="tab"
                           href="#l1-main-pills" role="tab" aria-controls="l1-main-pills">HTML-код файлу
                            "main.html"</a>
                        <a class="dropdown-item btn-outline-danger" id="l1-description-pills-tab" data-toggle="tab"
                           href="#l1-description-pills" role="tab" aria-controls="l1-description-pills">HTML-код
                            файлу "description.html"</a>
                        <a class="dropdown-item btn-outline-danger" id="l1-main_report-pills-tab" data-toggle="tab"
                           href="#l1-main_report-pills" role="tab" aria-controls="l1-main_report-pills">HTML-код
                            файлу "main_report.html"</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-9">
        <div class="tab-content" id="l1-pills-tabContent">
            <div class="tab-pane fade card border-danger text-danger text-center" id="l1-desc-pills" role="tabpanel"
                 aria-labelledby="l1-desc-pills-tab">
                <div class="card-header">Опис предметного середовища</div>
                <div class="card-body text-danger">
                    <a href="/description"
                       class="list-group-item list-group-item-action bg-light border-danger text-danger">Переглянути
                        детальну інформацію.</a>
                </div>
            </div>
            <div class="tab-pane fade card border-danger text-danger text-center" id="l1-ex-pills" role="tabpanel"
                 aria-labelledby="l1-ex-pills-tab">
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
                </div>
            </div>
            <div class="tab-pane fade card border-danger text-danger text-center" id="l1-ex-l1-pills"
                 role="tabpanel" aria-labelledby="l1-ex-l1-pills-tab">
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
            <div class="tab-pane fade card border-danger text-danger text-center" id="l1-main-pills" role="tabpanel"
                 aria-labelledby="l1-main-pills-tab">
                <div class="card-header">HTML-код файлу "main.html"</div>
                <div class="card-body text-danger">
                    <a href="/get_main_report_html"
                       class="list-group-item list-group-item-action bg-light border-danger text-danger">HTML-код
                        файлу "main.html"</a>
                </div>
            </div>
            <div class="tab-pane fade card border-danger text-danger text-center" id="l1-description-pills"
                 role="tabpanel" aria-labelledby="l1-description-pills-tab">
                <div class="card-header">HTML-код файлу "description.html"</div>
                <div class="card-body text-danger">
                    <a href="/get_description_html"
                       class="list-group-item list-group-item-action bg-light border-danger text-danger">HTML-код
                        файлу "description.html"</a>
                </div>
            </div>
        </div>
        <div class="tab-pane fade card border-danger text-danger text-center" id="l1-main_report-pills"
             role="tabpanel" aria-labelledby="l1-main_report-pills-tab">
            <div class="card-header">HTML-код файлу "main_report.html"</div>
            <div class="card-body text-danger">
                <a href="/get_main_report_html"
                   class="list-group-item list-group-item-action bg-light border-danger text-danger">HTML-код файлу
                    "main_report.html"</a>
            </div>
        </div>
    </div>

</#macro>

