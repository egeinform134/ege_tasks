#include <iostream>

using namespace std;

int func(int x, int base){
	if (x > base * (base - 1) / 2) return 0;
	if (x < 3) return 1;
	int s = 0;
	for (int i = min(base - 1, x); i > 1; --i)
		s += func(x - i, i); // a + b = x
	return s;
}

int main()
{
	int n;
	cin >> n;
	cout << func(n, n + 1) << endl;
	return 0;
}

