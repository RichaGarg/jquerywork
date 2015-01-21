class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }
        "/person"(controller: 'remotePaginationExample', action: 'list')
        "/newPerson"(controller: 'remotePaginationExample', action: 'newPerson')
        "/fancyBox"(controller: 'fancyBoxUsingAjax',action: 'fancyboxuse')
        "/jcrausel"(view: 'jcrauseluse')
        "/ckeditor"(view: 'ckeditoruse')
        "/qtip"(view: 'qtipuse')
        "/accordian"(view: 'accordianuse')
        "/autocomplete"(controller: 'autoCompletePersonName', action: 'personName')
        "/cloudinary"(controller: 'cloudinaryUse',action: 'list')
        "/ratingAndEmail"(controller: 'ratingAndEmailValidation', action: 'rating')
        "/fbinvite"(controller: 'inviteFb', action: 'invite')
        "/fullcalender"(view: "fullcalenderuse")
        "/"(view: "/index")
        "500"(view: '/error')
    }
}
