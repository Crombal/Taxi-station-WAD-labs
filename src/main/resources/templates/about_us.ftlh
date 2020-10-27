<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title>Таксопарк</title>

    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"/>

    <link rel="stylesheet" type="text/css" href="../static/css/about_us.css"/>

    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">

    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
    <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
    <link rel="stylesheet" href="/resources/demos/style.css">
    <script>
        $(function () {
            var icons = {
                header: "ui-icon-circle-arrow-e",
                activeHeader: "ui-icon-circle-arrow-s"
            };
            $("#accordion").accordion({
                heightStyle: "content",
                icons: icons
            });
        });
    </script>

    <!-- Include Unite Gallery core files -->
    <script src='unitegallery/js/unitegallery.min.js' type='text/javascript'></script>
    <link href='unitegallery/css/unite-gallery.css' rel='stylesheet' type='text/css'/>

    <!-- include Unite Gallery Theme Files -->
    <script src='unitegallery/themes/slider/ug-theme-slider.js' type='text/javascript'></script>

</head>
<body>
<#include "parts/navbar.ftlh">
<div class="container my-5">
    <div id="accordion">
        <h3>Детальна інформація про наш таксопарк</h3>
        <div class="accordion-body">
            <p>
                Таксопарк "Драйв"является официальным партнером Яндекс.Такси.
                Наш клиент - это Водитель!
                Мы понимаем, что в настоящее время самое ценное в бизнесе таксопарка - это надежный профессиональный
                водитель, который ответственно относится к пассажирам и арендованным авто, ценит свое время и хочет
                достойно зарабатывать.
                Поэтому мы нацелены на долгосрочное взаимовыгодные отношения, а не на сиюминутную выгоду.
                Чем дольше вы работаете с нами - тем выгоднее условия получаете!
            </p>
        </div>
        <h3>Наші соціальні мережі</h3>
        <div class="accordion-body">
            <div class="social youtube">
                <a href="#" target="_blank"><i class="fa fa-youtube fa-2x"></i></a>
            </div>
            <div class="social twitter">
                <a href="#" target="_blank"><i class="fa fa-twitter fa-2x"></i></a>
            </div>
            <div class="social instagram">
                <a href="#" target="_blank"><i class="fa fa-instagram fa-2x"></i></a>
            </div>
            <div class="social facebook">
                <a href="#" target="_blank"><i class="fa fa-facebook fa-2x"></i></a>
            </div>
            <div class="social telegram">
                <a href="#" target="_blank"><i class="fa fa-paper-plane fa-2x"></i></a>
            </div>
        </div>
        <h3>Наша геолокація</h3>
        <div class="accordion-body">
            <div id="wrapper-9cd199b9cc5410cd3b1ad21cab2e54d3" style="margin: 0 auto">
                <div id="map-9cd199b9cc5410cd3b1ad21cab2e54d3"></div><script>(function () {
                        var setting = {"height":540,"width":1080,"zoom":17,"queryString":"Киевски политехнички институт, проспект Победы, Киев, Украина","place_id":"ChIJR4q8uYLO1EAR82shkV1OUUc","satellite":false,"centerCoord":[50.40241140676761,30.53269056939257],"cid":"0x47514e5d91216bf3","lang":"ru","cityUrl":"/ukraine/kiev","cityAnchorText":"Карта [CITY1], Киевская область, Украина","id":"map-9cd199b9cc5410cd3b1ad21cab2e54d3","embed_id":"296927"};
                        var d = document;
                        var s = d.createElement('script');
                        s.src = 'https://1map.com/js/script-for-user.js?embed_id=296927';
                        s.async = true;
                        s.onload = function (e) {
                            window.OneMap.initMap(setting)
                        };
                        var to = d.getElementsByTagName('script')[0];
                        to.parentNode.insertBefore(s, to);
                    })();</script><a href="https://1map.com/ru/map-embed">1 Map</a></div>
        </div>
    </div>

    <div class="mt-5">
        <div id="gallery">
            <img alt="Preview Image 1"
                 src="../static/img/taxiG1.jpg"
                 data-image="../static/img/taxiG1.jpg">
            <img alt="Preview Image 2"
                 src="../static/img/taxiG2.jpg"
                 data-image="../static/img/taxiG2.jpg">
            <img alt="Preview Image 3"
                 src="../static/img/taxiG3.jpg"
                 data-image="../static/img/taxiG3.jpg">
            <div data-type="youtube"
                 data-videoid="IT7aqAD123A"
                 data-title="Taxi The Best Soundtrack"
                 data-description="Like and Share"></div>
        </div>
    </div>

</div>

<script type="text/javascript">
    jQuery(document).ready(function () {
        jQuery("#gallery").unitegallery({
            gallery_theme: "slider",
            gallery_width:1920,
            gallery_height:1080,
            gallery_min_width: 900,
            gallery_min_height: 500,
            gallery_skin:"default",
            slider_transition:"fade",
            slider_transition_speed:1000,
            slider_transition_easing: "easeInOutQuad",
            slider_control_zoom:false,
            slider_progress_indicator_type: "pie2"
        });
    });
</script>

</body>
</html>