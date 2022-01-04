!节点循环对称
nsel,s,loc,y,-88
esln,s,1                           !esel,s,type,,face1   
cm,a_low,node
nsel,s,loc,y,-92
esln,s,1                           !esel,s,type,,face2 
nsle,all
cm,a_high,node
esel,s,type,,1 	!类型1网格为对称面的体网格
cyclic,90,360/90   !,1,a,0,  !共16个叶片，角度为360/16