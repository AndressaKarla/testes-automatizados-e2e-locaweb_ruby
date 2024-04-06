# language: pt

@dominio_negativo
Funcionalidade: Tela Registro de domínio web - Cenários negativos
	Como usuário da Tela Registro de domínio web da Locaweb
	Quero consultar registros de domínios web
	Para contratá-los

@dominio_int_uso
Cenario: Validar registro de 2 domínios internacionais que estejam ou não em uso 
	Dado que eu acesse a tela de Registro de domínio web da Locaweb
	E que eu informe um domínio internacional que não esteja em uso
	E que eu clique no botão REGISTRE
	E que eu esteja na tela Contratar Registro e Transferência de Domínio
	Quando eu informar um domínio internacional que esteja em uso
	Então na tela Contratar Registro e Transferência de Domínio deverá apresentar mensagem de domínio não estar disponível para contratação
		