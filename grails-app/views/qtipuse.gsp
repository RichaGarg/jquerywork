
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>QTip</title>
    <meta name="layout" content="main"/>
    <asset:stylesheet src="jquery.qtip.min.css"/>
    <asset:javascript src="jquery.qtip.min.js"/>
</head>

<body><meta name="layout" content="main"/>
<div id="content">
    <a href="#">
        show qtip
        %{--<img src="images/img5.jpg" style="vertical-align: middle;" border="0" title="qtip example" />--}%
    </a>
</div>
<script type="text/javascript">
    $(document).ready(function()
    {

        $('#content a[href]').qtip({
            content: {
                text: 'I am qtip...'
            }
        });
//        another way
//        $('a[title]').qtip();
    });

</script>
</body>
</html>