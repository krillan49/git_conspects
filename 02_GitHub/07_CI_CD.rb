puts '                                          GitHub Actions CI/CD'

# GitHub Actions - этот инструмент для CI/CD доступен для GitHub и GitHub Enterprise. В отличие от Jenkins, GitHub Actions предлагает декларативные сценарии сборки с YAML-конфигурацией. Кроме того, в данном решении доступна интеграция с различными системами обеспечения качества (например SonarCube). Таким образом, сборку можно описать в нескольких текстовых строках.


# Чтобы на каждый Pull Request включалась CI, можно настроить процесс с помощью GitHub Actions. Для этого нужно указать события, при которых должен запускаться процесс CI/CD. Например, чтобы он запускался при каждом push или pull request в определённую ветку.

# Для этого в файле dev.yml (либо .github/workflows/ci.yml) указывают события, при которых должен запускаться процесс CI/CD:

# name: Continuous Integration and Deployment
# on:
#   push: branches: [dev]
#   pull_request: branches: [dev]

# Также в настройках CI можно указать, что перед мержем в Pull Request должен успешно пройти билд. Для этого нужно добавить галочку в поле Require status checks to pass before merging и выбрать нужный статус — build
