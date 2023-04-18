---
title: "Type driven design using Typescript"
date: 2023-04-16T22:20:07+03:00
draft: true # Set 'false' to publish
description: ""
categories:
- Uncategories
tags: [typescript]
---

When we work in a typed language, we heavily rely on built in primitives. After all these are the building blocks of our code. Typescript primitives are in essence javascript primitives. There are quite a few of them, but 3 most common ones are: 
1. string
2. number
3. boolean

And when we want to notify that something is optional we use `undefined` or
`null`.

Now Primitives are good and all, but our business requirements are not
primitive. Assume we have a `Custumer` type, it's more than just a string. 
```typescript
type Customer = {
    firstName: string
    lastName: string
    email: string
    isEmailVerified: boolean
    phone: string
}
```

Now this will work in our program, and it feels natural to write it this way,
however each of these fields have hidden
requirements. Some of these are dictated by the database, for example we do not
want to store indefinite length strings for the `firstName` field, thats just
wasteful storage wise. We know that nearly all names in the world fits in under 50
characters. Therefore when we try to save `Customer` entry in the database, we
migth get an error if that name exceeds our 50 characters limit.
This same procedure applies to all other string fields. 

Your business might have certain rules, how each of these data fields should
look like. For example, email must be some lowercase characters followed by @
sign, then some more characters dot com. We all know that we can write a regex
for that, however not all fields are so trivial, what if we had type for speed
value folowed by its units, for example `speed: '140 m/s'`, these could be meters per second,
miles per hour or lightspeed coeficient, not even regex can save us now.

All in all, primitive types don't tell us that much. We're happy using
primitives, because they're so universal and fits everywhere, but we want to have
our abstractions in place to express business requirements and domain language.

Lets back off from our problem for a minute. What are the types after all? 
Generally we should think about programming as 2 dimensional
space: one dimension is your code: functions, variables, control flow, all that jazz.
Another one is types. These 2 spaces are not directly connected, but we can interact with both of them through the same code file, via text. Types guide us, they narrow the scope of what's possible to do in
the actual code, they are constraints to functions and variables. These contraints keeps us
sane. 

```typescript
const sendEmail = (email: string, subject: string, contents: string) => {
  if(!isEmailValid(email)) {
      throw new Error(`${email} is not valid`)
  } 
  console.log('sending email...')
}
```


## Sources
- [The "Designing with types" series](https://fsharpforfunandprofit.com/series/designing-with-types/)
