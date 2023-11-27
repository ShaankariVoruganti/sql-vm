pipeline {
    agent any

        environment {
        TF_VAR_client_id = credentials('azure-client-id')
        TF_VAR_client_secret = credentials('azure-client-secret')
        TF_VAR_tenant_id = '252cffbe-a714-4696-a12b-42b36c3ba3b6'
        TF_VAR_subscription_id = '0fab4497-0c13-457e-9f55-f42ee26e4303'
    }

   stages {
       stage('git clone'){
      steps{
        sh 'git clone https://github.com/ShaankariVoruganti/sql-vm'
      }
    }
        stage('Clear destination') {
       steps {
        sh 'rm -rf sql-vm/sql-repl'
         }
       }
 
        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }
    stage('Clear Terraform Plugin Cache') {
       steps {
        sh 'rm -rf ~/.terraform.d/plugin-cache'
         }
       }
 
         stage('Terraform validate') {
            steps {
                script {
                    sh 'terraform validate'
                }
            }
        }
         stage('Terraform plan') {
            steps {
                script {
                    sh 'terraform plan'
                }
            }
        }
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply -auto-approve'
                }
            }
        }
    }
}
