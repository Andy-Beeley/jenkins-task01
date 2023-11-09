pipeline {
    agent any
    stages {
        stage('Clean up') {
            steps {
                script {
                    try {
                        sh "bash ./jenkins/cleanup.sh"
                    } catch (Exception e) {
                        echo "Failed to clean up"
                    }
                }
            }
        }
        stage('Build images') {
            script {
                try {
                    sh "bash ./jenkins/dockerbuild.sh"
                } catch (Exception e) {
                    echo "Failed to build images"
                }
            }
        }
        stage('Create network') {
            script {
                try {
                    sh "bash ./jenkins/createnetwork.sh"
                } catch (Exception e) {
                    echo "Failed to create network"
                }
            }
        }
        stage('Run Containers') {
            script {
                try {
                    sh "bash ./jenkins/runcontainers.sh"
                } catch (Exception e) {
                    echo "Failed to run containers"
                }
            }
        }
    }
}