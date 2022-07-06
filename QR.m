disp('Program to perform QR decomposition');
disp(' ');

A=input('Enter the vectors as the columns of a matrix : ');
disp(' ');

disp('A = ');
disp(A);

Q=A;
[m,n]=size(A);
for i=1:n
    sum=zeros(m,1);
    for j=1:i-1
        sum(:,1)=sum(:,1) + (((Q(:,j)')*Q(:,i))/((Q(:,j)')*Q(:,j)))*Q(:,j);
    end
    Q(:,i)=Q(:,i)-sum(:,1);
end

for k=1:n
    Q(:,k)=Q(:,k)/norm(Q(:,k));
end
R=zeros(m,n);
for i=1:m
    for j=1:n
        R(i,j)=(A(:,j)')*Q(:,i);
    end
end

disp('Q = ');
disp(round(Q));

disp('R = ');
disp(round(R));

disp('Q*R = ')
disp(Q*R);



