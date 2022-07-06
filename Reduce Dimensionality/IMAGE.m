disp('Program to demonstrate the dimensionality reduction using SVD');
load Yale_32x32.mat;
size(fea);

imshow(uint8(reshape(fea(1,:),[32 32])));
size(fea);

F=fea';
size(F);

[U,S,V]=svd(F);
size(U);
size(V);
diag(S);

PR=U(:,1:35)'*F(:,1);
size(PR);

REC=U(:,1:35)*PR;
size(REC);

imshow(uint8(reshape(REC,[32 32])));
imshow(uint8(reshape(fea(1,:),[32 32])));
PR=(U')*F(:,1);

size(PR);
imshow(uint8(reshape(REC,[32 32])));
