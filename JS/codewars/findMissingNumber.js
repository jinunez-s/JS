function findMissingNumbers(arr){
    var firstNumber = arr[0];
    var arrTwo = [];
    var cont = 0;
        for(let i = 0; i < arr.length; i++){
            do{
                if(arr[i] != (firstNumber + cont) ){
                arrTwo.push(firstNumber + cont);
            }
            cont++;
            }
            while((firstNumber+ cont) <= arr[i]);
            
        };
        // for (let index = 0; index < arrTwo.length; index++) {
        //     console.log(arrTwo[index]);        
        // }
    return arrTwo;
}
var arr = [-3, -2, 1 , 4];
//console.log(findMissingNumbers(arr));

function findMissingNumber2(arr){
    var output = [];
    for(let i = arr[0]; i < arr[arr.length - 1]; i++){
        if(arr.indexOf(i) === -1){output.push(i)}
    }
    return output;
}
console.log(findMissingNumber2(arr));