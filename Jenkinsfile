pipeline {
    agent any
    
    stages {
        stage('Clone repository') {
            steps {
                git url: 'https://github.com/Shiv1002/loginTemplate.git'
            }
        }
        
        stage('Build and Deploy') {
            environment {
                NODE_VERSION = '14'
            }
            steps {
                // Install Node.js
                sh "curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | sudo -E bash -"
                sh "sudo apt-get install -y nodejs"
                
                // Install dependencies
                sh "npm install"
                
                // Build and deploy
                sh "npm run build"
                sh "docker run -d -p 80:80 -v ${pwd}/dist:/usr/share/nginx/html nginx"
            }
        }
    }
}
