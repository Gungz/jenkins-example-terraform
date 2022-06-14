pipeline {
  options {
    skipDefaultCheckout(true)
  }
  stages{
    stage('clean workspace') {
      steps {
        cleanWs()
      }
    }
    
    stage('call terraform pipeline') {
      steps {
        build(job: "TerraformParameterized", 
	      parameters: [
		  string(name: "TF_REPO_URL", value: "https://github.com/Gungz/jenkins-example-terraform.git"),
		  string(name: "TF_REPO_BRANCH", value: "main")
	      ],
	      propagate: true,
	      wait: true
	     )
      }
    }
  }
  post {
    always {
      cleanWs()
    }
  }
}
