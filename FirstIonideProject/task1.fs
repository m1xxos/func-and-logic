
let rec fib n =
    match n with
    | 0 -> 0
    | 1 -> 1
    | n -> fib(n-1) + fib(n-2)

printfn "Первые 10 чисел Фибоначчи (эффективная реализация):"
for i = 0 to 10 do
    printfn "fib(%d) = %A" i (fib i)
