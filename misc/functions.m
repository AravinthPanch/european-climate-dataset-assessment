function functions (x)
if(x=="plot")
 x = [0,5,10,15,20,25,30,35,40,45];
 y = [0,5,10,15,20,25,30,35,40,45];
 z = [30,40,32,44,50,36,47,38,35,40];

 %plot3(x,y,z,'.-')
 %title('CREW_63 : Reference Experiments 1 - Variance of RSSI');
 
 for i = 1:5
  if (x(i) == 10)
    z(i) = [];
  end
 endfor
 disp(z);
 
end
endfunction
