#language: pt
#uft-8

#@importante
Funcionalidade: Cadastrar uma nova tarefa,alterar e excluir
	Eu como usuario do site SuiteCRM
	Quero cadastrar uma nova tarefa,alterar e excluir
	para validar se o sistemas a nova tarefa funciona corretamente

Contexto: Usuario acessa home do site
	Dado eu esteja logado no site SuiteCRM

#@teste
#@importante
Cenario: Cadastar nova tarefa no sistemas	
	Quando navego ate tela create task 
	E preencho os dados obrigatorios
	Entao validar tarefa cadastrada
#@teste
#@importante
Cenario: Alterar tarefa existente		
	Quando navego ate tela create task 
	E altero os dados obrigatorios
	Entao validar tarefa alterada
#@importante
#@teste
Cenario: Excluir tarefa 		
	Quando navego ate tela create task
	E excluo a tarefa
	Entao validar tarefa excluida
