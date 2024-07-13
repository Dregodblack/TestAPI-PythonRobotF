*** Settings ***
Documentation       Exemplos da própria Library: https://github.com/bulkan/robotframework-requests/blob/master/tests/testcase.robot
...                 Doc da API do GitHub: https://developer.github.com/v3/
Resource                ../config/ConfigGit.robot

# robot -d ./relatorios Teste\Git.robot

*** Test Cases ***
CT01: Fazendo autenticação básica (Basic Authentication)
    Conectar com autenticação básica na API do GitHub
    # Conectar com autenticação por token na API do GitHub
    Solicitar os dados do meu usuário

CT02: Usando parâmetros
    Conectar na API do GitHub sem autenticação
    Pesquisar issues com o state "open" e com o label "bug"

CT03: Usando headers
    Conectar com autenticação básica na API do GitHub
    # Conectar com autenticação por token na API do GitHub
    Enviar a reação "+1" para a issue "8"