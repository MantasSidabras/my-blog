---
title: "Makefile tutorial"
date: 2023-04-18T17:45:56+03:00
draft: false # Set 'false' to publish
description: ""
categories:
- Uncategories
tags:
- 
---

Automation files for building/compiling/testing. Originaly made for compiling c/c++. [Read more..](https://makefiletutorial.com/)

```
target: prerequisites
	recipe
```

- target - filename that is generated(might not run if file exists) or just a function name (PHONY targets)
- prequisites - something that is needed for the recipe to work
- recipe - actions
- `.PHONY: (name1) (name2) (nameN)` -  makes recipe not check if file with that name is created and execute command again.
- `.DEFAULT_GOAL := (name)` - set default function to be called
- add "@" before recipe command not to print them.
- `a = abc` - define value
- `$@` - contains target name
- `$(wildcard *.o)` wildcard matches all .o files
- `export varbialeName` will make it visible in shell
- has if, functions, foreach if really needed
- can include other makefiles `include filenames...`


#### Example
```bash
  
.PHONY: all say_hello generate clean
entity = Dragon
.DEFAULT_GOAL := say_hello

say_hello:
@echo "Hello ${entity}"

generate:
@echo "Creating empty text files..."
touch file-{1..10}.txt

clean:
@echo "Cleaning up..."
rm *.txt
```

Caveats: 
- Is whitespace sensitive. Do not leave gaps after variables
- checks file updates by timestamps
- each command is run in a separate shell
- If you want a string to have dollar sign use `$$`
