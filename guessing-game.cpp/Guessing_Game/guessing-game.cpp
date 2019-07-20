#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;
//
//int welcomeProtocol (int userNum);
//int safteyProtocol (int userNum);
//void gamingSequence (int userNum, int targetNum);

int main() {
    
    //Initialisation of variables used
    int targetNum = 0;
    int userNum = 0;
    
    srand(static_cast<unsigned int>(time(0)));  //Seeding the random generator with a number based on time
                                                //Not sure why the warning is use - Must research casting
    
    targetNum = rand()%101;                     //We not set the target Number to a value between 0 and 100
                                                //by modulus 101.
    
    userNum = welcomeProtocol(userNum);
    userNum = safteyProtocol(userNum);
    gamingSequence(userNum, targetNum);
    
    
    return 0;
}


int welcomeProtocol (int userNum) {
    
    //Create a welcome message for the user
    //This will help explain the rules of the game too.
    cout << "Hi there! And welcome to the guessing game!\n";
    cout << "In this game, you will be asked to choose a number between 0 and 100 (0 and 100 included)\n";
    cout << "You will have only 5 attempts to get it right. So choose wisely!\n";
    cout << "Let's begin!\n\n";
    
    //Begin with game sequence
    cout << "Please enter your first guess...\n\n";
    cin >> userNum;
    
    return userNum;
}

int safteyProtocol (int userNum) {
    
    //Should probably put a saftey check in here
    while (userNum > 100 || userNum < 0){
        cout << "You have entered an invalid number.\n";
        cout << "Pleas ensure your number is between 100 and 0 - 100 and 0 may be included\n";
        cout << "Please try again...\n\n";
        cin >> userNum;
    }
    
    return userNum;
}

void gamingSequence (int userNum, int targetNum) {
    
    int counter = 0;
    //Game sequence
    while (counter < 4) {
        
        //The gaming sequnce logic
        if (userNum == targetNum){
            cout << "\nYou have guessed the correct number!\n";
            cout << "Congratulations! You win the game!\n";
            cout << "Restart the programme if you would like to play again :)\n\n";
            exit(0);                                                              //Ends the programme
        }
        else if (userNum > targetNum){
            cout << "Too high. Guess lower.\n";
            //Warn user that it is their last try
            if (counter == 3){
                cout << "Last turn!!\n\n";
            }
            cout << endl;
            cin >> userNum;
        }
        else {
            cout << "Too low. Guess higher.\n";
            //Warn user that it is their last try
            if (counter == 3){
                cout << "Last turn!!\n";
            }
            cout << endl;
            cin >> userNum;
        }
        
        counter++;
    }
    
    //If the code makes it to here, then the user has run out of guesses
    cout << "You've used all 5 guesses. You lose, sorry!\n";
    cout << "The correct answer is: " << targetNum << endl;
    cout << "Restart the programme to try again!!\n\n";
    
}