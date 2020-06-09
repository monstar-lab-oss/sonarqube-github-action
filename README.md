# Sonarqube Github Action
Integrate SonarQube with Github action to automate the code analysis. Detect bugs, vulnerabilities, code smells and get code coverage on each pull request or push.

## Inputs

### `url`

**Required** The URL of the SonarQube server.

### `token`

**Required** The token generated for SonarQube project.

## Example usage
```bash
uses: monstar-lab-oss/sonarqube-github-action@v1
with:
  url: ${{ secrets.SONARQUBE_URL }}
  token: ${{ secrets.SONARQUBE_TOKEN }}
```