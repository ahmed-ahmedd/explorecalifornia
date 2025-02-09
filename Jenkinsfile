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
                sh 'kubectl apply -f Deployment.yaml'
                sh 'kubectl apply -f service.yaml'
                sh 'kubectl apply -f ingress.yaml'
            }
        }
        stage('Check Deployment') {
            steps {
                sh 'kubectl get pods'
                sh 'kubectl get svc'
                sh 'kubectl get ingress'
            }
        }
    }
}

