pipeline{
    agent any
    
    stages{

        stage('build'){
            steps{
                echo 'Construyendo la aplicación ...'
                sh 'npm install'
            }
        }

        stage('test'){
            steps{
                echo 'Testeando la aplicación ...'
                sh 'npm test'
            }
        }
        
        stage('deploy'){
            steps{
                echo 'Desplegando la aplicación ...'
            }
        }

    }
}
