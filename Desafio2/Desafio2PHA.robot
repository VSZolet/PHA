*** Settings ***
Documentation    Desafio da Segunda Semana da Prime Hero Academy.

*** Variables ***
# Dicionario Desafio 2.1 #
&{CLIENTE}    nome=Vinicius Schnaider Zolet    idade=27    rua=Rua Manoel Borba Gato    numero=510    cep=82220-140    cidade=Curitiba    estado=PR 

# Lista Desafio 2.3 #
@{FRUTAS}    banana    laranja    melão    melancia    maçã    ameixa

*** Test Cases ***
# Desafio 2.1 - 2 modelos #
Apresenta o cliente, elemento por elemento do dicionario
    Inicia
    Seleciona
    Mostra nome completo
    Mostra idade
    Mostra endereço
    Finaliza
Apresenta o cliente, diretamente pelo dicionario
    Inicia
    Seleciona
    Dicionario extenso
    Finaliza

# Desafio 2.2 - calculo + 2 testes, nascimentos pós-2001 (sendo 2001, limite) e pré-2001 (sendo 2000, limite) #
Descobrir ano1
    Inicia
    Descobrir nascimento1 22
    Finaliza
Descobrir ano2
    Inicia
    Descobrir nascimento2 23
    Finaliza

# Desafio 2.3 - Apresentação da lista completa + exemplos do começo até metade e da metade até o final #
Apresenta todas as frutas
    Inicia
    Todas as frutas
    Finaliza
Apresenta primeiras frutas
    Inicia
    Primeiras frutas
    Finaliza
Apresenta ultimas frutas
    Inicia
    Ultimas frutas
    Finaliza

# Desafio 2.4 - Listagem dos pares entre 0 e 10 #
Lista pares de 0 a 10
    Inicia
    Lista Pares
    Finaliza

*** Keywords ***
# Base visual inicial e final #
Inicia
    Log To Console    *
    Log To Console    ____________________________________
Finaliza
    Log To Console    ____________________________________

# Desafio 2.1 #
Seleciona
    Log To Console    O Cliente selecionado foi:
Mostra nome completo
    Log To Console    Nome: ${CLIENTE.nome}
Mostra idade
    Log To Console    Idade: ${CLIENTE.idade}
Mostra endereço
    Log To Console    Endereço: ${CLIENTE.rua} nº${CLIENTE.numero}
    Log To Console    CEP: ${CLIENTE.cep}
    Log To Console    Cidade: ${CLIENTE.cidade} / ${CLIENTE.estado}
Dicionario extenso
    Log To Console    ${CLIENTE}

# Desafio 2.2 #
Descobrir nascimento1 ${IDADE1}
    ${ANO1}    Evaluate    2023 - ${IDADE1} 
    Log To Console    O usuário nasceu em ${ANO1}
    IF    ${ANO1} <= 2000
        Log To Console    O usuário nasceu no século passado!
    ELSE
        Log To Console    O usuário nasceu neste século!
    END
Descobrir nascimento2 ${IDADE2}
    ${ANO2}    Evaluate    2023 - ${IDADE2}
    Log To Console    O usuário nasceu em ${ANO2}
    IF    ${ANO2} <= 2000
        Log To Console    O usuário nasceu no século passado!
    ELSE
        Log To Console    O usuário nasceu neste século!
    END

# Desafio 2.3 #
Todas as frutas
    FOR    ${element}    IN    @{FRUTAS}
        Log To Console    ${element}
    END
Primeiras frutas
    FOR    ${element}    IN    @{FRUTAS}[0:3]
        Log To Console    ${element}
    END
Ultimas frutas
    FOR    ${element}    IN    @{FRUTAS}[3:6]
        Log To Console    ${element}
    END

# Desafio 2.4 #
Lista Pares
    FOR    ${element}    IN RANGE    0    11
        IF    ${element} % 2 == 0    Log to Console    ${element}    ELSE    CONTINUE
    END
    