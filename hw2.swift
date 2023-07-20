/*
6.	Домашнее задание
Условие:
1.	Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, 
следующий аргумент это годовой  процент, третий аргумент это срок Функция возвращает сколько денег получит 
пользователь по итогу
2.	Создать перечисление, которое содержит 3 вида пиццы и создать  переменные с каждым видом пиццы.
3.	Добавить возможность получения названия пиццы через  rawValue
*/



// 1
func vklad (number: Double, percent: Double, time: Double) -> Double {
// time - срок вклада в днях
    (number * percent * (time / 365)) / 100 + number
}

print (vklad (number: 50000, percent: 4.7, time: 365))


// 2
enum PizzaType {
    case margherita
    case quattroStagioni
    case carbonara 
}

var pizza_margherita = PizzaType.margherita
var pizza_quattroStagioni = PizzaType.quattroStagioni
var pizza_carbonara = PizzaType.carbonara

  
  
// 3
enum PizzaType_2: String {
    case margherita = "Margherita"
    case quattroStagioni = "Quattro Stagioni"
    case carbonara = "Carbonara"
}

var pizza_margherita_2 = PizzaType_2.margherita
var pizza_quattroStagioni_2 = PizzaType_2.quattroStagioni
var pizza_carbonara_2 = PizzaType_2.carbonara

print(pizza_margherita_2.rawValue)
print(pizza_quattroStagioni_2.rawValue)
print(pizza_carbonara_2.rawValue)
