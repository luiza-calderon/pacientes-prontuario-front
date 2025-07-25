import 'package:flutter/material.dart';
import 'package:pacientes_prontuario_front/data/models/patient.dart';

class PatientListItem extends StatelessWidget {
  final Patient patient;

  const PatientListItem({super.key, required this.patient});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () => debugPrint('Acessa paciente.'),
          child: ListTile(
            leading: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 154, 82, 167),
              ),
              child: SizedBox(
                height: 40,
                width: 40,
                child: Center(
                  child: Text(
                    patient.name.substring(0, 1),
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
            title: Text(patient.name),
            subtitle: Text('${patient.phone.ddd} ${patient.phone.number}'),
          ),
        ),
        Divider(),
      ],
    );
  }
}
