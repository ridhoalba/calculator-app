pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                echo 'building...'
                sh '''
                pip install -r requirements.txt
                '''
            }
        }
        stage('Tests') {
            steps {
                echo'Testing'
                sh '''
                    nohup python3 app.py &
                '''
            }
        }
        stage('Release') {
            steps {
                echo'Release'
            }
        }
        stage('Deploy') {
            steps {
                echo'Deploy to Production'
                echoadafwatg
            }
        }
        stage('Monitor') {
            steps {
                echo'Monitoring'
            }
        }
    }
    post {
        success {
            echo'sukses'
        }
        failure {
            echo'gagal'
        }
    }
}