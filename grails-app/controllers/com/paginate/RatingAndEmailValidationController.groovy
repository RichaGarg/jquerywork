package com.paginate

class RatingAndEmailValidationController {

    def rating() {
        render(view: 'ratingAndEmailValidation')
    }

    def save() {
        println('rating and email params-- ' + params)

        redirect(action: 'rating')
    }

}
