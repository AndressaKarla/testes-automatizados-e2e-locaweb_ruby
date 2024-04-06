Dir[File.join(File.dirname(__FILE__), "../pages/*_page.rb")].each {|file| require file}

module Pages
    def registro_dominio_web
        @registro_dominio_web ||= RegistroDominioWeb.new
    end

    def contratar_registro_transferencia_dominio
        @contratar_registro_transferencia_dominio ||= ContratarRegistroTransferenciaDominio.new
    end

    def contratar_registro_dominio
        @contratar_registro_dominio ||= ContratarRegistroDominio.new
    end
end
