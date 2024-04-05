class RegistroDominioWeb < SitePrism::Page
    include Capybara::DSL

    set_url '/registro-de-dominio-web'

    element :campo_nome_dominio, 'input[class="input-domain"]'
    element :campo_extensao_dominio, 'select[class="top-level-domain-list"]'

    element :botao_consulte, 'button[class="button-primary btn-search"]'
    element :msg_dominio_livre, 'h2[class="domain-title avaliable"]'
    element :botao_registre, 'button[class="btn-item-register btn-buy btn-register-submit button-primary"]'

    def consultar_dominio(nome_dominio, extensao_dominio)
      campo_nome_dominio.set nome_dominio
      campo_extensao_dominio.select(extensao_dominio)

      botao_consulte.click
      wait_until_msg_dominio_livre_visible
    end
end
