int main(){
    set<ll> s;
    s.insert(val); // O(log(n))
    s.erase(val); // O(log(n))
    s.lower_bound(val); // O(log(n))
    auto it = s.find(val); // O(log(n))
    s.erase(it); // O(1)
}