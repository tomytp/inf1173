// inicialização
vector<int> v; // vetor de inteiros vazio
vector<int> v(10); // vetor de inteiros com 10 elementos
vector<int> v(10, 5); // vetor de inteiros com 10 elementos inicializados com 5

// acessando elementos
v[5] = 10; // coloca 10 no elemento na sexta posição
int val = v[5]; // salva o valor na sexta posição na variavel val
v.push_back(5); v.pop_back(); // insere ou remove o valor no final do vetor
int tamanho = v.size(); // tamanho do vetor

// percorrendo o vetor
for (int x : v) { x; }
for (auto it = v.begin(); it != v.end(); it++) { *it; }
for (auto it = v.rbegin(); it != v.rend(); it++) { *it; }
for (int i = 0; i < v.size(); i++) { v[i]; }
// operações comuns
sort(v.begin(), v.end()); // ordena um vetor
sort(v.rbegin(), v.rend()) // ordena de maior para menor
sort(v.begin(), v.end(), greater<int>()); // ordena do maior para o menor

auto it = find(v.begin(), v.end(), 10); // busca em um vetor não ordenado
auto it2 = lower_bound(v.begin(), v.end(), 10); // busca em um vetor ordenado

// antes de acessar o valor, precisamos garantir que o iterador é valido usando:
if (it != v.end()) {
    // iterador válido
} else {
    // elemento não encontrado
}