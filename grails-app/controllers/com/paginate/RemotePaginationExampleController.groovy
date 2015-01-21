package com.paginate

import com.paginate.command.PersonCO

class RemotePaginationExampleController {

    def remotePaginateExampleService
    def grailsApplication

    def list() {
        Integer max = grailsApplication.config.grails.plugins.remotepagination.max
        if(params.max)
            max = Integer.parseInt(params.max)
        println('params max: ' + params.max)
        println('max: ' + max)
        println('list size-- ' + Person.list(max: max).size())
        render(view: "listPersons" ,model:[ personInstanceList: Person.list(max: max),max: max])
    }

    def filter() {
        println('filter list size-- ' + Person.list(params).size())
        Integer max = grailsApplication.config.grails.plugins.remotepagination.max
        if(params.max)
            max = Integer.parseInt(params.max)
        println('params max filter: ' + params.max)
        println('max filter: ' + max)
        render(template: "listPersons", model:[ personInstanceList: Person.list(params), max: max])
    }

    def newPerson() {
        render(view: 'create')
    }

    def create(PersonCO personCO) {
        remotePaginateExampleService.createPerson(personCO)
        redirect(action: 'list')
    }
}
