pipeline {
   agent any
    stages {
        stage('Checkout') {
            steps {
                sh 'git clone https://github.com/dobromir-hristov/todo-app.git'
            }
        }

        stage('Install dependencies') {
            steps {
               sh 'npm install'
                
            }
        }
        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }
        stage('Run tests') {
            steps {
                sh 'npm test'
            }
        }

        
    }
}
