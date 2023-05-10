programa
{
    inclua biblioteca Tipos --> tp
    inclua biblioteca Sons
    inclua biblioteca Util
    inclua biblioteca Calendario
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
		nomeDoGanhador = "",
		inicioUrna = "",
		encerramentoUrna = ""
		
		
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
            somConfirmacao()
            votosCandidato1++
            votosTotais++
            pare

            caso 2:
            somConfirmacao()
            votosCandidato2++
            votosTotais++
            pare

            caso 3:
            somConfirmacao()
            votosCandidato3++
            votosTotais++
            pare 

            caso 9:
            somConfirmacao()
            votosEmBranco++
            votosTotais++
            pare

            caso 8:
            somConfirmacao()
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
		escreva("==: Resultado da Votação\n\n")
		
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
			
			escreva("==: Nenhum voto registrado\n")
			
		}

		
		se (nao empate) {
			escreva("==: Ganhador da Votação\n\n")
			
			escreva(nomeDoGanhador, " com ", votosTotaisGanhador, " votos (", 
				percentualGanhador, "%) somados os votos em branco\n")
		} senao {
			escreva("==: Não foi possível determinar um ganhador desta votação\n\n")
		}
    }

    funcao somConfirmacao()
    {
	    	inteiro somUrna = Sons.carregar_som("Audio/desafios-urna-eletronica_audio_confirma-urna.mp3")
	
	    	Sons.reproduzir_som(somUrna, falso)
	    	Util.aguarde(2000)
    }

    //funcao boletimUrna( horarioApuracao, minutoAtual, segundoAtual, diaMesApuracao, mesApuracao, anoApuracao)
    //{
	    
	    //inteiro anoApuracao = Calendario.ano_atual() 
	    //inteiro diaMesApuracao = Calendario.dia_mes_atual()
	    //inteiro horarioApuracao = Calendario.hora_atual(falso)
	   // inteiro minutoAtual = Calendario.minuto_atual()
	   // inteiro segundoAtual = Calendario.segundo_atual()
	   // inteiro mesApuracao = Calendario.mes_atual()
	    //escreva("Horário de Início: " , horarioApuracao, ":", minutoAtual, ":", segundoAtual, "\n", diaMesApuracao, "-", mesApuracao, "-", anoApuracao, "\n")
	    //escreva("Horário de encerramento: " , horarioApuracao, ":", minutoAtual, ":", segundoAtual, "\n", diaMesApuracao, "-", mesApuracao, "-", anoApuracao, "\n")
	    
    //}
    
    funcao boletimUrna(inteiro anoApuracao, inteiro diaMesApuracao, inteiro horarioApuracao, inteiro minutoAtual, inteiro segundoAtual, inteiro mesApuracao)
    {
	    
	    retorne 
	    
	    
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 5680; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */