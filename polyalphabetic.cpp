#include <iostream>
#include <math.h>
#include <cmath>
#include <vector>
using namespace std;

int main() {
    string ciphertext = "";
    string plaintext = "ATHARVA";
    string keyword = "KEY";

    int keyLength = keyword.length();           // Getting length
    int textLength = plaintext.length();
    char encryptedChar;

    for (int i = 0; i < textLength; ++i) {
        char plainChar = plaintext[i];
        char keyChar = keyword[i % keyLength];
        
        if (isalpha(plainChar)) {           // Checking if text is character or not
            plainChar = toupper(plainChar);
            keyChar = toupper(keyChar);
            encryptedChar = 'A' + ((plainChar - 'A' + keyChar - 'A') % 26);     // Applying formula
        } else {
            encryptedChar = plainChar;
        }
        ciphertext += encryptedChar;
    }
    
    cout << ciphertext;
}