programa
{

    funcao inicio()
    {
    inteiro candidato1=0
    inteiro candidato2=0
    inteiro candidato3=0
    inteiro votoEmBranco=0 
    inteiro votoNulo=0
    caracter parar
        parar='N'

    inteiro votos
    faca{
        limpa()
        escreva("Digite o seu voto: Celso [1] Gabriel [2] Rafael [3] VotoEmBranco[9], VotoNulo[8]: ")
        leia(votos)
        escolha(votos)
            {
            caso 1:
            escreva("Você votou no Celso! ")
            candidato1++
            pare 

            caso 2:
            escreva("Você votou no Gabriel! "+votos)
            candidato2++
            pare 

            caso 3:
            escreva("você votou no Rafael!  "+votos)
            candidato3++
            pare 

            caso 9:
            escreva("Você voltou em branco "+votos)
            votoEmBranco++
            pare 

            caso 8:
            escreva("Você voltou nulo "+votos)
            votoNulo++
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
 * @POSICAO-CURSOR = 281; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {candidato1, 6, 12, 10}-{candidato2, 7, 12, 10}-{candidato3, 8, 12, 10}-{votoEmBranco, 9, 12, 12}-{votoNulo, 10, 12, 8}-{parar, 11, 13, 5}-{votos, 14, 12, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */