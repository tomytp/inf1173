#import "@preview/typslides:1.2.4": *

// Project configuration
#show: typslides.with(
    ratio: "16-9",
    theme: "bluey",
)

// The front slide is the first slide of your presentation
#front-slide(
    title: "INF1173 - Aula 0",
    subtitle: ["Introdução ao programação competitiva"],
    authors: "Miguel Batista e Thomaz Miranda",
    info: [#link("https://github.com/tomytp/inf1173")],
)

// Custom outline
//#table-of-contents()

#title-slide[
    O que é _programação competitiva_?
]

#title-slide[
    #align(center, [C++ 101])
]

#title-slide[
    Complexidade de algoritmos.
]

#slide[
    #align(center, text(size: 2em)[O Problema:])
        Dado um array de números, encontre o subarray contíguo com a maior soma.
    
    Exemplo: 
        - Array: [-2, 1, -3, 4, -1, 2, 1, -5, 4]
        - Subarray: [4, -1, 2, 1]
        - Soma: 6

    // Aqui você pode adicionar um exemplo de array visualmente, como um gráfico de barras ou blocos coloridos.
    // array_exemplo.png representa essa imagem.
]


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

#slide[
    - This is a simple `slide` with no title.
    - #stress("Bold and coloured") text by using `#stress(text)`.
    - Sample link: #link("typst.app")

    #framed[This text has been written using `#framed(text)`. The background color of the box is customisable.]

    #framed(title: "Frame with title")[This text has been written using `#framed(title:"Frame with title")[text]`.]
]

// Focus slide
#focus-slide[
    This is an auto-resized _focus slide_.
]

// Blank slide
#blank-slide[
    - This is a `#blank-slide`.

    - Available #stress[themes]#footnote[Use them as *color* functions! e.g., `#reddy("your text")`]:

    #framed(back-color: white)[
        #bluey("bluey"), #reddy("reddy"), #greeny("greeny"), #yelly("yelly"), #purply("purply"), #dusky("dusky"), darky.
    ]
]

// Slide with title
#slide(title: "This is the slide title")[
    #grayed([This is a `#grayed` text. Useful for equations.])
    #grayed($ P_t = alpha - 1 / (sqrt(x) + f(y)) $)

    Sample references: aaaa, typslides.
    - Add your #stress[bibliography slide]!

        1. `#let bib = bibliography("you_bibliography_file.bib")`
        2. `#bibliography-slide(bib)`
]

#focus-slide[
    Duvidas?
]

#slide(title: "Last slide")[
    = Duvidas
     
]