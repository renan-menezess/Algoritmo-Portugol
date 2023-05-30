programa
{
	
	funcao inicio()
	{
		caracter matriz[3][7] =
		{
		// i = Linha; j = coluna

		//		i0j0  i0j1  i0j2  i0j3  i0j4
			    { 'R', 'E', 'N', 'A', 'N', ' ', ' '},
		//		i1j0  i1j1  i1j2  i1j3  i1j4
			    { 'C', 'O', 'E', 'L', 'H', 'O', ' '},
		//		i2j0  i2j1  i2j2  i2j3  i2j4
			    { 'M', 'E', 'N', 'E', 'Z', 'E', 'S'}
		}

		para (inteiro i = 0; i < 3; i++) {

			para (inteiro j = 0; j < 7; j++) {

				escreva(matriz[i][j], " ")
			}
			escreva("\n")
	
		}
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 89; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */