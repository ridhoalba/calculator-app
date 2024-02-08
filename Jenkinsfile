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
                pip install -r requirements.txt
                nohup gunicorn -w 4 -b 0.0.0.0:80 app:app > /dev/null 2>&1 &
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
