*** Settings ***
Documentation    Desafio 1 da Segunda Semana da Prime Hero Academy, para apresentar no console um dicionario.

*** Variables ***
&{CLIENTE}    nome=Vinicius Schnaider Zolet    idade=27    rua=Rua Manoel Borba Gato    numero=510    cep=82220-140    cidade=Curitiba    estado=PR

*** Test Cases ***
Apresenta o cliente, elemento por elemento do dicionario
    Seleciona
    Mostra nome completo
    Mostra idade
    Mostra endereço
    Finaliza
Apresenta o cliente, diretamente pelo dicionario
    Seleciona
    Dicionario extenso
    Finaliza
    
*** Keywords ***
Seleciona
    Log To Console    *
    Log To Console    ____________________________________
    Log To Console    O Cliente selecionado foi:
Mostra nome completo
    Log To Console    Nome: ${CLIENTE.nome}
Mostra idade
    Log To Console    Idade: ${CLIENTE.idade}
Mostra endereço
    Log To Console    Endereço: ${CLIENTE.rua} nº${CLIENTE.numero}
    Log To Console    CEP: ${CLIENTE.cep}
    Log To Console    Cidade: ${CLIENTE.cidade} / ${CLIENTE.estado}
Finaliza
    Log To Console    ____________________________________
Dicionario extenso
    Log To Console    ${CLIENTE}
