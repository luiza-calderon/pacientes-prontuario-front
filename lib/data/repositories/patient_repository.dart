import 'package:pacientes_prontuario_front/data/models/patient.dart';

abstract class PatientRepository {
  Future<List<Patient>> getAll();
}