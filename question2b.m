maxgrades=csvread('course_grades_2020.csv',0,1,[0,1,0,11]);
%this line reads the max grades starting from from row 0, column 1
%reads first row indices from column 1 to 11 (B to L on excel)
allmarks=csvread('course_grades_2020.csv',1,1,[1,1,20,11]);
%this variable holds a matrix of all the grades excluding max grades
%reads from row 1 column 1 from row 1 to 20 and column 1 to 11

LabMarksAverage = question2a(allmarks,maxgrades,[1:4])
%calls the average function from question2a
%takes average of columns 1 to 4 (which on excel is the lab section)

ovLabMark = sum(LabMarksAverage,1)/20 %takes mean of the average Lab Marks
%adds column vector together and divides by 20

ExamAvg = question2a(allmarks,maxgrades,[6:11])
%same logic as labmarks average but for columns 6 to 11 (G to L)

ovExamAvg = sum(ExamAvg,1)/20 %takes mean of average exam
%adds column vector together of ExamAvg and divides by 20

%Bryan Ng 400181785
%Matthew Badal-Badalian 400187878