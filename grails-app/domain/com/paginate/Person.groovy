package com.paginate

class Person {

    String name
    Integer age

    static constraints = {
        name nullable: false
        age nullable: false
    }
}
