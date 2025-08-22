# AvaliacaoPPDM

# Quais as principais diferenças entre Dart e Python?
## 🚨 Importante
- Os comandos podem variar de acordo com o sistema operecional;
- O projeto foi realizado em um computador windows então os comandos aqui descritos são para windows!
- Diferenças que notei bastante entre DART e PYTHON foi *identação* pois em python é bem importante e em dart não faz diferença e *;* pois em python não é muito utilizado e dart da erro quando não utiliza

## 💫 1- If/else
- DART: Em dart fazemos a seguinte estrutura:
```python
if(condicão) {
    resultado;
}

else if (se não foi aquilo) {
    faça isso;
}

else{
    se não é nenhum, faça isso;
}
```

- PYTHON: Em Python fazemos:
```python
if condição:
    (faça isso)

elif:
    (se não foi, faça isso)

else:
    (se não, faça isso)
```
- A principal diferença é o elif que em dart é else if

## ⏳ 2- For
- DART: Em dart fazemos a seguinte estrutura:
```python
List<String> objetos = [..., ..., ...]; //lista vazia
for(variavel i in objetos) {
    print(i);
}
```
- Em Dart, para percorrer todos os elementos de uma lista, utilizamos a estrutura for-in, que para cada elemento da lista executa um bloco de código. Neste exemplo para cada item da lista ele irá printar o item (i)

- PYTHON: Em python fazemos a seguine estrutura:
```python
objetos = [..., ..., ...]
for i in objetos:
    print(i)
```
- Neste exemplo também, para cada item dentro da lista objetos, o programa executa o print(item).

## 🎇 3- Switch case
- DART: Em dart fazemos a seguinte estrutura:
```python
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
```
- Ele basicamente vai fazer um menu e armazenar a escolha do menu em uma variável, posterior a isso ele vai dividir os casos(escolhas) e colocar tarefas diferente para realizar

- PYTHON: Em python fazemos a seguinte estrutura:
```python
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
```
- Em python não tem a estrutura switch case então ele faz basicamente o mesmo passo porém com if else nos casos

## 🎗 4- While
DART: Em dart fazemos essa estrutura:
```python
  int contador = 1;

  while (contador <= 5) {
    print('Contador: $contador');
    contador++;
  }
```
- Em dart fazemos a estrurura do while com parênteses e chaves, porém é bem similar a estrutura do python q irei citar a seguir

PYTHON:
```python 
    contador = 1

    while contador <= 5:
        print(f'Contador: {contador}')
        contador += 1
```
- Em python fazemos sem chaves e sem parênteses, mas a estrutura é bem similar

## 5- While True
DART: Em dart fazemos essa estrutura:
```python
    int contador = 1;

    while (true) {
        print('Contador: $contador');
        if (contador == 5) {
        break; // Sai do loop quando o contador chegar a 5
        }
        contador++;
    }
```
- O while true também é bem similar ao do python, neste exemplo basicamente fazemos uma variável contador que inicia em 1 e ela vai ser verdadeira incrementando um número até que igual a 5, quando é igual a 5 o loop quebra

PYTHON: Em python fazemos a seguinte estrutura:
```python
    contador = 1

    while True:
        if contador > 3:
            break  # Sai do loop quando contador for maior que 3
        print(f'Contador: {contador}')
        contador += 1

    print('O loop terminou porque contador > 3')

```
- Em python segue a mesma estrutura porém o contador fica += 1 e não tem chaves nem parênteses