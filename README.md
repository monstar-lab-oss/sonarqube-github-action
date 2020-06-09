# SonarQube Github Action
Integrate SonarQube with Github action to automate the code analysis. Detect bugs, vulnerabilities, code smells and get code coverage on each pull request or push.

## Pre-requisite
- Setup [SonarQube](https://docs.sonarqube.org/latest/setup/install-server/) server.

## Inputs

### `url`

**Required** The URL of the SonarQube server.

### `token`

**Required** The token generated for SonarQube project. See [how to generate SonarQube token](https://docs.sonarqube.org/latest/user-guide/user-token/).

## Example usage
```bash
uses: monstar-lab-oss/sonarqube-github-action@v1
with:
  url: ${{ secrets.SONARQUBE_URL }}
  token: ${{ secrets.SONARQUBE_TOKEN }}
```

## SonarQube Analysis Parameters
Except 'sonar.host.url' and 'sonar.login' you can have your project configuration file 'sonar-project.properties' for sonar scanner in root directory of your project repo.

Please make sure your run the unit tests before running the sonar scanner to generate the code coverage report.

Example : sonar-project.properties
```bash
sonar.language=php
sonar.php.tests.reportPath=tests/report/junit.xml
sonar.php.coverage.reportPaths=tests/report/coverage.xml
sonar.projectKey=example-project
sonar.projectName=example-project
sonar.sources=./app
sonar.sourceEncoding=UTF-8
```