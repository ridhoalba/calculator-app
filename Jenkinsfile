pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'building...'
                sh '''
                docker build -t calculator:1.0 .
                docker create --name calculator -p 8081:80 calculator:1.0
                '''
            }
        }
        stage('Tests') {
            steps {
                echo 'Testing'
                sh '''
                docker start calculator
                '''
            }
        }
        stage('Release') {
            steps {
                echo 'Release'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploy to Production'
            }
        }
        stage('Monitor') {
            steps {
                echo 'Monitoring'
            }
        }
    }
    post {
        success {
            echo 'Sukses'
        }
        failure {
            echo 'Gagal'
        }
    }
}
