include gmp 

BigInt_type cover from mpz_t 
 {
    new: static extern (mpz_init)  func (BigInt) -> This 
    new: static extern (mpz_init2) func ~withSpace(BigInt,ULong) -> This
    
    
    
    clear: extern (mpz_clear) func (BigInt) -> Void
 
    set:  extern (mpz_set) func(BigInt,BigInt) -> This
    set:  extern (mpz_set_ui) func(BigInt,ULong) -> This    
    set:  extern (mpz_set_d) func(BigInt,Double)  -> This
    set:  extern (mpz_set_q) func(BigInt,BigRational)  -> This
    set:  extern (mpz_set_f) func(BigInt,BigFloat)  -> This
    
    set:  extern (mpz_init_set) func(BigInt,BigInt)  -> This
    set:  extern (mpz_init_set_ui) func(BigInt,ULong)  -> This
    set:  extern (mpz_init_set_d) func(BigInt,Double)  -> This
    set:  extern (mpz_init_set_str) func(BigInt,String,Int)  -> This
    
    
    swap: extern (mpz_swap) func(BigInt,BigInt) -> This
    
    setStringAsContent : extern (mpz_set_str) func (BigInt,String,Int) -> This
    
    plus:    extern (mpz_add) func(BigInt,BigInt,BigInt) -> Void
    minus:   extern (mpz_sub) func(BigInt,BigInt,BigInt) -> Void    
    multiplicate: extern (mpz_mul) func(BigInt,BigInt,BigInt) -> Void 
    plusmul: extern (mpz_addmul) func(BigInt,BigInt,BigInt) -> Void 
    minmul:  extern (mpz_submul) func(BigInt,BigInt,BigInt) -> Void
    neg:     extern (mpz_neg) func(BigInt,BigInt) -> This
    abs:     extern (mpz_abs) func(BigInt,BigInt) -> This
    
    cdiv:     extern (mpz_cdiv_q)      func (BigInt,BigInt,BigInt) -> Void
    fdiv:     extern (mpz_fdiv_q)      func (BigInt,BigInt,BigInt) -> Void
    mod:      extern (mpz_mod)         func (BigInt,BigInt,BigInt) -> Void
    divexact: extern (mpz_divexact)    func (BigInt,BigInt,BigInt) -> Int
    div?:     extern (mpz_divisible_p) func (BigInt,BigInt) -> Int 
    
    
    
    operator + (Left,Right:BigInt) -> BigInt { 
    
        
        
    }
   
    
 
 
 }











BigFloat cover from mpf_t
BigRational cover from mpq_t
BigRandom cover from gmp_randstate_t
