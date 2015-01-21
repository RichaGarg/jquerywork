
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Auto Complete</title>
    <meta name="layout" content="main"/>
</head>
<body>
<input type="text" id="person"/>
<input type="button" class="datepicker" value="date"/>

<script>
    jQuery("document").ready(function() {

        $.ajax({
            type: "GET",
            url: "/autoCompletePersonName/getAllPersons",
            success : function(response) {
                $("#person").autocomplete({
                    source: response
                });
            }
        });
    })
</script>

</body>
</html>