# Chapter 0: Introduction

Shrubbery is a new application model built on top of the Urbit namespace. At launch it will be a vane that serves as an alternative to Gall and Clay. If successful, it will eventually replace those vanes. If very successful, it could eventually replace Arvo.

This guide will introduce the foundational Shrubbery concepts and get you started writing shrubs of your own. *It is aimed at Urbit developers who have at least been through App Academy, or otherwise have enough experience with Gall to have acutely felt its shortcomings.* This guide launched at the June 2024 Lake Summit, and has an expiration date sometime in Q3.

At time of writing, Shrubbery's compiler and "shrub runner" lives in a Gall agent called `%neo`. You can install this agent within its own desk with `|install ~met %neo`. You can install this agent on a comet or moon with `|install ~met %neo`. You can install this desk on a fakeship from the GitHub repo, as detailed below.

## Cloning from GitHub
1. Clone the `urbit/shrub` repo to your machine.
2. Get the `urbit` executable from urbit.org.
3. Boot a fakeship with `—loom 32`.
4. `|mount %base`
5. `rsync -avL —delete path/to/pkg/arvo/* path/to/base`
6. `|commit %base`
7. `|start %neo`

This could take a while, you’ll see `booted %neo` in the Dojo when it’s complete.

## Directory structure
The only folders you need to understand for these tutorials are `/pro`, `/imp`, and `/con`.
- `/pro` for protocols. Like `/sur`, this is where your types live.
- `/imp` for implementations. Like `/app`, this is where your app logic lives.
- `/con` for conversions. Like `/mar`, this is where you define rules for transforming nouns in your desk.

## Working in Sky
Sky is a UI for your local namespace. Three of the four examples in this guide are pre-loaded in there. The exception is Counter, which you'll build in your code editor and deploy in Sky.

You can access Sky at `<localhost:8080>/neo/sky`. Every tile there is one shrub immediately beneath the `/imp/home` shrub in the namespace. In the Counter tutorial you'll learn how to make your own shrubs at these tiles.

## Upcoming Changes
Everything in these guides is accurate at time of writing, but Shrubbery is a work in progress. Many implementation details are subject to change.

Of note:
- The way Shrubbery handles user interfaces is the most undercooked part of the system that we spend significant time on in these guides. Accessing `bowl:neo` within the `/con` files is a hack and will be deprecated.  `/con` files may or may not exist in the final product.
- `/imp/txt.hoon` and "stub" implementations like it are a hack.
- You used to be able to inspect the state of a shrub from the Dojo, but we lost this ability with the demise of the dedicated "shrub shell" that existed for debugging purposes. There is currently no way to inspect the state of a shrub from the Dojo. Simply build a UI.
