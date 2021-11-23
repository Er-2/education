(define (square a)
    (* a a)
)

(define (sumSquare a b)
    (+ (square a) (square b))
)

(define (sumLargestSquare a b c) 
    (cond
        ((and (< a b) (< a c))
            (sumSquare b c) 
        )
        ((and (< b a) (< b c))
            (sumSquare a c) 
        )
        ((and (< c a) (< c b))
            (sumSquare a b) 
        )
    )
)

(display (sumLargestSquare 1 2 3))