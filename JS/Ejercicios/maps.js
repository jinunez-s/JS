// const rest = new Map();
// rest.set('name', 'Classico Italiano', 'Avocato');
// rest.set(1, 'Firenze, Italy');
// rest.set(2, 'Lisbon, portugal');
// console.log(rest.set(2, 'Lisbon, portugal'));

// rest
// .set('categories', ['Italian', 'Margarita', '4 meats'])
// .set('open', 11)
// .set('close', 23)
// .set(true, 'We are open')
// .set(false,'We are closed')

// console.log(rest.get('name'));
// console.log(rest.get(true));
// console.log(rest.get(1));

// const time = 21;
// console.log(rest.get(time > rest.get('open') && time < rest.get('close')));

// console.log(rest.has('categories'));
// rest.delete(2);

// const arr = [1,2];
// rest.set(arr, 'Test');
// console.log(rest);
// console.log(rest.size);
// console.log(rest.get(arr));

const question = new Map([
    ['Question', 'What is the best programming language'],
    [1, 'C'],
    [2, 'Java'],
    [3, 'Python'],
    [4, 'JavaScript'],
    [true, 'correct'],
    [false, 'incorrect']
]);

//console.log(question);
//Quiz app
for (const [key, value] of question){
    if(typeof key === 'number') console.log(`Answer ${key}: ${value}`);
}
const answerr = 3;
const answer = Number(prompt('Your answer'));
console.log(question.get(answer));
console.log(question.get(question.get('correct') === answerr));

//Convert map to array
console.log([...question])
console.log([question.entries()]);
console.log([...question.keys()]);
console.log([...question.values()]);