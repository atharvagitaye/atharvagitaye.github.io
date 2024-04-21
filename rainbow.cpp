#include <iostream>
#include <fstream>
#include <sstream>
#include <vector>
#include <string>
#include <unordered_map>

// Function to read CSV file and store data in a map
std::unordered_map<std::string, std::string> readCSV(const std::string& filename) {
    std::ifstream file(filename);
    std::unordered_map<std::string, std::string> data;

    if (!file.is_open()) {
        std::cerr << "Error opening file: " << filename << std::endl;
        return data;
    }

    std::string line;
    while (std::getline(file, line)) {
        std::stringstream ss(line);
        std::string plaintext, md5, sha1, sha256;
        if (std::getline(ss, plaintext, ',') &&
            std::getline(ss, md5, ',') &&
            std::getline(ss, sha1, ',') &&
            std::getline(ss, sha256, ',')) {
            data[md5] = plaintext;
            data[sha1] = plaintext;
            data[sha256] = plaintext;
        }
    }

    file.close();
    return data;
}

int main() {
    std::string filename = "hashes.csv"; // CSV file containing hashed values
    std::unordered_map<std::string, std::string> hashData = readCSV(filename);

    if (hashData.empty()) {
        std::cerr << "No data found in CSV file." << std::endl;
        return 1;
    }

    std::string hashInput;
    std::cout << "Enter hash string: ";
    std::cin >> hashInput;

    // Match hashInput with hashData
    if (hashData.find(hashInput) != hashData.end()) {
        std::cout << "Original text: " << hashData[hashInput] << std::endl;
    } else {
        std::cout << "No matching hash found." << std::endl;
    }

    return 0;
}