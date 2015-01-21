<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Create person</title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="panel panel-default">
    <div class="page-header">
        <h3>New Person</h3>
    </div>

    <div class="panel-body">
        <g:form name="newperson" controller="remotePaginationExample" action="create" class="form-horizontal">
            <div class="form-body">
                <hr/>
                <div class="form-group">
                    <label class="col-md-3 control-label">Name</label>

                    <div class="col-md-4">
                        <g:textField name="name" class="form-control required"/>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label">Age</label>

                    <div class="col-md-4">
                        <g:textField name="age" class="form-control required"/>
                    </div>
                </div>

                <div class="form-group">

                    <div class="col-md-4 pull-right">
                        <input type="submit" value="Create"/>
                    </div>
                </div>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>