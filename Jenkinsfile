pipeline {
    agent {
        node {
            label 'master'
        }
    }

    stages {

        stage('terraform started') {
            steps {
                sh 'echo "Started...!" '
            }
        }
        stage('git clone') {
            steps {
                sh ' git credentialsId: '69546ca9-7210-4ad3-a23e-2c29a4dcfc4b', url: 'http://github.com/nareshchinnamsetti/terraform-pipeline.git''
            }
        }
        
