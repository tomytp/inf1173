#import "@preview/typslides:1.2.4": *
#import "utils.typ": import-code

// falar de map de frequencias
// nao adicionar no meio do vetor
// shallow dive nas estruturas 
// lower_bound upper_bound 

#show: typslides.with(
    ratio: "16-9",
    theme: "bluey",
)

#front-slide(
    title: "INF1173 - Aula 1",
    subtitle: ["Complexidade de algoritmo e busca binária"],
    authors: "Miguel Batista, Thomaz Miranda e João Arthur Marques",
)

#slide(title : "Pendências")[
    = Pequeno truque para rodar testes.

    Defina o seu arquivo ina1 como você espera que o problema passe o input.

    Por exemplo, para o problema B da semana 0.

    #import-code("src/1_inb1.txt", lang: "txt")
    
    Para rodar o seu código com ele lendo do arquivo:

    #import-code("src/1_easy_read.sh", lang: "bash")

]

#title-slide[
    Complexidade de algoritmos.
]

#slide(title: "O que é isso e por que isso importa?")[
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

#slide(title: "Exemplo 1")[
    #import-code("src/1_n2_alg_1.cpp", lang: "cpp")
]

#slide(title: "Exemplo 2")[
    #import-code("src/1_n2_alg_2.cpp", lang: "cpp")
]

#slide(title: "Exemplo 3")[
    #import-code("src/1_nlogn_alg.cpp", lang: "cpp")
]

#slide(title: "Exemplo 4")[
    #import-code("src/1_n2_alg_3.cpp", lang: "cpp")
]

#slide(title: "Uma regra de bolso")[
    #align(center)[
        #table(
            columns: (auto, auto),
            inset: 6pt,
            align: horizon,
            [*$n$*], [*Worst AC Algorithm*],
            [$lt.eq [10..11]$], [$O(n!), O(n^6)$],
            [$lt.eq [17..19]$], [$O(2^n times n^2)$],
            [$lt.eq [18..22]$], [$O(2^n times n)$],
            [$lt.eq [24..26]$], [$O(2^n)$],
            [$lt.eq 100$], [$O(n^4)$],
            [$lt.eq 450$], [$O(n^3)$],
            [$lt.eq 1.5K$], [$O(n^{2.5})$],
            [$lt.eq 2.5K$], [$O(n^2 log n)$],
            [$lt.eq 10K$], [$O(n^2)$],
            [$lt.eq 200K$], [$O(n^{1.5})$],
            [$lt.eq 4.5M$], [$O(n log n)$],
            [$lt.eq 10M$], [$O(n log log n)$],
            [$lt.eq 100M$], [$O(n), O(log n), O(1)$]
        )
    ]
]

#slide(title: "Erros comuns")[
    1. Copiar estruturas grandes.
    2. Passar estruturas como parametro de função.
    3. Inserir/remover no meio do vetor.
]

#slide(title: "Estruturas da STL")[
    #import-code("src/1__vector.cpp", lang: "cpp")
]

#slide(title: "Estruturas da STL")[
    #import-code("src/1__set.cpp", lang: "cpp")
]

#slide(title: "Estruturas da STL")[
    #import-code("src/1__map.cpp", lang: "cpp")
]

#focus-slide[
    Programa que resolve certo no tempo errado
    #align(center, text(size: 2em, weight: "bold")[NÃO])
    é solução.
]


#title-slide[
    Sorting and Searching.
]

#slide(title: "Dicionário")[
    #text(size: 1.5em)[Como você busca uma palavra no dicionário?]	
]

#focus-slide[
    Implementação.
]

#slide(title: "E se não estiver ordenado?")[
    Existe função builtin do cpp para ordenar vetor:

    #import-code("src/1_sort.cpp", lang: "cpp")

    A complexidade de ordenar um vetor é $O(n log n)$.
]

#slide(title: "lower_bound e upper_bound")[
    #align(center)[

        #text(size: 1.5em)[O que diz a documentação?]

        https://en.cppreference.com/w/
    ]
]

#slide(title: "Em busca da resposta certa")[
    #text(size: 1.5em)[Uma ideia bem legal.]

    Em algum problemas você quer encontar um "valor resposta".

    Será que podemos fazer busca binária nele?   
]

#slide[
    #text(size: 1.5em)[https://codeforces.com/problemset/problem/760/B]
]


#focus-slide[
    Duvidas?
]

#slide(title: "Fontes e onde estudar mais")[
    video da sbc: https://www.youtube.com/watch?v=LIu0h3pMOu4&t=1992s
    
    CSES problemas: https://cses.fi/problemset/

    Competitive Programmer's Handbook: https://cses.fi/book/book.pdf

    CP-algorithms. :https://cp-algorithms.com/num_methods/binary_search.html

]