package com.paginate

import grails.converters.JSON

class FancyBoxUsingAjaxController {

    def fancyboxuse() {
        render(view: 'fancyboxuse')
    }

    def showBox() {
        render([text: 'Test fancy box using ajax call'] as JSON)
    }
}
