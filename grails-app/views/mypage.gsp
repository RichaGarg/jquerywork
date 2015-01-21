<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Jquery</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="row col-lg-12 col-lg-offset-3">
    <g:textField name="t1" id="t1"/>
</div>

<div class="row col-lg-12 col-lg-offset-3">
    <input type="text" id="t2"/>
</div>

<div class="row col-lg-12 col-lg-offset-3">
    <input type="button" value="Add" id="replica"/>

</div>

<div id="dropdown">
    <div class="box row col-lg-4 col-lg-offset-3" data-boxid="1">
        <div class="panel panel-default">
            <div class="panel-body">
                <input type="text" class="boxtext" data-textValue=""/>
                <input type="button" value="Close" onclick="closePanel(this)"/>
            </div>
        </div>
    </div>
</div>

<div id="mytable" class="row col-lg-12 col-lg-offset-3">
    <table>
        <tr>
            <th>Value</th>
        </tr>
    </table>
</div>

<script>
    jQuery(document).ready(function () {
        popuplateTable();
        $("body").on('click','.box',function(){
            $(this).draggable({
                axis : "y"
            });
        });
    });

    $('#t1').keyup(function () {
        $('#t2').val(this.value);
    });

    $('#replica').click(function () {
        var len = $('.box').length + 1;
        $('div').find('[data-boxid="1"]').clone().appendTo('#dropdown').attr('data-boxid', len).find('input[type=text].boxtext').val('');
    });

    function closePanel(element) {
        $(element).parents().eq(2).remove();
        popuplateTable();
    }

    $('.boxtext').keyup(function(){
        popuplateTable();
    })

    function popuplateTable() {
        $('#mytable tr').not(':first').not(':last').remove();
        var html = '';
        $(".boxtext").each(function() {
            html += '<tr><td>' + $(this).val() + '</td></tr>';
        });
        $('#mytable tr').first().after(html);
    }

</script>
</body>
</html>