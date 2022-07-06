A=input('Input the vectors as the columns of a matrix : ');
disp(' ');

disp('A =');
disp(A);

[V,D]=eig(A);
 
[m,n]=size(A);
N=zeros(m,n);

j=1;
for i=1:n
    if round(D(i,i))==0
        N(:,j)=V(:,i);
        j=j+1;
    end
end

k=n-j+1;
r=1;
while(r<=k)
    if (N(:,j)')*N(:,j)==0
        N(:,j)=[];
        r=r+1;
    end
end



disp('Null Space,N =');
disp(N);

disp('A*N =');
disp(round(A*N));

