down:
	sudo docker compose down
	sudo rm -rf /var/lib/docker/volumes/jenkins-configuration-as-code_jenkins_home
	sudo docker volume rm jenkins-configuration-as-code_jenkins_home
	sudo docker rmi jenkins-configuration-as-code-jenkins

up:
	sudo docker pull jenkins/jenkins:2.383-jdk11
	sudo docker compose up --build -d

bash:
	sudo docker compose exec jenkins bash
