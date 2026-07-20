---
title: "New front matter"
date: 2026-06-12T22:36:08-05:00
description: ""
categories: Dance
tags: West Coast Swing
---

This page is meant to create new front matter boiler plate for Hugo posts.

<style>
    #title, #front-matter, #file {
        border-radius: 3px;
        color: black;
        padding: 0 5px;
        width: 100%;
    }

    button.copy {
        font-size: small;
        border: 1px solid white;
        border-radius: 5px;
        padding: 1px 3px;
    }
</style>

<script type="module" defer>
    window.copyToClipboard = function(id) {
        const text = document.getElementById(id).value;
        if (!text) {
            return;
        }
        navigator.clipboard.writeText(text).then(() => {
            alert("Copied: " + text);
        }).catch(error => {
            console.error('Failed to copy: ', error);
        });
    }

    function getLocalISOTime(date = new Date()) {
      // Get timezone offset in minutes (e.g., -330 for UTC+5:30)
      const offset = date.getTimezoneOffset();
      // Create a new date object adjusted by the offset
      // Note: getTimezoneOffset returns minutes, so multiply by 60 * 1000 for milliseconds
      const localDate = new Date(date.getTime() - (offset * 60 * 1000));
      // Get ISO string (e.g., "2026-06-13T10:00:00.000Z")
      let isoString = localDate.toISOString();
      // Remove the milliseconds and 'Z'
      isoString = isoString.slice(0, 19);
      // Calculate offset string (e.g., "+05:30" or "-07:00")
      const sign = offset <= 0 ? '+' : '-';
      const hours = Math.floor(Math.abs(offset) / 60);
      const minutes = Math.abs(offset) % 60;
      const offsetStr = `${sign}${String(hours).padStart(2, '0')}:${String(minutes).padStart(2, '0')}`;
      return `${isoString}${offsetStr}`;
    }

    function slugify(string) {
        let result = string.trim();
        result = result.replaceAll(' ', '-');
        result = result.replaceAll(/[*+~.()'\"!:@]/g, '');
        result = result.toLowerCase();
        if (string.endsWith('.md')) {
            result += '.md'
        }
        return result;
    }

    const title = document.getElementById('title');
    const file = document.getElementById('file');
    const frontMatter = document.getElementById('front-matter');

    title.addEventListener('input', () => {
        const template = `
            ---
            title: ${title.value}
            date: ${getLocalISOTime()}
            description: ""
categories: Dance
tags: West Coast Swing
            categories: Dance
            tags: West Coast Swing
            ---
        `.replace(/^\s+/gm, '')
        frontMatter.textContent = template;
        file.value = slugify(title.value);
    });
</script>

<div>
    <label for="title">Post title</label>
    <input id="title" type="text" placeholder="Enter post title here..." />
</div>
<div style="margin: 3rem;"></div>
<div>
    <label for="file">Generated file name</label>
    <input id="file" readonly="" disable="true" type="text" />
    <button class="copy" onclick="copyToClipboard('file')">Copy</button>
</div>
<div style="margin: 3rem;"></div>
<div>
    <label for="front-matter">Generated front-matter</label>
    <textarea id="front-matter" readonly="" disable="true" wrap="off" rows="8" ></textarea>
    <button class="copy" onclick="copyToClipboard('front-matter')">Copy</button>
</div>
