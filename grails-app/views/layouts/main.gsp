<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
<head>
    <style>
    #ajaxSpinnerContainer {
        height: 10px;
    }
    #ajaxSpinnerImage {
        display: none;
    }
    </style>
    <asset:stylesheet href="application.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
</head>

<body>
<div id="ajaxSpinnerContainer">
    <img src="${resource(dir: 'images', file: 'loading.gif')}" id="ajaxSpinnerImage" title="working...">
</div>
<g:layoutBody/>
</body>
</html>
