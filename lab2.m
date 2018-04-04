%Exercise 2.1
C = [2,1,5; 1,0,6; -6,2,4]
d = [-1;2;3]
x = C\d
C*x-d
disp('I get something extremely close to 0.');

%Exercise 2.2
C = [-10,4;15,-6];
d = [0;0];
x = C\d

disp('there is no x1 x2 that satisfies this system of equations, thus there is no such x.')

%Exercise 2.3
C = [1,-3,2;-2,6,-4;4,-12,8]
d = [0;0;0]

rref([C d])
disp('two free variable are required');

%Exercise 2.4
disp('because all the resources are consumed because of it is a closed exchange model.');

%Exercise 2.5
disp('on the left side is all the consumptions, and on the right is the income of each individual. ALl the individual survives when their consumption equals their incomes.'); 

%Exercise 2.6
C = [0.25 0.15 0.25 0.18 0.20;
0.15 0.28 0.18 0.17 0.05;
0.22 0.19 0.22 0.22 0.10;
0.20 0.15 0.20 0.28 0.15;
0.18 0.23 0.15 0.15 0.50]
I = eye(5);

income = rref([C-I [0;0;0;0;0]])

disp('Farmer, Coal Miner, Tailor, Carpenter');
disp('Since Bob is free, we do not know.');

%Exercise 2.7
L = [0,1/3,1/3,1/2;1/2,0,1/3,0;
    1/2,1/3,0,1/2;0,1/3,1/3,0]

x = rref([L-eye(4) [0;0;0;0]])

disp('Mary has the most rank, Mary, Jane, Charlie and Fred.');