class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        if s.isEmpty {return true }

        let sChars = Array(s)
        let tChars = Array(t)

        var sIndex = 0
        var tIndex = 0

        while sIndex < sChars.count && tIndex < tChars.count {
            if sChars[sIndex] == tChars[tIndex]{
                sIndex += 1
            }
            tIndex += 1
        }

        return sIndex == sChars.count
        
    }
}