programa
{
	inclua biblioteca Texto --> T
	const inteiro total = 25
	cadeia nomes[total]
	
	funcao inicio()
	{
		menu()
	}

	funcao menu(){
		limpa()
		
		inteiro opcao
		escreva("1) Adicionar\n2) Remover\n3) Limpar\n4) Listar\n5) Vazia\n")
		leia(opcao)

		limpa()

		escolha(opcao){
			caso 1:{
				adicionar()
				pare
			}

			caso 2:{
				escreva("Inicio da fila: ", remover())
				retornar()
				pare
			}

			caso 3:{
				limpar()
				pare
			}

			caso 4:{
				listar()
				pare	
			}

			caso 5:{
				se(vazia() == verdadeiro){
					escreva("A fila está vazia.")
				}senao{
					escreva("A fila contém elementos.")
				}

				retornar()
			}

			caso contrario:{
				menu()
			}
		}	
	}

	funcao adicionar(){
		cadeia nome
		logico fila_cheia = verdadeiro
		escreva("Digite o nome à ser colocado na fila: ")
		leia(nome)
		nome = T.caixa_alta(nome)

		para(inteiro i = 0; i < total; i++){
			se(nomes[i] == ""){
				nomes[i] = nome
				fila_cheia = falso
				pare
			}
		}

		se(fila_cheia == verdadeiro){
			escreva("\nNão há mais espaço na fila!")
	
			retornar()
		}

		menu()
	}

	funcao cadeia remover(){
		
		para(inteiro i = 0; i < total; i++){
			se(nomes[i] != ""){
				nomes[i] = ""
				pare
			}
		}

		para(inteiro k = 0; k < total - 1; k++){
			se(nomes[k] == ""){
				nomes[k] = nomes[k+1]
				nomes[k+1] = ""
			}
		}

		retorne nomes[0]
	}

	funcao limpar(){
		para(inteiro i = 0; i < total; i++){
			nomes[i] = ""
		}

		escreva("Fila limpada com sucesso.")

		retornar()
	}

	funcao listar(){
		escreva("-----FILA-----\n\n")

		para(inteiro i = total-1; i >= 0; i--){
			se(nomes[i] != ""){
				escreva(nomes[i],"\n")
			}
		}

		retornar()
	}

	funcao logico vazia(){
		se(nomes[0] == ""){
			retorne verdadeiro
		}senao{
			retorne falso
		}
	}

	funcao retornar(){
		cadeia retorno
		escreva("\n\nAperte ENTER para retornar ao menu")
		leia(retorno)

		menu()
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 857; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 5, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */