programa
{
    inclua biblioteca Tipos --> tp
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
	    votosTotaisGanhador=0,
	    encerrarVotacao=123456

	cadeia
		nomeCandidato1 = "Belleti",
		nomeCandidato2 = "Anitta",
		nomeCandidato3 = "Manuel Gomi",
		nomeDoGanhador = ""

    caracter parar
    parar='N'

    logico
    		opcaoInvalida = falso

    faca{
    			limpa()
    			se (opcaoInvalida) {
    				escreva("Opção Invalida! ")

    }
			escreva(" Opções de Votos: \n\n")
			escreva("|-*| 1 |*-| ", nomeCandidato1, "\n")
			escreva("|-*| 2 |*-| ", nomeCandidato2, "\n")
			escreva("|-*| 3 |*-| ", nomeCandidato3, "\n")
			escreva("|-*| 9 |*-| Voto em branco \n")
			escreva("|-*| 8 |*-| Voto nulo \n")
			escreva("|-*| 0 |*-| Encerrar a votação \n\n")
	
			escreva("Digite agora o código do seu voto: ")
			leia(votosCodigo)
			
        escolha(votosCodigo)
            {
            caso 0:
            escreva("Digite o PIN para encerrar votação")
            leia(parar)
            pare
            
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

            }
            limpa()
            escreva("Deseja encerrar o funcionamento da urna? S/N : ")
            leia(parar)

        }enquanto(parar !='S')

    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 1601; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */