# Software design patterns in c++ with focus on realtime applications.

## Introduction
Design patterns are typical solutions to common problems in software design. However, this is often misunderstood by developers who do not deal with real-time programming.

Real-time programming, especially on low-level devices, typically uses languages such as C and C++. Computing time is often a limiting factor, and dynamic memory allocation can be problematic or even forbidden in some cases. In these situations, software pattern solutions are often discarded in favor of more efficient, but often ad-hoc solutions. Abstractions are viewed skeptically and are quickly rejected as too inefficient.

This repository is not intended to provide yet another iteration of software patterns, but instead aims to adapt common software design patterns for use in real-time programming environments.

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
