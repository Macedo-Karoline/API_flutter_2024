
class Album {
  final String nome;
  final int idade; // Corrigido para `int`
  final String email;
  final String telefone; // Alterado para `String` para evitar problemas com formatação

  Album({
    required this.nome,
    required this.idade,
    required this.email,
    required this.telefone,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      nome: json['nome'] as String, // Garantindo que é String
      idade: json['idade'] as int, // Garantindo que é int
      email: json['email'] as String, // Garantindo que é String
      telefone: json['telefone']?.toString() ?? '', // Convertendo para String
    );
  }
}
