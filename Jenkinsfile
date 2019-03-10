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
                sh 'git clone https://github.com/nareshchinnamsetti/terraform-pipeline.git'
            }
        }
        stage('tfsvars create'){
            steps {
                sh 'cp /home/ubuntu/deploy/terraform-pipeline/variables.tf ./jenkins/'
            }
        }
        stage('terraform init') {
            steps {
                sh 'sudo /home/ubuntu/deploy/terraform-pipeline/terraform init ./jenkins'
            }
        }
        stage('terraform plan') {
            steps {
                sh 'sudo /home/ubuntu/deploy/terraform-pipeline/terraform plan ./jenkins'
            }
        }
        stage('terraform apply') {
            steps {
                sh 'sudo /home/ubuntu/deploy/terraform-pipeline/terraform apply ./jenkins'
            }
        }

        
    }
}
