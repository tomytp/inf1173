
#title-slide[
    Complexidade de algoritmos.
]

#slide[
    #align(center, text(size: 2em)[O que é isso e por que isso importa?])

    *O que é a complexidade de algoritmos:*
    - Uma medida do crescimento do tempo de execução conforme o tamanho da entrada.
    - Representada pela notação Big-O: $O(1), O(log n), O(n), O(n^2), O(2^n)$, etc.
   
    *Por que analisar algoritmos?*
    - Para resolver um problema, além de tem um algoritmo correto, é importante que ele seja rápido.	 

    *Exemplo rápido:*  
    - Ordenar 1 milhão de números:
      - Algoritmo ingênuo ($O(n^2)$): ~17 horas  
      - Algoritmo eficiente ($O(n log n)$): ~1 segundo  
]

#focus-slide[
    Programa que resolve certo no tempo errado
    #align(center, text(size: 2em, weight: "bold")[NÃO])
    é solução.
]


#slide(
    text(size: 1.3em)[
        #align(center, [Um problema:])
        Dado um array de números, encontre o subarray contíguo com a maior soma.

        Exemplo:
        #align(center, [[-2, 1, -3, 4, -1, 2, 1, -5, 4]])

        Resposta: 
        - Subarray: [4, -1, 2, 1]
        - Soma: 6
    ]
)

#slide[
    #align(center, text(size: 2em)[Solução 1: Força Bruta])

    // adicionar código

    #align(center, text(size: 1.5em)[Complexidade: $O(n^3)$])
]

#slide[
    #align(center, text(size: 2em)[Solução 2: Prefix Sum])

    // adicionar código

    #align(center, text(size: 1.5em)[Complexidade: $O(n^2)$])   
]

#slide[
    #align(center, text(size: 2em)[Solução 3: Two pointers])

    // adicionar código  

    #align(center, text(size: 1.5em)[Complexidade: $O(n)$])
]