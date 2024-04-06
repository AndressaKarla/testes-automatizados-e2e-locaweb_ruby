class RegistroDominioWeb < SitePrism::Page
    include Capybara::DSL

    set_url '/registro-de-dominio-web'

    element :msg_dominio_livre, 'h2[class="domain-title avaliable"]'
    element :rolagem_tela, 'div[class="click-suggestion-label"]'
    element :campo_nome_dominio, 'input[class="input-domain"]'

    element :botao_consulte, 'button[class="button-primary btn-search"]'
    element :botao_registre, 'button[class="btn-item-register btn-buy btn-register-submit button-primary"]'

    def consultar_dominio(nome_dominio, extensao_dominio)
      campo_nome_dominio.set nome_dominio
      rolagem_tela.click
      find(".top-level-domain-list option[value='#{extensao_dominio}']").select_option

      botao_consulte.click
      wait_until_msg_dominio_livre_visible
    end
end
