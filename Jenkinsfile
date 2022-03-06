def version
def dockerImg

pipeline {
    agent any

    tools {
        maven "M3"
    }

    stages{
        stage("Initialize Pipeline"){
            steps {
                echo "Starting the Jenkins pipeline for eureka server"
                echo "Fetching app version.."
                version = readMavenPom().getVersion()
            }
        }

        stage("Maven Build") {
            steps {
                echo "Version is ${version}"
                echo "Building Maven Project"
                sh "mvn compile"
            }
        }

    }

}