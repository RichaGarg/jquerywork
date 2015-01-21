package com.paginate

import com.paginate.command.PersonCO
import grails.transaction.Transactional

@Transactional
class RemotePaginateExampleService {

    def createPerson(PersonCO personCO) {
        personCO.validate()
        if(!personCO.hasErrors()) {
            Person person = new Person()
            person.properties = personCO.properties
            person.save(flush: true,failOnError: true)
        }
    }

    def bootStrapPersons() {
        (1..150).each {
            if(!Person.countById(it)) {
                new Person(name: 'a' + it, age: 10+it).save(flush: true,failOnError: true)
            }
        }
    }
}
