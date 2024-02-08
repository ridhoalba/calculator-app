pipeline {
    agent any
    
    stages {
        stage('Build') {
            steps {
                echo 'building...'
            }
        }
        stage('Tests') {
            steps {
                echo 'Testing'
                sh '''
                gunicorn -w 4 -b 0.0.0.0:80 app:app
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
