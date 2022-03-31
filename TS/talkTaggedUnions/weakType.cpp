#include <iostream>
#include <cmath>
#include <limits>

void f(char n) { std::cout << "f(char)\n"; }
void f(int n) { std::cout << "f(int)\n"; }
void g(int n) { std::cout << "g(int), n = " << n << "\n"; }

int main()
{
  float fl = M_PI; // неявное преобразование в float - потеря точности

  f(8 + '0'); // непреднамеренное использование как int

  unsigned int n = std::numeric_limits<unsigned>::max();
  std::cout << "до " << n << "\n";
  g(n);  // непреднамеренное использование как int
}