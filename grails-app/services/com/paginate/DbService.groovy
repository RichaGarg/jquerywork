package com.paginate

import grails.transaction.Transactional

@Transactional
class DbService {

    def saveImageId(String imageId) {
        new ImageDetail(imageId : imageId).save(flush: true,failOnError: true)
    }

    def deleteImage(String imageId) {
        ImageDetail imageDetail = ImageDetail.findByImageId(imageId)
        imageDetail.delete(flush: true)
    }


}
