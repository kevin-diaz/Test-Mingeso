pipeline{
    agent any
    
    stages{

        stage("build"){
            steps{
                echo 'Construyendo la aplicación ...'
                nodejs(nodeJSInstallationName: 'Node 6.x', configId: '<config-file-provider-id>') {
                    sh 'npm config ls'
                }
                //sh 'npm install'
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
