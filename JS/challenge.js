const game = {
    team1: 'Bayern Munich',
    team2: 'Borrusia Dortmund',
    players: [
        [
            'Neuer',
            'Pavard',
            'Martinez',
            'Alaba'
        ],
        [
            'Reus',
            'Lewandowski',
            'Hakimi',
            'Hummels'
        ]
    ],
    score: '3:3',
    scored: ['Lewandowski', 'Reus', 'Hakimi', 'Alaba', 'Pavard', 'Martinez'],
    date: 'Nov 19th, 2036',
    odds:{
        team1: 1.33,
        x: 3.25,
        team2: 6.5,
    }
}

for (const [i, player] of game.scored.entries())
    console.log(`Goal ${i + 1}: ${player}`)

const odds = Object.values(game.odds);
let avg = 0;
for (const odd of odds) avg += odd;
avg /= odds.length;
console.log(avg);

for (const [team, odd] of Object.entries(game.odds)){
    const teamStr = team === 'x' ? 'draw' : `victory ${game[team]}`;
    console.log(`Odd of ${teamStr} ${odd}`);
}


