node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    def cimage = docker.build ("docker_setup/dockerfile")
    cimage.inside {
        sh 'make test'
    }
   // sh "docker run -it --name python ${env.IMAGE_ID}" 
   // sh "docker exec eager_bhabha /bin/sh -c 'pip istall pystrich'"
    
  }
  stage('Run Image'){
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
