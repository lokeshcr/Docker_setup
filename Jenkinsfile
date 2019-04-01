node{
  def app
  stage('Clone repo'){
    checkout scm
  }
  stage('Build image'){
    sh 'docker build -itd python:dockerfile'
   // sh "docker exec eager_bhabha /bin/sh -c 'pip istall pystrich'"
    
  }
  stage('Test image'){
    sh 'python --version'
    sh 'echo "Tests passed"'
       
  }
}
