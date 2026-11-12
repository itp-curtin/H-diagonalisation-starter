# H diagonalisation starter

This repo is provides students with an exercise to get their start with Fortran, using
the supercomputer, and solving the hydrogen diagonalisation problem.

## Table of Contents
- [Setup](#setup)
- [Exercises](#exercises)

## Setup

You will require a Linux/Unix-like command-line interface. Mac and Linux users can use their built-in Terminal applications.
Windows users can download MobaXterm from https://mobaxterm.mobatek.net.

If you have not used a command-line environment before, work through this tutorial first:
https://ubuntu.com/tutorials/command-line-for-beginners.

You should have had an account created for you on the Setonix supercomputer. 
Enter this commend to log in:
```bash
ssh <username>@setonix.pawsey.org.au
```

Your area on Setonix for storing code is `/software/projects/d35/<username>`. 
You can easily navigate here by entering 
```bash
cd $MYSOFTWARE
```

Clone this repository to your software area by entering
```bash
git clone git@github.com:itp-curtin/H-diagonalisation-starter.git
```
In the directory you have just cloned, there is a hidden file `.vimrc` which contains a minimal
configuration for the popular text editor `vim`. Copy it to your home area:
```bash
cd H-diagonalisation-starter
cp .vimrc ~
```

You will also see in this directory a file named `Makefile`. It is set up for you so you can enter the command
```bash
make
```
and it will compile the code you are about to write and create the executable `build/main`.

There is a directory `src` for the source code. There is already a file `main.f90` for you to write your code in, and another file
`rsg.f` which contains the diagonalisation routine you will make use of. The `Makefile` knows about both of these files.

To write your code, open the `main.f90` file with
```bash
vim src/main.f90
```
Then once your code is finished, build it with
```bash
make
```
To run your code, enter
```bash
./build/main
```


## Exercises
1. Read through the document `diagonalisation.pdf` to familiarise yourself with the problem. Discuss with your fellow students and ask for help from staff when anything is unclear.
2. Write a program to solve the problem:
    - First declare any variables you think you might need, e.g. integers for loop indices and 2D arrays to store the Hamiltonian and overlap matrices. Use double precision (real*8) for all real numbers.
    - Read input from a file `data.in` to specify the basis size, exponential falloff parameter (alpha), and orbital angular momentum (l).
    - Allocate memory and use `do` loops to populate the matrices.
    - Read the comments at the top of `rsg.f` to see what input/output is required for the `rsg` subroutine. Call the subroutine, and print out the energies you obtain
3. Compare the energies you get to the analytical energies (in atomic units):
```math
E_n = -\frac{0.5}{(n+\ell)^2}.
```
4. Play around with different basis sizes and see what happens to your results.
  








