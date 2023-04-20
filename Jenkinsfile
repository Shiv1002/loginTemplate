pipeline {
    agent any
    
    stages {
        stage('Check for Docker') {
            steps {
                sh "docker --version"
            }
        }
        stage('Clone repository') {
            steps {
                echo 'Cloning repository...'
                git url: 'https://github.com/Shiv1002/loginTemplate.git'
            }
        }
        stage('Build and Deploy') {
            steps {
                sh "/usr/bin/docker build -t node-container ."
                sh "/usr/bin/docker run -d -p 8080:8080 node-container"
            }
        }
        
        
    }
}
