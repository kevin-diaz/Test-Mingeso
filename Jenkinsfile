pipeline{
    agent any
    tools{
        nodejs 'NJ'
    }
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
        
        stage('code test'){
            steps{
                echo 'Analizando el código'
                sh 'npm run lint'
            }
        }
        
        stage('deploy'){
            steps{
                echo 'Desplegando la aplicación ...'
            }
        }

    }
}
