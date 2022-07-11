var arr = [-3, -2, 1 , 4];
var firstNumber = arr[0];
var aux = 0;
var lastNumber = arr[arr.length - 1];
var arrTwo = [];
var cont = 0;
    for(let i = 0; i < arr.length; i++){
        if(arr[i] != (firstNumber + cont) ){
            arrTwo.push(firstNumber + cont);
        }
        cont++;
    };
    for (let index = 0; index < arrTwo.length; index++) {
        console.log(arrTwo[index]);        
    }