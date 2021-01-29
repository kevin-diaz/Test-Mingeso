pipeline{
    agent any
    
    stages{

        stage("build"){
            steps{
                echo 'Construyendo la aplicación ...'
                sh 'npm install'
                sh 'npm run dev'
            }
        }

        stage("test"){
            steps{
                echo 'Testeando la aplicación ...'
            }
        }
        
        stage("deploy"){
            steps{
                echo 'Desplegando la aplicación ...'
            }
        }

    }
}
