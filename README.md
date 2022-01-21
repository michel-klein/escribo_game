# escribo_game

## Problema
Implementar uma versão do jogo Snakes and Ladders.

## Como executar
O código da resolução foi desenvolvido em Flutter. Para executar o código, deve-se utilizar um dispositivo virtual Android, ou um aparelho Android em modo de desenvolvimento. Ao abrir a pasta do código-fonte, se executa o código sem depuração, e o aplicativo é exibido no dispositivo.

## Lógicas já implementadas
Divisão do tabuleiro e mapeamento com os números das linhas e colunas;
Botão jogar que realiza o sorteio dos dados e a mudança de jogador;
Exibição dos valores dos dados jogados e o jogador que possui a vez.

## Lógicas a serem implementadas
Implementar os movimentos das peças dos jogadores;
Realizar o movimento dos jogadores de forma inversa nas linhas com contagem inversa, utilizando um boolean isInverse que alterna a cada mudança de linha;
Aplicar os movimentos das peças quando atingem a cabeça da cobra ou o começo da escada.

## Melhorias de design
Substituir a imagem estática do tabuleiro por animações que se movimentam a cada intervalo de tempo (cobra e escada).