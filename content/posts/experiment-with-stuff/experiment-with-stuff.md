---
title: "Experiment with stuff"
draft: false
date: 2023-04-15T09:16:45.000Z
description: "This is an example how to do a lot of things from scratch"
mermaid: true
---

This Markdown cheat sheet **provides** a quick overview of all the Markdown syntax elements. It can’t cover every edge case, so if you need more information about any of these elements, refer to the reference guides for basic *syntax* and extended syntax.


## Let's begin with mermaid

Mermaid allows to do stuff like diagrams

{{< mermaid >}}
sequenceDiagram
    Alice->>+John: Hello John, how are you?
    Alice->>+John: John, can you hear me?
    John-->>-Alice: Hi Alice, I can hear you!
    John-->>-Alice: I feel great!
{{< /mermaid >}}

Implemented according to [Adding Diagrams to Your Hugo Blog With Mermaid](https://navendu.me/posts/adding-diagrams-to-your-hugo-blog-with-mermaid/)

## Next we have Goats

```goat
      .               .                .               .--- 1          .-- 1     / 1
     / \              |                |           .---+            .-+         +
    /   \         .---+---.         .--+--.        |   '--- 2      |   '-- 2   / \ 2
   +     +        |       |        |       |    ---+            ---+          +
  / \   / \     .-+-.   .-+-.     .+.     .+.      |   .--- 3      |   .-- 3   \ / 3
 /   \ /   \    |   |   |   |    |   |   |   |     '---+            '-+         +
 1   2 3   4    1   2   3   4    1   2   3   4         '--- 4          '-- 4     \ 4
```

These are some weird diagrams

## Videos from youtube

{{< youtube ZFL09qhKi5I >}}

## Lets try tables

This is just a markdown table

| item | price | description |
|-|-|-|
| clock | 12 | tells time |
| phone | 550 | does calling and internet |
| lamp | 50 | enlightens your day or night |
