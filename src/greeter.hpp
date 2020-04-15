#include <iostream>
using namespace std;

string makeGreeting(const string& name) {
    const string greeting_start = "Hello ";
    const string greeting_end = "!";
    return greeting_start + name + greeting_end;
}