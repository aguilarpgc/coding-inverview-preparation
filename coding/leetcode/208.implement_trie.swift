class Trie {
    var children: [Character: Trie]
    var isWord = false
    
    init() {
        self.children = [:]
    }
    
    func insert(_ word: String) {
        guard !word.isEmpty else {
            self.isWord = true
            return
        }
        var word = word
        let firstLetter = word.removeFirst()
        if let trie = children[firstLetter] {
            trie.insert(word)
        } else {
            let newTrie = Trie()
            children[firstLetter] = newTrie
            newTrie.insert(word)
        }
        
    }
    
    func search(_ word: String) -> Bool {
        guard !word.isEmpty else {
            return isWord
        }
        var word = word
        guard let trie = children[word.removeFirst()] else {
            return false
        }
        return trie.search(word)
    }
    
    func startsWith(_ prefix: String) -> Bool {
        guard !prefix.isEmpty else {
            return true
        }
        var prefix = prefix
        guard let trie = children[prefix.removeFirst()] else {
            return false
        }
        return trie.startsWith(prefix)
    }
}

