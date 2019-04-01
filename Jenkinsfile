node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    docker.build("docker_setup/dockerfile1")
    docker exec -i container-id sh -c ‘cd /var/lib/jenkins/workspace/Git1_master’
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
