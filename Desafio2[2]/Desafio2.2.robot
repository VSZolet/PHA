*** Settings ***
Documentation    Desafio 2 da Segunda Semana da Prime Hero Academy, criando uma keyword com retorno + IF simples

*** Keywords ***
Descobrir nascimento1 ${IDADE1}
    ${ANO1}    Evaluate    2023 - ${IDADE1} 
    Log To Console    *
    Log To Console    O usuário nasceu em ${ANO1}
    IF    ${ANO1} <= 2000
        Log To Console    O usuário nasceu no século passado!
    ELSE
        Log To Console    O usuário nasceu neste século!
    END
Descobrir nascimento2 ${IDADE2}
    ${ANO2}    Evaluate    2023 - ${IDADE2}
    Log To Console    *
    Log To Console    O usuário nasceu em ${ANO2}
    IF    ${ANO2} <= 2000
        Log To Console    Ou seja, usuário nasceu no século passado!
    ELSE
        Log To Console    O usuário é nascido neste século!
    END

*** Test Cases ***
Descobrir ano1
    Descobrir nascimento1 22
Descobrir ano2
    Descobrir nascimento2 23
