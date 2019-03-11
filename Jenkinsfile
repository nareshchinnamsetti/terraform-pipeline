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
        stage('git add') {
            steps {
                sh 'sudo git remote add origin https://github.com/nareshchinnamsetti/terraform-pipeline.git ./jenkins'
            }
        }
        stage('git clone') {
            steps {
                sh 'sudo git clone https://github.com/nareshchinnamsetti/terraform-pipeline.git ./jenkins'
            }
        }
        stage('tfsvars create'){
            steps {
                sh 'sudo cp /home/ubuntu/vars.tf ./jenkins/'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/ubuntu/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'ls ./jenkins; sudo /home/ubuntu/terraform plan ./jenkins'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'ls ./jenkins; sudo /home/ubuntu/terraform apply ./jenkins'
            }
        }
        
        stage('terraform ended') {
            steps {
                sh 'echo "Ended....!!"'
            }
        }

        
    }
}
