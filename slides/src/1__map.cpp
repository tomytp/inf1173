int main(){
    map<ll, ll> mp;
    mp[val] = 1; // O(log(n))
    mp.erase(val); // O(log(n))
    mp.lower_bound(val); // O(log(n))
    auto it = mp.find(val); // O(log(n))
    mp.erase(it); // O(1)

    for (auto& [k, v] : mp) { // O(n*log(n))
        cout << "key: " << k << ", value: " << v << '\n';
    }
}