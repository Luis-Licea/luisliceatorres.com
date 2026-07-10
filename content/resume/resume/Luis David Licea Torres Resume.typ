// Set page size and margin size.
#set page("a4", margin: 1in);
// Set spacing between lines to double-spaced.
#set par(leading: 2 * 0.65em);
// Set the font.
#set text(font: "Helvetica", size: 10pt);
// Indent list items.
#set list(indent: 1.7em)
// Set spacing before and after headings.
#let changeMeUntilPagesFitNicely = 0.1em; // Make value zero if possible.
#show heading: set block(
  above: 2em - changeMeUntilPagesFitNicely,
  below: 1em - changeMeUntilPagesFitNicely
);

// Change the heading alignment and font size depending on the heading level.
#show heading: it => {
  let sizes = (17pt, 14pt, 11pt, 8pt);
  set text(sizes.at(it.level - 1));

  if it.level == 1 [
    #set align(center)
    #it
  ] else [
    #it
  ]
} 

// Define paths to icons.
#let home =  "icons/material-symbols_home-outline-sharp.svg";
#let email = "icons/material-symbols_mail-outline-sharp.svg";
#let phone = "icons/akar-icons_phone.svg";
#let github = "icons/icon-park-outline_github-one.svg";
#let person = "icons/material-symbols_person-outline.svg";

// Insert the given inline-icon.
#let icon(path) = {
  box(height: 9pt, image(path, height: 1em, width: 1em));
};

// Embed source files into PDF.

//         // Embed the main source file.
//         \embedfile[
//             filespec=Luis David Licea Torres Resume.tex,
//             desc={Source code for the resume.},
//             mimetype=text/plain
//         ]{main.tex}

//         embed{Home Icon.svg}  {SVG icon for home address.}    {application/pdf}{home}
//         embed{Email Icon.svg} {SVG icon for email address.}   {application/pdf}{email}
//         embed{Phone Icon.svg} {SVG icon for phone number.}    {application/pdf}{phone}
//         embed{GitHub Icon.svg}{SVG icon for GitHub account.}  {application/pdf}{github}
//         embed{Person Icon.svg}{SVG icon for personal website.}{application/pdf}{person}

= Luis David Licea Torres

== Contact

#list(
  [#icon(home) Baytown, TX],
  [#icon(phone) (832) 923-2261],
  [#icon(person) #link("https://luisliceatorres.com")[luisliceatorres.com]],
  [#icon(github) #link("https://github.com/luis-licea")[github.com/luis-licea]],
  [#icon(email) #link("mailto:luisliceatorres@gmail.com?subject=Reaching%20Out&body=Hello%20Luis,")[luisliceatorres\@gmail.com]],
  marker: "",
  indent: 0pt,
);

== Skills

- *Programming Languages:* JavaScript, Python, Bash, C++, C, C\#
- *Skills:* Git, Linux, MongoDB, Neovim, VSCode
- *Spoken Languages:* English, Spanish

== Education

*Bachelor of Science, Computer Science #h(1fr) May 2022*

University of Houston-Clear Lake; GPA 3.983 #h(1fr) Houston, TX

== Publications

*A Disease Similarity Technique Using Biological Process Functional Annotations #h(1fr) July 2021*

University of Houston-Clear Lake, _Computing Sciences Department_ #h(1fr) Houston, TX

- Journal: Springer
- Series: Advances in Intelligent Systems and Computing
- Authors: Luis David Licea Torres and Hisham Al-Mubaid

== Presentations

*A Disease Similarity Technique Using Biological Process Functional Annotations #h(1fr) July 2021*

#link("https://saiconference.com/Computing")[SAI Computing Conference 2021 #h(1fr) London, UK]
- Location: Virtual
- Date: July 15--16 2021
- Type: Oral presentation
- Speaker: Luis David Licea Torres

#pagebreak()

== Work Experience

*Software Test and Verification Engineer, Dream Chaser #h(1fr) November 2022--Present*

Odyssey Space Research #h(1fr) Houston, TX

- Migrated database back-end from
    #link("https://github.com/Ivshti/linvodb3")[LinvoDB] to
    #link("https://www.mongodb.com/")[MongoDB]
- Used aggregate queries to reduce query times by a factor of 10
- Reduced database entry insertion time from 4 hours to 1 minute
- Wrote asynchronous #link("https://www.mongodb.com/")[MongoDB] queries in JavaScript
- Wrote JavaScript unit tests using the
  #link("https://mochajs.org/")[Mocha] and
  #link("https://www.chaijs.com/")[Chai] modules
- Wrote Python unit tests using the
  #link("https://docs.python.org/3/library/unittest.html")[unittest] module

// - Wrote Python command-line utilities using the
//   #link("https://docs.python.org/3/library/argparse.html")[ArgParse] module
// - Wrote Bash and Zsh tab-completion scripts for command-line utilities

*Research Assistant, _Computing Sciences Department_ #h(1fr) July 2020--February 2021*

University of Houston-Clear Lake #h(1fr) Houston, TX

- Presented research results on the
    #link("https://saiconference.com/Computing")[SAI Computing Conference 2021]
- Co-authored a research paper under the guidance of
    #link("https://sce.uhcl.edu/almubaid/")[Dr. Hisham Al-Mubaid]
- Used Python to perform data processing and analysis on
    #link("https://www.omim.org/")[inheritable disease data]
- Made disesse analysis code public in
    #link("https://github.com/Luis-Licea/BP-Functional-Annotations")[github.com/luis-licea/bp-functional-annotations]

*Tutor #h(1fr) January 2019--August 2019*

Lee College #h(1fr) Baytown, TX

- Tutored students computer science, calculus, physics, and chemistry

*Student Assistant #h(1fr) September 2017--August 2018*

Lee College #h(1fr) Baytown, TX

- Supervised lab experiments performed by classes of up to 20 students
- Prepared experiments weekly according to 4 different chemistry classes

== Projects

*#link("https://nifti.work")[nifti.work] #h(1fr) February 2022--May 2022*

- Nifti allows you to search for work or post work for others, opening a new market for freelancers
- Technologies used: Python, Django, HTML, CSS, JS, Google Cloud, Apache, Git
- Repository: #link("https://github.com/Luis-Licea/nifti")[github.com/luis-licea/nifti]

*#link("https://luis-licea.github.io/radio/")[luis-licea.github.io/radio] #h(1fr) December 2021–Present*

- An online radio player built with Rust and WebAssembly
- Technologies used: Rust, WebAssembly, Git
- Repository: #link("https://github.com/Luis-Licea/radio")[github.com/luis-licea/radio]

*#link("https://luisliceatorres.com")[luisliceatorres.com] #h(1fr) March 2020--Present*

- A personal website for blogging built with Jekyll
- Technologies used: Jekyll, HMTL, CSS, JS, Git
- Repository: #link("https://github.com/Luis-Licea/luisliceatorres.com")[github.com/luis-licea/luisliceatorres.com];

// == Refernces
