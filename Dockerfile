# — выбираем готовый образ для старта (на базе которого мы будем создавать свой)
FROM openjdk:8-slim

# — описывает метаданные, например — сведения о том, кто создал и поддерживает образ
# LABEL

# — устанавливает постоянные переменные среды
# ENV

# — установка рабочего каталога внутри образа
WORKDIR /usr/src/myapp

# — выполняет команду и создаёт слой образа, используется для установки в контейнер пакетов
# RUN

# — копируем файлы из текущего локального каталога в файловую систему образа
COPY . /usr/src/myapp

# — копирует файлы и папки в контейнер, может распаковывать локальные .tar-файлы, а так же получать на вход URL и скачивать файл внутрь image
# ADD

# — описываем какие порты будет слушать контейнер
# — надо открыть снаружи порт 9999
EXPOSE '9999'

# — описывает команду с аргументами, которую нужно выполнить когда контейнер будет запущен
# — аргументы могут быть переопределены при запуске контейнера
# — в файле может присутствовать лишь одна инструкция CMD
CMD ["java", "-jar", "db-api-for-docker.jar"]

# — задаёт переменные для передачи Docker во время сборки образа
# ARG

# — предоставляет команду с аргументами для вызова во время выполнения контейнера
# — агументы не переопределяются
# ENTRYPOINT

# — создаёт точку монтирования для работы с постоянным хранилищем
# VOLUME