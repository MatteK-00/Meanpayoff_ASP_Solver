%Grafo 1


%				 				
%	+++   -1 >  xxx           		
%	+1+ <-----> x4x <- -1 ----+	
%	+++  < -1   xxx           |	
%	 |           |            |	
%	 |           1            |	
%	 |           v            |	
%	 |          +++          xxx
%	 +--- 1 --> +2+---- 1 -> x3x   
%	            +++          xxx
%	             |            ^	
%	             1            |	
%	             v            |	
%	            +++           |	
%	            +5+--- -1 ----+	
%	            +++				
			


nodo(1,1).
nodo(2,1).
nodo(3,2).
nodo(4,2).
nodo(5,1).

arco(1,2).
arco(1,4).
arco(2,3).
arco(3,4).
arco(4,2).
arco(4,1).
arco(2,5).
arco(5,3).

costo(1,2,1).
costo(1,4,-1).
costo(2,3,2).
costo(3,4,-1).
costo(4,2,3).
costo(4,1,-1).
costo(2,5,4).
costo(5,3,-1).

%costo(1,2,0).
%costo(1,4,-1).
%costo(2,3,0).
%costo(3,4,0).
%costo(4,2,0).
%costo(4,1,-1).
%costo(2,5,0).
%costo(5,3,0).