def version
def dockerHubImg = "aswinrprasad/eureka"
def dockerGitImg = "https://ghcr.io/JMS-PATH/eureka-server"
def branchName = env.BRANCH_NAME

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
                script{
                    version = readMavenPom().getVersion()
                    mvnGoals = "clean install"
                    if( branchName == "main" ) {
                        version = version.replace("-SNAPSHOT", "")
                        mvnGoals = "clean deploy versions:set -DremoveSnapshot=true"
                    }
                    else if (branchName ==~ "~/(hotfix|feature)/"){
                        version = version+"-dev-hof"
                    }
                    else {
                        version = version+"-dev"
                    }
                }
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