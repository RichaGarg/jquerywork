class BootStrap {

    def remotePaginateExampleService
    def bootstrapService

    def init = { servletContext ->
        remotePaginateExampleService.bootStrapPersons()
        bootstrapService.generateData()
    }
    def destroy = {
    }
}
