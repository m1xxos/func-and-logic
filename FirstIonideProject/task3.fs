
let calculateY (x: int) =
    match x with
    | x when x < 0 -> -x * x               
    | x when x >= 0 && x <= 10 -> x - 100 
    | _ -> -x                                 

let testValues = [-5; -1; 0; 5; 10; 15]

printfn "Результаты вычисления функции y = f(x):"
for x in testValues do
    let y = calculateY x
    printfn "| %d\t| %d\t|" x y

