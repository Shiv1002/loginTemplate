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
        stage('Install http-server') {
            steps {
                
                bat 'npm install -g http-server'
                echo 'building node container'
            }
        }
        stage('Run and deploy') {
            steps {
                bat 'http-server -a localhost -p 8080'
                echo 'file deployed'
            }
        }
        
    }
}
