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