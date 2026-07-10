#!/bin/sh

cd "$(dirname -- "$0")" || exit
typst compile --font-path "./fonts/Helvetica" "./Luis David Licea Torres Resume.typ"
mv "./Luis David Licea Torres Resume.pdf" ..
