import 'package:flutter/widgets.dart';

class appProvider extends ChangeNotifier {
  static appProvider instance = appProvider();

  String tipoMoeda = 'kwanza';

  String tipoMoeda2 = 'kwanza';
  double value = 0.0;
  void TypeMoeda(valor) {
    tipoMoeda = valor;
    notifyListeners();
  }

  void ConvertMoney(tipo, tipo2, valor) {
    tipo2 = tipoMoeda;
    if (tipo == 'kwanza') {
      if (tipo2 == 'Kwanza' || tipoMoeda == 'kwanza') {
        value = valor;
        notifyListeners();
      }
      if (tipo2 == 'Euro' || tipoMoeda == 'Euro') {
        value = ValorDaMoedaKwanza[0] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Dolar' || tipoMoeda == 'Dolar') {
        value = ValorDaMoedaKwanza[1] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Reais' || tipoMoeda == 'Reais') {
        value = ValorDaMoedaKwanza[2] * valor;
        notifyListeners();
      }
    }
    if (tipo == 'Euro') {
      if (tipo2 == 'Euro' || tipoMoeda == 'Euro') {
        value = valor;
        notifyListeners();
      }
      if (tipo2 == 'Dolar' || tipoMoeda == 'Dolar') {
        value = ValorDaMoedaEuro[0] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Kwanza' || tipoMoeda == 'Kwanza') {
        value = ValorDaMoedaEuro[1] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Reais' || tipoMoeda == 'Reais') {
        value = ValorDaMoedaEuro[2] * valor;
        notifyListeners();
      }
    }
    if (tipo == 'Doloar') {
      if (tipo2 == 'Doloar' || tipoMoeda == 'Doloar') {
        value = valor;
        notifyListeners();
      }
      if (tipo2 == 'Euro' || tipoMoeda == 'Euro') {
        value = ValorDaMoedaDolar[0] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Kwanza' || tipoMoeda == 'Kwanza') {
        value = ValorDaMoedaDolar[1] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Reais' || tipoMoeda == 'Reais') {
        value = ValorDaMoedaDolar[2] * valor;
        notifyListeners();
      }
    }
    if (tipo == 'Reais') {
      if (tipo2 == 'Reais' || tipoMoeda == 'Reais') {
        value = valor;
        notifyListeners();
      }
      if (tipo2 == 'Kwanza' || tipoMoeda == 'kwanza') {
        value = ValorDaMoedaReais[0] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Euro' || tipoMoeda == 'Euro') {
        value = ValorDaMoedaReais[1] * valor;
        notifyListeners();
      }
      if (tipo2 == 'Dolar' || tipoMoeda == 'Dolar') {
        value = ValorDaMoedaReais[2] * valor;
        notifyListeners();
      }
    }

    print(value);
    notifyListeners();
  }
}

List<double> ValorDaMoedaDolar = [
  0.864261, //Euro
  598.0, //kwz
  5.50965 //Reais
];

List<double> ValorDaMoedaEuro = [
  1.15692, //Dolar
  692.321, //kwz
  6.37425 //Reais
];

List<double> ValorDaMoedaReais = [
  108.612, //kwz
  0.156881, //Euro
  0.181500 //dolar
];

List<double> ValorDaMoedaKwanza = [
  0.00144442, //Euro
  0.00167108, //Dolar
  0.00920708, //Reais
];
