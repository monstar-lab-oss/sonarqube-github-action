FROM openjdk:11

LABEL maintainer="Palanisamy Easwaramoorthy"

RUN apt-get update
RUN apt-get install -y curl git tmux htop maven sudo

WORKDIR /usr/src

RUN curl --insecure -o ./sonarscanner.zip -L https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.3.0.2102-linux.zip && \
	unzip sonarscanner.zip && \
	rm sonarscanner.zip && \
	mv sonar-scanner-4.3.0.2102-linux /usr/lib/sonar-scanner && \
	ln -s /usr/lib/sonar-scanner/bin/sonar-scanner /usr/local/bin/sonar-scanner

ENV SONAR_RUNNER_HOME=/usr/lib/sonar-scanner

#COPY sonar-runner.properties /usr/lib/sonar-scanner/conf/sonar-scanner.properties

# Separating ENTRYPOINT and CMD operations allows for core execution variables to
# be easily overridden by passing them in as part of the `docker run` command.
# This allows the default /usr/src base dir to be overridden by users as-needed.
#ENTRYPOINT ["sonar-scanner"] 
#CMD ["-Dsonar.projectBaseDir=/usr/src"]

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]