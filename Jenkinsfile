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
               sh 'npm install --no-deprecated --omit=optional'
                
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
