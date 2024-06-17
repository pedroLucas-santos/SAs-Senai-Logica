programa
{
	inclua biblioteca Texto --> T
	
	const inteiro total = 20
	cadeia nomes[total]
	
	funcao inicio()
	{
		menu()
	}

	funcao menu(){
		limpa()
		
		inteiro opcao
		escreva("1) Empilhar\n2) Desempilhar\n3) Limpar\n4) Listar\n5) Vazia\n")
		leia(opcao)

		limpa()

		escolha(opcao){
			caso 1:{
				empilhar()
				pare
			}

			caso 2:{
				escreva("Topo da pilha: ", desempilhar())
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
					escreva("A pilha está vazia.")
				}senao{
					escreva("A pilha contém elementos.")
				}

				retornar()
			}

			caso contrario:{
				menu()
			}
		}	
	}

	funcao empilhar(){
		cadeia nome
		logico pilha_cheia = verdadeiro
		escreva("Digite o nome à ser colocado na pilha: ")
		leia(nome)
		nome = T.caixa_alta(nome)

		para(inteiro i = 0; i < total; i++){
			se(nomes[i] == ""){
				nomes[i] = nome
				pilha_cheia = falso
				pare
			}
		}

		se(pilha_cheia == verdadeiro){
			escreva("\nNão há mais espaço na pilha!")
	
			retornar()
		}

		menu()
	}

	funcao cadeia desempilhar(){
		inteiro posicao = 0
		
		para(inteiro i = total - 1; i >= 0; i--){
			se(nomes[i] != ""){
				nomes[i] = ""
				
				se(nomes[0] == ""){
					posicao = 0
				}senao{
					posicao = i-1
				}
				
				pare
			}
		}

		retorne nomes[posicao]
	}

	funcao limpar(){
		para(inteiro i = 0; i < total; i++){
			nomes[i] = ""
		}

		escreva("Pilha limpada com sucesso.")

		retornar()
	}

	funcao listar(){
		escreva("-----PILHA-----\n\n")

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
 * @POSICAO-CURSOR = 951; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {nomes, 6, 8, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */