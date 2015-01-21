<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New Image</title>
    <meta name="layout" content="main"/>
    <asset:javascript src="jquery.ui.widget.js"/>
    <asset:javascript src="jquery.iframe-transport.js"/>
    <asset:javascript src="jquery.fileupload.js"/>
    <asset:javascript src="jquery.cloudinary.js"/>
    <script type="text/javascript">
        $.cloudinary.config({cloud_name: 'dalegxqw6', api_key: '392381229984622'})
    </script>
</head>

<body>
<g:form>
    <div class="row">
        <label class="col-sm-4 pull-left">Image to upload *:</label>
        <span class="col-sm-6">
            <input name="file" type="file" class="fileupload" data-cloudinary-field="image_id" accept="image/*"/>
        </span>
    </div>

    <div class="row">
        <label class="col-sm-4 pull-left">Progress :</label>
        <span class="col-sm-6">
            <label class="progress_bar"></label>
        </span>
    </div>
</g:form>
<script>
    $(document).ready(function() {
        var data = {
            "timestamp": ${timestamp},
            "signature": "${sig}",
            "callback": "localhost:8080/cloudinary_cors.html",
            "api_key": "392381229984622"
        }

        $('.fileupload').bind('fileuploaddone', function(e,data) {
            console.log('file uploaded done--!')
        })

        $('.fileupload').bind('fileuploadstart', function(e, data) {
            console.log(e)
        });

        $('.fileupload').bind('fileuploadprogress', function(e, data) {
            console.log('Uploading...' + Math.round((data.loaded * 100.0) / data.total) + '%');
            $('.progress_bar').html(Math.round((data.loaded * 100.0) / data.total) + '%');
        });

        $('.fileupload').cloudinary_fileupload({
            formData : data,
            acceptFileTypes: /(\.|\/)(gif|jpe?g|png|bmp)$/i
        })
    })

</script>
</body>
</html>