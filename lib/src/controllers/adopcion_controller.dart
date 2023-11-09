import 'package:flutter/material.dart';
import 'package:adopet_app/src/models/index.dart';

class AdopcionFormController extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Adopcion adopcion;
  bool _isLoading = false;

  AdopcionFormController(this.adopcion);

  bool isValidForm() => formKey.currentState?.validate() ?? false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}