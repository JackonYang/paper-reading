---
title: Q-learning
authors:
- C. Watkins
- P. Dayan
fieldsOfStudy:
- Computer Science
meta_key: 2004-q-learning
numCitedBy: 7263
reading_status: TBD
ref_count: 2
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Q-learning-Watkins-Dayan/03b7e51c52084ac1db5118342a00b5fbcfc587aa?sort=total-citations
venue: Machine Learning
year: 2004
---

[semanticscholar url](https://www.semanticscholar.org/paper/Q-learning-Watkins-Dayan/03b7e51c52084ac1db5118342a00b5fbcfc587aa?sort=total-citations)

# Q-learning

## Abstract

Q-learning (Watkins, 1989) is a simple way for agents to learn how to act optimally in controlled Markovian domains. It amounts to an incremental method for dynamic programming which imposes limited computational demands. It works by successively improving its evaluations of the quality of particular actions at particular states.This paper presents and proves in detail a convergence theorem forQ-learning based on that outlined in Watkins (1989). We show thatQ-learning converges to the optimum action-values with probability 1 so long as all actions are repeatedly sampled in all states and the action-values are represented discretely. We also sketch extensions to the cases of non-discounted, but absorbing, Markov environments, and where manyQ values can be changed each iteration, rather than just one.

## Paper References

1. Self-improving reactive agents based on reinforcement learning, planning and teaching
2. Learning control of finite Markov chains with an explicit trade-off between estimation and control
