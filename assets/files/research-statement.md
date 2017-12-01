---
layout: default
title: Statement of research
---
# Overall statement of research interests
About 10 years ago, I decided to dedicate my life to improving the computing capacity of machines for simulating the physical world and designing advanced functional materials and devices.
I thought the computing power and our understanding of fundamental physics limited our ability to find energy efficient functional materials (room-temperature superconductor, super-light and hard materials, efficient luminescent materials for various needs and so on) and to cope with the exponential growth of information flows and solve other bottlenecked problems for a sustainable development of human society.
Since then, I have been focusing on light-matter interaction theory in the nonlinear and high-power regime, as well as the single-photon and few-atom level of quantum optics, which I think will lead to a better understanding of fundamental physics and could inspire the innovation of the next generation of computers fully rooted into the principles of quantum physics.
Over years, the concept of quantum computing and quantum simulations have been concrete and gradually materialized; I have familiarized myself with the computational tools for both classical high-performance computing and the quantum information processing from architecture to software.
With all these basic knowledge and tool suites built up, I can see myself pursuing the understanding of the fundamental theory of physics. Moreover, the demand of innovating new computational tools are merging together on the base of quantum optics and quantum information science.
I have also honed a set of skills in the course of my education to conduct research and prototype new concepts independently and efficiently. In the following paragraphs, I highlight some research activities not shown in my CV for a few projects I have been doing in the past a few years, demonstrate some of the skills and working style that I hope to be useful for future research activities and illustrate some immediate future research directions for your consideration of my job application.  

# Quantum interface with atoms and nanophotonic waveguides
I joined the nanofiber quantum interface project under the encouragement of Prof. Ivan Deutsch.
We were initially collaborating with Prof. Poul Jessen's experimental group at the University of Arizona who were setting up the nanofiber experiments.
In the experimental setup, a traveling blue-detuned laser and two counter-propagating red-detuned laser beams are sent into the nanofiber with a sub-wavelength diameter, which generate a trapping potential in the evanescent field outside the nanofiber.
The atoms are trapped in an optical lattice determined by the standing wave of the red-detuned light on two sides of the fiber as two periodic arrays, and the distance of atoms to the fiber surface is solely controlled by the power ratio between the blue and red lights.
I started the project in the summer of 2013 by contributing computer programs to Poul's group to simulate the fiber modes and trapping potentials to facilitate the experimental work while learning the related basic atomic physics and quantum optics theory under the guidance of Ivan.
Then I applied the Green's function method which I learned at Queen's University for solving a multiple scattering problem with quantum dots and photonic crystal cavities to the nanofiber project for a general theory of atom-light interaction on the nanophotonic waveguide platform in the dispersive regime.
We are particularly interested in using the atom-waveguide interface as a potential platform for quantum information processing, and applying our theory to design protocols for quantum measurement, state preparation and control scenarios which have been widely investigated on ensembles of atoms and optical lattices in free space.
The key of implementing these protocols relies on the strong coupling between atoms and light--particularly the guided modes of the waveguide.
One disadvantage of using nanofiber waveguide instead of optical cavities is the coupling to the guided modes is not that strong.
On the other hand, the waveguide geometry we are considering has numerous advantages. In fact, the relatively weak coupling also makes it easier to trap a lot of atoms on an optical lattice compared to the cavity case; not only that, as Ivan pointed out, the local fields at every atom's position are identical if the waveguide is ideal, and there is at most only one atom on each trapping spot.
This makes all atoms as redundant copies to each other, which is good for quantum information processing; and collectively atoms can generate a large collective state beyond Gaussian state limit (like Dicke states).
Based on this insight, our first research project is to study the collective quantum nondemolition (QND) measurement and QND-measurement induced spin squeezing effect towards preparing non-classical spin states.

First, we show that, with thousands of atoms, the total optical depth or the cooperativity which we defined for our QND measurement protocols is large enough and comparable to the free space case when billions of atoms are trapped in a magneto-optical trap.
In other words, depending on the trapping positions, the cooperativity per atom is orders of magnitude stronger than a usual free space atom cloud setup; due to the homogeneous local field on individual atoms, the photon emission from all atoms yield an ideal mode matching condition to ensure the total cooperativity of the ensemble of atoms to add up linearly with respect to the number of atoms on the waveguide platform, where in the atom cloud case there is usually a compromise between the total number of atoms and the strongest per-atom coupling strength at the wrist of trapping beam to make the effective atom number far less than the actual total number of atoms.
I derived the detailed stochastic master equations and calculated the spin squeezing dynamics based on the NSF proposal by Ivan and Poul using birefringence effect based polarization spectroscopy method and using the clock states of alkali atoms.
The birefringence effect is generated by taking the advantage of the anisotropic property of the degenerate two orthogonal fiber modes (corresponding to the signal and local oscillator of the quantum measurement configuration) and the symmetry of the internal state of the atoms; we found a set of magic frequencies to cancel the quantum noise sources other than the one generating the birefringence effect.
We discovered that the choice of quantization axis which can be fixed by applying a strong magnetic field is a bit tricky to find due to the complex fiber modes which are elliptical and distort the decoherence channels in a way different from the measurement backaction.
We numerically found the optimal choice of quantization axis by maximizing the ratio between the strength of meassurement which enhances the squeezing and the rate of decoherence which limits the peak squeezing.
In the end, 4.7dB of squeezing can be attainable with 2500 atoms trapped at realistic distance to the fiber surface.
This discovery is quite encouraging to us to study the waveguide interface further in-depth, since it requires orders of magnitude more atoms to reach the same level of squeezing using an atom cloud in free space.

Next, Poul asked if we can find a protocol for QND measurement and spin squeezing using the Faraday effect with the spin coherent states commonly used in free space case.
So, I took over the task and started thinking about the key to define an optimal measurement geometry for the Faraday protocol and generalize the physics idea we have developed in studying the birefringence protocol.
At that time, our collaborators from Sandia joined our research effort who are interested in fabricating other nanophotonic waveguides for stronger atom-light coupling besides the nanofiber we had been studying.
After some analysis, I realized and discussed a simple idea of using the ratio between the measurement strength and the decoherent rate or the cooperativity per atom to find the best geometry for quantum measurement based squeezing protocols.
The goal becomes to find the proper orientation of the polarization of the input probe light and the relative position of the trapped atoms near the waveguide surface so that the ratio between the good mechanism (the measurement strength) and the bad mechanism (the decoherence rate) saturates at the maximum value.
As a result, not only does this simple concept of cooperativity make the task easy to complete, but also it delivers us surprising results which we would not expect naively.
We predict ~7dB of squeezing for the nanofiber and ~13dB for a simple waveguide with a square cross section may be attainable using realistic parameters with 2500 atoms, which is a dramatic enhancement over the birefringence protocol.
The most surprising finding is that we do not need to put atoms at the strongest field position instead need to be the weakest position in order to generate a strong QND measurement based spin squeezing effect, which is indeed a counter-intuitive result for many people.
The key to understand this conclusion is to realize that the strongest field spot yields the largest decoherence which destroys spin correlations and spin squeezing.
The optimal geometry of setup corresponds to the local field of the probe light at the atom position is the weakest while the virtual orthogonal mode at the atom position is the strongest.
It becomes immediately clear that it is the anisotropic nature of the orthogonal yet degenerate modes of the waveguides makes it possible to maximize the measurement strength of the signal while minimizing the decoherence rate of the local oscillator simultaneously for the optimal geometry of quantum measurement.
In comparison, the modes for signal and local oscillators are correlated to each other in the free space case with a Gaussian beam and one cannot use such a strategy to further enhance the atom-light coupling.
This result makes the atom-nanophotonic waveguide platform more promising for implementing other quantum information protocols.

I am finalizing at present the inclusion of more realistic details of experimental limitations and the collective photon scattering effect on the QND measurement and spin squeezing protocols, as well as a protocol to combine the cooling and universal state preparation process in one. You can find some of the details in my CV.
As you can imagine, I am growing the research tree out of some in-depth insights and concepts.
For example, the concept of cooperativity can also be applied to the cooling process which can be treated as a competition between the good and bad processes again.
It looks promising to me to find interesting results once I understand the essence of the physics system, although the modes of the waveguides are usually very complicated compared to the free propagating modes.
With the studies on the quantum measurement, collective and individual atomic state preparation, as well as the cooling protocols and applications of collective scatterings, I would conclude my current study for my PhD degree and would like to move onto the next stage to explore other aspects of the quantum world.

In the process of studying the subject, I have also developed some skills to do research independently.
For example, I always find more than one method to derive or calculate a quantity.
This enables me to verify my result by corroboration between methods, to understand the problem deeply through various perspectives, and also very often to lead me to a brand new direction of future research.  
For example, in the process of checking the Green's function tensor calculation, I have used the contour integral approach of radiation fields of atoms, eigenmode decomposition approach, Finite Difference Time Domain (FDTD) numerical method (in the time domain) and the Boundary Element Method (BEM) numerical approach (in the frequency domain).
The equivalence of those methods always trigger my wonders of the beauty of physics.
The eigenmode decomposition approach is very reliable for calculating the guided mode contribution to the Green's function tensor, while the BEM numerical approach is very reliable and fast to handle the radiation contribution part when the radiative modes of a waveguide are not easy to calculate.
I have combined these methods to calculate the Purcell effect for the square waveguide quantum interface and benchmarked the error range as the eigenmodes of the dielectric waveguide do not have analytical solution.
Another example is my derivation of the spin dynamic equations, in which I have developed two approaches:
one is based on the collective operator approach which have been used in the previous spin squeezing studies in our group; the other one is fully based on the local quantum operators on each atoms, which not only avoids the approximation assumptions one has to make in using the collective operator approach, but also leads to the possibility of calculating the many-body correlations beyond the Gaussian state limit which we would like to reach eventually.

# Theoretical study of quantum software
A quantum information processing system will be a complicated system which is better built on top of mature techniques that have been well tested in the classical computing world rather than starting everything freshly new from scratch.
I regard developing software for simulating quantum systems as a step towards fully functional software modules of controlling a real quantum device.
As my experiences on high-performance computing for simulating complex quantum systems grow, my interests on building the software interface for current and future computing devices turn into real actions.
Particularly, I am interested in the theory of implementing efficient algorithms and representations to handle the computing tasks of quantum systems on a classical and near-term quantum computers.
Most of these actions towards the quantum software development are out of my own passion and are not part of my main research projects funded by my research institute.
Beside the software I developed to simulate the real quantum systems for the research project discussed in the last section, the time I spend on this direction is far less than my paid research and therefore progress has been paused for a while due to the amount of research projects at hand, but it should be a good start for me to push this interest forward after my graduation.
Below, I highlight a couple of research projects along this line, particularly on the JuliaQuantum project I started a few years ago (more can be found in my CV).

One action of mine along this direction is to work with the open-source software community to build a comprehensive computing library to simulate quantum systems on our current classical computers using a recently invented programming language called Julia.
I choose to use this new language mainly because of three reasons:

1. It has a good programming abstraction, which makes it easy to implement functional programming libraries and handle abstract objects without knowing the content of the object.
It might not be obvious why this feature is useful.
But considering the conventional programming languages usually involve "if-then", "while-do", "case-i-switch-to-j" conditional structures, which are done in condition of a measurement output and may also involve copying objects.
These may not be allowed on a quantum machine, because a measurement may destroy the quantum state and blind copying is forbidden by no-cloning theorem.
By treating objects in a more abstract way, a measurement or clone operation may be avoided in the algorithm of computing.
2. Julia is fast and high-level programming language, which makes it easy to program and obtain high performance.
Like the Quipper language for simulating quantum algorithms on a classical computer, if the program is done by turning the abstract objects after some calculations into a concrete circuit but in a much faster way and in a user-friendly programming interface as Julia does, it becomes very promising to use this language for prototyping new algorithms in the way how quantum objects work.  
3. Julia has a Just-In-Time (JIT) compiling mechanism to handle programs in many layers simultaneously.
This feature could be particularly useful for simulating and handling quantum error corrections.
In the case of simulating error correction codes, for instance, the compiler can have a layer dedicated to simulate random error generations while another layer can be used to simulate the action of the error correction code after detecting the error syndromes, it becomes explicit how the error correction code simulation can be done in program.
Unlike other programming languages, the two layers of compiling can naturally run in parallel and can dynamically adapt operations based on the on-going results emerging from one layer or the other, which makes it fast to perform computations.

My hope for building the library on this new platform with a fresh approach is that the techniques and codes might be useful for future software and control algorithms adaptable to real quantum systems.
The experience of developing software in Julia could also be a seed to migrate the techniques and algorithms to future practical quantum software developments in any new languages to be invented.

Another activity in the JuliaQuantum organization for me is to start a broad collaboration crossing disciplines to work on open-science projects and learn the skills and strategies to accelerate research efforts in a coherent way for future models of research cooperation.
I started a theoretical research discussion in the organization to find memory-efficient approaches to better prepare ourselves to study quantum theories when we have to tackle a large Hilbert space or many-body systems--either to use classical computers or with near-term quantum devices.
Since in the end, we might only be interested in querying the machine for a classical output by giving a classical input, it becomes possible to use some tricks to make it resources efficient in handling the information processing in the middle step on classical or quantum devices.
There are a few possible openings based on our current discussions, including symbolic computations based on representation theories, computing without calculating everything based on symmetry, using the tensor network representation or truncated N-body moments (like N-design approach) approaches to represent quantum states and operators, as well as using quantum devices as an oracle to solve quantum control and optimization problems (for example, the self-guided tomography method of obtaining the fidelity parameter directly from the quantum state collapse on a copy of the quantum device).
Of course, some of us have been using these approaches in our current theoretical researches (see, for example, arXiv:1710.05867).  
The research on this direction itself is more about generalization, studying the spatial computational complexity and accumulating programming libraries as an open-science project.

For example, in my research of simulating collective spin dynamics of thousands of atoms, I have been using the exchange symmetry and truncating the many-body Hilbert space to a few-body subspace using the N-body moment truncations.
By using the truncation trick, the equations required to fully describe the spin dynamics becomes sparse and may be efficiently calculated on a classical computer.
I will merge my code into the project library as an example of handling this particular many-body problem in case other researchers find it useful.
The equivalence between the N-moment approach and tensor network representation approach is an interesting topic for me to study towards resource-efficient way to studying quantum physics in a new perspective.
As the quantum system I am studying involves more levels of complexity and decreasing degrees of symmetries, I have to learn how to handle those quantum systems resource-efficiently.
Of course, the project could grow forever and involves people from every aspect of the quantum theory study.
This is the beauty of the project and the longevity of such collaborations.

As you can see, my funded research projects and the self-guided studies underpin and reinforce each other in a positive spiral towards the goal of the next generation of information processing.
I am happy to put most of my time on a main research project while investigate some time and efforts in my own time on new directions that are risky and in the embryo stage moving forward.
If you can offer me a job on the theoretical study of quantum software, I could continue the directions I started yet not have much time to work on in the past few years.

# Future directions
My interests of research fall into two categories: one on the study of particular physics systems; and other one is on the abstract level of formulating the theory and code implementations for physics-system-independent software development. Both aspects share the common foundations based on the physics and mathematics of quantum systems, and tie together towards applications to invent efficient and fast computing techniques to tackle hard problems in general.
I am happy to take job opportunities focusing more on one or the other aspects of my interests.
Below, I will only highlight some future research directions of the atom-nanophotonic interface research that I could immediately immerse in.

First, in our current studies, we have not included many-body correlations into our simulations other than up to two-body correlations.
As we can approach non-Gaussian states by using more atoms, putting atoms closer to the waveguide surface or adding photon circulating mechanisms, it should be the immediate next step to study the entanglement of many atoms in the QND measurement or light scattering process.
In the process of deriving the spin dynamics equations, I have developed an approach based on evolving the microscopic operators and I have partially finished the generalization to including many-body moment terms. Therefore, this research direction could be finished in a short term.

Second, in our current research on the atom-nanophotonic waveguide interface study, we focus on the dispersive regime where the multiple scattering of photons can be ignored.
But to complete the study for future quantum simulations on the platform, I think we need to include the multiple scattering process into our theory.
In fact, there have been research publications including those collective effects with applications to high-efficient quantum memories and so on (see, for instance, PRA 95, 033818; arXiv:1710.06312 and arXiv:1703.03382).
We have carefully studied some of the published papers after Dr. Ana Asenjo-Garcia's visit to us and have done some analysis for an on-going project with Prof. Perry Rice at the Miami University.
Beside what we have done with Perry, I think the theoretical study on the imperfections of optical lattice in 1D dimension could be generalized to look at their impact on matrix product states generations.
The theory needed might involve the derivation of the input-output relationships including the time-correlations of operators beyond the long-time limit that we have done.
Of course, some ideas on generating the matrix product states are discussed in the our spin squeezing paper based on the Faraday interaction to be submitted.
As naturally connected to the matrix product state description, we might want to use the tensor network approach alongside the N-moment approach to study this subject to verify the result and to study the equivalence of the two approaches.
This direction of study might give us some insights on the robustness of collective state generation and how the breaking of symmetry changes the properties of the many-body system.

Third, our study on the cooling and individual state preparation is achieved by applying a global operations on all atoms.
As the nano-technique enables labs to control atoms individually, it might be interesting to study the universal control theory involving both global and local controls on the atom-nanophotonic waveguide platform on top of our current framework of theory.
This direction could lead us to implement arbitrary collective state generation and maybe measurement-based quantum computing using the nanophotonic waveguides and atoms.

Certainly, I am open to other research directions in a relatively broad range.

Thank you for considering my job application!

Sincerely,
Xiaodong Qi
Center for Quantum Information and control
University of New Mexico
1919 Lomas Blvd NE, Albuquerque, NM 87131, USA
Email:  
Mobile:
