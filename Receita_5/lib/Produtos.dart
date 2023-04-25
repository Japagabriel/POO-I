class Produto {
  final String nome;
  final int? quantidade;
  final double? valor;
  final double? fdback;

  Produto(
    this.nome,
    this.quantidade,
    this.valor,
    this.fdback,
  );
  @override
  String toString() {
    return 'Produto{nome: $nome, quantidade: $quantidade, valor: $valor, Avaliação: $fdback}';
  }
}