---
title: How to block YouTube on your phone and computer
date: 2023-02-05
description: Prevent YouTube from funneling all your time
categories: Productivity
tags: YouTube
---

Watching YouTube, becoming unaware of time, and missing the entire day is
common. Will power is not enough to moderate internet habits because it requires
perpetual, active conscientiousness and abstinence, so relying on device
customization is better in the long run because it does not require mental
effort after past the initial setup.

## Block YouTube on your phone

Download the [LeechBlock](https://www.proginosko.com/leechblock/) plugin into
your phone's browser and use the plugin settings to block YouTube. For example,
I modified _Block Set 1_ to block all _youtube_ URLs except for
[music.youtube.com](https://music.youtube.com/):

- Custom name for the block set:
  ```
  youtube.com
  ```
- Domain names to block:
  ```
  *youtube*
  +music.youtube.com/
  ```
- Block from midnight to 10AM and 10PM to midnight:

  ```
  0000-1000,2200-2400
  ```

- Turn on these rules every day of the week:
  - [x] Sun
  - [x] Mon
  - [x] Tue
  - [x] Wed
  - [x] Thur
  - [x] Fri
  - [x] Sat

## Block YouTube on your computer

Execute `sudoedit /etc/hosts` and add the following hostname-to-IP-address maps.
Restart your browser or computer for changes to take effect.

<script src="https://gist.github.com/Luis-Licea/2322ab37e437698fdf3cfe0746dee1d7.js"></script>

## Block YouTube shorts to escape the algorithm

It is possible to use browser extensions like [Unhook] or [UnTrap for YouTube]
to block YouTube shorts and modify other aspects of the page. These extensions
work on Chrome, Brave, Firefox, and their mobile versions.

After installing [Unhook], the option to "Hide shorts" needs to be enabled
manually.

[UnTrap for YouTube]: https://chromewebstore.google.com/detail/unhook-remove-youtube-rec/khncfooichmfjbepaaaebmommgaepoid
[Unhook]: https://chromewebstore.google.com/detail/untrap-for-youtube/enboaomnljigfhfjfoalacienlhjlfil
