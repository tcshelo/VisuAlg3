Algoritmo "NP2"
// Disciplina  : Algoritmos e Programa��o
// Professor   : Valmir Assis 
// Descri��o   : Menu de 6 op��es que resolvem quest�es com Matrizes.
// Autor(a)    : Heloisa Cristina de Souza
// Data        : 26/07/2021
Var
// Vari�veis usadas para todas as op��es do menu
op,L,C,verifica,v1,v2,v3,vF,x: inteiro

//Op��o 1
mat1: vetor[1..5,1..5] de inteiro
mat2: vetor[1..5,1..5] de inteiro
matsoma: vetor[1..5,1..5] de inteiro

//Op��o 2
mat3: vetor[1..6,1..6] de inteiro
matsubtracao: vetor[1..6,1..6] de inteiro
num: inteiro

//Op��o 3
mat4: vetor[1..3,1..3] de inteiro
mat5: vetor[1..3,1..3] de inteiro
matmultiplica: vetor[1..3,1..3] de inteiro

//Op��o 5
sDP1,sDP2,sDP3: inteiro

//Menu de escolha
procedimento Menu
    inicio
    escreval("--------------------------")
    escreval("Menu Principal")
    escreval("1- Soma;")
    escreval("2- Subtra��o;")
    escreval("3- Multiplica��o;")
    escreval("4- Transposta;")
    escreval("5- Diagonal Principal;")
    escreval("6- Sair.")
    escreval("--------------------------")
fimprocedimento

//Verificar se as tr�s primeiras op��es foram preenchidas e tem resultado
funcao verificaF (x:inteiro):inteiro
inicio
  para L de 1 ate 5 faca
       para C de 1 ate 5 faca
            v1<- v1 + matsoma[L,C]
       fimpara
  fimpara

  para L de 1 ate 6 faca
       para C de 1 ate 6 faca
            v2<- v2 + matsubtracao[L,C]
       fimpara
  fimpara

  para L de 1 ate 3 faca
       para C de 1 ate 3 faca
            v3<- v3 + matmultiplica[L,C]
       fimpara
  fimpara

  se (v1=0) ou (v2=0) ou (v3=0) entao
     x<- 0
     escreval("Para realizar as op��es 4 e 5 � necess�rio preencher")
     escreval("todas as 3 primeiras op��es do menu. Por favor, fa�a")
     escreval("o que se pede em todas elas e ent�o tente novamente.")
     verifica<- menuR(verifica)
     senao
          se (v1>0) e (v2>0) e (v3>0) entao
          x<- 1
          fimse
  fimse
  retorne(x)
fimfuncao


//Fun��o retornar ao menu
funcao menuR (verificaR: inteiro):inteiro
    inicio
    retorne(verificaR)
fimfuncao

//Procedimento pular linha para retornar ao menu automaticamente
procedimento Linha
    inicio
    escreval()
fimprocedimento

Inicio

repita
menu
escreva("-> ")
leia(op)
limpatela

escolha op

//OP��O 1: SOMA DUAS MATRIZES 5x5
  caso 1
//l� os valores da matriz 1
  para L de 1 ate 5 faca
       para C de 1 ate 5 faca
         escreva("Digite um valor para MATRIZ 1[",L,",",C,"]: ")
         leia(mat1[L,C])
       fimpara
  fimpara
  limpatela

//l� os valores da matriz 2
  escreval()
  para L de 1 ate 5 faca
       para C de 1 ate 5 faca
         escreva("Digite um valor para MATRIZ 2[",L,",",C,"]: ")
         leia(mat2[L,C])
       fimpara
  fimpara
  limpatela

//escreve matriz 1
  escreval("---------MATRIZ 1---------")
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          escreva(mat1[L,C]:4)
     fimpara
     escreval()
  fimpara

//escreve matriz 2
  escreval("---------MATRIZ 2---------")
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          escreva(mat2[L,C]:4)
     fimpara
     escreval()
  fimpara

//soma matriz 1 + matriz 2
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          matsoma[L,C]<- mat1[L,C] + mat2[L,C]
     fimpara
  fimpara
  
//escreve o resultado dessa soma de matrizes
  escreval("-----MATRIZ RESULTADO-----")
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          escreva(matsoma[L,C]:4)
     fimpara
     escreval()
  fimpara

//OP��O 2: SUBTRAI UM N�MERO ESCOLHIDO DE UMA MATRIZ 6x6
  caso 2
//l� os valores da matriz 3
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          escreva("Digite um valor para MATRIZ[",L,",",C,"]: ")
          leia(mat3[L,C])
     fimpara
  fimpara
  limpatela

//pergunta ao usu�rio qual n�mero ele deseja usar para subtrair dos valores da matriz 3
  escreval("------------------------")
  escreval("Qual n�mero deseja usar para subtrair?")
  escreva("-> ")
  leia(num)

//escreve a matriz 3
  escreval("---------MATRIZ---------")
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          escreva(mat3[L,C]:4)
     fimpara
     escreval()
  fimpara

//faz a subtra��o de 'num' menos todos os elementos da matriz 3
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          matsubtracao[L,C]<- num - mat3[L,C]
     fimpara
  fimpara

//escreve a matriz resultante da subtra��o
  escreval("----MATRIZ RESULTADO----")
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          escreva(matsubtracao[L,C]:4)
     fimpara
     escreval()
  fimpara

//OP��O 3: MULTIPLICA DUAS MATRIZES 3x3
  caso 3
//l� todos os valores da matriz 4
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          escreva("Digite um valor para MATRIZ 1[",L,",",C,"]: ")
          leia(mat4[L,C])
     fimpara
  fimpara
limpatela

//l� todos os valores da matriz 5
  escreval()
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          escreva("Digite um valor para MATRIZ 2[",L,",",C,"]: ")
          leia(mat5[L,C])
     fimpara
  fimpara
  limpatela

//escreve a matriz 4
  escreval("--------MATRIZ 1--------")
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
       escreva(mat4[L,C]:4)
     fimpara
     escreval()
  fimpara

//escreve a matriz 5
  escreval("--------MATRIZ 2--------")
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
       escreva(mat5[L,C]:4)
     fimpara
     escreval()
  fimpara

//multiplica as duas matrizes
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          matmultiplica[L,C]<-(mat4[L,C]*mat5[L,C])
     fimpara
  fimpara

//escreve o resultado da multiplica��o das duas matrizes
  escreval("----MATRIZ RESULTADO----")
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          escreva(matmultiplica[L,C]:4)
     fimpara
     escreval()
  fimpara

//OP��O 4: MATRIZ TRANSPOSTA DE CADA RESULTADO DAS OP��ES DO MENU 1, 2 E 3
  caso 4
//puxa a fun��o de verifica��o
  vF<- verificaF(x)
  se (vF=0) entao
     Linha
     senao
       se (vF=1) entao
//reescreve a matriz resultado de soma (matsoma)
  escreval("-------MATRIZ RESULTADO 1: SOMA-------")
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          escreva(matsoma[L,C]:4)
     fimpara
     escreval()
  fimpara

//transposta da matriz resultado de soma
  escreval("---MATRIZ TRANSPOSTA DO RESULTADO 1---")
  para L de 1 ate 5 faca
       para C de 1 ate 5 faca
            escreva(matsoma[C,L]:4)
       fimpara
       escreval()
  fimpara

//reescreve a matriz resultado de subtra��o (matsubtracao)
  escreval("----MATRIZ RESULTADO 2: SUBTRA��O-----")
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          escreva(matsubtracao[L,C]:4)
     fimpara
     escreval()
  fimpara

//transposta da matriz resultado de subtra��o
  escreval("---MATRIZ TRANSPOSTA DO RESULTADO 2---")
  para L de 1 ate 6 faca
       para C de 1 ate 6 faca
            escreva(matsubtracao[C,L]:4)
       fimpara
       escreval()
  fimpara

//reescreve a matriz resultado de multiplica��o (matmultiplica)
  escreval("---MATRIZ RESULTADO 3: MULTIPLICA��O---")
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          escreva(matmultiplica[L,C]:4)
     fimpara
     escreval()
  fimpara

//transposta da matriz resultado de multiplica��o
  escreval("---MATRIZ TRANSPOSTA DO RESULTADO 3---")
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          escreva(matmultiplica[C,L]:4)
     fimpara
     escreval()
  fimpara
       fimse
  fimse //termina o procedimento de verifica��o
  
//OP��O 5: SOMA OS VALORES DA DIAGONAL PRINCIPAL DA MATRIZ RESULTADO DO MENU 1,2 E 3
    caso 5
//puxa a fun��o de verifica��o
  vF<- verificaF(x)
  se (vF=0) entao
     Linha
     senao
       se (vF=1) entao

//reescreve a matriz resultado de soma (matsoma)
  escreval("-------MATRIZ RESULTADO 1: SOMA-------")
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          escreva(matsoma[L,C]:4)
     fimpara
     escreval()
  fimpara

//soma a diagonal principal da matriz resultado 1: soma
  para L de 1 ate 5 faca
     para C de 1 ate 5 faca
          se (L=C) entao
             sDP1<- SDP1 + matsoma[L,C]
          fimse
     fimpara
  fimpara

  escreval()
  escreval("-> Soma da diagonal principal: ",sDP1)

//reescreve a matriz resultado de subtra��o (matsubtracao)
  escreval()
  escreval("----MATRIZ RESULTADO 2: SUBTRA��O-----")
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          escreva(matsubtracao[L,C]:4)
     fimpara
     escreval()
  fimpara
  
//soma a diagonal principal da matriz resultado 2: subtra��o
  para L de 1 ate 6 faca
     para C de 1 ate 6 faca
          se (L=C) entao
          sDP2<- SDP2 + matsubtracao[L,C]
          fimse
     fimpara
  fimpara

  escreval()
  escreval("-> Soma da diagonal principal: ",sDP2)

//reescreve a matriz resultado de multiplica��o (matmultiplica)
  escreval()
  escreval("---MATRIZ RESULTADO 3: MULTIPLICA��O----")
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          escreva(matmultiplica[L,C]:4)
     fimpara
     escreval()
  fimpara

//soma a diagonal principal da matriz resultado 3: multiplica��o
  para L de 1 ate 3 faca
     para C de 1 ate 3 faca
          se (L=C) entao
          sDP3<- SDP3 + matmultiplica[L,C]
          fimse
     fimpara
  fimpara

  escreval()
  escreval("-> Soma da diagonal principal: ",sDP3)

       fimse
  fimse //termina o procedimento de verifica��o
  
//SAI DO MENU, FINALIZANDO O PROGRAMA
  caso 6
      fimalgoritmo

//CASO O USU�RIO N�O DIGITE NA OP��O UM N�MERO DE 1 A 6
  outrocaso
      escreval("OP��O INV�LIDA, ESCOLHA NOVAMENTE")
      
  fimescolha

ate op = 6

Fimalgoritmo