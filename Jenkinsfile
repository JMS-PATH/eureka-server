def version
def dockerImg

pipeline {
    agent any

    tools {
        maven "M3"
    }

    stages{
        stage("Initialize Pipeline"){
            script {
                echo "Starting the Jenkins pipeline for eureka server"
                echo "Fetching app version.."
            }
        }

        stage("Maven Build") {
            script {
                echo "Testing Jenkinsfile"
            }
        }

    }

}