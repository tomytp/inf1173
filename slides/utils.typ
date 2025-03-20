#let code-block(txt, lang: none) = {
  block(
    breakable: true,
    fill: rgb("#e4e4e4"),
    inset: 6pt,
    radius: 4pt,
    width: 100%,
    raw(txt, lang: lang)
  )
}

#let import-code(source, lang: "cpp") = {
  code-block(read(source), lang: lang)
}