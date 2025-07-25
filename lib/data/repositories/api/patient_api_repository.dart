import 'package:pacientes_prontuario_front/data/models/patient.dart';
import 'package:pacientes_prontuario_front/data/models/phone.dart';
import 'package:pacientes_prontuario_front/data/repositories/patient_repository.dart';

class PatientApiRepository extends PatientRepository {
  @override
  Future<List<Patient>> getAll() async {
    final contacts = List.generate(
      100,
      (i) => Phone(
        id: i.toString(),
        ddd: i.toString().padLeft(3, '0'),
        number: i.toString().padLeft(8, '9'),
      ),
    );

    final patients = List.generate(
      100,
      (i) => Patient(
        id: i.toString(),
        name: 'Paciente $i',
        phone: contacts.elementAt(i),
      ),
    );

    return patients;
  }
}
