use gmp
import gmp

main: func {
    
    a, b, r : BigInt
    a init("234098270598702987343", 10)
    b init("345987398723098345347", 10)
    r init("0", 10)
    
    r mul(a, b)
    r print(stdout, 10)
    println()
    
}