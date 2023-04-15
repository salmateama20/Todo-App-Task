pipeline {
   agent {
        docker {
            image 'node:lts-bullseye-slim' 
            args '-p 3000:3000' 
        }
    
    stages {
        stage('Checkout') {
            steps {
                sh 'git clone https://github.com/dobromir-hristov/todo-app.git'
            }
        }

        stage('Install dependencies') {
            steps {
               sh 'npm install --no-deprecated --omit=optional'
                sh 'npm install'
            }
        }

        stage('Run tests') {
            steps {
                sh 'npm test'
            }
        }

        stage('Build') {
            steps {
                sh 'npm run build'
            }
        }

        // stage('Build Docker image') {
        //     steps {
        //         script {
        //             def dockerImage = docker.build("salmateama20/todo-app-1:${env.BUILD_NUMBER}")
        //         }
        //     }
        // }

        // stage('Push Docker image') {
        //     steps {
        //         script {
        //             docker.withRegistry('https://github.com/salmateama20/todo-app-1.git') {
        //                 def dockerImage = docker.image("salmateama20/todo-app-1:${env.BUILD_NUMBER}")
        //                 dockerImage.push()
        //             }
        //         }
        //     }
        // }
    }
}
