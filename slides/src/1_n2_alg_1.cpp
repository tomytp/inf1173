int main(){
    ll n; cin >> n;
    ll resp = 0;
    
    for(ll i = 0; i < n; i++){
        for(ll j = 0; j < n; j++){
            resp += i*j;
        }
    }

    cout << resp << "\n";
}