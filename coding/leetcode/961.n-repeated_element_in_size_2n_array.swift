class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        for i in 0..<A.count-1  {
            for j in 1...3 {
                if i+j < A.count && A[i] == A[i+j] {
                    return A[i]
                }
            }
        }
        
        return -1
    }
}
