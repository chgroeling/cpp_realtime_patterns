# Software design patterns in c++ with focus on realtime applications.

## Introduction
Design patterns are typical solutions for common problems in software design. At least that's what most developers who "don't" deal with real-time programming think.

Real-time programming (on low-level devices) is mainly done in C and C++. Computing time is often the limiting factor. Dynamic memory allocation is problematic if not forbidden in some places. Software pattern solutions are quickly discarded in favor of more efficient but often very tinkering-like solutions. Abstractions are wearily smiled at and quickly discarded as too inefficient.

This repo is not intended to reproduce the 1000th repetition of software patterns this time in C++. Instead, I will try to reproduce the common software design patterns in a way that they are suitable for this form of programming.

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