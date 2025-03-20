int main(){
    ll n; cin >> n;
    ll resp = 0;
    
    for(ll i = 0; i < n; i++){
        for(ll j = 1; j < n; j *= 2){
            resp += i*j;
        }
    }

    cout << resp << "\n";
}