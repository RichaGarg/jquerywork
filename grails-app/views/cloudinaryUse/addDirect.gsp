
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>New Image</title>

    <asset:javascript src="application.js"/>
    <meta name="layout" content="main"/>

    <asset:javascript src="jquery.ui.widget.js"/>
    <asset:javascript src="jquery.iframe-transport.js"/>
    <asset:javascript src="jquery.fileupload.js"/>
    <asset:javascript src="jquery.cloudinary.js"/>

    %{--<script src="//widget.cloudinary.com/global/all.js" type="text/javascript"/>--}%

    <script type="text/javascript">
        jQuery(document).ready(function() {
            $.cloudinary.config({ cloud_name: 'dalegxqw6', api_key: '392381229984622'})
        });
    </script>
</head>

<body>
<a href="#" id="upload_widget_opener">Upload multiple images</a>

<script src="//widget.cloudinary.com/global/all.js" type="text/javascript"></script>

<script type="text/javascript">
    document.getElementById("upload_widget_opener").addEventListener("click", function() {

        cloudinary.openUploadWidget({ cloud_name: 'dalegxqw6', upload_preset: 'fektjjux'},
                function(error, result) {
                    console.log(error)
                    console.log(JSON.stringify(result))
                });

    }, false);
</script>
</body>
</html>