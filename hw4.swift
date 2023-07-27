//  Задание
// 1.Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).

// Создать структуру пиццы. Она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и
// добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным 
// типом для структуры пиццы.
// Подсказка: добавки лучше также сделать перечислением.

// Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть 
// приватной. Массив задаётся в инициализаторе.

// Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.

// Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
 

 // 1
 struct Pizza {
 
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
 
let pizzaCarbonara = Pizza(type: .carbonara, cost: 190, isThickDough: true, additives: .pepperoni)
//  print(pizzaCarbonara)
 
 
 class Pizzeria {
     private var typeOfPizza: [Pizza]
     
     init (typeOfPizza: [Pizza]) {
         self.typeOfPizza = typeOfPizza
     }
     
     func addTypeOfPizza(pizza: Pizza) {
        self.typeOfPizza.append(pizza)
     }
     
     func getPizzeriaInfo(){
        print("Виды пиццы: \(self.typeOfPizza)")
    }
 }
 
let pizzaCalzone = Pizza(type: .calzone, cost: 170, isThickDough: false, additives: .cheese)
var pizzeria = Pizzeria(typeOfPizza: [pizzaCarbonara, pizzaCalzone])
  
pizzeria.getPizzeriaInfo()
print("`````````````````")
pizzeria.addTypeOfPizza(pizza: Pizza(type: .siciliana, cost: 200, isThickDough: true, additives: .none))
pizzeria.getPizzeriaInfo()
 
 
