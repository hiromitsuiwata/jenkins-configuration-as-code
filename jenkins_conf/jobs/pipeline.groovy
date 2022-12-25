node {
  stages {
    stage('stage1') {
      steps {
        shell('echo hello1')
      }
    }
    stage('stage2') {
      steps {
        shell('echo hello2')
      }
    }
  }
}
