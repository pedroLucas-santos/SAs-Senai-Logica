programa
{
	inclua biblioteca Util --> U
	inclua biblioteca Texto --> T
	
	const inteiro maxL = 30, maxC = 10
	inteiro tamanhoL, tamanhoC, idadePassageiro[maxL][maxC]
	logico cadastroPoltrona = falso
	cadeia poltronas[maxL][maxC]
	cadeia nomePassageiro[maxL][maxC]
	logico sair = falso
	
	funcao inicio()
	{
		menu()	
	}

	funcao menu(){
		enquanto(sair == falso){
			limpa()
		
			caracter opcao
			
			escreva("==================================================\n")
			escreva("                   SWEET FLIGHT\n")
			escreva("==================================================\n\n")
			escreva("1) Cadastrar / Editar total de poltronas\n2) Reservar poltrona\n3) Poltronas disponiveis\n")
			escreva("4) Poltronas reservadas\n5) Consultar passageiro\n6) Total de poltronas disponiveis/reservadas\n7) Sair do sistema\n\n")
	
			leia(opcao)
			
			escolha(opcao){
				caso '1':{
					cadastroPoltronas(cadastroPoltrona)
					pare
				}
	
				caso '2':{
					reservaPoltrona()
					pare
				}
	
				caso '3':{
					poltronasDisp()
					pare
				}
	
				caso '4':{
					poltronasRes()
					pare
				}
	
				caso '5':{
					consultaPassageiro()
					pare
				}
	
				caso '6':{
					totalPoltronas()
					pare
				}
	
				caso '7':{
					sair = verdadeiro
					pare
				}
	
				caso contrario:{
					escreva("Opção inválida!")
					U.aguarde(700)
				}
			}
		}
		
		
	}

	funcao cadastroPoltronas(logico cadastro){
		inteiro tempL, tempC
		
		se(cadastro == falso){
			limpa()
			escreva("==================================================\n")
			escreva("              SWEET FLIGHT - CADASTRO\n")
			escreva("==================================================\n\n")
			escreva("Quantidade de filas: ")
			leia(tamanhoL)
			escreva("Quantidade de colunas: ")
			leia(tamanhoC)

			se(tamanhoL > maxL ou tamanhoC > maxC ou tamanhoL <= 0 ou tamanhoC <= 0){
				escreva("Tamanho inválido! (Fila máxima: " + maxL + " Coluna máxima: " + maxC + ")")
				retorna()
			}senao{
				para(inteiro i = 0; i < tamanhoL; i++){
					para(inteiro j = 0; j < tamanhoC; j++){
						poltronas[i][j] = "D"
					}
				}
				escreva("Cadastro de poltronas concluido!")
				cadastroPoltrona = verdadeiro
				retorna()
			}
		}senao{
			limpa()
			escreva("==================================================\n")
			escreva("              SWEET FLIGHT - EDITAR\n")
			escreva("==================================================\n\n")
			escreva("Quantidade de filas: ")
			leia(tempL)
			escreva("Quantidade de colunas: ")
			leia(tempC)

			se(tempL < tamanhoL ou tempC < tamanhoC){
				escreva("Tamanho inferior ao cadastrado! (Fila: " + tamanhoL + " Coluna: " + tamanhoC + ")")
				retorna()
			}senao se(tempL > maxL ou tempC > maxC){
				escreva("Tamanho inválido! (Fila máxima: " + maxL + " Coluna máxima: " + maxC + ")")
				retorna()
				menu()
			}senao{
				tamanhoL = tempL
				tamanhoC = tempC
				
				para(inteiro i = 0; i < tamanhoL; i++){
					para(inteiro j = 0; j < tamanhoC; j++){
						se(poltronas[i][j] != "R"){
							poltronas[i][j] = "D"
						}	
					}
				}
				escreva("Edição concluida!")
				retorna()
			}
		}
	}

	funcao reservaPoltrona(){
		inteiro tempL, tempC
		se(cadastroPoltrona == falso){
			limpa()
			escreva("==================================================\n")
			escreva("              SWEET FLIGHT - RESERVAR\n")
			escreva("==================================================\n\n")
			escreva("Cadastro de poltronas ainda não realizado!")
			retorna()
		}senao{
			limpa()
			escreva("==================================================\n")
			escreva("              SWEET FLIGHT - RESERVAR\n")
			escreva("==================================================\n\n")		
			escreva("Número da fila: ")
			leia(tempL)
			escreva("Número da coluna: ")
			leia(tempC)
		
			se(tempL >= tamanhoL ou tempC >= tamanhoC){
				escreva("Esta poltrona é invalida! (Fila: " + tamanhoL + " Coluna: " + tamanhoC + ")")
				retorna()
			}senao se(poltronas[tempL][tempC] == "D"){
				escreva("\nNome do passageiro: ")
				leia(nomePassageiro[tempL][tempC])
				nomePassageiro[tempL][tempC] = T.caixa_alta(nomePassageiro[tempL][tempC])
				escreva("Idade do passageiro: ")
				leia(idadePassageiro[tempL][tempC])
				
				poltronas[tempL][tempC] = "R"
		
				escreva("Reserva feita com sucesso!")
				retorna()
			}senao{
				escreva("Poltrona já reservada! Por favor, escolha outra.")
				retorna()
			}
		
			
		}
	}

	funcao poltronasDisp(){
		se(cadastroPoltrona == falso){
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - POLTRONAS DISPONIVEIS\n")
			escreva("==================================================\n\n")
			escreva("Cadastro de poltronas ainda não realizado!")
			retorna()
		}senao{
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - POLTRONAS DISPONIVEIS\n")
			escreva("==================================================\n\n")
	
			escreva("  ")
			
			para(inteiro i = 0; i < tamanhoC; i++){
				escreva(" " + i)
			}
	
			escreva("\n")
			
			para(inteiro i = 0; i < tamanhoL; i++){
				escreva(i + "  ")
				para(inteiro j = 0; j < tamanhoC; j++){
					se(poltronas[i][j] == "R"){
						escreva("  ")
					}senao{
						escreva(poltronas[i][j] + " ")
					}
		
				}
				escreva("\n")
			}
	
			retorna()
		}
		
	}

	funcao poltronasRes(){
		se(cadastroPoltrona == falso){
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - POLTRONAS RESERVADAS\n")
			escreva("==================================================\n\n")
			escreva("Cadastro de poltronas ainda não realizado!")
			retorna()
		}senao{
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - POLTRONAS RESERVADAS\n")
			escreva("==================================================\n\n")
	
			escreva("  ")
			
			para(inteiro i = 0; i < tamanhoC; i++){
				escreva(" " + i)
			}
	
			escreva("\n")
			
			para(inteiro i = 0; i < tamanhoL; i++){
				escreva(i + "  ")
				para(inteiro j = 0; j < tamanhoC; j++){
					se(poltronas[i][j] == "D"){
						escreva("  ")
					}senao{
						escreva(poltronas[i][j] + " ")
					}
		
				}
				escreva("\n")
			}

			escreva("\n")
	
			para(inteiro i = 0; i < tamanhoL; i++){
				para(inteiro j = 0; j < tamanhoC; j++){
					se(poltronas[i][j] == "R"){
						escreva("Poltrona (" + i + "," + j + ") | Passageiro: " + nomePassageiro[i][j] + " | Idade: " + idadePassageiro[i][j] + "\n")
					}
				}
			}

			retorna()
		}
		
	}

	funcao consultaPassageiro(){
		cadeia passageiro
		logico encontrado = falso
		
		se(cadastroPoltrona == falso){
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - CONSULTA\n")
			escreva("==================================================\n\n")
			escreva("Cadastro de poltronas ainda não realizado!")
			retorna()
		}senao{
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - CONSULTA\n")
			escreva("==================================================\n\n")
			escreva("Nome do passageiro para consultar: ")
			leia(passageiro)

			passageiro = T.caixa_alta(passageiro)

			escreva("\n")

			para(inteiro i = 0; i < tamanhoL; i++){
				para(inteiro j = 0; j < tamanhoC; j++){
					se(passageiro == nomePassageiro[i][j]){
						encontrado = verdadeiro
						escreva("Poltrona (" + i + "," + j + ") | Passageiro: " + nomePassageiro[i][j] + " | Idade: " + idadePassageiro[i][j] + "\n")
					}
				}
			}

			se(encontrado == falso){
				escreva("Não há reservas realizadas para este passageiro!")
			}

			retorna()
		}
	}

	funcao totalPoltronas(){
		inteiro contadorPoltDisp = 0, contadorReservas = 0, totalDePoltronas = tamanhoL * tamanhoC, quantCrianca = 0, quantAdolescente = 0, quantAdulto = 0, quantIdoso = 0
		
		se(cadastroPoltrona == falso){
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - TOTAL DE POLTRONAS\n")
			escreva("==================================================\n\n")
			escreva("Cadastro de poltronas ainda não realizado!")
			retorna()
		}senao{
			limpa()
			escreva("==================================================\n")
			escreva("       SWEET FLIGHT - TOTAL DE POLTRONAS\n")
			escreva("==================================================\n\n")
			escreva("Total de poltronas do avião: " + totalDePoltronas)

			para(inteiro i = 0; i < tamanhoL; i++){
				para(inteiro j = 0; j < tamanhoC; j++){
					se(poltronas[i][j] == "D"){
						contadorPoltDisp++
					}senao{
						contadorReservas++
					}
				}
			}

			escreva("\nTotal de poltronas para reserva: " + contadorPoltDisp + " (" + (contadorPoltDisp * 100) / totalDePoltronas + "% das poltronas estão disponíveis)" )
			escreva("\nTotal de reservas realizadas: " + contadorReservas + " (" + (contadorReservas * 100) / totalDePoltronas + "% das poltronas foram reservadas)")

			para(inteiro i = 0; i < tamanhoL; i++){
				para(inteiro j = 0; j < tamanhoC; j++){
					se(idadePassageiro[i][j] > 0){
						se(idadePassageiro[i][j] <= 12){
						quantCrianca++
						}senao se(idadePassageiro[i][j] <= 17){
							quantAdolescente++
						}senao se(idadePassageiro[i][j] <= 59){
							quantAdulto++
						}senao se(idadePassageiro[i][j] >= 60){
							quantIdoso++
						}
					}
					
				}
			}

			escreva("\n\nTotal de crianças: " + quantCrianca)
			escreva("\nTotal de adolescentes: " + quantAdolescente)
			escreva("\nTotal de adultos: " + quantAdulto)
			escreva("\nTotal de idosos: " + quantIdoso)
			
			retorna()
			
		}
		
	}

	funcao retorna(){
		cadeia r
		escreva("\n\nAperte ENTER para voltar")
		leia(r)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2782; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {idadePassageiro, 7, 29, 15}-{poltronas, 9, 8, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */