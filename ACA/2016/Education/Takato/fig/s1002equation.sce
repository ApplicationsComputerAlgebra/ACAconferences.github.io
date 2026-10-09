cd('/Users/takatoosetsuo/ACAtakmc/fig');
Ketlib=lib('/Applications/ketcindy/ketlib/ketpicsciL5');
Ketinit();
disp('KETpic '+ThisVersion())
Fnametex='s1002equation.tex';
Fnamesci='s1002equation.sce';
Fnamescibody='s1002equationbody.sce';
Fnameout='s1002equation.txt';
pi=%pi; i=%i;
arccos=acos; arcsin=asin; arctan=atan;

Setwindow([-1.5,1.5], [-0.25,1.93]);
Assignadd('pi',%pi);
Assignadd('XMIN',Xmin());
Assignadd('XMAX',Xmax());
Assignadd('YMIN',Ymin());
Assignadd('YMAX',Ymax());
A=[0,1]; Assignrep('A',[0,1]);
gr1=Plotdata(Assign('x^2'),Assign('x'));
cr1=Circledata([A,[-0.71,0.5]]);
sg1=Listplot([[-0.70711,0.5],A,[0.70711,0.5]]);
PtL=list(A);
GrL=list();
//if length(fileinfo(Fnamescibody))>0
//  Gbdy=ReadfromCindy(Fnamescibody);
//  execstr(Gbdy)
//end;

//Windisp(GrL,'c');

if 1==1 then

Openfile(Fnametex,'1cm');
  Fontsize('s');
  Drwline(gr1);
  Drwline(cr1);
  Drwline(sg1);
  Letter(A,"ne","A");
  Letter([-0.70711,0.5],"sw","P");
  Letter([0.70711,0.5],"se","Q");
Closefile('1');

end;

quit();
