// ignore_for_file: public_member_api_docs, sort_constructors_first
class UsuarioModel {
  int? id;
  String? name;
  String? email;
  UsuarioModel({
    this.id,
    this.name,
    this.email,
  });

  UsuarioModel copyWith({
    int? id,
    String? name,
    String? email,
  }) {
    return UsuarioModel(
      name: name ?? this.name,
      id: id ?? this.id,
      email: email ?? this.email,
    );
  }
}
