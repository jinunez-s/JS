var sum = 0;
var numbers = [-1, -2, -3, -2.2, -2.2254];
for(let i = 0; i < numbers.length; i++){
    sum += numbers[i];
}
console.log(sum);
//reduce function
const suma = numbers.reduce((a,b) => a + b, 0);
console.log(suma);