programa
{
	inclua biblioteca Util

	const inteiro total = 100

	inteiro menu = 0, id_usuario = 0, idade_usuario[total]
	cadeia nome_usuario[total], voltar_menu
	
	funcao inicio()
	{
		enquanto(menu != 3){
			//menu principal
			escreva("-----CADASTRAR USUÁRIO-----\n\n")
			escreva("1) Cadastrar novo usuário\n")
			escreva("2) Listar todos os usuários\n")
			escreva("3) Sair do sistema\n\n")
			escreva("4) Debug (cadastra 99 usuarios)")
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
					limpa()
					
					escreva("Finalizando o sistema...")

					Util.aguarde(2000)
				pare

				caso 4:
					para(inteiro i = 0; i <= (total - 1); i++){
						se(nome_usuario[i] == "" e idade_usuario[i] == 0){
							nome_usuario[i] = "teste"
							idade_usuario[i] = 2

							escreva("99 usuarios cadastrados para teste")
							
							limpa()
						}senao se(nome_usuario[total] != ""){
							escreva("Não há mais vagas para cadastrar usuários!")
			
							Util.aguarde(3000)
			
							limpa()
							pare
						}
					}
			}
		}
	}

	funcao cadastro(){
		escreva("-----CADASTRO DE USUÁRIO-----\n\n")
		para(inteiro i = 0 ; i <= (total - 1) ; i++){
			//validação para saber se há espaço disponivel para cadastro no vetor
			se(nome_usuario[i] == "" e idade_usuario[i] == 0){
				escreva("Nome: ")
				leia(nome_usuario[i])
				escreva("Idade: ")
				leia(idade_usuario[i])

				escreva("\nUsuário ", nome_usuario[i], " cadastrado com sucesso!")

				Util.aguarde(2000)

				limpa()
				
				pare
			}senao se(nome_usuario[total - 1] != ""){
				escreva("Não há mais vagas para cadastrar usuários!")

				Util.aguarde(3000)

				limpa()
				pare
			}
		}
	}

	funcao listar(){
		escreva("-----LISTA DE USUÁRIOS-----\n")
		para(inteiro i = 0 ; i <= (total - 1) ; i++){
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
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1619; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nome_usuario, 8, 8, 12};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */