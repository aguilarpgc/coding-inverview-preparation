class Solution {
    let units = ["One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine"]
    let tensOne = ["Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen"] 
    let tens = ["Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety"]
    let levels = ["Thousand", "Million", "Billion"]

    func hundredFormat(remainder: Int) -> String? {
        guard remainder >= 100 && remainder <= 999 else {
            return nil
        }
        let hundred = remainder / 100
        return units[hundred - 1] + " Hundred"
    }
    
    func tensFormat(remainder: Int) -> String? {
        let tensNumber = remainder % 100
        switch tensNumber {
        case 1..<10:
            return units[tensNumber - 1]
        case 10..<20: 
            return tensOne[tensNumber - 10]
        case 20...99:
            let tenIndex = (tensNumber / 10) - 2
            let unit = remainder % 10
            return tens[tenIndex] + (unit > 0 ? " " + units[unit - 1] : "")
        default:
            return nil
        }
    }
    
    func numberToWords(_ input: Int) -> String {
        guard input != 0 else {
            return "Zero"
        }
        
        var num = input
        var countLevels = 0
        var output: [String] = []
        
        while num > 0 {
            let rest = num % 1000
            var tempOutput: String?
            
            if let format = hundredFormat(remainder: rest) {
                tempOutput = format
            }
            
            if let tensFormat = tensFormat(remainder: rest) {
                if let format = tempOutput {
                    tempOutput = format + " " + tensFormat
                } else {
                    tempOutput = tensFormat   
                }
            }
            
            if let format = tempOutput, countLevels != 0 && rest != 0 {
                tempOutput = format + " " + levels[countLevels - 1]
            }
            
            if let format = tempOutput {
                output.append(format)   
            }
            
            num /= 1000
            countLevels += 1
        }
        
        return output.reversed().joined(separator: " ")
    }
}
