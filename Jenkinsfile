pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'javac  DuplicateCharacters.java'
            }
        }
        stage('Run') {
            steps {
                sh 'java  DuplicateCharacters'
            }
        }
    }
}
