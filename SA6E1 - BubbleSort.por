programa
{
	const inteiro total = 20
	
	
	
	funcao inicio()
	{
		inteiro numeros[total] = {1, 7, 10, 9, 2, 3, 20, 18, 33, 90, 44, 34, 30, 21, 27, 5, 8, 99, 54, 68}
		
		escreva("Lista desordenada: ")
		
		texto(numeros)
		
		escreva("\n")
		escreva("Lista ordenada: ")
		
		bubbleSort(numeros)
	}

	funcao bubbleSort(inteiro vetor[]){
		inteiro hold
		
		para(inteiro k = 0; k < total; k++){
			para(inteiro i = 0; i < total-1; i++){
				se(vetor[i] > vetor[i + 1]){
					hold = vetor[i+1]
					vetor[i+1] = vetor[i]
					vetor[i] = hold
				}
			}
		}

		texto(vetor)
	}

	funcao texto(inteiro vetor[]){
		para(inteiro j = 0; j < total; j++){
			escreva(vetor[j], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 334; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */