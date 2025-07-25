import 'package:flutter/material.dart';
import 'package:pacientes_captacao_front/ui/view_model/patients_view_model.dart';
import 'package:pacientes_captacao_front/ui/widgets/patient_list.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FractionallySizedBox(
          widthFactor: 0.6,
          heightFactor: 0.9,
          child: Consumer<PatientsViewModel>(
            builder: (context, viewModel, child) {
              if (viewModel.isLoading) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return PatientList(patients: viewModel.patients);
              }
            },
          ),
        ),
      ),
    );
  }
}
