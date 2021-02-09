class Solution {
    func countPrimes(_ n: Int) -> Int {
        guard n > 2 else {
            return 0
        }
        var primes: [Bool] = Array(repeating: true, count: n)
        primes[0]=false
        primes[1]=false
        var i = 2
        while i * i < n {
            if primes[i] {
                for j in stride(from: i*i, to: n, by: i) {
                    primes[j] = false
                }
            }
            i += 1
        }
        return primes.filter { $0 }.count 
    }
}
