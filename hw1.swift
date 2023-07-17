// 1
print("~~~~~~~~~~~~~")
for i in 0...100 {
    if i % 2 == 0 {
        print(i)
    }
}


// 2
print("~~~~~~~~~~~~~")
var a = 7
var b = 20
if a * b > 10 {
    print (a)
} else {
    print (b)
}


// 3
print("~~~~~~~~~~~~~")
var k = 9
for i in 10...50 {
    if i % 2 != 0 {
        if k + i == 0 {
            k += 2
        } else {
            print ("Next")
        }
    }
}


// 4
print("~~~~~~~~~~~~~")
var k1 = 9
for i in 10...50 {
    if i % 2 != 0 {
        if k1 + i == 0 {
            k1 += 1
        } else {
            print ("Next")
            break
        }
    }
}
