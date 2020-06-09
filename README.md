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
Note: Please make sure you added SONARQUBE_HOST and SONARQUBE_TOKEN in your github project secrets.
```yaml
name: SonarQube

on:
  push:
    branches: [ master ]

jobs:
  run-sonarqube:
    runs-on: ubuntu-latest
    steps:
    - name: SonarQube Scan
      uses: monstar-lab-oss/sonarqube-github-action@v1.0.1
      with:
        url: ${{ secrets.SONARQUBE_HOST }}
        token: ${{ secrets.SONARQUBE_TOKEN }}
```

## SonarQube Analysis Parameters
You can have other sonar scanner [analysis parameters](https://docs.sonarqube.org/latest/analysis/analysis-parameters/) in configuration file named 'sonar-project.properties' inside root directory of your project repo.

Example : sonar-project.properties
```properties
sonar.language=php
sonar.php.tests.reportPath=tests/report/junit.xml
sonar.php.coverage.reportPaths=tests/report/coverage.xml
sonar.projectKey=example-project
sonar.projectName=example-project
sonar.sources=./app
sonar.sourceEncoding=UTF-8
```

Note: Please make sure your run the unit tests before running the sonar scanner to generate the code coverage report.