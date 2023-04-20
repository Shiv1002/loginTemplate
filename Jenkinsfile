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
                sh "docker build -t node-container ."
                sh "docker run -d -p 8080:8080 node-container"
            }
        }
    }
}
