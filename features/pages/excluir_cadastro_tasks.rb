class Excluir_Cadastro_tasks < SitePrism::Page


		element	:check_view_field, :xpath,"//input[@name='mass[]']"
		element :bulk_action_field, :xpath, "//*[@id='delete_listview_top']/label[2]" 
		element :delete_tasks_field, :xpath,"(//*[@id='delete_listview_top'])[2]"
		element :span_fiel, :xpath, "//button[@class='default']"

		def selecionar_tasks()
			check_view_field.click
		
		end


		def bulk_action()
			bulk_action_field.click
			
		end

		def delete_tasks()
			delete_tasks_field.click
			
		end

		def accept_alert ()
			accept_confirm
			
		end

end