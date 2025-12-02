---
title: Random Russian verb generator
date: 2020-08-08T05:30:16-05:00
---

One (very autistic) day I decided to look at the verb conjugations for all the
Russian verbs.

A quick search may tell you that there are two types of Russian verb
conjugations, which is complete bullshit. If you search more deeply you will
read that there are actually 16 conjugation types, which is more or less still
bullshit. There are 16 conjugation types, but each one of those conjugation
types can have 1, 2, 3, or 4 different stress patterns, meaning that you are not
guaranteed to pronounce the verb correctly even if you know the correct spelling
because you will not know where the stress falls.

<script type="module">
import {randomVerbPicker} from "./randomVerbPicker.mjs";

document.generateRandomVerb = () => {
    const verbTypeElement = document.getElementById("verb-type")
    const verbElement = document.getElementById("verb")

    const [verbType, randomVerb] = randomVerbPicker();
    verbTypeElement.innerText = `Class: ${verbType}`;
    verbElement.innerText = randomVerb;
}
</script>

<style>

.div {
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
}

.button {
  cursor: pointer;
}

.button {background-color: #0F8EEE;}
.div1 {background-color: #04AA6D;}
.div2 {background-color: #008CBA;}
.download {background-color: #BE8EEE;}
</style>

<button class="button div button1" onclick="generateRandomVerb();">Generate
random verb</button>

<div id="verb-type" class="div div1">Verb Class</div>
<div id="verb" class="div div2">Verb</div>

<a class="download div" href="./russianVerbsByClass.json">Download verb list</a>
