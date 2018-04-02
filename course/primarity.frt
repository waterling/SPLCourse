include course/isPrime.frt


: inc 1 + ;

: nextPrime
    repeat
        inc dup isPrime
    until
;

: isPrimarity
    0 2 rot                         ( 0 - tempBul 2 - cur n )
    repeat
        over over                   ( tempBul cur n cur n )
        <=
        if                          ( tempBul cur n )
            over over swap          ( tempBul cur n n cur )
            % 0 =
            if                      ( tempBul cur n )
                rot                 ( cur n tempBul )
                if                  ( cur n )
                    1               ( 1 - break )
                else                ( cur n )
                    over /          ( cur newN )
                    1               ( cur n tempBul=1 )
                    rot rot         ( temopBul cur n )
                    0               ( temopBul cur n 0 - continue )
                then

            else                    ( tempBul cur n )
                swap                ( tempBul n cur )
                nextPrime           ( tempBul n cur = nextPrime-after-cur )
                rot drop 0          ( n cur tempBul=0 )
                rot rot             ( tempBul n cur )
                swap                ( tempBul cur n )
                0                   ( tempBul cur n 0 - continue )
            then
        else                        ( tempBul cur n )
            rot drop                ( cur n )
            1                       ( 1 - break )
        then
    until
    swap drop                       ( n )
    1 =                             ( n==1 )
;
