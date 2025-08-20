pipeline {
    agent any

    environment {
        IMAGE_TAG = "soniya/app:${env.BUILD_NUMBER}"
        REPO_URL = "https://github.com/soniya-kothari/exam.git"
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: "${REPO_URL}"
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${IMAGE_TAG} ."
                }
            }
        }
    }

    post {
        success {
            echo "Docker image built successfully: ${IMAGE_TAG}"
        }
        failure {
            echo "Build failed!"
        }
    }
}
