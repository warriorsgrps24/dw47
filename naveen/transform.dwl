%dw 2.0
output application/json
---
flatten(payload.masterObjectValues.systemObjectValues flatMap ($.crossRef map ((item, index) -> item filter $.systemCode ~= 'SYS2'))).xrefValue
//creating new object using the value of field.xrefValue if systemCode=="SYS2"