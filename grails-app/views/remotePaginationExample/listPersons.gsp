<%@ page import="com.paginate.Person" %>
<html>
<head>
    <title>Person list</title>
    <meta name="layout" content="main"/>
    <g:javascript plugin="remote-pagination" library="remoteNonStopPageScroll"/>
    <style type="text/css">
    table, th, td {
        border: 1px solid;
        padding: 1px;
        margin: 10px;
    }
    </style>
</head>

<body>
<div id="test" class="hidden">
    <p>
        Loading....
    </p>
</div>

<div id="personList">
    <table>
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody id="perList">
        -------param max gsp: ${params.max}} -----
        ---- max gsp: ${max} ------
            <g:render template="listPersons" model="[max: max, personInstanceList: personInstanceList]"/>
        </tbody>
    </table>
</div>

</body>
</html>
