pipeline{
    agent any
    tools{
        nodejs 'JS'
    }
    stages{

        stage('build'){
            steps{
                echo 'Construyendo la aplicación ...'
                //def varNode = tool 'JS'
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
