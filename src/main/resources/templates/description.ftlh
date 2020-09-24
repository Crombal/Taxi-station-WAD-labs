<#import "parts/common.ftlh" as c>

<@c.page>
    <div class="row justify-content-between">
        <div>
            <h1 class="display-4">Таксопарк</h1>
        </div>
        <div class="mt-3 mr-3">
            <a href="/" class="list-group-item list-group-item-action border-danger text-danger">Головна сторінка</a>
        </div>
    </div>

    <p>
        Сайт створюється для інформаційного обслуговування бази даних таксопарка. Він повинен містити дані різноманітні звіти, співробітників, клієнтів та транспорт.
        Відповідно до предметної області система будується з врахуванням наступних особливостей:
    </p>

    <ul class="list-group my-3">

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">1</span>
            Клієнти, які зробили замовлення таксі більше ніж 10 разів на місяць, автоматично стають VIP клієнтами, і отримують знижку 10% на проїзд.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">2</span>
            Для створення замовлення клієнт телефонує диспетчеру.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">3</span>
            Для призначення замовлення диспетчер телефонує водію і говорить номер замовлення.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">4</span>
            Протягом дня клієнт може запросити декілька замовлень.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">5</span>
            Протягом дня диспетчер може обробити декілька замовлень.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">6</span>
            Протягом дня водій може виконати декілька замовлень.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">7</span>
            При виконанні різних замовлень водій може користуватися різними машинами.
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">8</span>
            Замовлення має лише одного власника (клієнта, який створив його).
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-danger badge-pill mr-3">9</span>
            Для виконання замовлення водій отримує машину та призначене замовлення.
        </li>

    </ul>

    Після аналізу предметної області виділимо базові сутності цієї предметної області:

    <ul class="list-group my-3">

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-warning badge-pill mr-3">1</span>
            Водії
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-warning badge-pill mr-3">2</span>
            Клієнти
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-warning badge-pill mr-3">3</span>
            Автомобілі
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-warning badge-pill mr-3">4</span>
            Замовлення
        </li>

        <li class="list-group-item d-flex align-items-center">
            <span class="badge badge-warning badge-pill mr-3">5</span>
            Диспетчери
        </li>

    </ul>
</@c.page>