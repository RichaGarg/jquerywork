package com.paginate

import org.springframework.web.multipart.MultipartFile

class CloudinaryUseController {

    def cloudinaryService
    def dbService
    def generateSignatureService

    def list() {
        List<String> imageIdList = ImageDetail.findAll()*.imageId
        render(view: 'list', model: [imageIdList: imageIdList])
    }

    def addImage() {
        render(view: 'addDirect')
    }

    def add() {
        def sig = generateSignatureService.getSignature()
        long timestamp = generateSignatureService.getTimestamp()
        render(view: 'add', model: [sig: sig, timestamp: timestamp])
    }

    def saveImageToCloud() {
        if(params.imageId){
            MultipartFile imageFile = request.getFile('imageId')
            if (!imageFile?.empty) {
                String imageId = cloudinaryService.upload(imageFile.bytes)?.publicId
                dbService.saveImageId(imageId)
            }
        }
        redirect(action: 'list')
    }

    def deleteImage() {
        if(params.imageId) {
            cloudinaryService.delete(params.imageId)
            dbService.deleteImage(params.imageId)
        }
        redirect(action: 'list')
    }
}
