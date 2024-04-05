Before do |scenario|
    Capybara.current_session.driver.browser.manage.delete_all_cookies
    Capybara.page.driver.browser.manage.window.resize_to(1360, 768)
end

After do |scenario|
    nome_cenario = scenario.name.gsub(/\s+/, '_').tr('/', '_')

    if scenario.failed?
        print_screen(nome_cenario.downcase!, 'falharam')
    else
        print_screen(nome_cenario.downcase!, 'passaram')
    end
end
