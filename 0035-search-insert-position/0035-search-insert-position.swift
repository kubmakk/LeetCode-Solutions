class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {

    var left = 0
    var right = nums.count - 1
    
    while left <= right {
        
        let mid = (left + right) / 2
        let guess = nums[mid]
        
        if guess == target {
            return mid
            
        } else if guess > target {
            right = mid - 1
            
        } else {
            left = mid + 1
        }
    }
    
    return left
    }
}