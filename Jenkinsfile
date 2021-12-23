
pipeline {
    agent {
                docker {
                    image 'ruby:2.6'
                    args '-u root:root -v $HOME/workspace/TerraformState:/TerraformState'
                }
    }

    environment {
        AWS_ACCESS_KEY_ID  = credentials('AWS_ACCESS_KEY_IDII')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEYII')
        AWS_DEFAULT_REGION = credentials('AWS_DEFAULT_REGION')
        // EKS_CLUSTER_NAME = credentials('EKS_CLUSTER_NAME')
        // AWS_ACCOUNT_ID = credentials('AWS_ACCOUNT_ID')
    }

    stages {
        stage('Initiate Terraform Remote Backend') {
            steps {
                sh 'apt-get update && apt-get install -y gnupg software-properties-common curl python3'
                sh 'curl -fsSL https://apt.releases.hashicorp.com/gpg | apt-key add - '
                sh 'apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"'
                sh 'apt-get update && apt-get install terraform'
                sh 'terraform init'
                sh 'terraform apply -auto-approve'
                sh 'python3 append.py'
                sh 'terraform init -force-copy'
                }
            }
        }


    }