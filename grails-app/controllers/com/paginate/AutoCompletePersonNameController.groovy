package com.paginate

import grails.converters.JSON

class AutoCompletePersonNameController {

    def personName() {
        render(view: 'autocompleteuse')
    }

    def getAllPersons() {
        def persons = Person.list()*.name
        def response = []
        persons.each{
            response << "${it}"
        }
        render response as JSON
    }
}
