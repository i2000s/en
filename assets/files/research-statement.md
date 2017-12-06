---
layout: default
title: Statement of Research Interests
---
# Overall statement of research interests
About 10 years ago, I decided to dedicate my life to improving the computing capacity of machines for simulating the physical world and designing advanced functional materials and devices.
I thought the limitations on computing power and our understanding of fundamental physics hindered our ability to find energy efficient functional materials (i.e. room-temperature superconductors, super-light and hard materials, efficient luminescent materials, etc) and to cope with the exponential growth of information flows and solve other bottlenecked problems for a sustainable development of human society.
Since then, I have been focusing on light-matter interaction theory in the nonlinear and high-power regime, as well as the single-photon and few-atom level of quantum optics, which I think will lead to a better understanding of fundamental physics and could inspire the innovation of the next generation of computers fully rooted into the principles of quantum physics.
Over the years, the concepts of quantum computing and quantum simulations have gradually materialized. I have familiarized myself with the computational tools for both classical high-performance computing and quantum information processing from the physical architecture to the software level.
With this in-depth basic knowledge and tool suites built up, I am ***pursuing deeper understanding of the fundamental theory of quantum physics by solving problems of particular physical systems--especially of the atom-nanophotonic interfaces***. Moreover, I would also like to work on ***innovating new quantum protocols and computational techniques (classical or quantum) by applying the theories of quantum optics and quantum information science***.

In the course of research, I have also honed a set of skills to conduct research and prototype new concepts independently and efficiently. In the following paragraphs, I will highlight some research activities not shown in my CV for a few projects I have under taken in the past few years, demonstrate my relevant skills and working style and discuss some immediate future research directions.  

# Quantum interface with atoms and nanophotonic waveguides
I joined the nanofiber quantum interface project under the encouragement of Prof. Ivan Deutsch.
We were initially collaborating with Prof. Poul Jessen's experimental group at the University of Arizona, who were setting up the nanofiber experiments.
In the experimental setup, a traveling blue-detuned laser and two counter-propagating red-detuned laser beams are sent into the nanofiber with a sub-wavelength diameter, which generate a trapping potential in the evanescent field outside the nanofiber.
The atoms are trapped in an optical lattice determined by the standing wave of the red-detuned light on two sides of the fiber as two periodic arrays, and the distance of atoms to the fiber surface is solely controlled by the power ratio between the blue and red lights.
I started the project in the summer of 2013 by contributing computer programs to Poul's group to simulate the fiber modes and trapping potentials. The goal was to facilitate the experimental work while learning the related basic atomic physics and quantum optics theory under the supervision of Prof. Deutsch.
Next, I applied the Green's function method that I learned at Queen's University for solving a multiple scattering problem with quantum dots and photonic crystal cavities to the nanofiber project for a general theory of atom-light interaction on the nanophotonic waveguide platform in the dispersive regime.
We are particularly interested in using the atom-waveguide interface as a potential platform for quantum information processing, and applying our theory to design protocols for quantum measurement, state preparation and control scenarios that have been widely investigated on ensembles of atoms and optical lattices in free space.
The key of implementing these protocols relies on the strong coupling between atoms and light--particularly the guided modes of the waveguide.
One disadvantage of using nanofiber waveguide instead of optical cavities is the coupling to the guided modes is weak.
On the other hand, the waveguide geometry we are considering has numerous advantages. In fact, the relatively weak coupling actually makes it easier to trap a thousands of atoms on an optical lattice relative to the near-resonant cavity case; not only that, the local fields at every atom's position are identical if the waveguide is ideal, and there is at most only one atom on each trapping spot.
This makes all atoms indistinguishable under exchanges, which is good for quantum measurement; and collectively, atoms can generate a large collective state beyond Gaussian state limit (like Dicke states).
Based on this insight, our research project was to study the collective quantum nondemolition (QND) measurement and QND-measurement induced spin squeezing effect towards preparing non-classical spin states.

First, I show that, with thousands of atoms, the total optical depth or the cooperativity{% cite Kimble1998 --file refs/Archive %} that we defined for our QND measurement protocols is large enough and comparable to the free space case with billions of atoms trapped in a magneto-optical trap.
In other words, depending on the trapping positions, the cooperativity per atom is orders of magnitude stronger than a usual free space atom cloud setup.
Due to the homogeneous local field on individual atoms, the photon emissions from all atoms obey an ideal mode matching condition to ensure the total cooperativity of the ensemble of atoms adding up linearly with respect to the number of atoms on the waveguide platform. In the atom cloud case, however, there is usually a compromise between the total number of atoms and the strongest per-atom coupling strength at the wrist of trapping beam to make the effective atom number far less than the actual total number of atoms{% cite Qi2016 --file refs/Archive %}.
I derived the detailed stochastic master equations and calculated the spin squeezing dynamics based on the NSF proposal by Prof. Deutsch and Prof. Jessen using the birefringence effect based polarization spectroscopy method and using the clock states of alkali atoms.
The birefringence effect is generated by taking the advantage of the anisotropic property of the degenerate two orthogonal fiber modes (corresponding to the signal and local oscillator of the quantum measurement configuration) and the symmetry of the internal state of the atoms; we found a set of magic frequencies to cancel the quantum noise sources other than the one generating the birefringence effect.
I discovered that the choice of quantization axis (which can be fixed by applying a strong magnetic field) is difficult to find due to the elliptically polarized fiber modes at the atom positions.
I numerically found the optimal choice of quantization axis by maximizing the ratio between the strength of measurement that enhances the squeezing and the rate of decoherence that limits the peak squeezing.
We concluded 4.7dB of squeezing can be attainable with 2500 atoms trapped at realistic distance to the fiber surface{%cite Qi2016 --file refs/Archive %}.
This discovery motivates us to study the waveguide interface further, since billions of atoms are required to reach the same level of squeezing using a trapped atom cloud implemented in Prof. Jessen's lab{% cite Smith2004Continuous Baragiola2014 --file refs/Archive %}.

Next, Prof. Jessen asked if we can find a protocol for QND measurement and spin squeezing using the Faraday effect with the spin coherent states commonly used in free space case.
Our collaborators from Sandia also asked us to generalize our result on the nanofiber to other nanophotonic waveguides.
So, I took over the task and started thinking about the optimal measurement geometry for the Faraday protocol and generalize our prior results in studying the birefringence protocol.
I realized the cooperativity per atom is the key to find the optimal geometry of the measurement setup for nanophotonic waveguide in general.
I defined the cooperativity as the ratio between the measurement strength and the decoherent rate for the Faraday protocol, based on the mathematical structure of the dynamic equations and is protocol-dependent{% cite Qi2016 Qi2017Enhanced --file refs/Archive %}.
The simple concept of cooperativity not only facilitates us to find the optimal measurement geometry, but also delivers us surprising results which we would not expect naively.
We predict ~7dB of squeezing for the nanofiber and ~13dB for a simple waveguide with a square cross section may be attainable using realistic parameters with 2500 atoms, which is a dramatic enhancement over the birefringence protocol.
The most surprising finding is that we do not need to put atoms at the strongest field position as most people would expect.
Instead, the optimal geometry requires atoms to be placed at the weakest field positions in order to generate the most precise measurement readout and strongest spin squeezing effect.
Most importantly, this setup minimizes the mechanical disturb to the trapped atoms due to the presence of the probe light many researchers have been worried about~\cite{Solano2017Dynamics}.
I realized that it is the anisotropic nature of the orthogonal yet degenerate modes of the nanophotonic waveguides makes it possible to maximize the measurement strength of the signal while minimizing the decoherence rate of the local oscillator simultaneously for the optimal geometry of quantum measurement.
In comparison, the modes for signal and local oscillators are correlated to each other in the free space case with a Gaussian beam and one cannot use such a strategy to further enhance the atom-light coupling.
This result makes the atom-nanophotonic waveguide platform more promising for implementing other quantum information protocols.

At present, I am finalizing the inclusion of more realistic details of experimental limitations and the collective photon scattering effect on the QND measurement and spin squeezing protocols, as well as a protocol to combine the cooling and universal state preparation process in one. You can find some of the details in my CV.
As you can imagine, I am growing the research tree out of some in-depth insights and concepts.
For example, the concept of cooperativity can also be applied to the cooling process, which can be treated as the competition between the good and bad processes again.
It looks promising to me to find interesting results once I understand the essence of the physics system, although the waveguide modes are generally more complicated than the free propagating modes.
With the studies on the quantum measurement, collective and individual atomic state preparation, as well as the cooling protocols and applications of collective scatterings, I would conclude my current study for my PhD degree and would like to move onto the next stage to explore other aspects of quantum information.

In the process of studying the subject, I have also developed some skills to do research independently.
For example, I always find more than one method to derive or calculate a quantity.
This enables me to verify my result by corroboration between methods, to understand the problem deeply through various perspectives, and also very often to lead me to a brand new direction of future research.  
For example, in the process of checking the Green's function tensor calculation, I have used the contour integral approach of radiation fields of atoms{% cite Klimov2004 --file refs/Archive %}, eigenmode decomposition approach{% cite Qi2016 --file refs/Archive %}, Finite Difference Time Domain (FDTD) numerical method{% cite Taflove2005 --file refs/Archive %} (in the time domain) and the Boundary Element Method (BEM) numerical approach{% cite GarciadeAbajo2002Retarded GarciadeAbajo1998Relativistic --file refs/Archive %} (in the frequency domain).
The equivalence of those methods always triggers a deeper understanding of the relevant physics.
The eigenmode decomposition approach is very reliable for calculating the guided mode contribution to the Green's function tensor, while the BEM numerical approach is very reliable and fast to handle the radiation contribution part when the radiative modes of a waveguide are not easy to calculate.
I have combined these methods to calculate the Purcell effect for the square waveguide quantum interface and benchmarked the error range as the eigenmodes of the dielectric waveguide do not have analytical solution.
Another example is my derivation of the spin dynamic equations, in which I have developed two approaches:
one is based on the collective operator approach which have been used in the previous spin squeezing studies in our group; the other one is fully based on the local quantum operators on each atoms, which not only avoids the approximation assumptions one has to make in using the collective operator approach, but also leads to the possibility of calculating the many-body correlations beyond the Gaussian state limit which we would like to reach eventually.

# Theoretical study of resource-efficient representations and algorithms for simulating and controlling quantum systems
I have been working on solving many-body problems for years which usually demand a significant computational power to simulate.
Therefore, I have been thinking about efficient ways of representing the quantum objects and calculating the properties and dynamics of complex quantum systems.
For example, in my research of simulating collective spin dynamics of thousands of atoms, I have been using the exchange symmetry and truncating the many-body Hilbert space to a few-body subspace using the N-body moment truncations{% cite Qi2016 --file refs/Archive %}.
By using this truncation trick, the equations required to fully describe the spin dynamics becomes sparse that may be and has been efficiently calculated on a classical computer.

A quantum information processing system will be a complicated system that is better built on top of well-developed techniques that have been existed in the classical computing world rather than starting everything freshly new from scratch.
I regard developing software for simulating quantum systems for my current projects as a step towards building fully functional software modules of controlling a real quantum device in the future.
As my experiences on high-performance computing for simulating complex quantum systems grow, my interests on building the software interface for current and future computing devices turn into self-studies and leadership activities.
Particularly, I am interested in the theory of implementing efficient algorithms and representations to handle the computing tasks of quantum systems on a classical and near-term quantum computers, and creating opportunities to explore the quantum and general theories.
Most of these explorations are purely out of my own passion and curiosity.
The time I spend on this direction is far less than my funded research and therefore progress has been paused for a while due to the amount of research projects at hand, but in the past I have been doing summer studies (in CV) and self-guided studies over a broad range of subjects.
You can find, for example, my arXiv paper on NV centers{% cite Qi2011 --file refs/Archive %}, the wikipedia article on Quantum Computing with Linear Optics{% cite Qi2014Linear --file refs/Archive %} and my notes on circuit model as a unified language for programming{% cite Qi2016Put --file refs/Archive %}.
All of these self-guided studies and investigations eventually lead me to deliver service and gather people with broad backgrounds to work on open-science projects, as well as to help me see the big picture.
Below, I highlight a couple of research projects along this line, particularly on the JuliaQuantum organization project I started a few years ago (more can be found in my CV).

One action of mine in JuliaQuantum is to work with the open-source software community to build a comprehensive computing library to simulate quantum systems on our current classical computers and potentially quantum devices using a recently invented programming language called Julia.
I choose to use this new language mainly because of three reasons that I realized when I found the first prototype of the language in the early days:
it has a good language abstraction to avoid the forbidden operations for quantum states due to measurement-induced state collapses and the no-cloning rule;
it has the Just-In-Time (JIT) compiling mechanism which makes simulating quantum error correction codes easy;
it is also a high-performance and efficient language to program with.

My expectation for collaboratively building the library on this new platform with a fresh approach is that the techniques and codes might be useful for future software and control algorithms adaptable to real quantum systems.
The experience of developing software in Julia could also be a seed to migrate the techniques and algorithms to future practical quantum software developments in any new languages to be invented.

Another activity in the JuliaQuantum organization for me is to start a broad collaboration crossing disciplines to work on open-science projects and learn the skills and strategies to accelerate research efforts in a coherent way for future models of research cooperation.
I started a theoretical research discussion in the organization to find memory-efficient approaches to better prepare ourselves to study quantum theories when we have to tackle a large Hilbert space or many-body systems--either to use classical computers or with near-term quantum devices.
Since, in the end, we might only be interested in querying the machine for a classical output by giving a classical input, it becomes possible to use some tricks to make it resources efficient in handling the information processing in the middle step on classical or quantum devices.
There are a few possible openings based on our current discussions, including symbolic computations based on representation theories, computing without calculating everything based on symmetry{% cite Harrow2013 Hartmann2012 Albert2014Symmetries Jord2014 --file refs/Archive %}, using the tensor network representation{% cite Perez-Garcia2007 Biamonte2017Tensor Pednault2017Breaking --file refs/Archive %} or truncated N-body moments (like N-design approach) approaches to represent quantum states and operators, as well as using quantum devices as an oracle to solve quantum control and optimization problems{% cite Chapman2016Experimental --file refs/Archive %}.
The ideas and programs developed in the organization has facilitate my current theoretical studies on complex quantum systems.  
My participation in the organization, particularly the interaction with experts in a broad field, is also pushing myself to learn fundamental theories and techniques to generalize my research for a broader impact, to identify the bottleneck issues of computation tasks in the frontier of cutting-edge research, and to accumulate programming algorithms and packages for future research.

With the joint efforts from other members from the organization, we got supported from Julia Computing, NUMFocus and Google. We have successfully mentored students for some Google Summer School of Code projects in the past with excellent rewards from Google.
Now, the organization has members from universities and quantum information companies, including BBN and Rigetti Computing. I hope the software packages developed in the organization will ease the life of researchers in the field, our theoretical studies as a network of collaborations on approaches of efficient computing and other topics will facilitate future quantum computing software designs.

# Future directions
My interests of research fall into two categories: one on the study of particular physics systems; and other one is on the abstract level of formulating the theory and implementing programs for physics-system-independent algorithms and software development. Both aspects share the common foundations based on the physics and mathematics of quantum systems, and tie together towards applications to invent efficient and fast computing techniques to tackle hard problems in general.
I am happy to take job opportunities focusing more on one or the other aspects of my interests.
Below, I will only highlight some future research directions on the atom-nanophotonic interface research that I could immediately immerse in.

Here is my longterm interest on atom-light interaction. As people often joke about, if you make 2 people smile and each of them make another 2 people smile, you will make $ 2^N $ people smile after $ N $ iterations. This is a simple example that explains the nature of exponential functions. The exponential speedup of quantum systems we usually talk about is rooted in this nature.
In the case of atom-light interaction, the interaction was extended from one atom to other atoms through the propagation of the light. In the nanophotonic waveguide case, the guided mode ensures the long-range interaction, and hence all atoms interact with each other, which has been examined by observing the super- and subradiance phenomena in experiments{% cite Solano2017Super --file refs/Archive %}.
When the propagation of the light satisfies the phase matching or Bragg condition, the effective total interaction strength approximately follows the $ N^N $ exponential function formally. While in free space, the radiation from an atom decays exponentially as the propagation distance increases due to the nature of radiation modes. In principle, by increasing the portion of the useful guided modes and letting atoms sit at positions approximately or exactly satisfying the Bragg condition, the system could be benefited from the exponential nature of cooperation. This has been predicted in the quantum memory application{% cite Asenjo-Garcia2017Exponential --file refs/Archive %}.
Of course, there are always tradeoffs considering the recoil force to atoms and imperfections from lattice occupation and experimental setup, and it is tricky to generalize the idea to 2D and 3D dimensions.
After I have explored the theory of quantum measurement, spin squeezing and cooling in the dispersive regime, and some multiple scattering problems, I'd like to take the step further to answer the question, ***"how can we get the exponential enhancement of coupling between atoms and light using the nanophotonic interface to compete with or completely avoid the bad effects in a controllable fashion?"***
I think I have already built up a good foundation and tool suit of simulating the many-body systems efficiently to start with some near-term projects to answer this question. I can list a few such immediate projects, but we should discuss what is interesting in your mind based on my potential.

First, in our current studies of quantum measurement and spin squeezing, we have not included many-body correlations into our simulations other than up to two-body correlations.
As we will approach non-Gaussian states by using more atoms, putting atoms closer to the waveguide surface or adding photon circulating mechanisms, it should be the immediate next step to study the entanglement of many atoms in the QND measurement or light scattering processes.
In the course of deriving the spin dynamics equations, I have developed an approach based on evolving the microscopic operators and have partially finished the generalization to include many-body moment terms. Therefore, this research direction could be finished in a short term. I am particularly interested to learn how the quantumness scales and evolves as a function of atom numbers and measurement strength.
It might shadow a light on fast global measurement strategies to approach to the quantum speed limit.

Second, to study collective state generation and storage protocols including the photon scattering effect.
In our current research project with square waveguide{% cite Qi2017Enhanced --file refs/Archive %}, we find that, when the height and width of the waveguide are not equal, the two orthogonal fundamental modes have different group velocities. We can possibly use them to generate some cluster states using the time delay between the photon emission channels of the two modes.
The key is to find interaction terms to implement controlled-Z ($C$-$Z$) gate with selected transition levels and some particular polarization of the light{% cite Pichler2016Photonic Pichler2017Photonic --file refs/Archive %}.
Considering the coherence among atoms due to photon scattering, hypergraph states with $C^N$-$Z$ type of interactions might also be possible.
Not only that, if we can define some orthogonal state space generated by different photon states, we might be able to use those interactions to store quantum states with great redundancy and high fidelity, which has been proved for using the eigenstates of spin waves on a spin chain{% cite Asenjo-Garcia2017Atom Manzoni2017Optimization Asenjo-Garcia2017Exponential --file refs/Archive %}. We simulated the influence of lattice imperfection for the eigenstates of the spin wave case when Prof. Perry Rice visited us last summer, it shows the eigenstates of spin waves with a lot of atoms are relatively robust.
The theory framework of generating those stabilizer states may be established by naturally linking the Green's function description of the spin-spin interaction terms to the $C$-$Z$ gates, in which the state of one atom depends on another atom at different positions, and use the time-slicing approach based on tensor network representation{% cite Manzoni2017Simulating --file refs/Archive %}.
I think it can help me understand the computational complexity relationships between the tensor network approach and my N-moment approach which I used to deal with spin-correlations for spin squeezing.
I could then use the tensor representation to rethink about the quantum measurement problem I did before but with considerations on photon scattering and imperfections.
This direction of study might give us some insights on the robustness of collective state generation and how the breaking of symmetry changes the properties of the many-body system.
We may be able to define and generalize the concept of cooperativity including the collective emissions and repumping effects considering some particular level structure of atoms.
We could then find the optimal geometry of probing for robust and high-efficient protocols for quantum memories, quantum state transportation and collective state preparations along this line.


Third, our study on the cooling and individual state preparation is achieved by applying a global operations on all atoms{% cite Deutsch1998Quantum Deutsch2010a --file refs/Archive %}.
As the nano-technique enables labs to control atoms individually{% cite Thompson2013a --file refs/Archive %}, it might be interesting to study the universal control theory involving both global and local controls on the atom-nanophotonic waveguide platform.
This direction could lead us to implement arbitrary collective state generation, quantum simulations and maybe measurement-based quantum computing using the nanophotonic waveguides and atoms.

Certainly, I am open to other research directions as long as they are aligned with my long-term goal.

I believe that my strong collaborative practices, the passion deeply rooted in heart, interest in interdisciplinary research, research efforts accumulated on related areas, and the methodology of research as an independent and critical thinker, make me an ideal candidate for this position.
Forwarded with this letter are my statement of research interest and curriculum vitae (including a list of publications, projects and referees). Please do not hesitate to contact me if further information is needed.

Thank you for considering my application!

# References
<ul class="referencelist">
{% bibliography --cited_in_order --file refs/Archive --style assets/bibliography/APS.csl --template bibtemplate_link %}
</ul>
