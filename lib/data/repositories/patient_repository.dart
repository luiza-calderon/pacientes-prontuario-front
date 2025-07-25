import 'package:pacientes_captacao_front/data/models/patient.dart';

abstract class PatientRepository {
  Future<List<Patient>> getAll();
}