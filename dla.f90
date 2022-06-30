PROGRAM deposicion



USE MT19937

    INTEGER :: k,t=0,i,j,ia,ii,jj,ja,L=10,particulas=100,seed
    INTEGER :: NWI(3),NWJ(3)
    INTEGER,ALLOCATABLE:: A(:,:),B(:,:)
    ALLOCATE(A(L+2,L+2),B(L+2,L+2))
    CALL SYSTEM_CLOCK(COUNT=seed)
    CALL sgrnd(seed)
OPEN(99,FILE="resultados.dat",STATUS="unknown")    
!Rellanos ma matriz A de 0

DO i=1,L+2
	A(i,:)=0
END DO


!Elegimos una posicion aleatorio y le damos el valor 1
ia=aleatorio(2,L+1)
ja=aleatorio(2,L+1)
	
A(ia,ja)=1
B=A

DO k=1,particulas
    ii=aleatorio(2,L+1)
    jj=aleatorio(2,L+1)
    t=0
     DO WHILE (t.le.20000)

        
		nwi(3)=ii+1
		nwi(2)=ii-1
		nwi(1)=ii
		nwj(3)=jj+1
		nwj(2)=jj-1
98		nwj(1)=jj
        i=nwi(aleatorio(1,3))
        j=nwj(aleatorio(1,3))
		IF ((i.le.1) .or. (j.le.1) .or. (i.ge.L+1) .or. (j.ge.L+1)) THEN
			GOTO 98
		END IF
		A(i,j)=1
        IF ((B(i+1,j)==1) .or. (B(i-1,j)==1) .or. (B(i,j+1)==1) .or. (B(i,j-1)==1)) THEN
        
            A(i,j)=1
            B(i,j)=1
			PRINT*, "PARTICULA ENCONTRADA"
            EXIT
			
        END IF
        ii=i
        jj=j
        t=t+1
        IF(t==20000) THEN
            PRINT*,"PARTICULA NO ENCONTRADA,LANZANDO OTRA"
        
        END IF
     END DO
END DO 

!iMPRIMIMOS LA MATRIZ B
        
DO i=1,L+2
    write(99,*) B(i,:)
END DO

PRINT*,"DONE"
READ(*,*) 

CLOSE(99)
CONTAINS

INTEGER FUNCTION aleatorio(a,b)

	INTEGER :: a,b
	REAL :: r

	r=grnd()
	aleatorio=nint((a+(b-a)*grnd()))
	RETURN

END FUNCTION


END PROGRAM
