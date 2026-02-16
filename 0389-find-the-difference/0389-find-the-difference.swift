class Solution {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        if s.isEmpty { return t.first! }

        let sSorted = s.sorted()
        let tSorted = t.sorted()

        for i in 0..<sSorted.count {
            if sSorted[i] != tSorted[i]{
                return tSorted[i]
            }
            
        }
        return tSorted.last!
    }
}