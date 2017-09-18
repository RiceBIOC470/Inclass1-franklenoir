% AW: Looks good. 0.99/1 see a couple of comments below.  
%Walter Frank Lenoir InClass1

% InClass1: some simple excerises to get started with MATLAB. Please complete by
% the second class. Answer questions in comments and return assignment via
% github
%% numbers vs strings
% Walter Frank Lenoir
% Run the following two sections. explain why one gives a sensible result and the other doesn't
% Can you explain the value of the variable b? 

x = 1; 
y = x + x;
%
a = '1';
b = a+a;

% x is set as an integer, where as a is set as a string or rather a char.
% When added together, b is reading char + char instead of int + int. 

%% concatenation
% Walter Frank Lenoir
% what is being done by the following statements? what is the difference between x2 and a2? 
% what is the difference between x2 and x2b (hint run the size command on
% these arrays and explain the results). 

x2 = [x x];

a2 = [a a];

x2b = [x; x];


%x2 is creating an array of two numbers (1x2 double). %a2 is concatenating
%two strings (a twice) together. x2 and x2b are two cell arrays with the
%same contents, however x2 has one row and two columns, and x2b has two
%rows and one column.

%AW: This is basically correct, but be carefully with terminology - these aren't cell arrays but regular arrays. 
% cell arrays would use {} curly brackets. -0.01.

%% = vs ==, isequal
% Walter Frank Lenoir
% explain why the identical commands with the == commands give different answers 
% hint: check the values of a and b as you execute the following statements
% if necessary. 
a = 1; b =2; 

a == b;
a = b;
a = b;


%The first logical is saying a == b is false because a = 1, and b = 2
%(which is true). The second logical is saying a == b is true because in
%the statement prior, a is set to equal b. 

%explain the results of the following operations:
a = [1, 2, 4];
b = [0,2,7];
a == b;


% a and b are two seperate cell arrays. a == b checks to see if a and b are
% identical across in each corresponding cell. a == b returns a logical
% array of [0,1,0] (1 == 0, 2 == 2, 4 == 7).

%explain why this gives an error:

b = [2, 3];
a == b;


%a is still set to [1, 2, 4], and b is [2, 3]. Because the arrays have
%differing dimensions they can not be logically compared. 

%explain why this does not give an error
b = 2;
a == b;


% b is now set to an int. b is compared to each cell in the array, and can
% return a logical array of [0,1,0]. 

%%  : operator 
% Walter Frank Lenoir

%(hint for the following type "help colon" at the command line to see
% how the ":" operator works
% the following makes an array of the numbers from one to ten: 
oneToTen = 1:10;

%here are two ways to make the array of numbers from 1 to twenty
%explain how the second line works.
1:20;
[oneToTen, oneToTen+10];

%oneToTen will create an array of numbers from 1 to 10. oneToTen+10 will
%create a second array of numbers of 1 to 10 + 10, or 11:20. The order of
%the cell array allows the array to be 1:20.

% do each of the following in two different ways, by manipulating the array
% oneToTen and by defining it concisely from scratch

% 1. even numbers from two to twenty
2:2:20
oneToTen * 2
% 2. odd numbers from one to nineteen
1:2:20
(oneToTen * 2) - 1
% 3. Even numbers in reverse order from twenty to two (hint lookup the
% matlab function fliplr)
fliplr(2:2:20)
fliplr(oneToTen)*2;
% explain why the fliplr funciton no longer works and find a different
% matlab function that performs an equivalent function on the same array
oneToTen = oneToTen';
fliplr(oneToTen)

% The fliplr function only flips the columns. By adding the apostrophe to 
% oneToTen, the columns are inverted and turned into rows. 

flip(oneToTen)
%AW: This works. see also flipud. 

% This will reverse the order of the rows. 

%% matrices, . operator
% Walter Frank Lenoir

%look at the matrix this defines. Note the other functions zeros, eye, and
%rand which can define matrices. 

m1 = ones(2);
m2 = 2*ones(2);

%explain the output of these two commands:
m1*m2
m1.*m2

%Without the period, normal matrix multiplication is being conducted. With
%the period, each cell in m1 is being multiplied against each corresponding cell
%in m2.

%explain this command:
m2./m1

%Each cell in m2 is being divided against each corresponding cell in m1. 

%extra credit: explain why this command gives a warning:
m2/m1

%m2/m1 requires determinant, which is 0. Therefore the inverse of matrix doesn't exist. 

%% access particular elements and groups of elements
% Walter Frank Lenoir

%define a random matrix

rand_nums = rand(5);

%explain what is being done in each of the following lines

rand_nums(2,3)
%Cell value for column 3, row 2 

rand_nums(2:4,3)
%Cell values for column 3, rows 2-4

rand_nums(1:2,3:4)
%Cell values for column 3 - 4, rows 1-2

rand_nums(:,2)
%Cell values for column 2

rand_nums(1,:)
%Cell values for row 1

rand_nums(:,[1 3 5])
%Cell values for column 1, 3, 5

%AW: again not correct to call these cells, but otherwise ok. 
