#include <iostream>
#include <math.h>
#include <cmath>
#include <vector>
using namespace std;

string encrypt(string message, int rows, int cols) {
    int extraChars = rows * cols - message.length();       // Determine the number of padding characters needed
    if (extraChars > 0) {
        message.append(extraChars, ' ');                    // Adding space to message
    }

    vector<vector<char>> matrix(rows, vector<char>(cols));      // Create the matrix
    int index = 0;
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = message[index++];
        }
    }
    
    cout << "Original matrix: " << endl;        // Print the matrix
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }

    vector<vector<char>> transposed(cols, vector<char>(rows));      // Transpose the matrix
    for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
            transposed[i][j] = matrix[j][i];
        }
    }
    
    cout << "Transposed matrix: " << endl;          // Print the transposed matrix
    for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
            cout << transposed[i][j] << " ";
        }
        cout << endl;
    }
    
    string cipherMessage;               // Read the cipher message from the transposed matrix
    for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
            cipherMessage.push_back(transposed[i][j]);
        }
    }
    
    return cipherMessage;
}

string decrypt(string cipherMessage, int rows, int cols) {
    int extraChars = rows * cols - cipherMessage.length();      // Determine the number of padding characters
    if (extraChars > 0) {
        cipherMessage.append(extraChars, ' ');
    }
    
    vector<vector<char>> matrix(cols, vector<char>(rows));      // Create the matrix
    int index = 0;
    for (int i = 0; i < cols; i++) {
        for (int j = 0; j < rows; j++) {
            matrix[i][j] = cipherMessage[index++];
        }
    }
    
    vector<vector<char>> transposed(rows, vector<char>(cols));      // Transpose the matrix
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            transposed[i][j] = matrix[j][i];
        }
    }
    
    string originalMessage;             // Read the original message from the transposed matrix
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            originalMessage.push_back(transposed[i][j]);            // Pushing back the transposed matrix
        }
    }
    
    return originalMessage;         // Returning original message
}

int main() {
    string message = "HELLO WORLD";
    int rows = 4;
    int cols = 3;
    
    cout << "Original message: " << message << endl;
    
    string cipherMessage = encrypt(message, rows, cols);
    cout << "Cipher message: " << cipherMessage << endl;
    
    string originalMessage = decrypt(cipherMessage, rows, cols);
    cout << "Decrypted message: " << originalMessage << endl;
}