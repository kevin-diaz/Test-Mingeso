pipeline{
    agent any
    //Se carga nodejs paa poder ejecutar los comandos npm.
    tools{
        nodejs 'NJ'
    }
    stages{
        // Primera estapa: construcción; se descaragan las dependencias.
        stage('build'){
            steps{
                echo 'Construyendo la aplicación ...'
                sh 'npm install'
            }
        }
        // Segunda estapa: testeo; se realizan las pruebas definidas en la carpeta de test del proyecto.
        stage('test'){
            steps{
                echo 'Testeando la aplicación ...'
                sh 'npm test'
            }
        }
        // Tercera etapa: testeo del código fuente; se analiza el código fuente en busca de errores.
        stage('code test'){
            steps{
                echo 'Analizando el código'
                sh 'npm run lint'
            }
        }
        
        //stage('deploy'){
         //   steps{
          //      echo 'Desplegando la aplicación ...'
          //      sh 'npm run dev'
        //    }
      //  }
        
        stage('Deliver') { 
            steps {
                sh './jenkins/scripts/deliver.sh' 
                input message: 'Finished using the web site? (Click "Proceed" to continue)' 
                sh './jenkins/scripts/kill.sh' 
            }
        }

    }
}
