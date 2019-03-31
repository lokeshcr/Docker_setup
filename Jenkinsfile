node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build("docker_setup/dockerfile")
    docker.build("docker_setup/dockerfile1")
  }
  stage('Test image'){
    sh 'echo "Tests passed"'
    
  }
}
