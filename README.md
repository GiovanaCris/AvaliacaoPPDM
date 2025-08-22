# AvaliacaoPPDM

# Quais as principais diferenças entre Dart e Python?
## 🚨 Importante
- Os comandos podem variar de acordo com o sistema operecional;
- O projeto foi realizado em um computador windows então os comandos aqui descritos são para windows!
- Diferenças que notei bastante entre DART e PYTHON foi *identação* pois em python é bem importante e em dart não faz diferença e *;* pois em python não é muito utilizado e dart da erro quando não utiliza

## 💫 1- If/else
- DART: Em dart fazemos a seguinte estrutura:
if(condicão) {
    resultado;
}

else if (se não foi aquilo) {
    faça isso;
}

else{
    se não é nenhum, faça isso;
}

- PYTHON: Em Python fazemos:
if condição:
    (faça isso)

elif:
    (se não foi, faça isso)

else:
    (se não, faça isso)
- A principal diferença é o elif que em dart é else if

## ⏳ 2- For
- DART: Em dart fazemos a seguinte estrutura:
List<String> objetos = [..., ..., ...]; //lista vazia
for(variavel i in objetos) {
    print(i);
}
- Em Dart, para percorrer todos os elementos de uma lista, utilizamos a estrutura for-in, que para cada elemento da lista executa um bloco de código. Neste exemplo para cada item da lista ele irá printar o item (i)

- PYTHON: Em python fazemos a seguine estrutura:
objetos = [..., ..., ...]
for i in objetos:
    print(i)
- Neste exemplo também, para cada item dentro da lista objetos, o programa executa o print(item).

## 🎇 3- Switch case
- DART: Em dart fazemos a seguinte estrutura:
print("1 - isso"); //Menu de opções
print("2 - aquilo"); 
print("3 - aquilo outro");
opcao = int.parse(stdin.readLineSync()!); //Variável que guarda o valor da opção

switch (opcao){
    case1: //Caso a opção seja 1
        print("Hello World");
        break; //Importante para não dar loop infinito

    case2: //Caso a opção seja 2
        print("Hello usuário");
        break
}
- Ele basicamente vai fazer um menu e armazenar a escolha do menu em uma variável, posterior a isso ele vai dividir os casos(escolhas) e colocar tarefas diferente para realizar

- PYTHON: Em python fazemos a seguinte estrutura:
print("1 - isso")  # Menu de opções
print("2 - aquilo")
print("3 - aquilo outro")

opcao = input("Digite a opção: ") #Variável que guarda o valor da opção

if opcao == 1:
    print("Hello World")
elif opcao == 2:
    print("Hello usuário")
elif opcao == 3:
    print("Outra opção selecionada")
else:
    print("Opção inválida!")
- Em python não tem a estrutura switch case então ele faz basicamente o mesmo passo porém com if else nos casos

## 🎗 4- 