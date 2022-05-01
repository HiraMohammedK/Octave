q=input('Enter n points as a matrix ');
[m,n]=size(q);

A=[q(1,1) 1];
for i=2:m
    A=[A;q(i,1) 1];
end

X=q(:,1);
Y=q(:,2);
B=q(:,2);
scatter(X,Y);

x=pinv(A)*B;
a=zeros([2,1]);
for i=1:2
    a(i,1)=x(i,1);
end

X1=0:0.1:5;
Y1=a(1,1)*X1 + a(2,1);
hold on;
plot(X1,Y1);