pipeline{
    agent any
    
    stages{

        stage("build"){
            steps{
                echo 'Construyendo la aplicación ...'
                sh 'npm install'
                nodejs(nodeJSInstallationName: 'Node 10.19.0') {
                    sh 'npm run dev'
                } //Pluglin = NodeJs
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
