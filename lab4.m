%Exercise 4.1
A = [8,11,2,8;0,-7,2,1;-3,-7,2,1;1,1,2,4];
B = [1,-2,0,5;0,7,1,5;0,4,4,0;0,0,0,2];

disp('Exercise 4.1.a');
e1 = det(A+B)
a2 = det(A-B)
a3 = det(A*B)
a4 = det(inv(A))
a5 = det(B')

disp('Exercise 4.1.b');
disp('det(A+B) equals 0, hence A+B is not invertible');

disp('Exercise 4.1.c');
disp('determinants of AB, inverse of A and transpose of B can be recovered,');
disp('because: det(AB) = det(A)*det(B); det(inv(A)) = 1/det(A); det(trans(B)) = det(B)');


%Excercise 4.2
disp('Exercise 4.2');
N = [0.01,0.003,0;0.1,0.01,0;0,0,005];
N100 = det(N^100)
disp('If calculate by hand, N^100 seems very very close to 0,');
disp('and det(0) = 0');

%Excercise 4.3
disp('Exercise 4.3');
b = eig(B);
[P,D] = eig(B);
x = P(:,2);
zero = B*x - 8*x;
V = [9,-4,-2,0;-56,32,-28,44;-14,-14,6,-14;42,-33,21,-45]
v = eig(V)
disp('V is inversible because 0 is not an eigenvalue.');
[P,D] = eig(V);
d = inv(P)*V*P
disp('I find that d is diagonal');

%Excercise 4.4
disp('Exercise 4.4');
F = [0,1;1,1];
[P,D] = eig(F);
f10 = F^10
PDP = P*D^10*inv(P)
f =[1;1];
F*f
F^2*f
F^3*f
F^4*f
F^5*f
disp('The pattern appears to have a continuous sequence');
F30 = F^29*f;
Fibonacci30 = F30(1,:)


%Review Excercise
disp('Exercise 4.5');
P = [0.8100 0.0800 0.1600 0.1000;
0.0900 0.8400 0.0500 0.0800;
0.0600 0.0400 0.7400 0.0400;
0.0400 0.0400 0.0500 0.7800];

x0 = [48.56; 51.01; 0.0013; 0.0030];

x3 = P^3*x0
x7 = P^7*x0
x30 = P^30*x0
x60 = P^60*x0
x100 = P^100*x0
disp('when k gets big, the party distrubution difference becomes small');

%Excercise 4.5
[Q,D] = eig(P)
L = [1,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0];
Pinf = Q*L*inv(Q)
Pinfx0 = Pinf*x0
disp('P100x0 and Pinfx0 have approximately same value.');

y = [10;20;30;40];
Pinfy = Pinf*y
disp('since Pinf has four identical columns, y has little long term influence.');


%Excercise 4.6
L = [0,0,0,0,1,0,0,0;
0,0,0,0,0,0,0,1;
0,1/2,0,0,0,0,1,0;
1/2,0,1/2,0,0,0,0,0;
0,0,1/2,0,0,1,0,0;
1/2,0,0,0,0,0,0,0;
0,1/2,0,0,0,0,0,0;
0,0,0,1,0,0,0,0;];

e0 = [1;1;1;1;1;1;1;1];
e10 = L^10*e0
e30 = L^30*e0
e31 = L^31*e0
disp('n=30 is big enough to make to make change less than 1% when increment by 1.');
