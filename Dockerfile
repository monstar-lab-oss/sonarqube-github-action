FROM sonarsource/sonar-scanner-cli

COPY entrypoint.sh /entrypoint.sh

RUN 

ENTRYPOINT ["/entrypoint.sh"]