package com.paginate

import com.cloudinary.Cloudinary
import grails.transaction.Transactional
import org.codehaus.groovy.grails.web.json.JSONObject

@Transactional
class GenerateSignatureService {

    def grailsApplication
    long timestamp = new Date().getTime()

    def getSignature() {
        String url = grailsApplication.config.grails.plugin.cloudinary.url
        Cloudinary cloudinary = new Cloudinary(url)
        Map<String, Object> params = new HashMap<String, Object>()
        Map options = Cloudinary.emptyMap()
        boolean returnError = Cloudinary.asBoolean(options.get("return_error"), false);
        String apiKey = Cloudinary.asString(options.get("api_key"), cloudinary.getStringConfig("api_key"));
        if (apiKey == null)
            throw new IllegalArgumentException("Must supply api_key");
        String apiSecret = Cloudinary.asString(options.get("api_secret"), cloudinary.getStringConfig("api_secret"));
        if (apiSecret == null)
            throw new IllegalArgumentException("Must supply api_secret");
        params.put("callback", "localhost:8080/cloudinary_cors.html")
        params.put("timestamp", timestamp)
        String expected_signature = cloudinary.apiSignRequest(params, "Q7_Z3MMlrTX-vlfAa3giMPR028g")
        return expected_signature
    }

    def getTimeStamp() {
        return timestamp
    }
}
