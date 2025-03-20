int main(){
    vector<ll> v = {1, 2 , 2 ,2 ,3};

    cout << lower_bound(v.begin(), v.end(), 2)-v.begin() << "\n";
    cout << upper_bound(v.begin(), v.end(), 2)-v.begin() << "\n";
}