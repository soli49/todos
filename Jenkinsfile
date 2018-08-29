#!/usr/bin/env groovy



    
        node {
        label 'Slave'
            def customImage = docker.build("test-image","./")
             customImage.inside {
        sh 'meteor --allow-superuser'
    
            }
    }

