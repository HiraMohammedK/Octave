A=input("Matrix: ");
B=A;
[m,n]=size(A);
I=eye(n);
A=[A I];
U=A;
for i =1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-k*U(i,:);
    end
end
for i=1:n-1
    for j=i+1:n
        k=U(i,j)/U(j,j);
        U(i,:)=U(i,:)-k*U(j,:);
    end
end
for i=1:n
    k=U(i,i);
    U(i,:)=U(i,:)/k;
end
[M,N]=size(U);
inverseA=[U(:,4) U(:,5) U(:,6
disp("Inverse: ")
disp(inverseA)
%disp(B*invA)
