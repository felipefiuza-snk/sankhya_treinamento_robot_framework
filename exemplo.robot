*** Settings ***

*** Variables ***
${log}
${NAME}
${a}    Hello
${b}    World
&{Pessoa}    nome=Felipe    sobrenome=Fiuza    idade=33    cidade=Boituva    empresa=Sankhya    cargo=dev
@{Lista_Frutas}    abacaxi    morango    uva    laranja    banana
${response}
${ELEMENT}

*** Test Cases ***
Teste1
    [Tags]    Cat    Cats
    ${log}    Catenate    \n hello    word \n
    Log To Console    ${log}
    
Teste2
    Log To Console    \n\n meu segundo teste \n\n

Teste3
    [Tags]    Cats
    Log To Console    \n\n Olá ${a} ${b}!! \n\n

Teste4
    [Tags]    dicionario
    Log To Console    \n\n Olá ${Pessoa.nome} ${Pessoa.sobrenome} voce tem ${Pessoa.idade}, mora em ${Pessoa.cidade}, trabalha na ${Pessoa.empresa} no cargo de ${Pessoa.cargo} !! \n\n

Teste5
    [Tags]    lista
    FOR    ${ELEMENT}    IN    @{Lista_Frutas}
        Log To Console    ${ELEMENT}
    END
    