---
layout: default
title: Statement of research
---
# Overall statement of research interests
About 10 years ago, I decided to dedicate my life to improving the computing capacity of machines for simulating the physical world and designing advanced functional materials and devices.
I thought the computing power and our understanding on fundamental physics limited our ability to find energy efficient functional materials (room-temperature superconductor, super-light and hard materials, efficient luminescent materials for various needs and so on), cope the exponentially growth of information flows and solve other bottleneck problems for a sustainable development of our human society.
Since then, I have been focusing on light-matter interaction theory in the nonlinear and high-power regime, as well as the single-photon and few-atom level of quantum optics, which I think will lead to a better understanding of fundamental physics and could inspire the invitation of the next generation of computers fully benefited from the principles of quantum physics.
Over years, the concept of quantum computing and quantum simulations have been concrete and gradually materialized; I have also gotten a chance to get familiar myself with the computational tools for both classical high-performance computing as well as the quantum information processing from architecture to software.
Given all those basic knowledge and tool suits built up, I can see my pursue of understanding the fundamental theory of physics and the demand of innovating new computational tools are merging together on the base of quantum optics and quantum information science.
I have also honed a set of skills in the course of studying for me to conduct researches and prototype new concepts independently and efficiently to encourage myself to apply for new job positions right now.
In the following paragraphs, I will highlight some research activities not shown in my CV for a few projects I have been doing in the past a few years, demonstrate some of the skills and working style I hope to be useful for future research activities and illustrate some immediate future research directions for your consideration.  

# Quantum interface with atoms and nanophotonic waveguides
I joined the nanofiber quantum interface project under the encouragement of Prof. Ivan Deutsch.
We were initially collaborating with Prof. Poul Jessen's experimental group who were starting the nanofiber experimental setups.
In the experimental setup, a traveling blue-detuned laser and two counter-propagating laser beams are sent into the nanofiber with a sub-wavelength diameter which generate a trapping potential in the evanescent field outside near the surface of the nanofiber.
The atoms will be trapped in an optical lattice determined by the standing wave of the red-detuned light on two sides of the fiber as two periodical arrays, and the distance of atoms to the fiber surface is solely controlled by the power ratio between the blue and red lights.
I started the project in the summer of 2013 by writing codes to simulate the fiber modes and trapping potentials to facilitate the experimental works while learning the related basic atomic physics and quantum optics theory under the guidance of Ivan.
Then I applied the Green's function method which I learned at Queen's University for a multiple scattering problem with quantum dots and photonic crystal cavities to the nanofiber project for a general theory of atom-light interaction on the nanophotonic waveguide platform in the dispersive regime.
We are particularly interested in is regarding the atom-waveguide interface as a potential platform for quantum information processing, and apply our theory to design protocols for quantum measurement, state preparation and control scenarios which have been widely investigated on ensembles of atoms and optical lattices in free space.
The key of implementing these protocols relies on the strong coupling between atoms and light--particularly the guided modes of the waveguide.
One disadvantage of using nanofiber waveguide instead of optical cavities is the coupling to the guided modes is not that strong.
But this doesn't mean the waveguide we are considering is useless.
In fact, the relatively weak coupling also makes it easier to trap atoms on an optical lattice compared to the cavity or good-waveguide case; not only that, as Ivan pointed out, the local fields at every atom's position are identical if the waveguide is ideal, and there is at most only one atom on each trapping spot.
This makes all atoms as redundant copies to each other which is good for quantum information processing, and collectively they can generate a large collective state beyond Gaussian state limit (like Dicke states).
Based on this insight, our first research project is to study the collective quantum nondemolition (QND) measurement and QND-measurement induced spin squeezing effect towards preparing non-classical spin states.

First, we show that, with thousands of atoms, the total optical depth or the cooperativity which we defined for our QND measurement protocols is large enough and comparable to the free space case when billions of atoms are trapped in a magneto-optical trap.
In other words, depending on the trapping positions, the cooperativity per atom is 2~3 orders stronger than a usual free space cloud case; due to the homogeneous local field on each atoms, the photon emission from all atoms yield an ideal mode matching condition to ensure the total cooperativity of the ensemble of atoms add up linearly with respect to the number of atoms on the waveguide platform, where in the atom cloud case there is usually a compromise between the total number of atoms and the strongest per-atom coupling strength to make the effective atom number far less than the total number of atoms.
I derived the detailed stochastic master equations and calculated the spin squeezing dynamics based on the NSF proposal by Ivan and Poul using birefringence effect based polarization spectroscopy method and the clock states of alkali atoms.
The birefringence effect is generated by taking the advantage of the anisotropic property of the degenerate two orthogonal fiber modes (corresponding to the signal and local oscillator of the quantum measurement configuration) and the symmetry of the internal state of the atoms; we found a set of magic frequencies to cancel the quantum noise sources other than the one generating the birefringence effect.
We discovered that the choice of quantization axis is a bit tricky to find due to the complex fiber modes which are elliptical and distort the decoherence channels in a way different than the measurement backactions.
The optimal choice of quantization axis is numerically found by maximizing the ratio between the strength of meassurement which enhances the squeezing and the rate of decoherence which limits the peak squeezing.
In the end, 4.7dB of squeezing can be attainable with 2500 atoms trapped at realistic distance to the fiber surface.
It becomes immediately promising to
This discovery is quite encouraging to us, since to reach the same level of squeezing in free space, it requires orders of magnitude more atoms.

Next, Poul was asking if we can find a protocol for QND measurement and spin squeezing using the Faraday effect and the spin coherent states commonly used in free space case.
So, I took over the task and start thinking about the key to define an optimal measurement geometry for the Faraday protocol and generalize the physics idea we have developed in studying the birefringence protocol.
At that time, our friends from Sandia joined our research who are interested in fabricate other nanophotonic waveguides for stronger atom-light coupling other than the nanofiber we have studied.
After some serious thinking and reflection, I realized and discussed a simple idea of using the ratio between the measurement strength and the decoherent rate or the cooperativity per atom to find the best geometry for quantum measurement based squeezing protocols.
The goal becomes to find the proper orientation of the polarization of the input probe light and the position of the trapped atoms nearby the waveguide surface so that the ratio between the good mechanism part (the measurement strength) and the bad mechanism part (the decoherence rate) saturates at the maximum value.
As a result, not only this simple concept of cooperativity makes the task easy to complete, but also it gets us surprising results which we wouldn't expect to predict out of intuition.
We predict ~7dB of squeezing for the nanofiber and ~13dB for a simple waveguide with a square cross section may be generated using realistic parameters with 2500 atoms.
The most surprising part basically tells us that one don't need to put atoms at the strongest field position in order to generate a strong QND measurement based spin squeezing effect, which is counter-intuitive for us.
The key to understand this conclusion is to realize that the strongest field spot yield the largest decoherence which destroys spin correlations and spin squeezing.
The optimal geometry of setup corresponds to the local field of the probe light at the atom position is the weakest while the virtual orthogonal mode at the atom position is the strongest.
It becomes immediately clear that it is the anisotropic orthogonal yet degenerate modes of the waveguides make it possible to maximize the measurement strength of the signal while minimize the decoherence rate of the local oscillator simultaneously for the optimal geometry of quantum measurement.
In comparison, the modes for signal and local oscillators are correlated to each other in the free space case and one couldn't use such a strategy to further enhance the atom-light coupling.
This result makes the atom-nanophotonic waveguide platform more promising to implement other quantum information protocols.

What I am still finalizing at this moment is to include more realistic details of experimental limitations and the collective photon scattering effect on the QND measurement and spin squeezing protocols, as well as a protocol to combine the cooling and universal state preparation process in one.
You can find some of the details in my CV.
As you can imagine, I am growing the research tree out of some in-depth insights and concepts.
For example, the concept of cooperativity can also be applied to the cooling process which can be treated as a competition between the good and bad processes again.
It looks promising to me to find interesting results once I understand the essence of the physics system, although the modes of the waveguides are usually very complicated compared to the free propagating modes.
With the studies on the quantum measurement, collective and individual atomic state preparation, as well as the cooling protocols and applications of collective scatterings, I would stage my current study for my PhD degree and would like to move onto the next stage to explore other corners of the quantum world.

In the process of studying the subject, we have also developed some skills to do research independently.
For example, I always find more than one method to derive or calculate a quantity.
This enables me to verify my result without relying on a third party, to understand the problem deeply and in various perspectives, and also very often to lead me to a brand new direction of future research.  
In the process of checking the Green's function tensor calculation, I have used the contour integral approach, eigenmode decomposition approach, FDTD numerical method (in the time domain) and the BEM numerical approach (in the frequency domain).
The eigenmode decomposition approach is very reliable for calculating the guided mode contribution to the Green's function tensor, while the BEM numerical approach is very reliable and fast to handle the radiation contribution part when the radiative modes of a waveguide are not easy to calculate.
I have combined these method to calculate the Purcell effect for the square waveguide quantum interface and benchmarked the error range as the eigenmodes of the dielectric waveguide don't have analytical solution.
Another example is my derivation of the spin dynamic equations, in which I have developed two approaches:
one is based on the collective operator approach which have been used in the previous spin squeezing studies in our group; the other one is fully based on the local quantum operators on each atoms, which not only avoids the approximation assumptions one has to make in using the collective operator approach, but also leads to the possibility of calculating the many-body correlations beyond the Gaussian state limit which we would like to reach eventually.

# Quantum software development
Quantum information processing will be a complicated system which is better to

# Future directions
Time-correlations, randomness and robustness.

Universal control.
