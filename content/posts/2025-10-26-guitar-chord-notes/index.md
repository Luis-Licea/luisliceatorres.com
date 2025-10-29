---
title: Guitar chord notes
date: 2025-10-26T14:16:05-05:00
categories: Music
tags: Music Theory
---

## General

There are 6 strings on a standard electric guitar. The strings represent notes
e, A, D, G, B, and E, where the lower-case e represents the thick, low-pitched
string. The mnemonic device I use to remember the order is "eat goobie", which
somehow maps to "eAD G(oo)B(i)E" in my brain.

There are at least 21 frets on a standard electric guitar. The frets are
numbered 0 through 21, where 0 means the string is played open, and 1 means the
string is played while pressing the fret closest to the tuning pegs and furthest
away from the guitar body.

## Note idiosyncrasies

In my notes, the letter S is a placeholder that represents all the \[s\]tring
guitars notes e, A, D, G, B, and E in a generic, formulaic, and algebraic way.

I describe note locations using X-Y coordinate notation, where X represents the
fret number and Y represents the note. For example, the coordinate (0,A) or 0A
represents playing the open A string.

In this co-ordinate system, the highest string e represents 0 and the lowest
string E represents 5. The reasoning behind this is that if a guitar were to
have 8 strings, string e would still be 0 and string E would still be 5, while
strings B and F# would be 6 and 7, respectively. This system is 0-indexed, not
1-indexed.

In other words, another way of writing 0A would be 04, where the 0 means the 0th
fret and the 4 represents the 4th string. This means 210 would be the 21st fret
on the highest string e.

## S5 chords

All the S5 chord root notes are located on the first 6 frets on strings e and A.
The root notes are 0A, 1A, 2A, 3A, 4A, 5A, 6A, 0E, 1E, 2E, 3E, and 4E. These
root notes represent A, A#, B, C, C#, D, D#, E, F, F#, G, and G#, respectively.

![S5 chords](./S5_chords.svg)

Interestingly, the notes A and \#A appear twice. Once at 0A and 1A, and again at
5E and 6E. Use 0A and 1A as the root notes. I have yet to come up with rationale
for this, but it probably has to do with the A, B, C, D, E, F, G note
progression, meaning that the A y-coordinate should be picked first.

Also interestingly, none of the root notes are located on the D, G, B, or E
strings.

The 5 in S5 means that the distance between a root note and the next octave is 5
units away. For example. The chord A5 requires notes 0A, 2D, and 2G to be
pressed, which is equivalent to (0,0), (2, 1), (2, 2) on Cartesian plane.

The formula is R(0,0), r(2, -1), r(2, -2). Where R is the root note and r is the
note relative to the root note. This is equivalent to (Rx, Ry), (Rx+2, Ry-1),
(Rx+2, Rx-2), which makes sense algebraically, but is too verbose.

The range in which the S5 formula works is \[(0, 4), (6, 4)\] and \[(0, 5), (4,
5)\].

## Repeating octaves

Coming up with unique names for each note on the fretboard is difficult because
the same note appears multiple times. For example:

String e can play the note E on octaves 1, 3, and 4 on frets 0, 12, and 24,
correspondingly.

String A can play the note E on octaves 3 and 4 on frets 7 and 19,
correspondingly.

String D can play the note E on octaves 3 and 4 on frets 2 and 14,
correspondingly.

String E can play the note E on octaves 4, 5, and 6 on frets 0, 12, and 24,
correspondingly.

## Playing chords

Not all instruments can play chords. Wind instruments like trumpets, flutes,
oboes, slide whistles, and kazoos can only play one note at a time.

Some percussion instruments like the triangle also cannot play chords because
they cannot even play notes.

Play an arpeggio in order to play a chord using a single-note instrument, which
means playing each note in the chord in a descending or increasing order.

Interestingly, oboe reeds last about 8 hours of play before the sound quality
diminishes. Oboe players carve out their own reeds and set them apart depending
on their sound quality. Flutes do not need reads because they are more like
whistles, meaning they do not have vibrating parts.

In order to play chords, instruments must have multiple vibrating parts. For
example, each key in a piano can play a different note because each note is
produced by a string. Likewise, guitars can play 6 different notes because they
have 6 strings.

## Playing crescendos

Some instruments can perform crescendo more easily than others. Wind instruments
can increase the volume of a note by increasing the airflow. The violin can
achieve crescendo by either bowing the quickly, or bowing hard against the
violin strings to create quicker vibrations. Electric guitars use

Piano players cannot achieve crescendo on a single sustained note. They must
increase the force of each key press. Likewise, triangle players must increase
the strength of each strike. Guitars can somewhat achieve crescendo on a single
sustained note by using the guitar's volume knob, or by using strumming the
strings harder.

## Melody

A melody requires playing a sequence of different notes or sounds.

## Rhythm

A rhythm requires playing notes, sounds, and silences in a repeating pattern.

You can have rhythm without having melody by playing only one type of note.

## Harmony

Musical harmony requires playing 2 or more notes (a chord) or sounds that sound
good together.
