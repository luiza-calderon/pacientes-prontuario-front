import 'package:flutter/material.dart';
import 'package:pacientes_captacao_front/data/repositories/api/patient_api_repository.dart';
import 'package:pacientes_captacao_front/ui/view_model/patients_view_model.dart';
import 'package:provider/provider.dart';
import './routing/go_router.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => PatientApiRepository()),
        ChangeNotifierProvider(
          create: (context) => PatientsViewModel(
            patientRepository: Provider.of<PatientApiRepository>(
              context,
              listen: false,
            ),
          ),
        ),
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: router);
  }
}
