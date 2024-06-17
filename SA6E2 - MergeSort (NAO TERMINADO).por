programa
{
	const inteiro total = 20
	
	funcao inicio()
	{
		inteiro numeros[total] = {1, 7, 10, 9, 2, 3, 20, 18, 33, 90, 44, 34, 30, 21, 27, 5, 8, 99, 54, 68}
		escreva("Lista desorganizada: ")
		texto(numeros)
		escreva("\nLista organizada: ")
		mergeSort(numeros, 0, total - 1)
	}

	funcao mergeSort(inteiro vetor[], inteiro ini, inteiro fim){
		inteiro meio, i, j, k, temp[total]

		se(ini < fim){
			meio = (ini + fim) / 2
			mergeSort(vetor, ini, meio)
			mergeSort(vetor, meio+1, fim)

			i = ini
			j = meio + 1
			k = ini

			enquanto(i <= meio e j <= fim){
				se(vetor[i] < vetor[j]){
					temp[k] = vetor[i]
					i++
				}senao{
					temp[k] = vetor[j]
					j++
				}
				k++
			}

			enquanto(i <= meio){
				temp[k] = vetor[i]
				i++
				k++
			}

			enquanto(j <= fim){
				temp[k] = vetor[j]
				j++
				k++
			}

			para(k = ini; k <= fim; k++){
				vetor[k] = temp[k]
			}
		}
	}

	funcao texto(inteiro vetor[]){
		para(inteiro i = 0; i < total; i++){
			escreva(vetor[i], " ")
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 519; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */