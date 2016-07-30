---
title: Efficiently handling high dimensional quantum systems on a classical computer
layout: post
category: quantum
tags:
  - julia
---

It is very challenging to handle a large quantum system due to the tensor nature of quantum mechanics.
For example, a quantum system with 100 qubits could have a dimension of $2^{100}$.
To fully characterize the system, it may require to store $2^{100}\times 2^{100}=2^{200}=2^{150}\times 2^{50}bit=2^{150}Pbit$ elements of the density matrix on a computer, which is basically impossible with state-of-art technology.
In these notes, I will try to outline some naive ideas on how to deal with high-dimensional quantum systems for its storage and simulation strategies.
I will take some well-studied special examples from my research, but I am not sure if these ideas are valid in general or feasible in implementing in Julia or other programing languages.
Comments are appreciated and hopefully an online chat and some research efforts will follow up with the JuliaQuantum community.

***The mathematical foundations***: quantum states, operators and superoperators can all be represented in terms of vectors and matices.
As introduced in the current JuliaQuantum projects and other packages, arrays have been used to store quantum objects/types.
At the mathematical root, representation theory of quantum types is the foundation to simulate quantum systems quantitatively.
Below, we will think about array objects--most likely matrices--to find the best storage and operating strategies in limited cases.

***Common strategies to crack a high dimensional quantum system***:

While it might not be possible to calculate every element of a density matrix, it is still possible to calculate the expectation value--or in general a character--of an observable after a quantum evolution.
This can be done symbolically if we know some basic relationships between the observable groups and the Hamiltonians of the system.
It may also be done numerically if the state of the system can be decomposed into smaller units or have some special properties.
A hybrid approach is also useful when the symbolic approach can only simplify the equation sets rather than solving the whole problem completely.

Although we may only be able to handle some special cases efficiently on a classical computer, it could be useful to verify a quantum system, bootstrap a quantum system toward some initial states using quantum control techniques and study the trend of properties of quantum systems as the dimension grows.

1. Symbolic calculations.
I can give an example when the symbolic calculus becomes valid for solving a complicated problem.
Consider a spin squeezing problem where an ensemble of thousands and even billions of atoms are trapped in a light field and a polarizability spectroscopy technique is used to measure the state of the atomic ensemble and hence squeezed the spin state of the ensemble.

2. Compiling without computing for storage, while computing is only applied for retrieving finite elements of the results of certain operations.

a) When the quantum state can be written as a direct sum of smaller units.

b) When the quantum state can be written as a direct product of smaller units.

Matlab example, [Efficient Object-oriented Kronecker Product Manipulation](https://www.mathworks.com/matlabcentral/fileexchange/25969-efficient-object-oriented-kronecker-product-manipulation) is a toolbox that treat matrices generated from Kronecker products as objects and then defines efficient methods for matrix multiplications, divisions and other manipulations.
Yes, it could also be expanded to [sparse matrices](https://www.mathworks.com/matlabcentral/fileexchange/29832-n-dimensional-sparse-arrays) as well.
I haven't looked into these toolboxes very closely, but I think they only do calculations by retrieving elements from subunits and do the numerical calculations only when it is requested.

c) When the quantum states are in a tensor network and matrix product states can be applied to its evolutions.

Use the TensorOperators.jl package.

There are some algorithms introduced in a [Matlab Arraylab Toolbox](http://www.mathworks.com/matlabcentral/fileexchange/8773-multiple-matrix-multiplications--with-array-expansion-enabled) which may work for Julia as well.
But the toolbox mainly focuses on solving array algebras by not using for-loops, or instead, using the built in `@mtimesx` C-code routine (built with BLAS and other libraries) with matrix transformations and such.

3. Integrate symbolic and numerical calculus power together.
Two approaches:

a) Using expressions in Julia for symbolic calculus (since everything in Julia is an expression) and then substitute symbols with values for numerical calculus.
Nik may have concrete ideas.

b) Using the abstract type for symbolic calculus and then do the numerical calculations whenever an observable's value is requested.
See the QuDirac.jl project.
