#include "../src/greeter.hpp"

int main() {
    string greeting = makeGreeting("Anonymous");
    string expected = "Hello Anonymous!";

    if (greeting != expected) {
        cout << "Test makeGreeting failed" << endl;
        cout << "    Expected: \"" << expected << "\"" << endl;
        cout << "    Actual: \"" << greeting << "\"" << endl;
        exit(1);
    }

    cout << "Test makeGreeting passed!" << endl;
}
