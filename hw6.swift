// Создать структуру работника пиццерии. В ней должны быть такие свойства, как имя, зарплата и должность.
// Должностей пока может быть две: или кассир, или повар. Добавить в класс пиццерии массив с работниками

// Создать класс столика, в нем должны быть свойство, в котором содержится количество мест и функция, 
// которая на вход принимает количество гостей, которое хотят посадить, а возвращает true, если места 
// хватает и false, если места не хватает. Изначальное количество мест задается в инициализаторе

// Добавить в класс пиццерии свойство, в котором хранится массив столиков. У класса столика добавить 
// свойство, в котором хранится пиццерия, в которой стоит столик. Столики создаются сразу в инициализаторе, не передаются туда в качестве параметра

struct Personal {

    enum JobTitle {
        case cashier
        case cook
    }
    
    var name: String
    var salary: Int
    var jobTitle: JobTitle
}

class Table {
    var place: Int
    weak var pizzeria: Pizzeria?
    
    init (place: Int) {
        self.place = place
    }
    
    func canSitDown(guests: Int) -> Bool{
        if (guests > place || guests <= 0){
            return false
        } else {
            return true
        }
    }
}


class Pizzeria {
    var personal: [Personal]
    var tables: [Table]
     
    init (personal: [Personal]) {
        self.personal = personal
        tables = [Table(place: 4), Table(place: 5)]
    }

    func addTable(newTable: Table) {
        tables.append(newTable)
    }
     
    func getPizzeriaInfo(){
        print("Персонал: \(self.personal)")
    }

    func getPizzeriaInfos(){
        print("Столики: \(self.tables)")
    }
}

var people1 = Personal(name: "human1", salary: 20000, jobTitle: .cook)
var people2 = Personal(name: "human2", salary: 21000, jobTitle: .cashier)

var pizzeria = Pizzeria(personal: [people1, people2])

pizzeria.getPizzeriaInfo()

print(pizzeria.tables[1].place)
pizzeria.addTable(newTable: Table(place: 7))
pizzeria.getPizzeriaInfos()

print(pizzeria.tables[0].canSitDown(guests: 5))
print(pizzeria.tables[2].canSitDown(guests: 6))
