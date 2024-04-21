#include <iostream>
#include <cmath>
using namespace std;

int main () {
    long long int g = 3;
    long long int n = 17;
    long long int a = 15, b = 13;
    long long int pa, pb, ga, gb;
    long long int ar, br;

    cout << "Value of g: " << g;
    cout << "\nValue of n: " << n;

    cout << "\n\nAlice's private key: " << a;
    cout << "\nBob's private key: " << b;

    pa = (long long int)pow(g, a);
    pb = (long long int)pow(g, b);

    ga = pa % n;
    gb = pb % n;

    cout << "\n\nAlice's generated values: " << ga;
    cout << "\nBob's generated values: " << gb;

    ar = gb;
    br = ga;

    cout << "\n\nAlice received: " << ar;
    cout << "\nBob received: " << br;

    // Calculating values after receiving
    pa = (long long int)pow(ar, a);
    pb = (long long int)pow(br, b);

    ga = pa % n;
    gb = pb % n;

    cout << "\n\nFinal @ Alice: " << ga;
    cout << "\nFinal @ Bob: " << gb;

}
