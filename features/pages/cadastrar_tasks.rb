class Cadastrar_tasks < SitePrism::Page

element :name_field, :xpath,"//*[@id='name']"
element :status_field, "select[id='status']"
element :priority_fiel,"select[id='priority']"
element :description_field,'#description'
element :save_field, :xpath , "(//div[@class='buttons']//input[@id='SAVE'])[2]"

def dados_taks ()
name_field.set("mike tyson")
status_field.click
status_field.select("Completed")
priority_fiel.click
priority_fiel.select("Medium")
description_field.set("mike tyson testando 'com SitePrism")
save_field.click


end

end