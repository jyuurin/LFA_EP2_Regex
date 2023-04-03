puts "EP2 - Expressões Regulares. \nLinguagens Formais e Autômatos\nJulia Mendes - 5º/BCC"

##identificador de horário
horario = /(((as|às)?\s?)[0-9]{1,2})(\:|\s)?((([0-9]{1,2})|(horas|hora)?))/

##identificador de dia/data
diaData = /((?i)(hoje|amanhã|depois\sde\samanhã)|([0-9]{1,2})\/([0-9]{1,2})(\/(([0-9]{2,4})))?|(([0-9]{1,2})\s(de)?\s?((?i)(janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro))\s?(\s|de)?\s?([0-9]{4})?))/

#identificador de tags
tags = /(\#\w+)/

#identificador de ações
acao = /(?i)(agendar|ligar|falar|marcar|consultar|rever|perguntar)/ 

##identificador de pessoas
pessoa = /(com?\s(o|a)?\s?)[a-zA-ZÀ-ÖØ-öø-ÿ]+/


todo = "Agendar com José reunião às 10:00 25 de Fevereiro #trabalho"
#Para testar:
#todo = "Falar com a Fabia da encomenda que chegou 9 horas no dia 1 de Outubro de 2022 #casa"
#todo = "Consultar com Danilo do médico às 23 marcado para 24 de Setembro #medico"
#todo = "Perguntar com maria da reuniao às 14 horas do dia 15/04/2012 #trabalho"

lista = []

hora = todo.match(horario)
dia = todo.match(diaData)
tag = todo.match(tags)
fazer = todo.match(acao)
nomePessoa = todo.match(pessoa)

lista.append("Dia:", dia)
lista.append("Horário:", hora)
lista.append("Pessoa:", nomePessoa)
lista.append("Ação:", fazer)##Açao
lista.append("Tag:", tag)

puts lista


