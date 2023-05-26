%dw 2.0
output application/json
---
//payload filter  ((item, index) -> isEven(item))
//payload filter ($ mod  2) ==0 

//getting even values from a list of array



//payload filter  ((item, index) -> isOdd(item))
payload filter ($ mod  2) !=0 

//getting odd values from a list of array