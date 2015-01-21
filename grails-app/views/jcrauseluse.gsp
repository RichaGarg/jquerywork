<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Jquery</title>
    <meta name="layout" content="main"/>
    <asset:stylesheet href="jcarousel.ajax.css"/>
    <asset:javascript src="jquery.jcarousel.js"/>
    <asset:javascript src="jcarousel.ajax.js"/>

    <style type="text/css">
    .jcarousel {
        position: relative;
        overflow: hidden;
        width: 600px;
        height: 400px;
    }

    .jcarousel ul {
        width: 20000em;
        position: relative;
        list-style: none;
        margin: 0px;
        padding: 0px;
    }

    .jcarousel li {
        float: left;
        width: 200px;
    }
    </style>
</head>

<body>
        <div class="jcarousel">
            <ul>
                <li><img src="${resource(dir: 'images',file: 'img1.jpg')}" width="600" height="400" alt=""></li>
                <li><img src="${resource(dir: 'images',file: 'img2.jpg')}" width="600" height="400" alt=""></li>
                <li><img src="${resource(dir: 'images',file: 'img3.jpg')}" width="600" height="400" alt=""></li>
                <li><img src="${resource(dir: 'images',file: 'img4.jpg')}" width="600" height="400" alt=""></li>
                <li><img src="${resource(dir: 'images',file: 'img5.jpg')}" width="600" height="400" alt=""></li>
                <li><img src="${resource(dir: 'images',file: 'img6.jpg')}" width="600" height="400" alt=""></li>
            </ul>
        </div>

        <a href="#" class="jcarousel-control-prev">&lsaquo;</a>
        <a href="#" class="jcarousel-control-next">&rsaquo;</a>

<br/>

<input type="button" value="load" onclick="setup()">

<script>
    (function($) {
        $(function() {
            $('.jcarousel').jcarousel();

            $('.jcarousel-control-prev')
                    .on('jcarouselcontrol:active', function() {
                        $(this).removeClass('inactive');
                    })
                    .on('jcarouselcontrol:inactive', function() {
                        $(this).addClass('inactive');
                    })
                    .jcarouselControl({
                        target: '-=1'
                    });

            $('.jcarousel-control-next')
                    .on('jcarouselcontrol:active', function() {
                        $(this).removeClass('inactive');
                    })
                    .on('jcarouselcontrol:inactive', function() {
                        $(this).addClass('inactive');
                    })
                    .jcarouselControl({
                        target: '+=1'
                    });

        });
    })(jQuery);
</script>
</body>
</html>