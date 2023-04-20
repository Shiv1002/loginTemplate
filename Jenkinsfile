pipeline {
    agent any
    
    stages {
        stage('Clone repository') {
            steps {
                echo 'Cloning repository...'
                git url: 'https://github.com/Shiv1002/loginTemplate.git'
            }
        }
        
        stage('Build and Deploy') {
            
            steps {
                echo 'creating node container'
                sh "docker build -t node-container ."
                echo 'running node container'
                sh "docker run -d -p 8080:8080 node-container"
            }
        }
    }
}
