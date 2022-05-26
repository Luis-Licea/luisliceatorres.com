// Get the input of checkbox type.
toggleSwitch = document.querySelector('.switch input[type="checkbox"]');

// Get the theme from local storage.
// The theme will be either 'light' or 'dark'.
const currentTheme = localStorage.getItem('theme');

// If there is a theme:
if (currentTheme) {
  // Set the current theme.
  document.documentElement.setAttribute('data-theme', currentTheme);

  // If the theme is dark:
  if (currentTheme === 'dark') {
    // Toggle the switch.
    toggleSwitch.checked = true;
  }
}

/**
 * The function toggles the dark mode theme when the checkbox is clicked.
 * @param {*} e - The checkbox element that toggles the dark mode theme.
 */
function switchTheme(e) {
  // If the checkbox is checked:
  if (e.target.checked) {
    // Set the dark mode.
    document.documentElement.setAttribute('data-theme', 'dark');
    // Store the dark mode in local storage.
    localStorage.setItem('theme', 'dark');
  } else {
    // Set the light mode.
    document.documentElement.setAttribute('data-theme', 'light');
    // Store the light mode in local storage.
    localStorage.setItem('theme', 'light');
  }
}

// Add a listener that switches the dark and light themes whenever the checkbox
// is toggled.
toggleSwitch.addEventListener('change', switchTheme);

// Add a listener that activates the slider transitions after the slider has
// loaded. Do not use "DOMContentLoaded", it does not work. The transitions must
// only be activated after the page has fully loaded.
window.addEventListener('load', function() {
  // Activate slider transitions by removing the css class that prevents
  // transitions.
  document.getElementById('slider').classList.remove('notransition');
});
