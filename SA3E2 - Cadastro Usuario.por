programa
{
	inclua biblioteca Util

	const inteiro total = 100

	inteiro menu = 0, id_usuario = 0, idade_usuario[total], quantidade_usuarios
	cadeia nome_usuario[total], voltar_menu
	
	funcao inicio()
	{
		escreva("Quantos usuários você gostaria de cadastrar ? (Máximo de ", total, " usuários)\n")
		leia(quantidade_usuarios)

		se(quantidade_usuarios <= total){
			limpa()
			menu_sistema()
		}senao{
			escreva("Quantidade inválida! (Máximo de ", total, " usuários)\n")
			Util.aguarde(3000)
			limpa()
			inicio()
		}
		
		
	}

	funcao menu_sistema(){
		//menu principal
		escreva("-----CADASTRAR USUÁRIO-----\n\n")
		escreva("1) Cadastrar novo usuário\n")
		escreva("2) Listar todos os usuários\n")
		escreva("3) Sair do sistema\n\n")
		leia(menu)
	
		limpa()
	
		escolha(menu){
			caso 1:
				cadastro()
			pare
	
			caso 2:
				listar()
			pare
			
			caso 3:
				sair()
			pare
		}
		
	}

	funcao cadastro(){
		escreva("-----CADASTRO DE USUÁRIO-----\n\n")
		para(inteiro i = 0 ; i < quantidade_usuarios; i++){
			//validação para saber se há espaço disponivel para cadastro no vetor
			se(nome_usuario[i] == "" e idade_usuario[i] == 0){
				escreva("Nome: ")
				leia(nome_usuario[i])
				escreva("Idade: ")
				leia(idade_usuario[i])

				escreva("\nUsuário ", nome_usuario[i], " cadastrado com sucesso!")

				Util.aguarde(2000)

				limpa()
				menu_sistema()
			}senao se(nome_usuario[quantidade_usuarios - 1] != ""){
				escreva("Não há mais vagas para cadastrar usuários!")

				Util.aguarde(3000)

				limpa()
				menu_sistema()
			}
		}
	}

	funcao listar(){
		escreva("-----LISTA DE USUÁRIOS-----\n")
		para(inteiro i = 0 ; i < quantidade_usuarios ; i++){
			//validação para ver se existe algum usuário cadastrado
			se(nome_usuario[0] == ""){
				escreva("\nNenhum usuário cadastrado!\n")
				pare
			}senao se(nome_usuario[i] != ""){
				escreva("\nID:",i," --- ",nome_usuario[i], " --- ", idade_usuario[i], " anos")
			} 		
		}

		escreva("\n\nAperte qualquer tecla para voltar ao menu principal\n")
		leia(voltar_menu)

		limpa()
		menu_sistema()
	}

	funcao sair(){
		limpa()
				
		para(inteiro i = 0 ; i < 3; i++){
			escreva("Finalizando o sistema.")
			Util.aguarde(500)
			limpa()
			escreva("Finalizando o sistema..")
			Util.aguarde(500)
			limpa()
			escreva("Finalizando o sistema...")
			Util.aguarde(500)
			limpa()	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 554; 
 * @DOBRAMENTO-CODIGO = [9, 27, 53, 80, 99];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {menu, 7, 9, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */