# Chapter 0: Introduction

Shrubbery is a new in-development application model for Urbit. This guide will introduce the foundational Shrubbery concepts and get you started writing shrubs of your own. *It is aimed at Urbit developers who have at least been through App Academy, or are otherwise familiar with Gall agents.*

At time of writing, Shrubbery's build system lives in a Gall agent called `%neo`. You can install this agent on a comet or moon with `|install ~met %neo`. You can install this desk on a fakeship from the GitHub repo, as detailed below.

## Cloning from GitHub
1. Clone the `urbit/shrub` repo to your machine.
2. Get the latest `urbit` [runtime](https://docs.urbit.org/manual/getting-started/self-hosted/cli).
3. Boot a fakeship with the `--loom 33` flag.
4. `|mount %base`
5. `rsync -avL —delete urbit/shrub/pkg/arvo/* pier/base`
6. `|commit %base`
7. `|start %neo`

This could take a while, you’ll see `booted %neo` in the Dojo when it’s complete.

## Directory structure
The only folders you need to understand for these tutorials are `/pro`, `/imp`, and `/con`.
- `/pro` for protocols. Like `/sur`, this is where your type definitions live.
- `/imp` for implementations. Like `/app`, this is where your app logic lives.
- `/con` for conversions. Like `/mar`, this is where you define rules for transforming nouns in your desk.

## Working in Sky
Sky is a UI for your local namespace. Three of the four examples in this guide are pre-loaded in there. The exception is Counter, which you'll build in your code editor and deploy in Sky yourself.

You can access Sky at `<localhost:8080>/neo/sky`. Every tile there represents a shrub located immediately beneath `/[%p our]/home` in the namespace. In the Counter tutorial you'll learn how to make your own shrubs at this location.

## Upcoming Changes
Everything in these guides is accurate at time of writing, but Shrubbery is a work in progress. Many implementation details are subject to change.

Of note:
- The way Shrubbery handles user interfaces is the most undercooked part of the system that we spend significant time on in these guides. Accessing `bowl:neo` within the `/con` files is a hack and will be deprecated.  `/con` files may or may not exist in the final product.
- `/imp/txt.hoon` and "stub" implementations like it are a hack.

This guide launched at the June 2024 Lake Summit, and has an expiration date of sometime in Q3.
