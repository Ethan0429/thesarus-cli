# Information
---

thesaurus-cli is a simple way to use the thesaurus from your commandline! It interfaces with https://www.merriam-webster.com to use their thesaurus database.

#### Note
cli-thesaurus was intended for Unix systems, so the instructions that follow are tailored for that. However, it can work on Windows with a couple of minor changes.

# Requirements
---

- [Curl](https://curl.se/docs/install.html)
- [Perl](https://learn.perl.org/installing/)

# Installation
---

clone the repo, place `thesaurus.sh` wherever you keep your personal programs e.g. `/home/[user]/bin` and give it execute permissions
```bash
chmod +x thesaurus.sh
```

Add the path to your `$PATH` and your good to go
```bash
# in .bashrc (or .zshrc)

export PATH=$PATH:/home/ethan/bin/ # whatever path thesaurus.sh is in
```

I also recommend using an alias for convenience
```bash
# in .bashrc (or .zshrc)

export PATH=$PATH:/home/ethan/bin/ # whatever path thesaurus.sh is in
alias th="thesaurus.sh"
```

# Usage
---
After following the installation instructions, you can run the program regularly.

You can run the program with a search term argument - or interactively if there are no arguments provided.

Simply run the program `thesaurus.sh` or however you've setup the alias. I'll use `th` in these examples

### With arguments

```
$ th shell
Synonyms for SHELL: armor, capsule, case, casing, cocoon, cover, covering, encasement; 
Antonyms for SHELL: inside, interior
```

### Interactive

```
$ th
Enter a word you wish to lookup: shell
Synonyms for SHELL: armor, capsule, case, casing, cocoon, cover, covering, encasement; 
Antonyms for SHELL: inside, interior
```





