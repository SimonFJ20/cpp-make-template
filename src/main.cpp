#include <iostream>
#include "functions.h"

int main()
{
    int a = 5;
    int b = 10;
    int c = addTo(a, b);

    std::cout << a << " + " << b << " = " << c << "\n";

    return 0;
}
