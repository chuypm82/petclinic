pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/YOUR_USERNAME/petclinic.git'
            }
        }

        stage('Build Maven') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t petclinic-app .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d -p 8082:8082 petclinic-app'
            }
        }

    }
}