# OTUS. CI/CD

Репозиторий для демонстрации простого конвейера CI/CD для ML-приложения на Python.

0. Посмотрим приложение и запустим
1. Развернем ВМ
2. Напишем CI/CD конвейер для развертывания приложения на ВМ


## Установка
```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

## Настройки ВМ
```bash
sudo apt-get update
sudo apt-get install python3-pip python3-venv -y
```

## Настройка pre-commit
```bash
pip install pre-commit
pre-commit install
pre-commit run --all-files
```