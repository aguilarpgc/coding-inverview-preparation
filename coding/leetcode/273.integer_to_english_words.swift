class Solution {
    func numberToWords(_ input: Int) -> String {
         // 1 - 9
        var units = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
        // 10 - 19
        var tensOne = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"] 
        var tens = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"] // 2 - 9
        var levels = ["Thousand", "Million", "Billion"]
        
        guard input != 0 else {
            return "Zero"
        }
        
        func tensFormat(remainder: Int) -> String? {
            let tensNumber = remainder % 100
            switch tensNumber {
            case 1..<10:
                return units[tensNumber - 1]
            case 10..<20: 
                return tensOne[tensNumber - 10]
            case 20...99:
                let hundred = (tensNumber / 10) - 2
                let unit = remainder % 10
                return tens[hundred] + (unit > 0 ? " " + units[unit - 1] : "")
            default:
                return nil
            }
        }
        
        var num = input
        let mod = 1000
        var countLevels = 0
        var output: [String] = []
        
        while num > 0 {
            let rest = num % mod
            
            var outputLevel: String?
            
            if rest >= 100 && rest <= 999 {   
                let hundred = rest / 100
                outputLevel = (units[hundred - 1] + " Hundred")
            }
            
            if let tensFormat = tensFormat(remainder: rest) {
                if let format = outputLevel {
                    outputLevel = format + " " + tensFormat
                } else {
                    outputLevel = tensFormat   
                }
            }
            
            if let format = outputLevel, countLevels != 0 && rest != 0 {
                outputLevel = format + " " + levels[countLevels - 1]
            }
            
            if let format = outputLevel {
                output.append(format)   
            }
            
            num /= mod
            countLevels += 1
        }
        
        return output.reversed().joined(separator: " ")
    }
}
