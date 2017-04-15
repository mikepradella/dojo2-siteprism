class Tasks < SitePrism::Page

element :create_field_dados, :xpath, "//*[@id='actionMenuSidebar']/ul/li[1]/a/div[2]"


def create_taks_entrar ()

create_field_dados.click

end

end