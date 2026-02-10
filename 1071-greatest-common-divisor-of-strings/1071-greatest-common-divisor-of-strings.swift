class Solution {
    func gcdOfStrings(_ str1: String, _ str2: String) -> String {
        if str1 + str2 != str2 + str1 {
            return ""
        }
        
        let gcdLength = gcd(str1.count, str2.count)
        
        let index = str1.index(str1.startIndex, offsetBy: gcdLength)
        return String(str1[..<index])
    }
    
    private func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = a % b
            a = b
            b = temp
        }
        return a
    }
}