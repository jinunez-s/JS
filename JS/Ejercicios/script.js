// console.log(addDecl(2,3));


// function addDecl(a,b){
//     return a + b;
// }
// const addExpr = function (a,b){
//     return a + b;
// }


//example

// if(!numproducts) deleteShoppingCart();

// var numproducts = 20;

// function deleteShoppingCart(){
//     console.log('All products deleted!');
// }

// var x = 1;
// let y = 2;
// const z = 3;

// console.log(x === window.x);
// console.log(y === window.y);
// console.log(z === window.z);

// var firstName = 'Matilda';
// const jonas = {
//     firstName: 'Jonas',
//     year: 1991,
//     calcAge: function() {
//         console.log(this);
//         console.log(2037 - this.year);

//         const isMillenial = () => {
//             console.log(this);
//             console.log(this.year >= 1981 && this.year <= 1996);
//         };
//         isMillenial();
//     },
//     greet: () => {
//         console.log(this);
//         console.log(`Hey ${this.firstName}`);

//     }, 
// };
// jonas.greet();
// jonas.calcAge();

// const addExpr2 = function (a, b){
//     console.log(arguments);
//     return a + b;
// };

// addExpr2(2,4);
// addExpr2(5,3);

// var addArrow2 = (a,b) => a + b;

//Destructuring arrays
// const restaurant = {
//     name: 'Clasico Italiano',
//     location: 'Via Angelo Tavanti 23, Firenza Italy',
//     categories: ['Italin', 'Pizzeria', 'Vegetarian', 'Organic'],
//     starterMenu: ['Focaccia', 'Bruschetta', 'Garlic Bread', 'Caprese Salad'],
//     mainMenu: ['Pizza', 'Pasta', 'Risoto'],
//     openingHours: {
//         thu: {
//             open: 12,
//             close: 22,
//         },
//         fri: {
//             open: 11,
//             close: 23,
//         },
//         sat: {
//             open: 0,//Open 24Hours
//             close: 24
//         }
//     },

//     order: function(starterIndex, mainIndex){
//         return [this.starterMenu[starterIndex], this.mainMenu[mainIndex]]
//     },

//     orderDelivery: function({starterIndex = 1, mainIndex = 0, time = '00:00', address}){
//         console.log(`Order received! ${this.starterMenu[starterIndex]} and ${this.mainMenu[mainIndex]} will be deliver to ${address} at ${time}`);
//     },
// }

// restaurant.orderDelivery({
//     time: '22:30',
//     address: 'Some street in Italy',
//     mainIndex: 2,
//     starterIndex: 2,
// })

// restaurant.orderDelivery({
//     address: 'Somewhere in LA',
//     starterIndex: 1,
// });
// // console.log(restaurant.categories[1]);
// console.log(restaurant.orderDelivery);
// //Destructuring arrays
// //const arr = [2,3,4];
// // const a = arr[0];
// // const b = arr[1];
// // const c = arr[2];

// //const [x, y, z] = arr;
// //console.log(x, y, z);
// //console.log(arr);

// let [main, secondary] = restaurant.categories;
// // console.log(main, secondary);

// const [starter, mainC] = restaurant.order(2,0);
// // console.log(starter,mainC);

// const nested = [2, "hola", [5, 6]];
// const [i, j, k] = nested;
// // console.log(i,j, k);

// //console.log(restaurant.openingHours);

// //console.log(restaurant.openingHours.thu);

// const {name, openingHours, categories} = restaurant;

// //console.log(name, openingHours, categories);

// //const {name: restaurantName, openingHours: hours, categories: tags, } = restaurant;
// //console.log(restaurantName, hours, tags);
// //Default values
// const {menu = [], starterMenu: starters = [] } = restaurant;
// //console.log(menu, starters);

// //Mutating variables
// let a1 = 111;
// let b2 = 999;
// const obj = { a1: 23, b2: 7, c: 14};
// ({a1, b2 } = obj)
// //console.log(a1, b2 );

// //Nested objects
// const {
//     fri: {open: o, close: cl},
// } = openingHours;
// //console.log(o,c);

// const arr = [7, 8, 9];
// const badNewArr = [1, 2, arr[0], arr[1], arr[2]];
// console.log(badNewArr);

// const newArr = [1, 2, ...arr];
// console.log(newArr);

// console.log(...newArr);
// console.log(1,2,7,8,9);
// console.log('New Menu')
// const newMenu = [...restaurant.mainMenu, 'Gnocci'];
// console.log(newMenu);

// //Copy Array
// const mainMenuCopy = [...restaurant.mainMenu];

// //join 2 Array
// console.log('New Menu starter Menu, restaurant Main Menu')
// const newNewmenu =[...restaurant.starterMenu, 'espacio' , ...restaurant.mainMenu];
// console.log(newNewmenu);


// const ingredients = [
//     console.log('Let make pasta! Ingredient 1? '),
//     console.log('Ingredient 2'),
//     console.log('Ingredient 3'),
// ];

// console.log(ingredients);

const airline = 'TAP Air Portugal';
const plane = 'A350';

console.log(plane[0]);
console.log(plane[1]);
console.log(plane[2]);
console.log(plane[3]);
console.log('B347'[0]);
console.log(airline.length);
console.log('B347'.length);


console.log(airline.indexOf('r'));
console.log(airline.lastIndexOf('r'));
console.log(airline.indexOf('Portugal'));
console.log(airline.slice(4));

console.log(airline.slice(4,7));
console.log(airline.slice(0, airline.indexOf(' ')));
console.log(airline.slice(airline.lastIndexOf(' ') + 1));

console.log(airline.slice(-2));
console.log(airline.slice(1,-1));
const checkMiddleSeat = function(seat){
    //B and E middle seats
    const s = seat.slice(-1);
    if(s === 'B' || s === 'E') console.log('You got the middle seat 🙂');
    else console.log('You have the one in the window, got lucky 😎');
}

checkMiddleSeat('11B');
checkMiddleSeat('23C');
checkMiddleSeat('3E');

console.log(airline.toLowerCase());
console.log(airline.toUpperCase());

//Fix capitalization in name
const passager = 'JOnAs';
const passangerLower = passager.toLowerCase();
const passangerCorrect = passangerLower[0].toUpperCase() + passangerLower.slice(1);
console.log("Correct: " + passangerCorrect);
console.log("Incorrect: " +passager);





