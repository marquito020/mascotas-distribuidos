import 'package:flutter/material.dart';
import 'package:adopet_app/src/models/index.dart';

class PerdidoFormController extends ChangeNotifier {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Perdido perdido;
  bool _isLoading = false;

  PerdidoFormController(this.perdido);

  bool isValidForm() => formKey.currentState?.validate() ?? false;

  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }
}