: test = dup if ." good" else ." error" then + cr ;
: testAll 8 = if ." All tests done!" else ." error" then cr ;
0
1 isPrime 1 test
2 isPrime 1 test
3 isPrime 1 test
4 isPrime 0 test
5 isPrime 1 test
10 isPrime 0 test
15 isPrime 0 test
1000 isPrime 0 test
testAll

3 isPrimeAllot @ . cr
2 isPrimeAllot @ . cr
4 isPrimeAllot @ . cr
5 isPrimeAllot @ . cr
6 isPrimeAllot @ . cr
