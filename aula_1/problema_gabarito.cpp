#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

ll calc(ll a, ll b){
    ll resp = a*(a+1)/2;

    if(a-b > 0){
        resp -= (a-b)*(a-b+1)/2;
    }

    return resp;
}

ll test(ll t, ll n, ll k){
    return calc(t, k) + calc(t-1, n-k); 
}

int main() {
    ll n, m, k; 
    cin >> n >> m >> k;
    m -= n;
    
    ll l = 0; 
    ll ans = 0;
    ll r = 1'000'000'000;

    while(l <= r){
        ll mid = (l+r)/2;
        
        if(m >= test(mid, n, k)){
            ans = mid;
            l = mid + 1; 
        }else{
            r = mid-1;
        }
    }
    cout << ans+1 << "\n";
}