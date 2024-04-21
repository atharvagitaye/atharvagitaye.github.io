// Ceaser Cipher for Internet Security

#include <iostream>
#include <string>
using namespace std;

string encryptedText(string plainText, int shiftValue) {
    string cipherText;
    char base, encryptedChar;

    // Getting word one by one from text
    for (char ch : plainText) {
        // Checking if text is character
        if (isalpha(ch)) {
            // Checking if character is lowercase or uppercase
            base = (isupper(ch)) ? 'A' : 'a';

            // Applying formula for encryption
            encryptedChar = ((ch - base + shiftValue) % 26) + base;

            cipherText += encryptedChar;
        } else {
            cipherText += ch;
        }
    }

    return cipherText;
}

int main() {
    string plainText, cipherText;
    int shiftValue;

    cout << "Enter the plain text: ";
    cin >> plainText;

    cout << "Enter shift value: ";
    cin >> shiftValue;

    cipherText = encryptedText(plainText, shiftValue);

    cout << "Encrypted text: " << cipherText;
}