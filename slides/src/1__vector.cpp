#include <bits/stdc++.h>

using namespace std;
typedef long long ll;

int main(){
    vector<ll> v;
    v.push_back(val); // Na média O(1)
    v.pop_back(); // O(1)
    v.insert(v.begin(), val); // O(n)
    v.erase(v.begin()); // O(n)
    find(v.begin(), v.end(), val); // O(n)
    lower_bound(v.begin(), v.end(), val) // O(log(n))
}