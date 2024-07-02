enum AssuntosChatDiretoria {
  justificativa_falta('Atestado médico'),
  solicitarDocumetno('Solicitação de documento'),
  duvida('Dúvida'),
  outroAssunto('Outro assunto');

  final String description;

  const AssuntosChatDiretoria(this.description);
}
