# Cicero

A simple yet powerfull Lorem Ipsum Generator for Ruby

## Installation
  
For stand alone ruby programs

``` ruby
  require 'Cicero'
```

Ruby on Rails 3.0 and up

``` ruby
  ## Gemfile 
  gem 'Cicero'
```
## How to use it

With Cicero you can generate any number of words, sentences, and even paragraphs

#### Words
``` ruby
  ## To generate a single word 
  Cicero.word

  ## To generate a multiple words
  Cicero.words(3)
```

#### Sentences
``` ruby
  ## To generate a single sentence 
  Cicero.sentence

  ## To generate a multiple sentences
  Cicero.sentences(3)
```
#### Paragraphs
``` ruby
  ## To generate a single paragraph 
  Cicero.paragraph

  ## To generate a multiple paragraphs
  Cicero.paragraphs(3)
```

## Languages

You can also change the default languages, by default is uses Latin

#### Suported Languages
  English, Spanish, French, Italian, Latin and Portuguese

#### Custom Languages
``` ruby
  names = "Eduard Roger Jorge Gerard Ingacio Edda Alex Andrea"
  Cicero.locale = names
  ## Cicero.word will now return a name within the name language
```

## Contribute

We will be more than glad if you decide to contribute The Cicero Project
