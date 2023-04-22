pipeline {
    agent any
    
    stages {
        stage('Check  docker'){
            steps{
                bat 'docker --version'
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
                bat "docker run -d -p 8081:8080 node-container"
                echo 'file is deployed'
            }
        }
        
    }
}
