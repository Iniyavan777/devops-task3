pipeline {
    agent any
    environment {
        DOCKERHUB_CREDS = credentials('dockerhub-creds')
        DEV_IMAGE = 'iniyacloud03/dev:latest'
        PROD_IMAGE = 'iniyacloud03/prod:latest'
    }
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Iniyavan777/devops-task3.git'
            }
        }
        stage('Build') {
            steps {
                sh 'docker build -t $DEV_IMAGE .'
            }
        }
        stage('Push Dev') {
            steps {
                sh 'echo $DOCKERHUB_CREDS_PSW | docker login -u $DOCKERHUB_CREDS_USR --password-stdin'
                sh 'docker push $DEV_IMAGE'
            }
        }
    }
}
