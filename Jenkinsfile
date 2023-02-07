pipeline {
    agent any
    stages {
        stage('Test') {
            steps {
                bat "git clone https://github.com/infuse-training-jan-2023/Practice-Vibhav/"
                bat "cd Practice-Vibhav"
                bat "git switch jenkins/ruby-1"
                bat "ruby test_challenge3.rb"
            }
        }
         stage('Merge') {
            steps {
                bat "git switch jenkins/ruby"
                bat "git merge jenkins/ruby-1"
                bat "git commit -m 'merged the branches jenkins/ruby-1 and jenkins/ruby'"
            }
        }
    }
}
