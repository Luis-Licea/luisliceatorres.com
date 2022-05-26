/**
 * Add theme color switch to an HTML element. This is convenient when modifying
 * the HTML directly could result in a maintainability nightmare because the
 * HTML templates are defined by packages. Modifying the HTML directly means
 * keeping an independent copy of the HTML provided by the package.
 */
// Define switch HTML.
const htmlSwitch = `
<div class='container'>
  <label class='switch' for='checkbox'>
    <input type='checkbox' id='checkbox' />
    <div id='slider' class='slider round notransition'></div>
  </label>
</div>
`
// Append switch to first HTML element with a matching class name.
document.querySelector('.trigger').innerHTML += htmlSwitch
