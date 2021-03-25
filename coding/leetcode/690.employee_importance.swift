/**
 * Definition for Employee.
 * public class Employee {
 *     public var id: Int
 *     public var importance: Int
 *     public var subordinates: [Int]
 *     public init(_ id: Int, _ importance: Int, _ subordinates: [Int]) {
 *         self.id = id
 *         self.importance = importance
 *         self.subordinates = subordinates
 *     }
 * }
 */

class Solution {
    var employeesMap: [Int: Employee] = [:]
    func getImportance(_ employees: [Employee], _ id: Int) -> Int {
        for employee in employees {
            employeesMap[employee.id] = employee
        }
        return dfsEmployeeWith(id: id)
    }
    
    func dfsEmployeeWith(id: Int) -> Int {
        guard let employee = employeesMap[id] else {
            return 0
        }
        var importance = employee.importance
        return employee.subordinates.reduce(importance) { total, subordinateId in
            total + dfsEmployeeWith(id: subordinateId)
        }
    }
}
