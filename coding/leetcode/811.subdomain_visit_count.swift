class Solution {
    var result: [String] = []
    
    class Domain {
        let name: String
        var count: Int
        var domains: [Domain]
        
        init(name: String, count: Int, domains: [Domain]) {
            self.name = name
            self.count = count
            self.domains = domains
        }
    }
    
    func subdomainVisits(_ cpdomains: [String]) -> [String] {
        let parentDomain = Domain(name: "", count: 0, domains: [])
        
        for cpdomain in cpdomains {
            let input = cpdomain.components(separatedBy: " ")
            let count = Int(input[0]) ?? 0
            let domains = input[1].components(separatedBy: ".").reversed()
            
            var currentDomain = parentDomain
            
            for domain in domains {
                if let foundDomain = currentDomain.domains.first(where: { $0.name == domain }) {
                    foundDomain.count += count
                    currentDomain = foundDomain
                } else {                    
                    let tempDomain = Domain(name: domain, count: count, domains: [])
                    currentDomain.domains.append(tempDomain)
                    currentDomain = tempDomain
                }
            }
        }
        
        dfs(domain: parentDomain, parentHost: [])
        return result
    }
    
    func dfs(domain: Domain, parentHost: [String]) {
        let levelHost = domain.name.isEmpty ? [] : (parentHost + [domain.name])
        if domain.count != 0 {
            result.append("\(domain.count) \(Array(levelHost.reversed()).joined(separator: "."))")   
        }
        for subdomain in domain.domains {
            dfs(domain: subdomain, parentHost: levelHost)
        }
    }
}
