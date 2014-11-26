 x = [0,5,10,15,20,25,30,35,40,45];
 y = [0,5,10,15,20,25,30,35,40,45];
 z = [30,40,32,44,50,36,47,38,35,40];
 
contour(x,y,z)
 
 %m = [x;y;z];
 
%x = reshape(x,2,5)';
%y = reshape(y,2,5)';
%z = reshape(z,2,5)';

%stem3(x,y,z,'MarkerFaceColor','g')
%mesh(x,y,z)
 
 %z = meshgrid(z);
 %i = eye(10);
 %r = z * i';
 
% d = diag(z);

%mesh(x,y,d) 
 
 
%tri = delaunay(x,y);
%plot(x,y,'.')

%%
% How many triangles are there?

%[r,c] = size(tri);
%disp(r)

%% Plot it with TRISURF

%h = trisurf(tri, x, y, z);
%axis vis3d

%% Clean it up

%axis off
%l = light('Position',[-50 -15 29])
%set(gca,'CameraPosition',[208 -50 7687])
%lighting phong
%shading interp
%colorbar EastOutside


%plot3(x,y,z,'.-')