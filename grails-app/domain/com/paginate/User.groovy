package com.paginate

class User {

    String name
    String email
    Float rating
    String phoneNo
    String address
    Long pincode
    String description
    String occupation

    static constraints = {
        email email: true

    }
}
