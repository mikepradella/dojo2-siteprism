class Validar < SitePrism::Page

element :validar_field1, :xpath, "//h2[@class='module-title-text']"


def validar_nome()
	validar_field1.text

end

end
