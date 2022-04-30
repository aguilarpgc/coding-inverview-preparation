class Solution {
    func findWords(_ board: [[Character]], _ words: [String]) -> [String] {
        let rows = board.count
        let cols = board[0].count
        
        let root = TrieNode()
        for word in words {
            root.add(word)
        }
        
        var visited: Set<[Int]> = Set()
        var result: Set<String> = Set()
        
        func dfs(_ row: Int, _ col: Int, _ node: TrieNode, _ word: String) {
            guard row >= 0 && col >= 0 && row < rows && col < cols &&
                    !visited.contains([row,col]) else {
                        return
                    }
            
            guard let child = node.children[board[row][col]] else {
                return
            }
            let word = word + String(board[row][col])
            
            if child.isWord {
                result.insert(word)
            }
            
            visited.insert([row,col])
            
            dfs(row - 1, col, child, word)
            dfs(row + 1, col, child, word)
            dfs(row, col - 1, child, word)
            dfs(row, col + 1, child, word)
            
            visited.remove([row,col])
            
            if child.children.isEmpty {
                node.children.removeValue(forKey: board[row][col]) // optimization
            }
        }
        
        for i in 0..<rows {
            for j in 0..<cols {
                dfs(i, j, root, "")
            }
        }
        
        return Array(result)
    }
}


class TrieNode {
    var children: [Character: TrieNode] = [:]
    var isWord = false
    
    init () { }
    
    func add(_ string: String) {
        var current = self
        var word = string
        while !word.isEmpty {
            let token = word.removeFirst()
            if current.children[token] == nil {
                current.children[token] = TrieNode()
            }
            current = current.children[token]!
        }
        current.isWord = true
    }
}
