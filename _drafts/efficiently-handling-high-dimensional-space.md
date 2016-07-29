---
title: Efficiently handling high dimensional space for quantum information
layout: post
category: quantum
tags:
  - julia
---

It becomes challenging for dealing with a huge space in quantum mechanics.

Common strategies to crack a high dimensional space objects:

While it might not be possible to calculate every element of a density matrix, it is still possible to calculate the expectation value of an observable after a quantum evolution.
This can be done symbolically if we know some basic relationships between the observable groups and the Hamiltonians of the system.
It may also be done numerically if the state of the system can be decomposed into smaller units or have some special properties.
A hybrid approach is also useful when the symbolic approach can only simplify the equation sets rather than solving the whole problem completely.


1. Symbolic calculations.
I can give an example when the symbolic calculus becomes valid for solving a complicated problem.
Consider a spin squeezing problem where an ensemble of thousands and even billions of atoms are trapped in a light field and a polarizability spectroscopy technique is used to measure the state of the atomic ensemble and hence squeezed the spin state of the ensemble.

2. Compiling without computing for storage, while computing is only applied for retrieving finite elements of the results of certain operations.

a. When the quantum state can be written as a direct sum of smaller units.

b. When the quantum state can be written as a direct product of smaller units.

c. When the quantum states are in a tensor network and matrix product states can be applied to its evolutions.
