puts '                                              Ветвления'

# В Git ветвления очень быстро работают, в отличие от многих других систем управления версиями

# Ветка это совокупность связанных, идущих друг за другом коммитов

# Принято вносить изменения каждым из разработчиков в свою копию оригинальной версии кода. Каждая такая копия проекта обособляется веткой – она изолирована от других и имеет собственную историю. В каждой ветке есть свои фаилы(отдельные части проекта) и свои коммиты, видимые только когда активирована данная ветка.

# Какето ветки можем создавать только локально, какие-то связывать с удаленным репозиторием и пушить на него итд

# master - главная ветка создается по умолчанию.

# $ git branch                          - тоже посмотреть все ветки ??
# > git branch -a                       - посмотреть все ветки проекта и какая из них активная (--all тоже что и -a)
# > git branch -v                       - посмотреть ветки с дополнительными данными по последним коммитам



puts '                                           Основные команды'

# > git branch forum                    - создание новой ветки с названием forum

# > git checkout forum                  - переход на ветку forum

# > git checkout -b admin               - создание ветки admin и сразу переход на нее(но ветка так создастся относительно той на которо находились, соответсвенно подтянет все ее коммиты)

# > git branch -m new_name              - переименование текущей ветки на new_name

# > git branch -d forum                 - удалить ненужную ветку. (нужно находиться в другой ветке)
# $ git branch -D forum                 - удалить ненужную ветку, если в ней есть не смерженные изменения и предыдущий варик не хочет удалять



puts '                                           Работа внутри веток'

# Создаем\меняем фаилы можно в любой ветке, тк не закоммиченные(?? или не доавленные в стадию ожидания, тоесть она независима от веток ??) переходят за нами, кода мы переключаем ветку

# Пустые папки и их надпапки почемуто видны в других ветках. Чтобы предотвратить это нужно оставить там какой-то фаил обычно это фаил-заполнитель .gitkeep

# Делаем коммиты для конкретной ветки только после перехода на нее



puts '                                            merge и конфликты'

# merge - команда вливающая ветку из аргумента в текущую ветку. Предложит дать название коммиту слияния. Все отличия из влитой ветки добавиляются в текущую ветку, но сама влитая останется. В логе у текущей объединенной ветки будет двойное название, до удаления влитой ветки.
# > git merge forum                     - объединяем текущую ветку с ветой forum.

# Если в обеих сливающихся ветках, в одних и тех же фаилах, есть разный новый код(в обеих измененный в коммитах уже после расхождения веток, если изменен только в 1й из них, то норм смержит сам), то может произойти конфликт слияния. Его придется исправить вручную в фаилах и потом сделать новый коммит:
# Гит добавит все отличия из обоих этих фаилов в слитом фаиле, выделив строки в коде где есть конфликсы специальными строчками символов, обозачив так где была разница между слитыми фаилами. В терминал напишет в каких фаилах есть конфликты.
# Пример обозначения конфликов в фаиле:
# <<<<<<< HEAD
# a = 2 * b                    версия кода из версии фаила в ветке в которую сливали (например master)
# =======
# a = 3 + b                    версия кода из дугого фаила в ветке которую вливали
# >>>>>>> alternative_output
# Все измененияэти изменения слияния(? включая и другие изенения без конфликтов ?) будут соданны локальными и не закоммиченными, чтобы вручную убрать, что не нужно
# Так мы находимся как бы в процессе мержа и если введем "git status" то там покажет, что фаил изменен в обеих ветках
# Далее меняем код из этих фаилов как нам нужно и вручную создаем новый коммит с названием например "merge branch1 to branch2"



puts '                                        Примеры использования веток'

# Мы решили релизить первую версию продукта. Мы бренчимся от мастера и называем ее v1. Далее в мастере продолжается разработка не зависимо от v1. Мы взяли v1, скомпилили, кастомеры скачали. Далее мы планируем релизить патч версии v1, чтобы фиксить критикал баги, при этом не меняя feature set. Мы фиксим критикал баги в мастере и черрипикаем нужные изменения в v1, которые мы в будущем зарелизим как v1.1. Версию v2 мы будем точно так же бренчить от мастера. С ветками и историей мы имеем возможность навигации по временному измерению и возможность продолжить с любой точки в любом направлении

# Предположим, что у тебя кодовая база ужасная и её нужно переписать. Вот ты запускаешь рубокоп, переписываешь тонну логики, но тут тебе прилетает срочная задача от заказчика. И под текущий вариант проекта, который ты переписываешь, задача не может быть реализована, так как слишком много всего было еще не сделано, часть тестов не работает после твоего вмешательства в кодовую базу, в общем, там еще рефакторить и рефакторить. Стоит сделать ветку, например с именем refactoring. И переключаешься в привычную ревизию проекта, где все работает, хоть и криво-косо, но задача от заказчика будет выполнена, а как сделал и зарелизил в мастер, то снова переключаешься на ветку рефакторинга














#
