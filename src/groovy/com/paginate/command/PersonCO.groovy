package com.paginate.command

import grails.validation.Validateable

@Validateable
class PersonCO {
    String name
    Integer age

    static constraints = {
        name nullable: false
        age nullable: false
    }
}
