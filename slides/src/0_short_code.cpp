int main(){
    long long a; cin >> a;
    for (long long i = 0; i < a; i++) {
        cout << i << " ";
    }
    cout << '\n';
}

typedef long long ll;
#define forn(i, s, e) for(ll i = (s); i < (e); i++)

int main(){
    ll b; cin >> b;
    forn(i, 0, b) cout << i << " \n"[i==b-1];
}