import 'package:flutter/foundation.dart';

class DropdownController extends ChangeNotifier {
  String? _value;
  String? _errorMessage;

  String? get value => _value;
  String? get errorMessage => _errorMessage;

  bool get hasError => _errorMessage != null;
  bool get hasValue => _value != null && _value!.isNotEmpty;

  void setValue(String? newValue) {
    if (_value != newValue) {
      _value = newValue;
      clearError();
      notifyListeners();
    }
  }

  void clear() {
    _value = null;
    clearError();
    notifyListeners();
  }

  void setError(String message) {
    _errorMessage = message;
    notifyListeners();
  }

  void clearError() {
    if (_errorMessage != null) {
      _errorMessage = null;
      notifyListeners();
    }
  }
}
