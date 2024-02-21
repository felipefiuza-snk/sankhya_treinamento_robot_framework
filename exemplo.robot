*** Settings ***

*** Variables ***
${log}
${NAME}
${a}    Hello
${b}    World
&{Pessoa}    nome=Felipe    sobrenome=Fiuza    idade=33    cidade=Boituva    empresa=Sankhya    cargo=dev
@{Lista_Paises}    brasil    argentina    uruguai    colombia    paraguai
${response}
${ELEMENT}

*** Keywords ***
Criar email para "${nome}" "${sobrenome}" "${idade}"
    RETURN    ${nome}_${sobrenome}_${idade}@robot.com

Listar Paises
    @{Lista_Paises}    Create List    brasil    argentina    uruguai    colombia    paraguai
    Log To Console    \n
    FOR    ${ELEMENT}    IN    @{Lista_Paises}
        Log To Console    ${ELEMENT}
    END

Contar de 0 a 10
    Log To Console    \n
	FOR    ${count}    IN RANGE    0    11
		Log To Console    Estou no numero ${count} 
	END

*** Test Cases ***
Teste1
    [Tags]    hello
    ${log}    Catenate    \n hello    word \n
    Log To Console    ${log}
    
Teste2
    Log To Console    \n\n meu segundo teste \n\n

Teste3
    [Tags]    string
    Log To Console    \n\n Olá ${a} ${b}!! \n\n

Teste4
    [Tags]    dicionario
    Log To Console    \n\n Olá ${Pessoa.nome} ${Pessoa.sobrenome} voce tem ${Pessoa.idade}, mora em ${Pessoa.cidade}, trabalha na ${Pessoa.empresa} no cargo de ${Pessoa.cargo} !! \n\n

Teste5
    [Tags]    lista
    Listar Paises

Teste6
    [Tags]    email
    ${ELEMENT}=    Criar email para "Felipe" "Fiuza" "33"
    Log To Console    \n\n${ELEMENT}
    
Teste7
    [Tags]    for
    Contar de 0 a 10