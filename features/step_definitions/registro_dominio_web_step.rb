Dado('que eu acesse a tela de Registro de domínio web da Locaweb') do
    registro_dominio_web.load
end

Dado('que eu informe um domínio nacional diferente de .org.br que não esteja em uso') do
    @dominio_fixture = carregar_fixture('dominio')
    registro_dominio_web.consultar_dominio(@dominio_fixture['dominio_nacional_diferente_org_br']['nome_dominio_nacional_diferente_org_br_cpf'], @dominio_fixture['dominio_nacional_diferente_org_br']['extensao_dominio_nacional_diferente_org_br'])
end

Dado('que eu clique no botão REGISTRE') do
    registro_dominio_web.botao_registre.click
end

Dado('que eu esteja na tela Contratar Registro e Transferência de Domínio') do
    contratar_registro_transferencia_dominio.wait_until_titulo_contratar_registro_transferencia_dominio_visible
    expect(contratar_registro_transferencia_dominio.titulo_contratar_registro_transferencia_dominio.text).to have_content("Contratar Registro e Transferência de Domínio")
end

Dado('que eu informe um CPF válido para cliente Locaweb') do
    @usuario_fixture = carregar_fixture('usuario')
    contratar_registro_transferencia_dominio.informar_cpf_valido(@usuario_fixture['cliente_locaweb_cpf']['cpf_valido'])
end

Dado('que eu esteja na tela Contratar Registro e Transferência de Domínio e com a opção Quero contratar apenas meus domínios selecionada por padrão') do
    contratar_registro_transferencia_dominio.botao_continuar.click
    contratar_registro_transferencia_dominio.wait_until_titulo_contratar_registro_transferencia_dominio_visible

    expect(contratar_registro_transferencia_dominio.opcao_contratar_apenas_meus_dominios.text).to have_content("Quero contratar apenas meus domínios")
end

Dado('que eu esteja na tela Contratar Registro de Domínio e sessão ACESSE SUA CONTA') do
    contratar_registro_transferencia_dominio.botao_continuar.click

    contratar_registro_dominio.wait_until_titulo_contratar_registro_dominio_visible
    expect(contratar_registro_dominio.titulo_contratar_registro_dominio.text).to have_content("Contratar Registro de Domínio")
    expect(contratar_registro_dominio.sessao_acesse_sua_conta.text).to have_content("ACESSE SUA CONTA")
end

Quando('eu informar os campos de usuario e senha de um cliente Locaweb') do
    contratar_registro_dominio.acessar_conta(@usuario_fixture['cliente_locaweb_cpf']['usuario_valido'], @usuario_fixture['cliente_locaweb_cpf']['senha_valida'])
end

Então('deverá apresentar a tela Contratar Registro de Domínio e sessão Informações de Pagamento') do
    contratar_registro_dominio.wait_until_titulo_contratar_registro_dominio_visible
    expect(contratar_registro_dominio.sessao_informacoes_pagamento.text).to have_content("Informações de Pagamento")
end
