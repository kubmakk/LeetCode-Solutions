class Solution {
    func romanToInt(_ s: String) -> Int {
        let romanValue: [Character:Int] = [ "I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000 ]

        var result = 0 
        let chars = Array(s)

        for i in 0..<chars.count {
            let current = romanValue[chars[i]]!

            if i + 1 < chars.count, current < romanValue[chars[i + 1]]! {
                result -= current
            } else {
                result += current
            }
        }
        return result
    }
}