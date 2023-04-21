pipeline {
    agent any
    
    stages {
        
        stage('Clone repository') {
            steps {
                echo 'Cloning repository...'
                git url: 'https://github.com/Shiv1002/loginTemplate.git'
            }
        }
        stage('Build and run') {
            steps {
                
                bat 'npm install -g http-server pm2' 
                echo 'building node container'
            }
        }
        stage('Run and deploy') {
            steps {
                bat 'pm2 start http-server --name "my-web-server" -a localhost -p 8081'
                echo 'file deployed'
            }
        }
        
    }
}
