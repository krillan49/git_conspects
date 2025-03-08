puts '                                            Git и GitHub Теги'

# > git tag          - выводит список всех тегов если они есть

# > git tag version1_0_0        - создать тег локально (для последнего коммита)
# > git tag -d version1_0_0     - удалить тег локально

# > git push origin --tags                      - залить все теги на GitHub
# > git push origin --delete version1_0_0       - удалить тег с GitHub

# Можно перемещаться по тегам также как по веткам:
# > git checkout v1_0_0                   - переместиться на коммит по тегу
# > git checkout main                     - вернуться на последний коммит
