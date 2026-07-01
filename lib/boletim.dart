
 //[ArgumentError] 

double calcularMedia(double nota1, double nota2) {
  if (nota1 < 0 || nota1 > 10) {
    throw ArgumentError('nota1 inválida: deve estar entre 0 e 10.');
  }
  if (nota2 < 0 || nota2 > 10) {
    throw ArgumentError('nota2 inválida: deve estar entre 0 e 10.');
  }

  return (nota1 + nota2) / 2;
}

String verificarSituacao(double media) {
  return media >= 7 ? 'Aprovado' : 'Reprovado';
}
