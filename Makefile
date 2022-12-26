down:
	podman-compose down
	sudo rm -rf /var/lib/docker/volumes/jenkins-configuration-as-code_jenkins_home
	podman volume rm jenkins-configuration-as-code_jenkins_home
	podman rmi jenkins-configuration-as-code-jenkins

up:
	#podman pull docker.io/jenkins/jenkins:2.383-jdk11
	podman-compose up --build -d

bash:
	podman-compose exec jenkins bash
