import Cocoa

struct Person {
    var name: String
    var age: Int

    lazy var info: String = {
        var number = age % 10
        switch number{
        case 1 where number != 2 && number != 3 && number != 4:
            return("\(self.name) \(age) лет")
        case 2 where number == 1:
            return("\(self.name) \(age) год")
        default:
            return("\(self.name) \(age) года")
        }
    }()
    func getAgeComparisonString(_ p: Person) -> String {
        if p.age > age{
             return "\(p.name) старше меня"
        } else if p.age < age{
            return "\(p.name) младше меня"
        } else {
            age == p.age
            return "\(p.name) такого же возраста, как и я"
        }
    }
}
    var p1 = Person.init(name: "Anton", age: 24)
    var p2 = Person(name: "Andrey", age: 36)
    var p3 = Person(name: "Olga", age: 24)
p1.getAgeComparisonString(p3)
