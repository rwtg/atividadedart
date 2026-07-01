
void main() {
  group('calcularMedia', () {
    test('Deve calcular a média entre 8 e 6 e retornar 7', () {
      expect(calcularMedia(8, 6), equals(7));
    });

    test('Deve calcular a média entre 10 e 8 e retornar 9', () {
      expect(calcularMedia(10, 8), equals(9));
    });

    test('Deve gerar erro quando a primeira nota for menor que 0', () {
      expect(() => calcularMedia(-1, 8), throwsArgumentError);
    });

    test('Deve gerar erro quando a segunda nota for maior que 10', () {
      expect(() => calcularMedia(8, 11), throwsArgumentError);
    });
  });

  group('verificarSituacao', () {
    test('Deve retornar Aprovado quando a média for 7', () {
      expect(verificarSituacao(7), equals('Aprovado'));
    });

    test('Deve retornar Aprovado quando a média for maior que 7', () {
      expect(verificarSituacao(8.5), equals('Aprovado'));
    });

    test('Deve retornar Reprovado quando a média for menor que 7', () {
      expect(verificarSituacao(6.9), equals('Reprovado'));
    });
  });
}
