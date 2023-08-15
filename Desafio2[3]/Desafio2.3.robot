*** Settings ***
Documentation    Desafio 3 da Segunda Semana da Prime Hero Academy, usando For simples pra apresentar uma lista.

*** Variables ***
@{FRUTAS}    banana    laranja    melão    melancia    maçã    ameixa

*** Keywords ***
Todas as frutas
    Log To Console    *
    FOR    ${element}    IN    @{FRUTAS}
        Log To Console    ${element}
    END
Primeiras frutas
    Log To Console    *
    FOR    ${element}    IN    @{FRUTAS}[0:3]
        Log To Console    ${element}
    END
Ultimas frutas
    Log To Console    *
    FOR    ${element}    IN    @{FRUTAS}[3:5]
        Log To Console    ${element}
    END
*** Test Cases ***
Apresenta todas as frutas
    Todas as frutas
Apresenta primeiras frutas
    Primeiras frutas
Apresenta ultimas frutas
    Ultimas frutas
