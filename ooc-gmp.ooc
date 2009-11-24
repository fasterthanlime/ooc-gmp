include gmp 

BigInt_t_type cover from mpz_t 
 {
    
    new: static extern (mpz_init)  func (int:BigInt_t) -> Void 
    new: static extern (mpz_init2) func ~withSpace(int:BigInt_t,n:ULong) -> Void
    
    
    clear: extern (mpz_clear) func (int:BigInt_t) -> Void
 
    set:  extern (mpz_set)     func (rop,op:BigInt_t) -> Void
    set:  extern (mpz_set_ui)  func ~withULong(rop:BigInt_t,op:ULong) -> Void    
    set:  extern (mpz_set_d)   func ~withDouble(rop:BigInt_t,op:Double)  -> Void
    set:  extern (mpz_set_q)   func ~withRational(rop:BigInt_t,op:BigRational)  -> Void
    set:  extern (mpz_set_f)   func ~withFloat(rop:BigInt_t,opBigFloat)  -> Void
    
    set:  extern (mpz_init_set)     func ~withIntInit(rop,op:BigInt_t)  -> Void
    set:  extern (mpz_init_set_ui)  func ~withLongInit(rop:BigInt_t,n:ULong)  -> Void
    set:  extern (mpz_init_set_d)   func ~withDoubleInit(rop:BigInt_t,d:Double)  -> Void
    set:  extern (mpz_init_set_str) func ~withString(rop:BigInt_t,str:String,base:Int)  -> Void
    
    
    swap: extern (mpz_swap) func(a,bBigInt_t) -> Void
    
    setStringAsContent : extern (mpz_set_str) func (rop:BigInt_t,str:String,base:Int) -> Void
    
    plus:    extern (mpz_add)   func(rop,a,b:BigInt_t) -> Void
    minus:   extern (mpz_sub)    func(rop,a,b:BigInt_t) -> Void    
    multiplicate: extern (mpz_mul) func(rop,a,b:BigInt_t) -> Void 
    plusmul: extern (mpz_addmul) func(rop,a,b:BigInt_t) -> Void 
    minmul:  extern (mpz_submul) func(rop,a,b:BigInt_t) -> Void
    neg:     extern (mpz_neg)   func(rop,a:BigInt_t) -> Void
    mabs:     extern (mpz_abs)   func(rop,a:BigInt_t) -> Void
    
    // -------------Integer division functions---------
    cdiv:     extern (mpz_cdiv_q)      func (rop,a,b:BigInt_t) -> Void
    fdiv:     extern (mpz_fdiv_q)      func (rop,a,b:BigInt_t) -> Void
    mod:      extern (mpz_mod)         func (rop,a,b:BigInt_t) -> Void
    divexact: extern (mpz_divexact)    func (rop,a,b:BigInt_t) -> Int
    div?:     extern (mpz_divisible_p) func (a,b:BigInt_t) -> Int 
    
   
    // ---------------Integer Exponential---------------
    modpow:      extern (mpz_powm)    func (rop,a,b,c:BigInt_t) -> Void
    pow:         extern (mpz_pow_ui)  func (rop,a:BigInt_t,n:ULong) -> Void
    
    // ---------------Number Theoretic Functions --------------
    prime?:      extern (mpz_probab_prime_p) func (a:BigInt_t,repr:Int) -> Int
    nextprime:   extern (mpz_nextprime)      func (a,b:BigInt_t) -> Void
    gcd:         extern (mpz_gcd)            func (a,b,c:BigInt_t) -> Void       
    gcdext:      extern (mpz_gcdex)          func (a,b,c,d:BigInt_t) -> Void
    factorial:   extern (mpz_fac_ui)         func (rop:BigInt_t,n:ULong) -> Void
    
    // ---------------Root extractions --------------------
    sqrt:        extern (mpz_sqrt)  func (rop,a:BigInt_t) -> Void
    root:        extern (mpz_root)  func (rop,a:BigInt_t,n:ULong) -> Int

    // --------------Comparsion functions ------------------
    cmp?:       extern (mpz_cmp)    func (a,b:BigInt_t) -> Int
    cmpabs:     extern (mpz_cmpabs) func (a,b:BigInt_t) -> Int
    sign:       extern (mpz_sgn)    func (a:BigInt_t)   -> Int
   
    // -------------IO Functions-------------
    print:      extern (mpz_out_str) func (stream:FILE*,base:Int,a:BigInt_t) -> SizeT
    get:        extern (mpz_inp_str) func (a:BigInt_t,stream:FILE*,base:Int) -> SizeT
    outraw:     extern (mpz_out_raw) func (stream:FILE*,a:BigInt_t) -> SizeT
    inraw:      extern (mpz_inp_raw) func (a:BigInt_t,stream:FILE*)
    
    
    
    
    
    
    operator + (Left,Right:BigInt_t_type) -> BigInt_t_type { 
    
        
        
    }
   
    
 
 
 }

BigInt cover from BigInt_t
 {

    
    
    with: func <T> (Param:T) 
    {
     if (T name ==ULong) withULong(This,Param);
     else if (T name ==Double) withDouble (This,Param);
     else if (T name ==Float) withFloat (This,Param);
     else if (T name ==Rational) withRational (This,Param);
    
    }
    add: func (a:BigInt_t) 
    {
      temp:BigInt_t
      temp plus(temp,This,a)
      This:=temp         
    }
    rem: func (a:BigInt_t)
    {
        temp:BigInt_t
        temp minus(temp,This,a)
        This:=temp    
    }
    mul: func (a:BigInt_t)
    {
        temp:BigInt_t
        temp multiplicate(temp,This,a)
        This:=temp
    }
    abs: func() 
    {
        temp:BigInt_t
        temp mabs(temp,This);
        This:=temp;
        
    }
 
 
 
 
 }









BigFloat cover from mpf_t
BigRational cover from mpq_t
RandomState cover from gmp_randstate_t
