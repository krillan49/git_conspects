puts'                                     Основы GitLab для командной работы'

# Стоит называть ветки понятно, например:
# feature/add-login-form
# bugfix/fix-header
# chore/update-deps


# Клонирование проекта с GitLab
# $ git clone git@gitlab.com:username/project.git


# Создать новую ветку от основной (Гилаб не переименовывает ветку master в main):
# $ git checkout master                          - переключиться на master (или develop)
# $ git pull                                     - забрать последние изменения
# $ git checkout -b feature/name-of-feature


# Отправка ветки в GitLab
# $ git push origin feature/name-of-feature


# Получение обновлений из основной ветки. Перед тем как влить или поработать с веткой:
# а) Простой вариант:
# $ git checkout master
# $ git pull origin master                      - или develop
# $ git checkout feature/name-of-feature
# $ git merge master                            - подтянуть последние изменения
# б) Или сложный, но более чистый:
# $ git rebase master                           - аккуратно переписать историю (если умеешь)


# Удаление ветки после мёржа
# а) Локально:
# $ git branch -d feature/name-of-feature
# б) Удалённо:
# $ git push origin --delete feature/name-of-feature