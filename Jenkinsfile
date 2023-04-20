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
        
        
    }
}
