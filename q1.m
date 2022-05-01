eqFunction=input("Enter the system of linear equations");
constant = input("Enter the right hand side");
[m,n] = size(eqFunction);
eqFunction = [eqFunction constant'];
U = eqFunction;
for i=1:n-1
    for j=i+1:n
        k=U(j,i)/U(i,i);
        U(j,:)=U(j,:)-k*U(i,:);
    end
end

[M,N]=size(U);
b = U(:,N);
x=zeros([N - 1, 1]);
for i=M:-1:1
    T=0;
    for j=M:-1:i+1
        T=T+x(j)*U(i,j);
    end
    x(i,1) = (b(i,1)-T)/U(i,i);
end
disp("Solution:")
disp(x)
