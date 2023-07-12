---
# layout: post
title: "How to export and import GPG key pairs"
# description: A tutorial on how to sharpen blurry asteroid images.
# tags: [Astronomy, Image Processing]
# keywords: [Astronomy, Image Processing]
---

For context, GPG key pairs are necessary for password managers such as `pass`.
Migrating computers requires migrating the GPG key pairs or else `pass` will be
unable to load or create passwords. Migrating GPG pairs requires exporting them
in the original computer and exporting them in the target computer. That is what
this tutorial shows.

## How to export GPG key pairs

### Export the private key

Export an existing private key. Make sure to use the `--armor` flag if the
private key will be printed in the future as a backup.

```bash
gpg --export-secret-keys --armor <key-name|key-email> > <private-key-file>
```

### Export a public key

A public key can be created now or later on. What matters is the private key,
which can generate more public keys. To create the key now:

```bash
gpg --export --armor <key-name|key-email> > <public-key-file>
```

## How to import the GPG key pair

### Import the private key

You will be asked for the password.

```bash
gpg --import <private-key-file>
```

### Export a public key if this has not been done

Generate a public key from the exported private key. Redirect the output into a
file.

```bash
gpg --export --armor <key-name|key-email> > <publick-key-file>
```

### Import the public key and change the trust level

Import the key and edit it by changing the trust level from unknown to ultimate.

```bash
gpg --import <public-key-file>
gpg --edit-key <name or email>
>trust
>5
>save
>quit
```

### Scripts for exporting and importing key pairs

Use the following scripts to export and import key pairs like so:

```bash
# An email like john@doe.com is also  valid.
./export-key-pair.sh "John Doe"
./import-key-pair.sh "John Doe"
```

Inspect the code briefly --- do not trust internet scripts blindly.

<script src="https://gist.github.com/Luis-Licea/b63bbd079288b6327bd119bf0bcd1277.js"></script>
