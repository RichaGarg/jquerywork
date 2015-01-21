package com

import com.paginate.User
import grails.transaction.Transactional

@Transactional
class BootstrapService {

    def fakerService

    def generateData() {
        new User(name: fakerService.name(), email: fakerService.email(), rating: 1.2, phoneNo: fakerService.phoneNumber(), address: fakerService.secondaryAddress(), pincode: fakerService.zipCode(), description: fakerService.sentence(3), occupation: fakerService.occupation()).save(flush: true,failOnError: true)
        new User(name: fakerService.firstName(), email: fakerService.email('defined.email'), rating: 1.3, phoneNo: fakerService.phoneNumber(), address: fakerService.streetAddress(), pincode: fakerService.zipCode(), description: fakerService.sentence(5), occupation: fakerService.occupation()).save(flush: true,failOnError: true)
        new User(name: fakerService.lastName(), email: fakerService.freeEmail(), rating: 1.4, phoneNo: fakerService.phoneNumber(), address: fakerService.streetName(), pincode: fakerService.zipCode(), description: fakerService.paragraph(1), occupation: fakerService.ukPostcode()).save(flush: true,failOnError: true)
        new User(name: fakerService.userName(), email: fakerService.freeEmail('defined.free email'), rating: 2, phoneNo: fakerService.phoneNumber(), address: fakerService.city(), pincode: fakerService.zipCode(), description: fakerService.paragraph(2), occupation: fakerService.bothify('###???## ??#')).save(flush: true,failOnError: true)
        new User(name: fakerService.userName('define user name'), email: fakerService.email(), rating: 3.2, phoneNo: fakerService.phoneNumber(), address: fakerService.usState(), pincode: fakerService.zipCode(), description: fakerService.sentence(2), occupation: fakerService.companyName()).save(flush: true,failOnError: true)
        new User(name: fakerService.domainName(), email: fakerService.freeEmail(), rating: 5, phoneNo: fakerService.phoneNumber(), address: fakerService.usStateAbbr(), pincode: fakerService.zipCode(), description: fakerService.sentence(1), occupation: fakerService.companyCatchPhrase()).save(flush: true,failOnError: true)
        new User(name: fakerService.letterify('?? ???? ??'), email: fakerService.email(), rating: 4.5, phoneNo: fakerService.phoneNumber(), address: fakerService.ukCountry(), pincode: fakerService.zipCode(), description: fakerService.sentence(4), occupation: fakerService.companyBS()).save(flush: true,failOnError: true)
    }
}
