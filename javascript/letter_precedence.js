function findWord(rules) {
  const nodes = {};
  const endLetters = [];
  const startLetters = [];

  for (let i = 0; i < rules.length; i++) {
    const [first, second] = rules[i].split(">");
    startLetters.push(first);
    endLetters.push(second);
    nodes[first] = second;
  }

  const startLetter = startLetters.find(
    (letter) => !endLetters.includes(letter)
  );

  let word = "";
  let currentLetter = startLetter;
  while (true) {
    if (!currentLetter) {
      break;
    }
    word += currentLetter;
    currentLetter = nodes[currentLetter];
  }

  return word;
}

let rules = ["P>E", "E>R", "R>U"];
console.log(findWord(rules));
