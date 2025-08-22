import 'dart:io';

List<String> flores = [
  '1- Nome: Orquidea, Valor: 20.0, Quantidade: 50',
  '2- Nome: Zamioculca, Valor: 25.0, Quantidade: 15',
  '3- Nome: Samambaia, Valor: 11.2, Quantidade: 10',
  '4- Nome: Rosa, Valor: 17.8, Quantidade: 20',
  '5- Nome: Kalanchoe, Valor: 10.5, Quantidade: 18',
];

void main() {
  while (true) {
    print("\n🌷 GiFlower - A floricultura que floresce sua vida!");
    stdout.write("0- Sair\n1- Admin\n2- Cliente\nEscolha: ");
    String? op = stdin.readLineSync();

    switch (op) {
      case '0':
        print("Até logo!");
        return;
      case '1':
        admin();
        break;
      case '2':
        cliente();
        break;
      default:
        print("Opção inválida.");
    }
  }
}

void admin() {
  const senha = "admin1@3"; //SENHA DO ADMIN
  String? tentativa;
  do {
    stdout.write("Digite a senha de admin: ");
    tentativa = stdin.readLineSync();
  } while (tentativa != senha);

  while (true) {
    stdout.write("\n1- Cadastrar produto\n2- Ver estoque\n3- Sair\nEscolha: ");
    String? op = stdin.readLineSync();
    if (op == '3') break;

    switch (op) {
      case '1':
        stdout.write("Nome da flor: ");
        String? nome = stdin.readLineSync();

        stdout.write("Valor: ");
        double valor = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

        stdout.write("Quantidade: ");
        int qtd = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

        flores.add(
          '${flores.length + 1}- Nome: $nome, Valor: $valor, Quantidade: $qtd',
        );
        print("Produto cadastrado com sucesso!");
        break;

      case '2':
        print("Estoque atual:");
        flores.forEach(print);
        break;

      default:
        print("Opção inválida.");
    }
  }
}

void cliente() {
  stdout.write("Digite seu nome: ");
  String nome = stdin.readLineSync() ?? "";

  String cpf;
  do {
    stdout.write("Digite seu CPF (11 dígitos): ");
    cpf = stdin.readLineSync() ?? '';
  } while (cpf.length != 11 || int.tryParse(cpf) == null);

  List<Map<String, dynamic>> carrinho = [];

  while (true) {
    stdout.write(
      "\n1- Ver catálogo\n2- Fazer pedido\n0- Sair\nEscolha o que deseja: ",
    );
    String? op = stdin.readLineSync();
    if (op == '0') break;

    switch (op) {
      case '1':
        print("Catálogo:");
        flores.forEach(print);
        break;

      case '2':
        while (true) {
          stdout.write("Digite o nome da flor: ");
          String? busca = stdin.readLineSync();
          if (busca == null || busca.trim().isEmpty) continue;

          String? florEncontrada = flores.firstWhere(
            (f) => f.toLowerCase().contains(busca.toLowerCase()),
            orElse: () => '',
          );

          if (florEncontrada.isEmpty) {
            print("Produto não encontrado.");
            continue;
          }

          RegExp regexNome = RegExp(r'Nome: ([^,]+)');
          RegExp regexValor = RegExp(r'Valor: ([\d.]+)');
          RegExp regexQtd = RegExp(r'Quantidade: (\d+)');

          String nomeFlor = regexNome.firstMatch(florEncontrada)!.group(1)!;
          double valorFlor = double.parse(
            regexValor.firstMatch(florEncontrada)!.group(1)!,
          );
          int estoque = int.parse(
            regexQtd.firstMatch(florEncontrada)!.group(1)!,
          );

          stdout.write("Quantidade desejada: ");
          int qtd = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

          if (qtd <= 0 || qtd > estoque) {
            print("Quantidade inválida.");
            continue;
          }

          carrinho.add({
            "nome": nomeFlor,
            "valor": valorFlor,
            "quantidade": qtd,
            "subtotal": valorFlor * qtd,
          });

          stdout.write("Deseja adicionar mais? (s/n): ");
          if ((stdin.readLineSync() ?? '').toLowerCase() != 's') break;
        }

        if (carrinho.isEmpty) {
          print("Carrinho vazio. Cancelando compra.");
          break;
        }

        // Pagamento
        double total = carrinho.fold(
          0,
          (soma, item) => soma + item['subtotal'],
        );
        print("\nTotal: R\$${total.toStringAsFixed(2)}");

        print(
          "\nFormas de pagamento:\n1- Crédito\n2- Pix\n3- Débito\n4- Dinheiro",
        );
        stdout.write("Escolha a forma de pagamento: ");
        String? pagamento = stdin.readLineSync();
        String formaPagamento =
            {
              '1': 'Crédito',
              '2': 'Pix',
              '3': 'Débito',
              '4': 'Dinheiro',
            }[pagamento ?? ''] ??
            'Desconhecida';

        double valorPago;
        while (true) {
          stdout.write("Valor pago: ");
          valorPago = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
          if (valorPago >= total) break;
          print("Valor insuficiente.");
        }

        double troco = valorPago - total;

        // Recibo
        print("\n--- RECIBO 🌸 ---");
        print("Cliente: $nome | CPF: $cpf\n");
        for (var item in carrinho) {
          print(
            "${item['nome']} - R\$${item['valor']} x ${item['quantidade']} = R\$${item['subtotal'].toStringAsFixed(2)}",
          );
        }
        print("\nForma de Pagamento: $formaPagamento");
        print("Total: R\$${total.toStringAsFixed(2)}");
        print("Valor pago: R\$${valorPago.toStringAsFixed(2)}");
        print("Troco: R\$${troco.toStringAsFixed(2)}");
        print("--- Muito Obrigado pela compra! 🌷 ---");

        carrinho.clear();
        break;

      default:
        print("Opção inválida.");
    }
  }
}
