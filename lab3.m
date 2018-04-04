%Xueguang Lu, 60703650

%Exercise 3.1
D1 = [0,0;0,0]
D2 = [1,0;0,1]

%Exercise 3.2
A = [1,2,0;2,1,2;0,2,1];
B = [3,0,3;1,5,1;1,1,3];
x = [1;2;3];

C = (2*A^2*B+3*A')^2

Cx = C*x

%Excercise 3.3


%Excercise 3.4
%a
A = [0, 1, 0, 0, 0, 0;
1, 0, 1, 1, 1, 1;
0, 1, 0, 1, 1, 0;
1, 1, 1, 0, 1, 0;
0, 0, 1, 1, 0, 1;
0, 1, 0, 1, 1, 0]

A3 = A^4

disp('there are 10 possible ways from San Diego to Moscow');

%b
A4 = A^5;
A2 = A^3;
A1 = A^2;
possibleWaysCount = A4(2:2,3:3) + A3(2:2,3:3) + A2(2:2,3:3)+ A(2:2,3:3)
disp('there are 140 possible ways from San Francisco to Chicago with at most 4 stopovers');

%3.5
%a
M = [1,1;100,100];
invM = inv(M)

%b
A = [4, 9; 5, 11];
B = inv(A)
A*B
B*A

%c
x = [5;10]
y = A*x

%d
disp('B*y should be x, because B*y = B*A*x = I*x = x.');

%e
By = B*y

%Excercise 3.6
P = [0.8100 0.0800 0.1600 0.1000;
0.0900 0.8400 0.0500 0.0800;
0.0600 0.0400 0.7400 0.0400;
0.0400 0.0400 0.0500 0.7800]
x0 = [48.56; 51.01; 0.0013; 0.0030]

%a
x3 = P^3*x0
x7 = P^7*x0
x10 = P^10*x0

%b
x30 = P^30*x0
x60 = P^60*x0
x100 = P^100*x0

disp('as k gets big, the difference becomes really small.');




