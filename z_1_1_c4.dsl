workspace {
    model {
        user = person "User"
        system = softwareSystem "Claim platform" {
            userWebapp = container "User Webapp" {
                user -> this "Uses"
                loginController = component "Login/Logout" {
                }
                component "Claim" {
                }
                component "Security" {
                    loginController -> this "Uses"
                }
            }
            mainService = container "Main Service" {
                userWebapp -> this "Uses"
            }
            dataRepository = container "Data Repository" {
                mainService -> this "Uses"
            }
            camunda = container "Camunda" {
                mainService -> this "Uses"
            }
            mongo = container "MongoDB" {
                dataRepository -> this "Uses"
            }
            idm = container "IDM" {
                mainService -> this "Uses"
            }
            postgres = container "Postgres" {
                camunda -> this "Uses"
                idm -> this "Uses"
            }
        }
    }
    views {
        systemContext system {
            include *
            autoLayout lr
        }
        container system {
            include *
            autoLayout lr
        }
        component userWebapp {
            include *
            autoLayout lr
        }
        theme default
    }
}