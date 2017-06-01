---
layout: post
title: My naive theory and some trial practices on systematic research management
subtitle: From a simple idea to continuous growth
time: 2017-05-21 02:54:00 -0700
tags:
  - open-science
  - systematic-science
categories: work-efficiency
---
***Work In Progress! This post is part of the [2017 CQuIC computing summer workshop tutorial materials](https://cquic.github.io/summer17-computing-workshop/).***

# A lifecycle model of productivity
As often observed, when we work on a subject, we usually experience the following productivity curve over time as plotted in the figure below.
<center>
{% include image.html img="/en/assets/img/productcurve.png" width="500px" title="A lifecycle curve of productivity over time." caption="Fig 1. Lifecycle curve of productivity level when working on a task over time." %}
</center>
The curve is the lifecycle on how working on the subject yields valuable outputs, which typically includes a slow and low-efficient starting phase, a rapid climbing phase, a flat peaking phase and a slow decaying phase.
In fact, this not only can be seen in task productivity but also occurs on almost everything in our daily lives, like people's activity level over ages, a fashion or a product profits and so on.

Now, imagine you have a bunch of subjects to work on over time and each of them has a similar lifecycle curve.
You can arrange when you start to work on your subjects, and your productivity working on the next subject might grow a little bit over time.

We consider two scenarios.
First, as shown in the figure on the left below, we continue working on new subjects before the previous subject's productivity level decays.
<center><table><tr><td><center>
{% include image.html img="/en/assets/img/productcurveaccum.png" width="400px" title="The way to have a continuous growth of productivity level over time. Dashed lines are the individual productivity lifecycle curves. Solid line is the sum of individual curves." caption="(A) a continuous growth case" %}</center>
</td><td><center>{% include image.html img="/en/assets/img/productcurveaccumless.png" width="400px" title="Dippings occur when task interval increases." caption="(B) little-overlap case" %}</center>
</td></tr></table>
*Fig 2. A continuous growth (A) and oscillations (B) of productivity levels over time. Dashed lines are the individual productivity lifecycle curves. Solid line is the sum of individual curves.*<br />
</center><br>

Obviously, the overall productivity curve experiences a non-decreasing growth over time as individual tasks' productivity curves overlap.

Next, we consider increasing the intervals between tasks so that the overlap between tasks is small.
We could find the productivity curve illustrated in Fig 2 (B) above.

Here are some conclusions:

- The overall productivity level can be maximized if different task cycles overlap.
- The condition to have non-decreasing overall productivity growth is that the joining cycle's productivity curve starts increasing steeper than the decaying slop of the cycle started before it. In other words, it would be ideal to start a new task cycle a little earlier before the previous task cycle peaks.
- As you can imagine, the averaged long-term productivity curve will follow the growth rate of the peak productivities of the sequential task cycles in a unit period which is determined by the improvements of using more efficient tools, mastering common skills and the ability of bundling many tasks together. Therefore, to keep up the positive growth of productivity curve in the long run will require us to keep learning from the past and mastering more tools and skills, as well as to automate and bunch more and more tasks at once.

Although I am using a simple skewed Gaussian distribution to represent the typical productivity cycle curves, it should be easily adapted to real cases and the conclusions above still hold.


# Create a sustainable system for continuous growth and convergence
What does this implies to our research projects?

- If you feel you are going to reach the climax of your current research project, it could also be a good time to wrap up and start thinking of your next project.
- Keep reading and discussing new ideas which has some overlap with your current research but not exactly. This might help you to open up a new future.
- Take some time to learn your tools and automate some common tasks when you get a chance which might pave the way for your to be more productive.
- Think and reflect on your past experiences. You may "walk" slowly, but try not "walk" backwards.
- Study some fundamental theories from time to time which you think can be used in your future studies (like the summer studies we have been doing).
- Have a big picture and roadmap in your mind and make things coherent. This could help you achive long-term goals step by step.

# Generalize the time-axis to components of achievements
Obviously, you can easily generalize the ***task cycles*** to things related to collaborators, knowledge and tools.
In terms of improving productivity and efficiency, similar conclusions could hold.
The key is to create some *overlaps* and *continuous growth*.

What does this model implies for using version control tools and programming?

- Work on different branches and features at the same time. After finishing up testing each of them, merge them together to the main stream.
- Divide a big program into smaller modules and write small functions which can be relatively easily tested and combined with different other modules to achieve various goals.

What is said about collaborations?

- Have some overlaps of interests yet still some variances of view points with collaborators. This will help the healthy growth of collaboration relationships and productivity. Same is true for other relationships.
- Starting from one easy collaborations before jumping into more complicated scenarios. Give some priority for collaborative works based on how ready they are going to fruit.
- Don't just focus on one thing, but also have some branching-outs and divergent discussions with your collaborators for possible future works.
- When you get a desk in an office, use the opportunity to talk to people in the same office--whether related to your research or not, things will grow.
- In a large scale, how the ecosystem grows will eventually determine how fast and well the society evolves.


# An systematic open-science framework
As a community, knowledge can be shared and discoveries can be achieved together if less barriers are there in parallel with having some focused common goals.
Freedom can be maximized by fundamentally increase the energy level as well as decreasing the entropy level.
Optimization should be global rather than local.
Without positive interactions, things can hardly be done as a whole.
Yet, a well organized divisions of workloads and the ease of open-access to common tools and knowledge will help the community form a sustainable ecosystem for long-term development of discoveries, humanity and civilizations.

In the sense of organizing collaborations, version control technique is a science to be discover more in-depth than ever before and a practice to be sharpened even better in our real life.

# Some helpful version control publications and resources

- [Good Enough Practices in Scientific Computing](https://arxiv.org/abs/1609.00037).
- [Open science framework](http://osf.io/).
- [Github and Zenodo integration for citable work](https://guides.github.com/activities/citable-code/).
- [Elsevier and Mendeley Data repositories](https://www.journals.elsevier.com/data-in-brief/policies-and-guidelines/public-repositories-to-store-and-find-data).
