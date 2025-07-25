import 'package:flutter/material.dart';
import 'package:pacientes_captacao_front/data/models/patient.dart';
import 'package:pacientes_captacao_front/ui/widgets/patient_list_item.dart';

class PatientList extends StatelessWidget {
  final List<Patient> patients;

  const PatientList({super.key, required this.patients});

  @override
  Widget build(BuildContext context) {
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: patients.length,
          itemBuilder: (context, index) {
            final patient = patients[index];
            return PatientListItem(patient: patient);
          },
        ),
      ),
    );
  }
}
