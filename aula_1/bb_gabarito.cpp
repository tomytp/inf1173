#include <bits/stdc++.h>

using namespace std;

typedef long long ll;

bool bs(ll target, vector<ll>& v){
    ll left = 0;
    ll right = v.size();

    while(left <= right){
        ll mid = (left + right)/2;
        
        if(target == v[mid]) return true;
        
        if(target < v[mid]){
            right = mid-1;
        }else{
            left = mid+1;
        }
    }

    return false;
}

ll lb(ll target, vector<ll>& v){
    ll left = 0;
    ll right = v.size();

    while(left < right){
        ll mid = (left + right)/2;
        
        if(target <= v[mid]){
            right = mid;
        }else{
            left = mid+1;
        }
    }

    return left;
}

ll ub(ll target, vector<ll>& v){
    ll left = 0;
    ll right = v.size();

    while(left < right){
        ll mid = (left + right)/2;
        
        if(target < v[mid]){
            right = mid;
        }else{
            left = mid+1;
        }
    }

    return right;
}

int main() {
    vector<ll> v = {0, 1, 1,  2, 4, 6,  6, 6, 6,  9, 13};
    ll n = v.size(); // 11
    
    ll input;
    while(input != -1){
        cin >> input;
        ll resp = ub(input, v);
        cout << "UP: " << resp << " " << upper_bound(v.begin(), v.end(), input) - v.begin() << "\n";
    }
}

// https://codeforces.com/contest/1201/problem/C