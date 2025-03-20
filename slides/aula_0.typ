#import "@preview/typslides:1.2.4": *
#import "utils.typ": import-code

#show: typslides.with(
    ratio: "16-9",
    theme: "bluey",
)

#front-slide(
    title: "INF1173 - Aula 0",
    subtitle: ["Introdução ao programação competitiva"],
    authors: "Miguel Batista, Thomaz Miranda e João Arthur Marques",
)

//#table-of-contents()

#title-slide[
    O que é _programação competitiva_?
]

#slide[
    #align(center, text(size: 1.5em)[Na programação competitiva, participantes resolvem problemas algorítmicos sob restrições de tempo e recursos])
    
    #v(2em)

    *Principais Caracteristicas*
    - Tempo limitado: Geralmente 2-5 horas
    - Múltiplos problemas: 5-12 problemas
    - Restrições claras: Tempo de execução e uso de memória
    - Feedback imediato: Submissões são julgadas em tempo real
]

#slide[
    #align(center, text(size: 1.5em)[Por que participar?])
    
    #v(1em)

    - Aumenta o domínio de estruturas de dados
    - Pratica programar códigos complicados em curto período de tempo
    - Interação com programadores talentosos de diversas universidades
    - Tem reconhecimento de grandes empresas de tecnologia
    - Treina trabalho sob pressão
    - Treina trabalho em grupo
    - *É DIVERTIDO!*
]

#slide[
    #align(center, text(size: 1.5em)[Principais Competições])
    
    #align(center, {
        grid(columns: 4,
        grid.cell(image("img/atcoder.png", width: 50%)),
        grid.cell(image("img/codeforces.png", width: 100%)),
        grid.cell(image("img/hacker_cup.jpg", width: 70%)),
        grid.cell(image("img/topcoder.jpg", width: 70%)),
        )
        image("img/icpc_foundation.svg", width: 35%)
    })
]

#slide[
    #align(
        center,
        [
            #text(size: 1.5em)[*Linguagens mais usadas em competições*]
            #table(
            columns: (auto, auto, auto),
            inset: 10pt,
            [*Linguagem*], [*Google Code Jam 2017*], [*ICPC World Finals 2023-2024*],
            [C++], [79%], [98.5%],
            [Python], [16%], [1%],
            [Kotlin], [N/A], [0.5%],
            [Java], [8%], [0%],
        )
        ]
    )
]

#slide(title: "Comparação de eficiência")[
    #align(center, image("img/comparison.svg", width: 80%))
]

#slide(title: "Vamos fazer um problema?")[
    #align(center, link("https://vjudge.net/contest/700140#problem/A")[Beast Bullies])
]

#title-slide[Como vai funcionar?]

#slide[
        #align(center, text(size: 1.5em)[Avaliacão])
        #v(1.5em)
        - Cada semana terá uma lista com \# >= 4 problemas (com prazo de 2 semanas).
        - Os primeiros 3 problemas resolvidos valem 7 pontos
        - Os outros problemas (excluindo 1) valem 3 pontos
        - A não ser que especificado no problema, só serão aceitas soluções em C++
        Ex. se resolver 5/8 problemas, nota = 7 \* 3/3 + 3 \* 2/4 = 8.5

        A nota total da materia será a média aritmética das listas excluindo as 2 piores semanas.
        #v(6em)         
        
]

#title-slide[
    C++ 101
]

#slide(title: "Tipos primitivos de dados")[
    - bool: valor booleano (true/false)
    - char: inteiro de 8 bits, usados para reprensentar characteres
    - int: inteiro de 32 bits (2^31)
    - long long: inteiro de 64 bits (2^63)
    - double: numero de ponto flutuante de 64 bits
    - long double: numero de ponto flutuante de 128 bits
    - string: texto de tamanho variavel (cada elemento é representado por um char)
]

#slide[
    #align(center, text(size: 2em)[Template mais básico possível])
    #import-code("src/0_template_base.cpp")
]

#slide(title: "Trabalhando com input/output em c++")[
    #import-code("src/0_input_output.cpp")
    - O 'cin' converte automaticamente o input para o tipo da variavel (aceita inteiros, floats, strings) e para em espaços e quebras de linha (não são lidos). Ambos os inputs seriam lidos corretamente:

    #align(center,
        grid(columns: 3,
            rect(inset: .5em)[123 456 monkey],
            h(3em),
            rect(inset: .5em)[123 456 
            
            monkey]
        )
    )
]

#slide(title: "Diminuindo códigos em C++")[
    #import-code("src/0_short_code.cpp")
]

#slide(title: "Estruturas de dados")[
    #align(center, text(size: 2em)[Por que precisamos de estruturas de dados?])

    Com alguma frequencia queremos organizar os dados de maneira que nos permita:

     - Buscar de maneira eficiente
     - Inserir de maneira eficiente
     - Deletar de maneira eficiente
     - Atualizar de maneira eficiente

    Algumas vezes precisamos de um jeito de representar nossos dados. Por exemplo:
    - Como representamos um grafo?
    - Como representamos uma árvore?
    - Como representamos um conjunto de strings?
]

#slide(title: "Estruturas de dados que temos disponiveis")[
    - Arrays: int arr[10]
    - Dynamic arrays: vector\<int>
    - Stacks: stack\<int>
    - Queues: queue\<int>
    - Priority Queues: priority\_queue\<int> (max heap)
    - Sets: set\<int>
    - Maps ou Dicionários: map\<int, int> 
]

#slide(title: "STL 101: Dynamic Arrays")[
    #import-code("src/0_dynamic_arrays.cpp")
]

#focus-slide[
    Duvidas?
]
