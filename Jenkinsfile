pipeline{
    agent any
    //Se carga nodejs paa poder ejecutar los comandos npm.
    tools{
        nodejs 'NJ'
        dockerTool 'docker'
    }
    //Se definen las variables de entorno.
    environment {
        //Nombre del repositorio
        DOCKER_IMAGE_NAME = "kevindiaz/nodejs-aplication"
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
        //    steps{
        //       echo 'Desplegando la aplicación ...'
        //       sh 'sudo npm run dev'
        //   }
        //}
        
        // Cuarta etapa: dockerizamiento; se dockeriza la aplicación.
        stage('Build Docker Image') {
            steps {
                script {
                    app = docker.build(DOCKER_IMAGE_NAME)
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker_hub_login') {
                        app.push("${env.BUILD_NUMBER}")
                        app.push("latest")
                    }
                }
            }
        }
    }
}
