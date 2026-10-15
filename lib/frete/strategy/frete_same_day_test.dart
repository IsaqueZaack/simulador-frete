import 'package:flutter_test/flutter_test.dart';
import 'package:simulador_frete/frete/strategy/frete_same_day.dart';

void main(List<String> args) {
  late FreteSameDay strategy;

  setUp(() {
    strategy = FreteSameDay();
  });

  test('deve calcular o frete para entregar no mesmo dia', () {
    final resultado = strategy.calcular(
      peso: 1.0,
      distanciaKm: 10.0,
    );

    expect(resultado.valor, closeTo(35.0, 0.01));
    expect(resultado.prazoDias, 1);
  });
}
