Algoritmo "ProjetoRecode2023"
//
//
// Descrição   : Projeto Modulo 2 Recode Pro 2023
// Autor(a)    : Flavio Alexandre Barbosa Silva
// Data atual  : 05/08/2023
//
//Algoritmo com estruturação em vetor para simular um cadastro para um agência
//de viagens com as funções: Cadastro Cliente, destino e consulta.

Var
   valorviagem: real
   nomedocliente,cpf, nomelugar: caracter
   listaclientes,listacpf,listalugar: vetor[1..70] de caracter
   valoresviagens: vetor [1..70] de real
   i, menu, numclientes, numdestinos: inteiro

Inicio

   numclientes <-0

   repita
      escreval("&&&&&&&&&& RECODE TURISMO &&&&&&&&&&")
      escreval("&&  SELECIONE A OPÇÃO DESEJADA    &&")
      escreval("&&  1 PARA CADASTRAR CLIENTE      &&")
      escreval("&&  2 PARA CADASTRAR DESTINO      &&")
      escreval("&&  3 PARA CONSULTAR O  CLIENTE   &&")
      escreval("&&  4 PARA CONSULTAR O  DESTINO   &&")
      escreval("&&  5 PARA SAIR                   &&")
      escreval("&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&")

      leia (menu)
      escolha menu

      caso 1

         escreval("")
         escreval("&&& POR FAVOR INFORME O NOME COMPLETO. &&&")
         leia (nomedocliente)
         escreval("&&&  FAVOR INFORMAR O CPF.  &&&")
         leia(cpf)

         numclientes <- numclientes + 1

         listaclientes [numclientes]  <-  nomedocliente
         listacpf[numclientes] <- cpf

         escreval("&&&  CLIENTE CADASTRADO COM SUCESSO!  &&&")
         escreval("")

      caso 2

         escreval("")
         escreval("&&&  FAVOR INFORMAR O DESTINO.  &&&")
         leia(nomelugar)
         escreval("&&&  FAVOR INFORMAR O VALOR DO DESTINO.  &&&")
         leia (valorviagem)

         numdestinos<- numdestinos + 1

         listalugar[numdestinos] <- nomelugar
         valoresviagens[numdestinos] <- valorviagem

         escreval("&&& DESTINO CADASTRADO COM SUCESSO!  &&&")
         escreval("")

      caso 3

         escreval("")
         se numclientes = 0 entao
            escreval("&&&  VOCÊ NÃO CADASTROU NENHUM CLIENTE.  &&&")
         senao
            escreval("&&&  LISTA DE CLIENTES CADASTRADOS.  &&&")
            para i de 1 ate numclientes faca
               escreval("&&&  NOME - ", listaclientes[i],"  &&&")
               escreval("&&&  CPF - ", listacpf[i],"&&&")

            fimpara
         fimse
         escreval("")
      caso 4

         escreval("")
         se numdestinos = 0 entao
            escreval("&&&  VOCÊ NÃO CADASTROU NENHUM CLIENTE.  &&&")
         senao
            escreval("&&&  LISTA DE DESTINOS CADASTRADOS.  &&&")
            para i de 1 ate numdestinos faca
               escreval("&&&  DESTINO - ", listalugar[i],"  &&&")
               escreval("&&&  VALOR - ", valoresviagens[i],"  &&&")
               escreval("")
            fimpara
         fimse

      caso 5
         interrompa
      outrocaso
         escreval("OPÇÃO INVÁLIDA")
         escreval("")
      fimescolha
   ate menu= 5





Fimalgoritmo