class ContratarRegistroTransferenciaDominio < SitePrism::Page
    include Capybara::DSL

    element :titulo_contratar_registro_transferencia_dominio, 'h1[class="ficha-title"]'
    element :campo_cpf_cnpj, 'input[placeholder="CPF ou CNPJ"]'

    element :botao_validar, 'button[aria-label="Validar"]'
    element :icone_ok, 'i[class="ico icon-ok"]'
    element :botao_continuar, 'button[title="Continuar"]'

    element :opcao_contratar_apenas_meus_dominios, '.product-box.product-box-cross-null > div > h3'

    def informar_cpf_valido(cpf)
      campo_cpf_cnpj.set cpf

      botao_validar.click
      wait_until_icone_ok_visible
    end
end
