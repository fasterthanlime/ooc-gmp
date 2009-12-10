include gmp

BigInt: cover from mpz_t {
    
    init: extern (mpz_init) func (value: This)
    init: extern (mpz_init2) func ~withBitSpace(value: This, n: ULong)
    init:  extern (mpz_init_set)     func ~withBigIntInit(op: This) 
    init:  extern (mpz_init_set_ui)  func ~withLongInit(n: ULong) 
    init:  extern (mpz_init_set_d)   func ~withDoubleInit(d:Double) 
    init:  extern (mpz_init_set_str) func ~withString(str: String, base: Int) 
    
    clear: extern (mpz_clear) func (value: This)
 
    set:  extern (mpz_set)     func (op: This)
    set:  extern (mpz_set_ui)  func ~withULong(op:ULong)    
    set:  extern (mpz_set_d)   func ~withDouble(op:Double) 
    set:  extern (mpz_set_q)   func ~withRational(op: BigRational) 
    set:  extern (mpz_set_f)   func ~withFloat(op: BigFloat)
    
    swap: extern (mpz_swap) func(a, b: This)
    
    setStringAsContent : extern (mpz_set_str) func (str: String, base: Int)
    
    plus:         extern (mpz_add)    func(a, b: This)
    minus:        extern (mpz_sub)    func(a, b: This)    
    mul:          extern (mpz_mul)    func(a, b: This) 
    addmul:       extern (mpz_addmul) func(a, b: This) 
    submul:       extern (mpz_submul) func(a, b: This)
    neg:          extern (mpz_neg)    func(a: This)
    abs:          extern (mpz_abs)    func(a: This)
    
    // -------------Integer division functions---------
    cdiv:      extern (mpz_cdiv_q)      func (a, b: This)
    fdiv:      extern (mpz_fdiv_q)      func (a, b: This)
    mod:       extern (mpz_mod)         func (a, b: This)
    divexact:  extern (mpz_divexact)    func (a, b: This) -> Int
    divisible: extern (mpz_divisible_p) func (b: This) -> Int 
    
   
    // ---------------Integer Exponential---------------
    modpow:      extern (mpz_powm)    func (rop, a, b, c: This)
    pow:         extern (mpz_pow_ui)  func (rop, a: This, n:ULong)
    
    // ---------------Number Theoretic Functions --------------
    prime:       extern (mpz_probab_prime_p) func (a: This, repr:Int) -> Int
    nextprime:   extern (mpz_nextprime)      func (a, b: This)
    gcd:         extern (mpz_gcd)            func (a, b, c: This)       
    gcdext:      extern (mpz_gcdex)          func (a, b, c, d: This)
    factorial:   extern (mpz_fac_ui)         func (rop: This, n:ULong)
    
    // ---------------Root extractions --------------------
    sqrt:        extern (mpz_sqrt)  func (rop, a: This)
    root:        extern (mpz_root)  func (rop, a: This, n:ULong) -> Int

    // --------------Comparsion functions ------------------
    cmp:        extern (mpz_cmp)    func (a, b: This) -> Int
    cmpabs:     extern (mpz_cmpabs) func (a, b: This) -> Int
    sign:       extern (mpz_sgn)    func (a: This) -> Int
   
    // -------------IO Functions-------------
    print: func (stream:FILE*, base:Int) -> SizeT {
        mpz_out_str(stream, base, this)
    }
    
    /*
    get:        extern (mpz_inp_str) func (a: This, stream:FILE*, base:Int) -> SizeT
    outraw:     extern (mpz_out_raw) func (stream:FILE*, a: This) -> SizeT
    inraw:      extern (mpz_inp_raw) func (a: This, stream:FILE*)
    */
 
}

mpz_out_str: extern func (...) -> SizeT

BigFloat: cover from mpf_t
BigRational: cover from mpq_t
