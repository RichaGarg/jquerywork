<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Jquery</title>
    <meta name="layout" content="main"/>
    <asset:stylesheet href="jquery.fancybox.css" />
    <asset:javascript src="jquery.fancybox.js" />
</head>

<body>
%{--
<a id="fancyboxNoAjax" rel="group" href="#data">
    <img src="${resource(dir: 'images',file: 'img4.jpg')}" alt="img 4" />
</a>
--}%

<div style="display:none">
    <div id="data">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
    </div>
</div>


<br/>using ajax call<br/>
<a id="ajaxfancybox" href="#data">
    <img src="${resource(dir: 'images',file: 'img1.jpg')}" alt="img6" />
</a>
<script>
    $(document).ready(function() {
/*
        $("#fancyboxNoAjax").fancybox({
            autoSize: true
        });
*/

        $('#ajaxfancybox').on('click', function(){
            jQuery.ajax({
                url: '/fancyBoxUsingAjax/showBox',
                type: 'POST',
                dataType: 'json',
                success: function (data) {
                    jQuery('#data').html(data.text);
                    $("#ajaxfancybox").fancybox({
                        autoSize: true
                    });
                },
                failure: function(data) {
                    alert('failure')
                }
            });
        });
    });
</script>
</body>

</html>