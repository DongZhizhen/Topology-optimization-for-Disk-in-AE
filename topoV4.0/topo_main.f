/input,'topotest','cdb','.',, 0 
eplot

/prep7
/nerr,2,50000

csys,5
nsel,all
nrotat,all

nsel,all
MP,EX,1,72000.0
MP,PRXY,1,0.31
MP,DENS,1,2.7E-009

*use,ncyclic.txt
*use,solve.txt

/dscale,all,1.0 
plesol,s,eqv, 0,1.0

!‘§º∆À„
un=3
*do,i,1,un
	*use,nedel.txt
	*use,solve.txt
*enddo

/post1
/efacet,1   
plnsol,s,eqv, 0,1.0

elel=1
!∫Ûº∆À„
*do,j,1,7
	a=-10+j*elel
	b=10-j*elel
	*do,i,1,2
		*use,nedelpost.txt
		*use,solve.txt
	*enddo

	/post1
	/efacet,1   
	plnsol,s,eqv, 0,1.0
	
	/wait,3
*enddo

/post1
/efacet,1   
plnsol,s,eqv, 0,1.0



