maxgrades=csvread('course_grades_2020.csv',0,1,[0,1,0,11]);
%this line reads the max grades starting from from row 0, column 1
%reads first row indices from column 1 to 11 (B to L on excel)
allmarks=csvread('course_grades_2020.csv',1,1,[1,1,20,11]);
%this variable holds a matrix of all the grades excluding max grades
%reads from row 1 column 1 from row 1 to 20 and column 1 to 11

labmark = 0.3*question2a(allmarks,maxgrades,[1:4]);
midtermmark = 0.3*question2a(allmarks,maxgrades,[5]);
exammark = 0.4*question2a(allmarks,maxgrades,[6:11]);
%each one calculates each section's grades
%multiplies the grades by the weight of total grade

final = labmark + midtermmark + exammark;
final = sort(final,'descend');
%final marks are calculated by adding all the other marks
%sorted from high to low

%plot
xrange = [1:20];
stem(xrange,final, "filled");
xlabel('student');
ylabel('final grade');
title('Q2C Bryan Ng 400181785 | Matthew Badal Badalian 400187878');

%Bryan Ng 400181785
%Matthew Badal-Badalian 400187878
