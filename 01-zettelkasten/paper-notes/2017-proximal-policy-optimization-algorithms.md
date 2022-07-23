---
title: Proximal Policy Optimization Algorithms
authors:
- J. Schulman
- F. Wolski
- Prafulla Dhariwal
- Alec Radford
- Oleg Klimov
fieldsOfStudy:
- Computer Science
meta_key: 2017-proximal-policy-optimization-algorithms
numCitedBy: 6094
reading_status: TBD
ref_count: 15
tags:
- gen-from-ref
- other-default
- paper
urls:
- https://www.semanticscholar.org/paper/Proximal-Policy-Optimization-Algorithms-Schulman-Wolski/dce6f9d4017b1785979e7520fd0834ef8cf02f4b?sort=total-citations
venue: ArXiv
year: 2017
---

# Proximal Policy Optimization Algorithms

## Abstract

We propose a new family of policy gradient methods for reinforcement learning, which alternate between sampling data through interaction with the environment, and optimizing a "surrogate" objective function using stochastic gradient ascent. Whereas standard policy gradient methods perform one gradient update per data sample, we propose a novel objective function that enables multiple epochs of minibatch updates. The new methods, which we call proximal policy optimization (PPO), have some of the benefits of trust region policy optimization (TRPO), but they are much simpler to implement, more general, and have better sample complexity (empirically). Our experiments test PPO on a collection of benchmark tasks, including simulated robotic locomotion and Atari game playing, and we show that PPO outperforms other online policy gradient methods, and overall strikes a favorable balance between sample complexity, simplicity, and wall-time.

## Paper References

1. Trust Region Policy Optimization
2. High-Dimensional Continuous Control Using Generalized Advantage Estimation
3. Asynchronous Methods for Deep Reinforcement Learning
4. Emergence of Locomotion Behaviours in Rich Environments
5. Sample Efficient Actor-Critic with Experience Replay
6. Benchmarking Deep Reinforcement Learning for Continuous Control
7. The Arcade Learning Environment - An Evaluation Platform for General Agents (Extended Abstract)
8. [Simple statistical gradient-following algorithms for connectionist reinforcement learning](2004-simple-statistical-gradient-following-algorithms-for-connectionist-reinforcement-learning.md)
9. [Adam - A Method for Stochastic Optimization](2015-adam-a-method-for-stochastic-optimization.md)
10. [Human-level control through deep reinforcement learning](2015-human-level-control-through-deep-reinforcement-learning.md)
11. MuJoCo - A physics engine for model-based control
12. Learning Tetris Using the Noisy Cross-Entropy Method
13. OpenAI Gym
14. Approximately Optimal Approximate Reinforcement Learning
