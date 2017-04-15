class Alterar_Cadastro_tasks < SitePrism::Page


		element	:link_view_field, :xpath,"//a[@href='index.php?module=Tasks&action=index&return_module=Tasks&return_action=DetailView']"
		element :link_filtro_field, :xpath,"(//*[@id='pagination']/td/table/tbody/tr/td[1]/ul[3]/li/a)[1]"
		element :pesquisa_field, '#name_basic'
		element :botao_search_field, '#search_form_submit'
		element :botao_edit_field, :xpath, "//a[@class ='edit-link']"

		element :name_field, :xpath,"//*[@id='name']"
		element :status_field, "select[id='status']"
		element :priority_fiel,"select[id='priority']"
		element :description_field,'#description'
		element :save_field, :xpath, "(//div[@class='buttons']//input[@id='SAVE'])[2]"

		def altera_taks ()
		name_field.set("mike tyson alterado")
		priority_fiel.click
		priority_fiel.select("Low")
		description_field.set("mike tyson testando  com SitePrism, consegui alterar graças a Deus" )
		save_field.click
		end


		def link_view_tasks()
			link_view_field.click	
		end

		def botao_editar()
			link_filtro_field.click
		end

		def Preenche_campo_pesquisa()
			pesquisa_field.set("mike tyson")
		end

		def clicar_botao_pesquisa()
			botao_search_field.click
		end	

		def clicar_botao_editar()
			botao_edit_field.click	
		end	

end