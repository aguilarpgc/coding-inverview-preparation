class Solution {
    func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
        let components = text.components(separatedBy: " ")
        var answer: [String] = []
        for i in 0..<components.count - 2 {
            if components[i] == first && components[i+1] == second {
                answer.append(components[i+2])
            }
        }
        return answer
    }
}
