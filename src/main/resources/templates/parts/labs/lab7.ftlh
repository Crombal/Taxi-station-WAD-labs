<#macro lab7>

    <div class="col-3">
        <div class="nav btn-group-vertical" id="l7-pills-tab" role="tablist" aria-orientation="vertical">
            <button type="button" class="btn btn-outline-danger" id="l7-ex-l7-pills-tab" data-toggle="tab"
                    href="#l7-ex-l7-pills" role="tab" aria-controls="l6-ex-l6-pills">Постановка задачі лабораторної роботи №7
            </button>

            <button type="button" class="btn btn-outline-danger" id="l7-info-pills-tab" data-toggle="tab"
                    href="#l7-info-pills" role="tab" aria-controls="l7-info-pills">Інфологічна модель
            </button>

            <button type="button" class="btn btn-outline-danger" id="l7-data-pills-tab" data-toggle="tab"
                    href="#l7-data-pills" role="tab" aria-controls="l7-data-pills">Даталогічна модель
            </button>

            <button type="button" class="btn btn-outline-danger" id="l7-bd-pills-tab" data-toggle="tab"
                    href="#l7-bd-pills" role="tab" aria-controls="l7-bd-pills">Реалізація бд Postgre SQL
            </button>

            <button type="button" class="btn btn-outline-danger" id="l7-scripts-pills-tab" data-toggle="tab"
                    href="#l7-scripts-pills" role="tab" aria-controls="l7-scripts-pills">Приклади скриптів
            </button>

            <button type="button" class="btn btn-outline-danger" id="l7-concl-pills-tab" data-toggle="tab"
                    href="#l7-concl-pills" role="tab" aria-controls="l7-concl-pills">Висновок
            </button>
        </div>
    </div>

    <div class="col-9">
        <div class="tab-content" id="l7-pills-tabContent">

            <div class="tab-pane fade card border-danger text-danger text-center" id="l7-ex-l7-pills"
                 role="tabpanel" aria-labelledby="l7-ex-l7-pills-tab">
                <div class="card-header">Постановка задачі лабораторної роботи №7</div>
                <div class="card-body text-danger">
                    <h5 class="card-title">Мета</h5>
                    <ul class="list-group my-3">
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">1</span>
                            Придбати практичні навички підключення до СКБД, вибора бази даних, виконання запиту,
                            отримання результатів, відключення від СКБД.
                        </li>
                    </ul>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l7-info-pills" role="tabpanel"
                 aria-labelledby="l7-info-pills-tab">
                <div class="card-header">Інфологічна модель</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/infologic.png" width="100%"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l7-data-pills" role="tabpanel"
                 aria-labelledby="l7-data-pills-tab">
                <div class="card-header">Даталогічна модель</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/datalogic.png" width="100%"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l7-bd-pills" role="tabpanel"
                 aria-labelledby="l7-bd-pills-tab">
                <div class="card-header">Реалізація бд Postgre SQL</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/physlogic.png" width="100%"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l7-scripts-pills" role="tabpanel"
                 aria-labelledby="l7-scripts-pills-tab">
                <div class="card-header">Приклади скриптів</div>
                <div class="card-body text-danger">
                    <img src="../../../static/img/scriptsBD.png"/>
                </div>
            </div>

            <div class="tab-pane fade card border-danger text-danger text-center" id="l7-concl-pills" role="tabpanel"
                 aria-labelledby="l7-concl-pills-tab">
                <div class="card-header">Висновок</div>
                <div class="card-body text-danger">
                    <h5 class="card-title">Висновок</h5>
                    <ul class="list-group my-3">
                        <li class="list-group-item d-flex align-items-center border-danger">
                            <span class="badge badge-danger badge-pill mr-3">1</span>
                            На даній роботі ми реалізували базу даних на Postgre SQL для таксопарку.</br>
                            Створили інфо-, дата-, фіз- моделі бази даних по відповідній ПО та прописали скрипти для роботи з нею.
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

</#macro>

