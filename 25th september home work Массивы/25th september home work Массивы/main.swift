
//  Created  on 24/9/22.
import Foundation

//ДЗ №5 Массивы


//Используя функции, циклы, условные операторы, массивы создать следующие программы
//№1. Через readLine вводится любое количество слов. После чего эти слова сортируются по количеству символов. Далее отображается самое короткое слово(если несколько с таким количеством - отобразить все) и так же самое длинное


print("Введите текст любой длины")

var phrase: String = readLine()! // вводим фразу в редлайн
var string = ""
var findMin = ""
var findMax = "" //присавиваем всем пустые строки
var countSymbol = 0

//записываем все в массив
var arrayOfMin: [String] = []
var arrayOfMax: [String] = []

// считаем символы максимальные и минимальные
var symbolMin = 10
var symbolMax = 1


for i in phrase {
    if i == "." || i == "," || i == "?" || i == "!" || i == ";" || i == "-" || i == ":" || i == " "{
        if countSymbol < symbolMin {
            symbolMin = countSymbol
            countSymbol = 0
            findMin = "\(string),"
            string = ""
        }
        if countSymbol == symbolMin {
            countSymbol = 0
            findMin += "\(string),"
            string = ""
        }
        countSymbol = 0
        string = ""
        continue
    }
    else {
        string += "\(i)"
        countSymbol += 1
    }
}
if countSymbol < symbolMin {
    symbolMin = countSymbol
    countSymbol = 0
    findMin = "\(string),"
    string = ""
}
if countSymbol == symbolMin {
    countSymbol = 0
    findMin += "\(string),"
    string = ""
}
countSymbol = 0
string = ""


for i in phrase {
    if i == "." || i == "," || i == "?" || i == "!" || i == ";" || i == "-" || i == ":" || i == " " {
        if countSymbol > symbolMax {
            symbolMax = countSymbol
            countSymbol = 0
            findMax = "\(string),"
            string = ""
        }
        if countSymbol == symbolMax {
            countSymbol = 0
            findMax += "\(string),"
            string = ""
        }
        else {
            countSymbol = 0
            string = ""
            continue
        }
    }
    string += "\(i)"
    countSymbol += 1
}
if countSymbol > symbolMax {
    symbolMax = countSymbol
    countSymbol = 0
    findMax = "\(string),"
    string = ""
}
if countSymbol == symbolMax {
    countSymbol = 0
    findMax += "\(string),"
    string = ""
}

string = ""

// ищем самое короткое слово и записываем в массив
for i in findMin {
    if i == "," {
        arrayOfMin.append(string)
        string = ""
        continue
    }
    string += "\(i)"
}

string = ""

//ищем самое длинное слово и добавляем в массив
for i in findMax {
    if i == "," {
        arrayOfMax.append(string)
        string = ""
        continue
    }
    string += "\(i)"
}

print("Ваше самое короткое слово - \(arrayOfMin)")
print("Ваше самое длинное слово - \(arrayOfMax)")









//№2. Составить список из 20 контактов (Имя - номер телефона)
//Отсортировать по алфавиту (А-Я) и отобразить на какую букву сколько контактов сохранено



//создаем базу данных номеров
var contacts: String = "Анара - моб.: 0707495872, Азат - моб.: 0555704928, Самат - моб.: 0553050640, Настя - моб.: 0700305060, Скриптонит - моб.: 0500000000, Владимир - моб.: 0776040507, Яна - моб.: 0557304050, Ольга - моб.: 0701406070, Регина - моб.: 0559302050, Руслан - моб.: 0555744477, Фархат - моб.: 0557030607, Элиза - моб.: 070356070, Белек - моб.: 0774506070, Миша - моб.: 0553603021, Генадий - моб.: 0702504832, Женя - моб.: 0701232454, Тима - моб.: 0777039596, Баястан - моб.: 0557504060, Жасмин - моб.: 0504506070, Надежда - моб.: 07024505060, Дария - моб.: 0554605038,"

//создаем  пустые массивы
var contact = ""
var a: [String] = []
var b: [String] = []
var с: [String] = []
var d: [String] = []
var e: [String] = []
var f: [String] = []
var g: [String] = []
var j: [String] = []
var m: [String] = []
var n: [String] = []

var o: [String] = []
var r: [String] = []
var s: [String] = []
var t: [String] = []

var z: [String] = []

//добавляем в массив строки согласно первым буквам, присваиваем каждому пустому массиву определенные имена контактов
for i in contacts {
    if i == "," {
        for i in contact {
            if i == "А" {
                a.append(contact)
                contact = ""
                break
            }
            if i == "Б" {
                b.append(contact)
                contact = ""
                break
            }
        if i == "Г" {
            d.append(contact)
            contact = ""
            break
        }
            if i == "Д" {
                g.append(contact)
                contact = ""
                break
        }
            if i == "Ж" {
                j.append(contact)
                contact = ""
                break
            }
            if i == "М" {
                m.append(contact)
                contact = ""
                break
            }
            if i == "Н" {
                n.append(contact)
                contact = ""
                break
            }
            if i == "О" {
                o.append(contact)
                contact = ""
                break
            }
            if i == "Р" {
                r.append(contact)
                contact = ""
                break
            }
            if i == "С" {
                s.append(contact)
                contact = ""
                break
            }
            if i == "Т" {
                t.append(contact)
                contact = ""
                break
            }
            if i == "Ф" {
                f.append(contact)
                contact = ""
                break
            }
            if i == "Э" {
                e.append(contact)
                contact = ""
                break
            }
            if i == "В" {
                с.append(contact)
                contact = ""
                break
            }
            if i == "Я" {
                z.append(contact)
                contact = ""
                break
            }
            
        }
        continue
    }
    contact += "\(i)"
}
print("Контакты на букву А - \(a)")
print("Контакты на букву Б - \(b)")
print("Контакты на букву В - \(с)")
print("Контакты на букву Г - \(d)")
print("Контакты на букву Д - \(g)")
print("Контакты на букву Ж - \(j)")
print("Контакты на букву М - \(m)")
print("Контакты на букву Н - \(n)")
print("Контакты на букву О - \(o)")
print("Контакты на букву Р - \(r)")
print("Контакты на букву С - \(s)")
print("Контакты на букву Т - \(t)")
print("Контакты на букву Ф - \(f)")
print("Контакты на букву Э - \(e)")
print("Контакты на букву Я - \(z)")







//№3. Составить мини-игру “Викторина” используя массивы для записи вопросов и ответов. В игре должно быть 5 раундов по 3 вопроса. так же должны быть несгораемые суммы. так же в конце если человек проиграл - показать какой ответ был верным и отобразить выигрыш и сколько раундов было выиграно


// создадим базу данных и запишем в массивы:
var Questions1: [String] = ["Кто из птиц называется санитаром леса?","Место, где правили фараоны","С какого месяца начинается зима?"]
var Questions2: [String] = ["Какое животное можно найти на автомобильной дороге?","Где находится самое высокое здание в мире?","Какая профессия у человека, который обучает собак?"]
var Questions3: [String] = ["Чему равно 10 сантиметров","Как звали любимую Алладина?","Кто был самый умный в Цветочном городе?"]
var Questions4: [String] = ["Какую царевну невозможно было рассмешить?","У какой птицы нет перьев?","У каких котов нет шерсти?"]
var Questions5: [String] = ["Какая рыбка исполняет желания?","Что не меняется от перемены мест слагаемых?","Что вчера - Завтра, а завтра станет Вчера?"]
var Answers1: [String] = ["дятел","египет","декабрь"]
var Answers2: [String] = ["зебра","дубаи","кинолог"]
var Answers3: [String] = ["дециметр","жасмин","знайка"]
var Answers4: [String] = ["несмеяна","пингвин","сфинкс"]
var Answers5: [String] = ["золотая","сумма","сегодня"]
var sum = 0
var rounds = 0


// определим порядок выплывания вопросов после ответов. переход на след. уровень и несгораемые суммы
print(Questions1[1])
var answer = readLine()
if answer?.lowercased() == Answers1[1] {
    print(Questions1[2])
    var answer = readLine()
    if answer?.lowercased() == Answers1[2] {
        print(Questions1[0])
        var answer = readLine()
        if answer?.lowercased() == Answers1[0] {
            sum += 25000
            rounds += 1
            print(Questions2[1])
            var answer = readLine()
            if answer?.lowercased() == Answers2[1] {
                print(Questions2[2])
                var answer = readLine()
                if answer?.lowercased() == Answers2[2] || answer?.lowercased() == "кинолог" {
                    print(Questions2[0])
                    var answer = readLine()
                    if answer?.lowercased() == Answers2[0] || answer?.lowercased() == "зебра" {
                        sum += 25000
                            //несгораемая сумма
                       
                        rounds += 1
                        print(Questions3[1])
                        var answer = readLine()
                        if answer?.lowercased() == Answers3[1] || answer?.lowercased() == "жасмин" {
                            print(Questions3[2])
                            var answer = readLine()
                            if answer?.lowercased() == Answers3[2] {
                                print(Questions3[0])
                                var answer = readLine()
                                if answer?.lowercased() == Answers3[0] {
                                    sum += 25000
                                    rounds += 1
                                    print(Questions4[1])
                                    var answer = readLine()
                                    if answer?.lowercased() == Answers4[1] {
                                        print(Questions4[2])
                                        var answer = readLine()
                                        if answer?.lowercased() == Answers4[2] {
                                            print(Questions4[0])
                                            var answer = readLine()
                                            if answer?.lowercased() == Answers4[0] {
                                                sum += 25000
                                                rounds += 1
                                                print(Questions5[1])
                                                var answer = readLine()
                                                if answer?.lowercased() == Answers5[1] {
                                                    print(Questions5[2])
                                                    var answer = readLine()
                                                    if answer?.lowercased() == Answers5[2] || answer?.lowercased() == "сегодня" {
                                                        print(Questions5[0])
                                                        var answer = readLine()
                                                        if answer?.lowercased() == Answers5[0] {
                                                            sum += 25000
                                                            rounds += 1
                                                            
                                                                // финальный ответ при выигрыше
                                                            print("Вау! Поздравляю! Вы выиграли! \nВам удалось заработать  - \(sum) сом \nВсего было пройдено раундов - \(rounds)")
                                                        }
                                                        else {
                                                            //  ответы при несовпадении индекса массива
                                                            print("Упс! Не повезло. Увы, верный ответ был - \(Answers5[0]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                                        }
                                                    }
                                                    else {
                                                        print("Упс! Не повезло. Увы, верный ответ был - \(Answers5[2]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                                    }
                                                }
                                                else {
                                                    print("Упс! Не повезло. Увы, верный ответ был - \(Answers5[1]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                                }
                                            }
                                            else {
                                                print("Упс! Не повезло. Увы, верный ответ был - \(Answers4[0]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                            }
                                        }
                                        else {
                                            print("Упс! Не повезло. Увы, верный ответ был - \(Answers4[2]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                        }
                                    }
                                    else {
                                        print("Упс! Не повезло. Увы, верный ответ был - \(Answers4[1]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                    }
                                }
                                else {
                                    print("Упс! Не повезло. Увы, верный ответ был - \(Answers3[0]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                                }
                            }
                            else {
                                print("Упс! Не повезло. Увы, верный ответ был - \(Answers3[2]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                            }
                        }
                        else {
                            print("Упс! Не повезло. Увы, верный ответ был - \(Answers3[1]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                        }
                    }
                    else {
                        print("Упс! Не повезло. Увы, верный ответ был - \(Answers2[0]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                    }
                }
                else {
                    print("Упс! Не повезло. Увы, верный ответ был - \(Answers2[2]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
                }
            }
            else {
                print("Упс! Не повезло. Увы, верный ответ был - \(Answers2[1]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
            }
        }
        else {
            print("Упс! Не повезло. Увы, верный ответ был - \(Answers1[0]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
        }
    }
    else {
        print("Упс! Не повезло. Увы, верный ответ был - \(Answers1[2]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
    }
}
else {
    print("Упс! Не повезло. Увы, верный ответ был - \(Answers1[1]) \nВсего было пройдено раундов - \(rounds) \nВам удалось заработать  - \(sum) сом")
}

