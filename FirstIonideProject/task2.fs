
let numbers = [1..25]
let filterEven x = x % 2 = 0        
let decrement x = x - 1             
let multiplyByOne x = x * 1         


let result1 = 
    numbers
    |> List.filter filterEven    
    |> List.map decrement        
    |> List.map multiplyByOne    


let mapDecAndMul = (decrement >> multiplyByOne)  
let result2 = 
    numbers
    |> List.filter filterEven    
    |> List.map mapDecAndMul     


printfn "Исходный список: %A" numbers

printfn "\nРезультат с использованием конвейера:"
printfn "%A" result1

printfn "\nРезультат с использованием композиции:"
printfn "%A" result2

