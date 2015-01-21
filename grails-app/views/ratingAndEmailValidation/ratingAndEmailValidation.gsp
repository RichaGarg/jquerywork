
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Rating And Email</title>
    <style>
    .success{color:#2ECC40;}
    .error{color:#FF4136;}
    .warning{color:#FF851B;}
    </style>
    <asset:stylesheet href="star-rating.min.css"/>
    <asset:javascript src="star-rating.min.js"/>
    <asset:javascript src="mailgun_validator.js"/>
</head>
<body>
<g:form controller="ratingAndEmailValidation" action="save" name="ratingform">
    <input id="ratingbox" name="ratingVal" class="rating" data-min="0" data-max="5" data-step="0.5"  data-stars=5 data-glyphicon="false" data-size="xs" data-show-clear="false"/>
%{--data-symbol="&#xe005;" data-default-caption="{rating} hearts" data-star-captions="{}"--}%
    <input type="email" id="emailid" name="emailId"/>
    <div id="status"></div>
    <br/><input type="button" value="Save" name="SaveData" id="validate_submit"/>
</g:form>
<script>
        jQuery(function() {
            // capture clicks on validate and do nothing
            $("#validate_submit").click(function() {
                return false;
            });
            // attach jquery plugin to validate address
            $('#emailid').mailgun_validator({
                api_key: 'pubkey-747eda01fe1dcaf57253cea6b8bffb1f',
                in_progress: validation_in_progress,
                success: validation_success,
                error: validation_error
            });
        });

        // while the lookup is performing
        function validation_in_progress() {
            $('#status').html('<img src="${resource(dir: 'images',file: 'loading.gif')}" height="16" />');
        }

        // if email successfull validated
        function validation_success(data) {
            if(data['is_valid']) {
                jQuery('#ratingform').submit();
                $('#status').html("");
            } else {
                $('#status').html(get_suggestion_str(data['did_you_mean']));
            }
        }

        // if email is invalid
        function validation_error(error_message) {
            $('#status').html(error_message);
        }

        // suggest a valid email
        function get_suggestion_str(alternate) {
            if (alternate) {
                return '<span class="warning">Did you mean <em>' +  alternate + '</em>?</span>';
            } else {
                return '<span class="error">Address is invalid.</span>';
            }
        }
</script>
</body>
</html>