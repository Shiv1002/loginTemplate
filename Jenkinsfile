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
            environment {
                NODE_VERSION = '14'
            }
            steps {
                sh "python -m SimpleHTTPServer 8000 &"
            }
        }
    }
}
