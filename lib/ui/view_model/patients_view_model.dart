import 'package:flutter/material.dart';
import 'package:pacientes_captacao_front/data/models/patient.dart';
import 'package:pacientes_captacao_front/data/repositories/patient_repository.dart';

class PatientsViewModel extends ChangeNotifier {
  final PatientRepository _patientRepository;

  List<Patient> _patients = [];
  bool _isLoading = false;

  PatientsViewModel({required PatientRepository patientRepository})
    : _patientRepository = patientRepository {
    _loadData();
  }

  bool get isLoading => _isLoading;
  List<Patient> get patients => List.unmodifiable(_patients);

  Future<void> _loadData() async {
    _isLoading = true;
    notifyListeners();
    _patients = await _patientRepository.getAll();
    _isLoading = false;
    notifyListeners();
  }
}
