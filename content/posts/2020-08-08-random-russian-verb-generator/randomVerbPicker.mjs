import allVerbs from "./russianVerbsByClass.json" with { type: "json" };
// import allVerbs from "./russianVerbsByClass.mjs";

export function randomVerbPicker() {
    const verbTypes = Object.keys(allVerbs);
    const verbTypeIndex = Math.floor(Math.random() * verbTypes.length);
    const verbType = verbTypes[verbTypeIndex];
    const verbs = allVerbs[verbType];
    const randomVerb = verbs[Math.floor(Math.random() * verbs.length)];
    return [verbType, randomVerb];
    // console.log([verbType, randomVerb])
}
// console.log(verbs)

// console.log(randomVerbPicker());
