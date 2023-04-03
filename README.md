# LFA - EP2 - RegEx

### Infos:
O trabalho a principio foi feito no Replit e pode ser acessado através do link abaixo:
https://replit.com/@jyuurin/EP-2-Expressoes-regulares#main.rb

Posteriormente foi colocado repositório no github, no link:
https://github.com/jyuurin/LFA_EP2_Regex

## Problema
Detectar padrões de texto em listas de afazeres:
Reconhecer:
Horários, dias e datas, tags, ações, nome de uma pessoa;
Os diferentes tipos de datas e horas.

A partir do item exemplo, o programa deverá retornar:

Item exemplo: “Rever com Luiz as 10 horas a lista do dia 22 de abril #escola”

Saída:
| Dados | Saida |
| --- | --- |
| Horário: | 10 horas |
| Data: | 22 de abril |
| Pessoas: | Luiz |
| Tags: | #escola | 
| Ações: | Rever |

## Expressões Regulares

- Todas as expressões foram validadas através do RegExr usando os exemplos dados no enunciado do EP.
- Uma vez feito, foi passado para o código em Ruby no Replit.
- Para cada tópico solicitado há uma expressão regular que reconhece ela.

## Modelagem
![image](https://user-images.githubusercontent.com/84683597/229436466-c32746ac-0c95-4df1-b644-514fdc2d3dd2.png)

## Dados e suas expressões regulares

**Horário:** Faz verificações de às e as, números, dois pontos e hora ou horas
```
/(((as|às)?\s?)[0-9]{1,2})(\:|\s)?((([0-9]{1,2})|(horas|hora)?))/
```
**Dias e Datas:** Faz verificações de adverbios de tempo, números, seguido de barras, “de” ou espaços, seguidos de meses e ano.
```
 /((?i)(hoje|amanhã|depois\sde\samanhã)|([0-9]{1,2})\/([0-9]{1,2})(\/(([0-9]{2,4})))?|(([0-9]{1,2})\s(de)?\s?((?i)(janeiro|fevereiro|março|abril|maio|junho|julho|agosto|setembro|outubro|novembro|dezembro))\s?(\s|de)?\s?([0-9]{4})?))/
```
**Pessoas:** Verificação se tem com seguido de artigos e conjunto de letras com acentos.
```
/(com?\s(o|a)?\s?)[a-zA-ZÀ-ÖØ-öø-ÿ]+/
```
**Tags:** Verifica se tem # seguido de palavras
```
/(\#\w+)/
```
**Ações:** Verifica se tem qualquer uma das palavras definidas na expressão regular.
```
/(?i)(agendar|ligar|falar|marcar|consultar|rever|perguntar)/
```
## Implementação

**Entrada de dados**
- Uma variável que recebe uma frase no formato de lista de afazeres.

- É possível “descomentar” as demais para testar.

**Expressões geradas em Ruby**
- Cada variavel recebe uma expressão regular referente ao dado que ela deve buscar.

**Exibição de dados**
- Cria-se um array chamado lista;
- A partir do nosso item da tarefa “todo” se extrai os dados usando o metodo match, que retorna uma string contida no “todo” de acordo com a expressão regular usada;
- Cada retorno é guardado numa váriavel;
- As variaveis são inseridas no arrays de lista;
- Ao final, printamos o que está na lista.
