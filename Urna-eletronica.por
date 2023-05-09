programa
{
    inclua biblioteca Tipos --> tp
    inclua biblioteca Matematica
    funcao inicio()
    {
    inteiro 
	    votosCodigo,
	    votosCandidato1=0,
	    votosCandidato2=0,
	    votosCandidato3=0,
	    votosEmBranco=0,
	    votosNulos=0,
	    votosTotais=0,
	    votosTotaisGanhador=0
	    
	    
	    
	real 
		percentualVotosCandidato1 = 0.0,
		percentualVotosCandidato2 = 0.0,
		percentualVotosCandidato3 = 0.0,
		percentualVotosEmBranco = 0.0,
		percentualVotosNulos = 0.0,
		percentualGanhador = 0.0
		
	cadeia
		nomeCandidato1 = "Dilera",
		nomeCandidato2 = "Alek",
		nomeCandidato3 = "Manel Gomi",
		nomeDoGanhador = ""
		
    	caracter parar
    	parar='N'

    logico
    		opcaoInvalida = falso,
    		empate = falso,
    		encerrarVotacao = falso

    faca{
    			limpa()
    			se (opcaoInvalida) {
    				escreva("Opção Invalida! \n\n")
    				opcaoInvalida = falso

    }
			escreva(" Opções de Votos: \n\n")
			escreva("|-*| 1 |*-| ", nomeCandidato1, "\n")
			escreva("|-*| 2 |*-| ", nomeCandidato2, "\n")
			escreva("|-*| 3 |*-| ", nomeCandidato3, "\n")
			escreva("|-*| 9 |*-| Voto em branco \n")
			escreva("|-*| 8 |*-| Voto nulo \n")
			escreva("Digite o PIN para encerrar votação \n")
			
	
			escreva("Digite agora o código do seu voto: ")
			leia(votosCodigo)
			
        escolha(votosCodigo)
            {
            
            caso 1:
            votosCandidato1++
            votosTotais++
            pare

            caso 2:
            votosCandidato2++
            votosTotais++
            pare

            caso 3:
            votosCandidato3++
            votosTotais++
            pare 

            caso 9:
            votosEmBranco++
            votosTotais++
            pare

            caso 8:
            votosNulos++
            votosTotais++
            pare
            
            caso 202223:
	            limpa()
	            escreva("Para encerrar votação digite S para sim!: ")
	            leia(parar)
            
				se(parar == 's' ou parar == 'S') {
				encerrarVotacao = verdadeiro
				}
				pare
	
				caso contrario:
				opcaoInvalida = verdadeiro
				
            }
           
        }enquanto(nao encerrarVotacao)

        se (votosCandidato1 > votosCandidato2 e votosCandidato1 > votosCandidato3) {
			
			nomeDoGanhador = nomeCandidato1
			votosTotaisGanhador = votosCandidato1 + votosEmBranco
		} senao se (votosCandidato2 > votosCandidato1 e votosCandidato2 > votosCandidato3) {
			
			nomeDoGanhador = nomeCandidato2
			votosTotaisGanhador = votosCandidato2 + votosEmBranco
		} senao se (votosCandidato3 > votosCandidato1 e votosCandidato3 > votosCandidato2) {
			
			nomeDoGanhador = nomeCandidato3
			votosTotaisGanhador = votosCandidato3 + votosEmBranco
		} senao {
			empate = verdadeiro
		}

		limpa()
		escreva("** Resultado da apuração desta urna\n\n")
		
		se (votosTotais != 0) {
			
			percentualGanhador = (tp.inteiro_para_real(votosTotaisGanhador) / tp.inteiro_para_real(votosTotais)) * 100.0
		
			escreva("Votos totais: ", votosTotais, "\n")
			
			escreva("Votos no candidato ",nomeCandidato1, ": ", votosCandidato1, " (", 
				tp.inteiro_para_real(votosCandidato1) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos no candidato ",nomeCandidato2, ": ", votosCandidato2, " (", 
				tp.inteiro_para_real(votosCandidato2) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos no candidato ",nomeCandidato3, ": ", votosCandidato3, " (", 
				tp.inteiro_para_real(votosCandidato3) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos em branco: ", votosEmBranco, " (", 
				tp.inteiro_para_real(votosEmBranco) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n")
			
			escreva("Votos nulos: ", votosNulos, " (", 
				tp.inteiro_para_real(votosNulos) / tp.inteiro_para_real(votosTotais) * 100.0, "%)\n\n")
				
		} senao {
			
			escreva("** Nenhum voto registrado\n")
			
		}

		
		se (nao empate) {
			escreva("** Ganhador da Votação\n\n")
			escreva(nomeDoGanhador, " com ", votosTotaisGanhador, " votos (", 
				percentualGanhador, "%) somados os votos em branco\n")
		} senao {
			escreva("** Não foi possível determinar um ganhador desta votação\n\n")
		}

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 637; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {votosCodigo, 8, 5, 11}-{votosCandidato1, 9, 5, 15}-{votosCandidato2, 10, 5, 15}-{votosCandidato3, 11, 5, 15}-{votosEmBranco, 12, 5, 13}-{votosNulos, 13, 5, 10}-{votosTotais, 14, 5, 11}-{votosTotaisGanhador, 15, 5, 19};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */