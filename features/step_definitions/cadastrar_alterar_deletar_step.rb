Dado(/^eu esteja logado no site SuiteCRM$/) do      
	Home.new.load
	Home.new.login_in("will","will")

end                                                                           
                                           

Quando(/^navego ate tela create task$/) do                
	Main.new.create_task()
	Tasks.new.create_taks_entrar
end                                                                           
                                                                              
Quando(/^preencho os dados obrigatorios$/) do 
	#binding.pry
	Cadastrar_tasks.new.dados_taks
end                                                                           
                                                                              
Entao(/^validar tarefa cadastrada$/) do  
	#binding.pry 	
	#expect(Validar.new.validar_field1).to have_text('mike tyson')
	#assertEqual("mike tyson",validar_field1) 
	expect(Validar.new.validar_nome).to eq("MIKE TYSON")
end                                                                           
                                                         
Quando(/^altero os dados obrigatorios$/) do 
	Alterar_Cadastro_tasks.new.link_view_tasks()
	Alterar_Cadastro_tasks.new.botao_editar()
	#binding.pry
	Alterar_Cadastro_tasks.new.Preenche_campo_pesquisa()
	Alterar_Cadastro_tasks.new.clicar_botao_pesquisa()
	Alterar_Cadastro_tasks.new.clicar_botao_editar()
	Alterar_Cadastro_tasks.new.altera_taks()                                                                        
 end
                                                                             
Entao(/^validar tarefa alterada$/) do    
    expect(Validar.new.validar_nome).to eq("MIKE TYSON ALTERADO")                                  
end                                                                           
                                                                              
Quando(/^excluo a tarefa$/) do 	
	Alterar_Cadastro_tasks.new.link_view_tasks()
	Alterar_Cadastro_tasks.new.botao_editar()
	#binding.pry
	Alterar_Cadastro_tasks.new.Preenche_campo_pesquisa()
	Alterar_Cadastro_tasks.new.clicar_botao_pesquisa()
	Excluir_Cadastro_tasks.new.selecionar_tasks()
	Excluir_Cadastro_tasks.new.bulk_action()
	Excluir_Cadastro_tasks.new.delete_tasks
	#binding.pry
	Excluir_Cadastro_tasks.new.accept_alert()
	
end                                                                           
                                                                              
Entao(/^validar tarefa excluida$/) do                             
end                                                                           