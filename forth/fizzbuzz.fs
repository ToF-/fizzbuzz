\ initialize the pad with an empty string 
: empty-pad
  0 pad c! ;

\ append string s of length l to the pad if n is a multiple of m
: tag ( n,m,s,l -- )
  2swap mod 0= if pad +place else 2drop then ;

\ print the pad if not empty, else print the number
: .fizzbuzz ( n -- )
  pad count ?dup if type drop else drop . then ;

\ print the number n or fizz or buzz or fizzbuzz
: fizzbuzz ( n -- )
  empty-pad
  dup 3 s" fizz" tag
  dup 5 s" buzz" tag
  .fizzbuzz ;

: test ( n -- )
  cr 1+ 1 do i fizzbuzz cr loop ;


