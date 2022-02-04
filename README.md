# README

This is my submission for a pre-interview code challenge to build a basic blog.

I didn't add any CSS styling at all. I'm really slow and really bad at graphical design and tweaking CSS.

I implemented end-to-end feature testing with RSpec.
It's been a while since I've used Capybara, so I had to use my [cheat sheet](https://github.com/boochtek/cheatsheets/blob/master/capybara.md).

I would have added model tests if there was any logic that wasn't just Rails boilerplate. I trust the framework, so I don't "test the framework". I don't do controller tests when I'm doing end-to-end tests. The basic controller functionality will get exercised by the end-to-end tests, and even moderately complicated logic should be in a model or service object.

Similarly with view specs --- anything complicated should be in a model, helper, or presenter/decorator object.

In retrospect, I shouldn't have bothered to spend the time setting up RuboCop to run on every commit.
