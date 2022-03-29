*** Settings ***
Library         SikuliLibrary  mode=NEW
Resource        ./sikuli.resource
Test Teardown   Fechar aplicação

*** Test Cases ***
Cenário 01 [Soma]
  Dado que eu abro a calculadora
  Quando eu somo "5" com "5"
  Então eu tenho "10" como resultado

Cenário 02 [Subtração]
  Dado que eu abro a calculadora
  Quando eu subtraio "5" de "5"
  Então eu tenho "0" como resultado

Cenário 03 [Multiplicação]
  Dado que eu abro a calculadora
  Quando eu multiplico "5" por "5"
  Então eu tenho "25" como resultado

Cenário 04 [Divisão]
  Dado que eu abro a calculadora
  Quando eu divido "5" por "5"
  Então eu tenho "1" como resultado

Cenário 05 [Soma com números negativos]
  Dado que eu abro a calculadora
  Quando eu somo "-5" com "-5"
  Então eu tenho "-10" como resultado

Cenário 06 [Soma de um número positivo com um número negativo]
  Dado que eu abro a calculadora
  Quando eu somo "5" com "-5"
  Então eu tenho "0" como resultado

Cenário 07 [Soma com zero]
  Dado que eu abro a calculadora
  Quando eu somo "5" com "0"
  Então eu tenho "5" como resultado

Cenário 08 [Soma de dois zeros]
  Dado que eu abro a calculadora
  Quando eu somo "0" com "0"
  Então eu tenho "0" como resultado

Cenário 09 [Divisão de um número negativo por um número negativo]
  Dado que eu abro a calculadora
  Quando eu divido "-5" por "-5"
  Então eu tenho "-1" como resultado

Cenário 10 [Divisão de zero por qualquer número]
  Dado que eu abro a calculadora
  Quando eu divido "0" por "5"
  Então eu tenho "0" como resultado