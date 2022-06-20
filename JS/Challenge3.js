const gameEvents = new Map([
    [17, 'Goal'],
    [36, 'Substitution'],
    [47, 'Goal'],
    [61, 'Substitution'],
    [64, 'Yellow Card'],
    [69, 'Red Card'],
    [70, 'Substitution'],
    [72, 'Substitution'],
    [76, 'Goal'],
    [80, 'Goal'],
    [92, 'Yellow Card'],
]);
const events = [...new Set(gameEvents.values())];//goal, substitution, yellow card, red card.
console.log(events);

gameEvents.delete(64);

console.log(`An event happened, on average, every ${90 / gameEvents.size} minutes`);

const time = [...gameEvents.keys()].pop();
console.log(time);

for (const [min, event] of gameEvents){
    const half = min <= 45 ? 'FIRST' : 'SECOND';
    console.log(`[${half} HALF ${min}: ${event}]`);
}