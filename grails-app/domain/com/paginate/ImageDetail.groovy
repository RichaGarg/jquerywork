package com.paginate

class ImageDetail {

    String imageId

    static constraints = {
        imageId nullable: false,unique: true
    }
}
