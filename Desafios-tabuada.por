programa
{
	
	funcao tabuada()
	{
		inteiro MULTI = 7
		
		
		escreva("//Tabuada do 7 de três em três\\ \n\n")
		
		para (inteiro multi = 0 ; multi <= 100 ; multi +=3 ) {
			escreva (MULTI, " x ", multi, " = ", MULTI  *  multi, "\n")	
		}

		numeroPar()
	}
	
	funcao numeroPar()
	{		
			
			se( % 2 == 1 ) {
				escreva("Este número é ímpar \n")
			}
			senao{
				escreva("Escreva número par")
				}
	}
}
	

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 261; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */