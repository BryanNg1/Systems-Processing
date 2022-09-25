function gradeaverage = q2(grades,grademax,column)
%input parameters to calculate average, all as matrices
gradeaverage=sum(grades([1:20],column),2)/sum(grademax(column),2)*100;
end
%takes the sum of entities in column and creates new column vector
%divides the new column vector by the sum of max 
%multiplies by 100 to get percentage

%Bryan Ng 400181785
%Matthew Badal-Badalian 400187878