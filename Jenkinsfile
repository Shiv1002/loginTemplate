pipeline {
    agent any
    
    stages {
        stage('Check for Docker') {
            steps {
                bat "docker --version"
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
                bat "docker build -t node-container ."
                bat "docker run -d -p 8080:8080 node-container"
                echo 'deployed index html file on 8080 port'
            }
        }
        
        
    }
}
