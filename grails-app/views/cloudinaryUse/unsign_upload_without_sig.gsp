<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New Image</title>
    <meta name="layout" content="main"/>
    <asset:javascript src="jquery.ui.widget.js"/>
    <asset:javascript src="jquery.iframe-transport.js"/>
    <asset:javascript src="jquery.fileupload.js"/>
    <asset:javascript src="jquery.cloudinary.js"/>

</head>

<body>
%{--<g:form controller="cloudinaryUse" action="saveImageToCloud" enctype="multipart/form-data">
    <div class="row">
        <label class="col-sm-4 pull-left">Image to upload *:</label>
        <span class="col-sm-6">
            <input type="file" name="imageId" class="form-control pull-left" required="required"/>
        </span>
    </div>
    <br/>

    <div class="row">
        <span class="col-sm-6 pull-right">
            <input type="submit" value="add" class="form-control pull-left" required="required"/>
        </span>
    </div>
</g:form>--}%
<div class="upload_form">

</div>
<script>
    jQuery(document).ready(function () {
        $.cloudinary.config({cloud_name: 'dalegxqw6', api_key: '392381229984622'})
        $('.upload_form').append($.cloudinary.unsigned_upload_tag("fektjjux", {cloud_name: 'dalegxqw6'}));
    });
</script>
</body>
</html>