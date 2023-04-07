# Software design patterns in c++ with focus on realtime applications.

## Introduction
Design patterns offer standard solutions to frequently encountered issues in software design.

In real-time programming, particularly for low-level devices, languages like C and C++ are commonly used. Due to time constraints and potential issues with dynamic memory allocation, traditional software pattern solutions are sometimes disregarded for more efficient, albeit ad-hoc, approaches. Abstractions are often met with skepticism and dismissed as being too inefficient.

This repository's purpose is not to present another version of software patterns. Instead, it focuses on adapting widely-used software design patterns to better suit real-time programming environments.

## Assumptions
* This repo contains only C++ code. Patterns implemented in C are not part of this repo. 
* Dynamic memory allocation is largely avoided.
* No exceptions will be used. They have a huge performance and memory impact and are not suitable for low-end embedded devices.
* Since these are examples, I try to use template metaprogramming sparingly as it often makes the code more incomprehensible.

## Usage
Each pattern is contained in a stand-alone cpp file. They can therefore be compiled directly on [Compiler explorer](https://godbolt.org/) without further dependencies. Just copy and past it!

There is also a Makefile in the root directory that compiles each pattern with any "gnu" c++ compiler. This Makefile also creates a dissassembly of each pattern object file. It is really amazing to see what a compiler does without the knowledge of its users. Take a look!

## Credits
* This repo is largely inspired by [java-design-patterns](https://github.com/iluwatar/java-design-patterns).
