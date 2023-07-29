/*
6.	Домашнее задание
Условие:
1.	В рамках прошлого дз был создан класс пиццерии с переменной, в которой хранится пицца, 
удалите ее. Необходимо создать структуру картошки фри, в которой будет стоимость и размер 
картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы 
класть и пиццу, и картошку фри.
2.	Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню
3.	Создайте протокол, в котором будут содержаться функции открытия и закрытия
4.	Написать расширение для класса пиццерии, в  котором будет реализован протокол из пункта 3
5.	Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна 
работать и с Int, и с Double.Функция должна возвращать результат вычитания Numeric
*/

protocol MenuProtocol {
    var cost: Double { get }
}

struct Pizza: MenuProtocol {
 
    enum TypePizza {
        case calzone 
        case napoletana 
        case romana 
        case siciliana 
        case carbonara 
    }

    enum Additives {
        case pepperoni
        case tomatoes
        case cheese
        case none
    }

    var type: TypePizza
    var cost: Double
    var isThickDough: Bool
    var additives: Additives
}
 
struct FrenchFries: MenuProtocol {
    var size: String
    var cost: Double
}

class Pizzeria {
    private var menu: [MenuProtocol]
     
    init (menu: [MenuProtocol]) {
        self.menu = menu
    }
     
    func add(_ new: MenuProtocol) {
        menu.append(new)
    }
     
    func getPizzeriaInfo(){
        print("Меню: \(self.menu)")
    }
}

var pizzeria = Pizzeria(menu: [])
print(pizzeria)
var pizza = Pizza(type: .carbonara, cost: 190, isThickDough: true, additives: .pepperoni)
var frenchFries = FrenchFries(size: "small", cost: 90)
pizzeria.add(pizza)
pizzeria.add(frenchFries)
pizzeria.getPizzeriaInfo()



protocol WorkProtocol {
    func open()
    func close()
}

extension Pizzeria: WorkProtocol {
    func open() {
        print("Пиццерия открыта")
    }
    
    func close() {
        print("Пиццерия закрыта")
    }
}

pizzeria.open()
pizzeria.close()

// 5
func difference<T: Numeric>(a: T, b: T) -> T {
    a - b
}

print(difference(a: 20.6, b: 10))
