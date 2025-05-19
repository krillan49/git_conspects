puts'                                     Основы GitLab для командной работы'

# Называй ветки понятно:
# feature/add-login-form, bugfix/fix-header, chore/update-deps


# 1. Клонирование проекта с GitLab
# $ git clone git@gitlab.com:username/project.git

# 2. Работа с ветками
# a) Создать новую ветку от основной:
# $ git checkout master                          - Переключиться на master (или develop)
# $ git pull                                   - Забрать последние изменения
# $ git checkout -b feature/name-of-feature

# 3. Добавь изменения
# $ git add .
# $ git commit -m "Добавил кнопку и фиксы"

# 4. Отправка ветки в GitLab
# $ git push origin feature/name-of-feature

# 5. Создание Merge Request (MR)

# 6. Ревью и обсуждение
# Вноси правки → коммить → пушь → изменения подтянутся в MR автоматически.

# 7. Получение обновлений из основной ветки. Перед тем как влить или поработать с веткой:
# а)
# $ git checkout master
# $ git pull origin master                      - или develop
# $ git checkout feature/name-of-feature
# $ git merge master                            - подтянуть последние изменения
# б) Или:
# $ git rebase master                           - аккуратно переписать историю (если умеешь)

# 8. Удаление ветки после мёржа
# а) Локально:
# $ git branch -d feature/name-of-feature
# б) Удалённо:
# $ git push origin --delete feature/name-of-feature