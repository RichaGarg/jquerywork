<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Accordian use</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div id="accordion">
    <h3>Section 1</h3>
    <div>
        <p>
            first paragraph
        </p>
    </div>
    <h3>Section 2</h3>
    <div>
        <p>
            second paragraph
        </p>
    </div>
    <h3>Section 3</h3>
    <div>
        <p>
            third paragraph
        </p>
    </div>
    <h3>Section 4</h3>
    <div>
        <p>
            last paragraph
        </p>
    </div>
</div>

<input type="text" class="datepicker" value="date"/>

<script>
    $(function() {
        $( "#accordion" ).accordion();
    });
</script>
</body>
</html>