function PlotSide(u,k)

B=VectorTo3D(u,k);

B=B(50,:,:);
B=Pick_2D(B);
myplot(B);