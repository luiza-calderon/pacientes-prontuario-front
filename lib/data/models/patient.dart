import 'package:pacientes_captacao_front/data/models/phone.dart';

class Patient {
  final String id;
  final String name;
  final Phone phone;

  Patient({required this.id, required this.name, required this.phone});
}
