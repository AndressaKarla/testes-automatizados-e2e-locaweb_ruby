# language: pt

@dominio_positivo
Funcionalidade: Tela Registro de domínio web - Cenários positivos
	Como usuário da Tela Registro de domínio web da Locaweb
	Quero consultar registros de domínios web
	Para contratá-los

@dominio_nac_dif_org_br
Cenario: Validar registro de 1 domínio nacional diferente de .org.br que não esteja em uso para cliente Locaweb com CPF válido 
	Dado que eu acesse a tela de Registro de domínio web da Locaweb
	E que eu informe um domínio nacional diferente de .org.br que não esteja em uso
	E que eu clique no botão REGISTRE
	E que eu esteja na tela Contratar Registro e Transferência de Domínio
	E que eu informe um CPF válido para cliente Locaweb
	E que eu esteja na tela Contratar Registro e Transferência de Domínio e com a opção Quero contratar apenas meus domínios selecionada por padrão
	E que eu esteja na tela Contratar Registro de Domínio e seção ACESSE SUA CONTA
	Quando eu informar os campos de usuario e senha de um cliente Locaweb
	Então deverá apresentar a tela Contratar Registro de Domínio e seção Informações de Pagamento
		