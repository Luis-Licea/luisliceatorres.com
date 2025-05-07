---
title: "How to sharpen blurry asteroid images"
date: 2021-07-03
description: A tutorial on how to sharpen blurry asteroid images.
thumbnail: "*/15-eunomia-processed.jpg"
categories: Astronomy
tags: Image Processing
---

Raw asteroid images have visual artifacts that make them hard to analyze with
the naked eye, so image processing is necessary to highlight the features on the
asteroid surfaces.

<link rel="stylesheet" href="./css/class-centered-image.css">
<div style="display: flex; border-radius: 15px; align-items: center; font-size: 3em;">
  <img class="centered-image" style="border-radius: inherit;" src="./images/15-eunomia.png" alt="Image of 15 Eunomia asteroid.">
  &rarr;
  <img class="centered-image" style="border-radius: inherit;" src="./images/15-eunomia-processed.jpg" alt="Image of 15 Eunomia asteroid after being color corrected.">
</div>

## Get asteroid images

Download asteroid images from
[archive.eso.org](https://archive.eso.org/eso/eso_archive_main.html).

1. Check **sphere** in the imaging section.
   <img class="centered-image" src="./images/imaging-section.png" alt="Image of the imaging section.">

2. Type **asteroid** into the **Title** field.
   <img class="centered-image" src="./images/title-field.png" alt="Image of the title field.">

3. Type **zimpol** into the **TPL ID** field.
   <img class="centered-image" src="./images/tpl-id-and-object-name.png" alt="Image of the TPL ID and object name fields.">

4. **Optional**: specify the name of the asteroid in the **OB Name** field. Some
   asteroid name examples are Ceres, Pallas, Psyche, Vesta, etc.

5. Press **Search** and select the datasets you want to download.
   <img class="centered-image" src="./images/search-button.png" alt="Image of the search button.">

6. Click on **Request marked datasets (new service)** at the bottom of the page.
   <img class="centered-image" src="./images/request-marked-datasets.png" alt="Image of button to request marked datasets.">

7. Click on **Download ZIP file** to download the images.
   <img class="centered-image" src="./images/download-zip.png" alt="Image of button to download zip file.">

## Uncompress the .zip and .Z files on Linux

1. Install the **unzip** utility to uncompress the .zip file.
2. Unzip the .zip file and save the contents in a folder called
   **unzipped_archive**.

```bash
$ unzip archive.zip -d unzipped_archive
```

3. Install the **uncompress** utility to convert .Z files into .fits files.
4. Decompress the .Z file and verify the values for DATE and TIME match your
   file.

```bash
$ uncompress "unzipped_archive/SPHER.(DATE)T(TIME).fits.Z"
```

## Uncompress the .zip and .Z files on Windows

1. Right-click the .zip file and select **Extract All** to chose a destination
   folder.
2. Use **[cloudconvert](https://cloudconvert.com)** to uncompress the .Z file of
   the form **SPHER.(DATE)T(TIME).fits.Z**

## View your .fits file and inspect your asteroid

Use **[GIMP](https://www.gimp.org/downloads/)** to open the .fits file and check
that there are no large, black stripes on the image. These vertical stripes ruin
the image and require us to obtain a different one. I recommend using the
[ephermis](https://ssd.jpl.nasa.gov/horizons.cgi?find_body=1&body_group=sb&sstr=1)
feature here before choosing what images to process.

<img class="centered-image" src="./images/large-black-stripe.png" alt="The image shows how a large, black stripe ruins the image.">

## How to process images

Download **[ImageJ](https://imagej.nih.gov/ij/)** to do image processing. ImageJ
can open .fits files after they have been processed by GIMP. Use GIMP to export
.fits files into files that ImageJ can accept. Here is how an image on ImageJ
should look.

<img class="centered-image" src="./images/15-eunomia.png" alt="Image of 15 Eunomia asteroid.">

On the raw images there are 1-pixel-high stripes that span the entirety of the
images. To remove these horizontal black stripes, use ImageJ’s **remove
outliers** feature with a radius of 1 pixel, a threshold of 1, and set to dark.
After that, it is necessary to smooth the images a few times. Then open the
image on GIMP and sharpen it a lot to the point that it looks pretty noisy, then
open the image on ImageJ and remove both bright and dark outliers with a radius
of 3 to 8 pixels, then smooth the image again a few times. This is how the image
should look.

<img class="centered-image" src="./images/15-eunomia-overexposed.png" alt="Overexposed image of 15 Eunomia asteroid.">

If you change an 8-bit image to a 16 or 32-bit image, it will automatically and
significantly increase the brightness of the image; however, changing a 32 or
16-bit image into an 8-bit image does not change the brightness. Make any color
corrections if they are needed. Here is the image after making color
corrections.

<img class="centered-image" src="./images/15-eunomia-processed.jpg" alt="Image of 15 Eunomia asteroid after being color corrected.">

This asteroid is called _15 Eunomia_ and there appear to be two _faculae_
(bright spots) on its surface.

<img class="centered-image" src="./images/15-eunomia-faculae.png" alt="Image of 15 Eunomia asteroid faculae (bright spots).">
