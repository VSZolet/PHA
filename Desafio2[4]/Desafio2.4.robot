*** Settings ***
Documentation    Desafio 3 da Segunda Semana da Prime Hero Academy, usando For simples pra apresentar uma lista.

*** Test Cases ***
Lista pares de 0 a 10
    Lista Pares

*** Keywords ***
Lista Pares
    Log To Console    *
    FOR    ${element}    IN RANGE    0    11
        IF    ${element} % 2 == 0    Log to Console    ${element}    ELSE    CONTINUE
    END
    