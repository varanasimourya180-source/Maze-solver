# Maze-solver

# Logic-Based Autonomous Maze Solver (Prolog) 

A sophisticated pathfinding simulation built in Prolog that uses logical deduction and depth-first search to navigate grid-based environments.

## Overview

This repository contains a **Symbolic AI** pathfinding environment for grid navigation. Unlike traditional heuristic-based algorithms (like A* or Dijkstra) written in imperative languages, this project uses **Declarative Logic** to process spatial data. 

The "agent" executes movements based on a formal set of boundary laws and spatial rules, making every step of the route 100% explainable, transparent, and mathematically sound.

##  Key Features

* **Rule-Based Pathfinding:** Encodes grid constraints, available paths, and movement capabilities (Up, Down, Left, Right) into a logical expert system.
* **Deterministic Obstacle Avoidance:** Uses strict coordinate validation (`valid/2`) to ensure the agent only traverses declared "free" cells, natively treating missing facts as walls.
* **Infinite Loop Prevention:** Utilizes Prolog's negation operator (`\+ member/2`) to maintain a strict memory of visited coordinates, preventing the agent from walking in circles.
* **Recursive Backtracking:** Mimics methodical human problem-solving. If the agent hits a dead end, Prolog's native backtracking automatically reverses course to explore the next available logic branch.
* **Explainable Route Generation:** Outputs the exact sequence of coordinate tuples the agent took to reach the objective.

##  How It Works

The grid environment is defined by a static database of facts, while the agent's behavior is governed by recursive inference rules.

1. **Environment:** The system reads the grid dimensions, walkable cells (`free/2`), and the target destination (`goal/2`).
2. **Reasoning:** The Prolog engine queries the `solve/1` predicate, initiating the `path/4` recursive search.
3. **Exploration:** The engine searches the knowledge base, generating valid orthogonal moves and validating them against the grid boundaries.
4. **Action:** The simulation builds a historical list of visited nodes and, upon reaching the goal, outputs the complete contiguous path from start to finish.

##  Technologies

* **Language:** Prolog (SWI-Prolog / GNU Prolog compatible)
* **Paradigm:** Declarative Logic Programming / Depth-First Search (DFS)
* **Interface:** Console-driven output / Web Compiler integration
* **State Management:** Static knowledge base mapping & List processing

##  Installation & Running

### 1. Prerequisites (Local Execution)
Install SWI-Prolog based on your operating system:

* **Windows:** Download from the [Official SWI-Prolog Website](https://www.swi-prolog.org/Download.html).
* **Mac (using Homebrew):** ```bash
  brew install swi-prolog# Logic-Based Autonomous Maze Solver (Prolog) 

A sophisticated pathfinding simulation built in Prolog that uses logical deduction and depth-first search to navigate grid-based environments.





