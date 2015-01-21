<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Cloudinary Images List</title>
    <meta name="layout" content="main"/>
</head>
<body>
<g:if test="${imageIdList}">
    Images found<br/>
    <g:each in="${imageIdList}" var="imageId">
        <cl:img id="${imageId}" width="200" height="200" crop="fit"/>
        <input type="hidden" name="image" value="${imageId}"/>
        <g:link controller="cloudinaryUse" action="deleteImage" params='[imageId: "${imageId}"]'
                class="btn green">
            Delete
        </g:link>
    </g:each>
</g:if>
<g:else>
    No Image Found<br/>
</g:else>

<g:form controller="cloudinaryUse" action="addImage">
    <input type="submit" value="Add New Image">
</g:form>
</body>
</html>