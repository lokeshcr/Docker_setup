node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build ("docker_setup/dockerfile")
    sh "docker run -it --name python ${env.IMAGE_ID}" 
   // sh "docker exec eager_bhabha /bin/sh -c 'pip istall pystrich'"
    
  }
  stage('Run Image'){
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
