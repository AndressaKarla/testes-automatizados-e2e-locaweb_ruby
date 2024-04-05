class ContratarRegistroDominio < SitePrism::Page
    include Capybara::DSL

    element :titulo_contratar_registro_dominio, 'h1[class="ck-title-1 ck-main-title"]'
    element :sessao_acesse_sua_conta, 'div:nth-child(2) > div > h3'
    element :campo_usuario, '#Login'
    element :campo_senha, 'input[name="Password"]'

    element :botao_entrar, '#enter'
    element :sessao_informacoes_pagamento, 'div[class="payment-header"]'

    def acessar_conta(usuario, senha)
      campo_usuario.set usuario
      campo_senha.set senha

      botao_entrar.click
    end
end
