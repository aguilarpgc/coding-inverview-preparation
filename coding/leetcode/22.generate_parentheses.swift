// O(2^n), O(n)
class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var result: [String] = []
        
        func dfs(_ open: Int, _ closed: Int, current: String) {
            if open == n && closed == n {
                result.append(current)
                return
            }
            if open < n {
                dfs(open + 1, closed, current: current + "(")
            }
            if closed < open && closed < n {
                dfs(open, closed + 1, current: current + ")")
            }
        }
        
        dfs(0, 0, current: "")
        
        return result
    }
    
    /*
    func dfs(_ n: Int, openings: Int, current: String, _ result: inout [String]) {
        if current.count == n {
            result.append(current)
            return
        }
        if current.count + openings < n {
            dfs(n, openings: openings + 1, current: current + "(", &result)
        }
        if openings > 0 {
            dfs(n, openings: openings - 1, current: current + ")", &result)
        }
    }*/
}



