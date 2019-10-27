# Text Similarity

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Primeiro trabalho da disciplina de PPLF. Implementação de dois algoritmos, em Racket, para verificação de similaridade entre textos.

## Dependências

As dependêcias para execução dos algoritmos são:

- `Racket v6.7`
- `Biblioteca memoize`

## Algoritmos

### Dice's coefficient

Definido como duas vezes o número de termos comuns entre os textos comparados, dividido pela soma total de termos dos dois textos.

### Longest Common Substring (LCS)

Considera a similaridade entre duas strings baseado no tamanho da cadeia contígua de caracteres existente em ambas as strings.

## Execução

O programa recebe os parâmetros por meio de redirecionamento de entrada. Os seguintes parâmetros são aceitos:

1. Coeficiente de correlação: `1` caso o usuário deseje obter o coeficiente de correlação entre os resultados esperados e os resultados dos algoritmos, `0` caso deseje apenas visualizar os resultados obtidos pelos algortimos.

2. Algoritmo a ser utilizado: `0` para Dice's coefficient, `1` para LCS.

3. Textos a serem processados: o programa deve receber um conjunto base de 8 textos, para que os mesmos possam ser processados pelo algoritmo escolhido.

Portanto, o redirecionamento deve ser realizado de modo que:

- A primeira linha contenha a especificação relativa ao coeficiente de correlação;

- A segunda linha contenha a especificação do algoritmo a ser utilizado;

- A linhas subsequentes contenham o conjunto de 8 textos a serem processados, um texto por linha.

Um exemplo de redirecionamento pode ser encontrado por meio do caminho `./texts/texts.txt`.
