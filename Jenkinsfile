pipeline {
    agent any
     
     environment {
        AWS_DEFAULT_REGION = "ap-south-1"
        BUCKET_NAME = "jenkins-terraform-${BUILD_NUMBER}"
     }
     stages {
        stage('Clone repo') {
            steps {
        git url: 'https://github.com/jayantidani/terraform-S3-jenkins.git', branch: 'main'
        }
    } 
        stage('Terraform init') {
            steps {
                sh 'terraform init'
        }
    }    
        stage('Terraform plan'){
            steps {
                sh 'terraform plan -var="bucket_name=$BUCKET_NAME"'
        }
    }    
        stage('Terraform apply'){
            steps {
                sh 'terraform apply -auto-approve -var="bucket_name=$BUCKET_NAME"'
        } 
    }           
  }
}