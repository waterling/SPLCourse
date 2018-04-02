: new-len 2dup count swap count + 1 + ;

: concat
        new-len
        heap-alloc
        rot
        dup
        count
        rot
        rot
        over
        swap
        string-copy
        dup
        rot
        +
        rot
        string-copy
;
