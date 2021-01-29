pipeline{
    agent any
    
    stages{

        stage("build"){
            steps{
                echo 'Construyendo la aplicación ...'
                nodejs(nodeJSInstallationName: 'Node 10.19.0') {
                    sh 'npm run dev'
                }
                //sh 'npm install'
                //sh 'npm run dev'
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
