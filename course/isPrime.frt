: isPrime
        1 0
        repeat
            drop
            1 +
            swap
            dup rot
            dup
            rot
            swap
            %
            0 =
            rot rot
            dup rot
            dup rot
            <=
            >r rot
            dup r> lor
            >r swap rot rot r>
        until
        dup 0 = >r
        rot rot =
        land r> lor
;
