class ContratarRegistroTransferenciaDominio < SitePrism::Page
    include Capybara::DSL

    element :titulo_contratar_registro_transferencia_dominio, 'h1[class="ficha-title"]'
    element :icone_ok, 'i[class="ico icon-ok"]'
    element :msg_dominio_nao_disponivel, 'div[class="msg-warning-default"]'

    element :campo_cpf_cnpj, 'input[placeholder="CPF ou CNPJ"]'
    element :campo_nome_dominio, 'input[placeholder="Seu domínio"]'

    element :botao_validar, 'button[aria-label="Validar"]'
    element :botao_continuar, 'button[title="Continuar"]'

    element :opcao_pesquisar, 'button[aria-label="Pesquisar"]'
    element :opcao_contratar_apenas_meus_dominios, '.product-box.product-box-cross-null > div > h3'

    def informar_cpf_valido(cpf)
      campo_cpf_cnpj.set cpf

      botao_validar.click
      wait_until_icone_ok_visible
    end

    def consultar_dominio(nome_dominio, extensao_dominio)
      campo_nome_dominio.set nome_dominio
      find(".input-tld option[value='#{extensao_dominio}']").select_option

      opcao_pesquisar.click
      wait_until_msg_dominio_nao_disponivel_visible
    end
end
