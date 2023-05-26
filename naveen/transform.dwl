%dw 2.0
output application/json
---
payload map ((item, index) ->
{
    "DOCUMENT TITLE" : (item."content-0" pluck ($)) joinBy (".") ,
    "STATUS": item."content-1".status
}
 )
 //using mapping function to get req output and using joinBy function