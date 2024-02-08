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
                nogup python3 app.py &
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
