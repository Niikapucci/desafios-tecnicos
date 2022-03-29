*** Variables ***
${PATH}                 C:/SikuliCalc

*** Keywords ***
Dado que eu abro a calculadora
  Start Sikuli Process
  Add Image Path        C:/SikuliCalc/IMG
  Open Application      ${PATH}/Calculadora.bat

Quando eu somo "5" com "5"
  Click                 Number5
  Click                 Plus
  Click                 Number5
  Click                 Equals

Então eu tenho "10" como resultado
  Wait for Image        Assert_A      Assert_B      10

Quando eu subtraio "5" de "5"
  Click                 Number5
  Click                 Minus
  Click                 Number5
  Click                 Equals

Então eu tenho "0" como resultado
  Wait for Image        Assert_B      Assert_A      10

Quando eu multiplico "5" por "5"
  Click                 Number5
  Click                 Multi
  Click                 Number5
  Click                 Equals

Então eu tenho "25" como resultado
  Wait for Image        Assert_C      Assert_B      10

Quando eu divido "5" por "5"
  Click                 Number5
  Click                 Division
  Click                 Number5
  Click                 Equals

Então eu tenho "1" como resultado
  Wait for Image        Assert_D      Assert_B      10

Quando eu somo "-5" com "-5"
  Click  Number5
  Click  Pos-Neg
  Click  Plus
  Click  Number5
  Click  Pos-Neg
  Click  Equals

Então eu tenho "-10" como resultado
  Wait for Image        Assert_E      Assert_A      10

Quando eu somo "5" com "-5"
  Click  Number5
  Click  Plus
  Click  Number5
  Click  Pos-Neg
  Click  Equals

Então eu tenho "5" como resultado
  Wait for Image        Assert_F      Assert_A      10

Quando eu somo "5" com "0"
  Click  Number5
  Click  Plus
  Click  Number0
  Click  Equals

Quando eu somo "0" com "0"
  Click  Number0
  Click  Plus
  Click  Number0
  Click  Equals

Quando eu divido "-5" por "-5"
  Click  Number5
  Click  Pos-Neg
  Click  Division
  Click  Number5
  Click  Pos-Neg
  Click  Equals

Então eu tenho "-1" como resultado
  Wait for Image  Assert_G  Assert_D  10

Quando eu divido "0" por "5"
  Click  Number0
  Click  Division
  Click  Number5
  Click  Equals


Fechar aplicação
  Open Application      ${PATH}/Close.bat
  Stop Remote Server