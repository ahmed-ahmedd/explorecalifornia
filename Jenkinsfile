pipeline {
    agent any
    stages {
        stage('Clone Repo') {
            steps {
                git 'git@github.com:ahmed-ahmedd/explorecalifornia.git'
            }
        }
        stage('Build Image') {
            steps {
                sh 'docker build -t explorecalifornia .'
            }
        }
        stage('Load Image to Kind') {
            steps {
                sh 'kind load docker-image explorecalifornia --name explorecalifornia'
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                sh 'kubectl apply -f k8s/'
            }
        }
        stage('Check Deployment') {
            steps {
                sh 'kubectl get pods -n explorecalifornia'
            }
        }
    }
}

