class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen: [Int:Int] = [:]


        for (i, num) in nums.enumerated() {
            let needed = target - num 

            if let neededIndex = seen[needed] {
                return [neededIndex, i]
            }   

            seen[num] = i 
        }

        return []
    }
}