class FreteSameDay implements FreteStrategy {
  @override
   calcular({
    required double peso,
    required double distanciaKm,
  }) {
    return ResultadoFrete(
      valor: 0.0,
      prazoDias: 1,
    );
  }
}