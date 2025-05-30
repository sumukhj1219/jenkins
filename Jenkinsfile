pipeline {
    agent {
        docker { image 'golang:1.22' }
    }
    environment {
        GO111MODULE = 'on'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Setup Go') {
            steps {
                sh 'go version'
                sh 'go mod tidy'
            }
        }
        stage('Build') {
            steps {
                sh 'go build -o app'
            }
        }
        stage('Test') {
            steps {
                sh 'go test ./...'
            }
        }
        stage('Archive') {
            steps {
                archiveArtifacts artifacts: 'app', fingerprint: true
            }
        }
    }
    post {
        failure {
            echo 'Build failed!'
        }
        success {
            echo 'Build completed successfully.'
        }
    }
}
