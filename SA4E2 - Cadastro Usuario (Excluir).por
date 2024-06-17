programa
{
	inclua biblioteca Util
	inclua biblioteca Texto

	const inteiro total = 100

	inteiro menu = 0, id_usuario = 0, idade_usuario[total], quantidade_usuarios, opcao_excluir
	cadeia nome_usuario[total], voltar_menu, nome_busca
	logico fim_programa = falso
	
	
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
		escreva("3) Buscar usuário\n")
		escreva("4) Excluir usuário\n")
		escreva("5) Sair do sistema\n\n")
		leia(menu)
	
		limpa()
	
		escolha(menu){
			caso 1:{
				cadastro()
				pare
			}
	
			caso 2:{
				listar()
				pare
			}
			
			caso 3:{
				escreva("-----BUSCAR USUÁRIO-----\n\n")
				escreva("Digite o nome do usuário: ")
				leia(nome_busca)
				nome_busca = Texto.caixa_alta(nome_busca)
				
				buscar(nome_busca, 1)
				pare
			}


			caso 4:{
				excluir()
				pare
			}

			caso 5:{
				sair()
				pare
			}

			
				
		}
		
	}

	funcao cadastro(){

		escreva("-----CADASTRO DE USUÁRIO-----\n\n")
		para(inteiro i = 0 ; i < quantidade_usuarios e fim_programa != verdadeiro; i++){
			//validação para saber se há espaço disponivel para cadastro no vetor
			se(nome_usuario[i] == "" e idade_usuario[i] == 0){
				escreva("Nome: ")
				leia(nome_usuario[i])
				nome_usuario[i] = Texto.caixa_alta(nome_usuario[i])
				escreva("Idade: ")
				leia(idade_usuario[i])
	
				escreva("\nUsuário ", nome_usuario[i], " cadastrado com sucesso!")
	
				retornar()
	
				limpa()
				menu_sistema()
			}senao se(nome_usuario[quantidade_usuarios - 1] != ""){
				escreva("Não há mais vagas para cadastrar usuários!")
	
				retornar()
	
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

		retornar()

		limpa()
		menu_sistema()
	}
	
	funcao buscar(cadeia nome_temp, inteiro modo){
		logico encontrado = falso
		
		escolha(modo){
			caso 1:{			
				para(inteiro i = 0; i < quantidade_usuarios; i++){
					se(nome_usuario[i] == nome_temp){
						escreva("\nID:",i," --- ",nome_usuario[i], " --- ", idade_usuario[i], " anos")
						encontrado = verdadeiro
					}
				}
		
				se(encontrado == falso){
					escreva("\nNenhum usuário encontrado!")
				}
		
				retornar()
		
				limpa()
				menu_sistema()
				pare
			}

			caso 2:{
				para(inteiro i = 0; i < quantidade_usuarios; i++){
					se(nome_usuario[i] == nome_temp){
						escreva("\nID:",i," --- ",nome_usuario[i], " --- ", idade_usuario[i], " anos")
						encontrado = verdadeiro
					}
				}
		
				se(encontrado == falso){
					escreva("\nNenhum usuário encontrado!")

					retornar()

					limpa()

					menu_sistema()
				}
				pare
			}
				
		}
		
		
			
	}

	funcao excluir(){
		cadeia nome_excluir
		inteiro id_excluir
		
		escreva("-----EXCLUIR USUÁRIO-----\n\n")
		escreva("Digite o nome do usuário: ")
		leia(nome_excluir)
		nome_excluir = Texto.caixa_alta(nome_excluir)

		buscar(nome_excluir, 2)
		
		escreva("\n\nDigite o ID do usuário a ser excluído: ")
		leia(id_excluir)

		limpa()

		escreva("-----EXCLUIR USUÁRIO-----\n\n")
		escreva("\nID:",id_excluir," --- ",nome_usuario[id_excluir], " --- ", idade_usuario[id_excluir], " anos")
		escreva("\n\nTem certeza que deseja excluir esse usuário ?")
		escreva("\n1) Sim\n2) Não\n")
		leia(opcao_excluir)

		
		escolha(opcao_excluir){
			caso 1:{
				nome_usuario[id_excluir] = ""
				idade_usuario[id_excluir] = 0

				para(inteiro i = id_excluir; i < quantidade_usuarios; i++){
					nome_usuario[i] = nome_usuario[i + 1]
					idade_usuario[i] = idade_usuario[i + 1]
				}

				limpa()
				
				escreva("-----EXCLUIR USUÁRIO-----\n\n")
				escreva("Usuário excluído com sucesso.")
				
				retornar()
				
				menu_sistema()
				
				pare
			}

			caso 2:{
				limpa()
				menu_sistema()
				pare
			}

			caso contrario:{
				escreva("Opção inválida!")
				retornar()
				excluir()
				pare
			}
		}	
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

		fim_programa = verdadeiro
	}

	funcao retornar(){
		escreva("\n\nAperte ENTER para voltar ao menu principal\n")
		leia(voltar_menu)
	}

}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 4213; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */