
let numbers = [1..10]
let decrementedList = List.map (fun x -> x - 1) numbers

printfn "Исходный список: %A" numbers
printfn "Список после декрементации: %A" decrementedList
