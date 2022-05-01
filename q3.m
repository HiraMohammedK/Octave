A=input("Matrix: ")
[m,n]=size(A);
U=A;
M1=eye(n);
L1=eye(n);
for i=1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        M1(j,i)=k;
        U(j,:)=U(j,:)-k*U(i,:);
    end
    %L1=M1*L1;
    L1=L1*M1;
    M1=eye(3);
end
D=eye(3);
for i=1:n
    k=U(i,i);
    M1(i,i)=k;
    U(i,:)=U(i,:)/k;
    %D=M1*D;
    D=D*M1;
    M1=eye(3);
end
disp("LDU decomposition")
disp(L1*D*U);
