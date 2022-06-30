import matplotlib.pylab as plt
import numpy as np


# L=100

# A=np.zeros((L,L));

# A[np.random.randint(0, L-1),np.random.randint(0, L-1)]=1
# B=np.copy(A)

# particulas=100

# for i in range(particulas):
    # ii=np.random.randint(0, L-1)
    # jj=np.random.randint(0, L-1)
    # t=0
    # while True:

        # nwi=[(ii+1)%L,(ii-1)%L,ii]
        # nwj=[(jj+1)%L,(jj-1)%L,jj]
        # i=np.random.choice(nwi)
        # j=np.random.choice(nwj)
        # A[i,j]=1
        # if (B[(i+1)%L,j] or B[(i-1)%L,j] or B[i,(j+1)%L] or B[i,(j-1)%L])==1:
            # A[i,j]=1
            # B[i,j]=1
            # plt.clf()
            # print("encontrado")
            # break

        # plt.imshow(A)
        
        # plt.pause(0.1)
        # plt.draw()
        # plt.clf() 
        # ii=i
        # jj=j
        # t=t+1

   
# plt.imshow(B)
# plt.title("B")
# plt.show()

C=np.loadtxt("resultados.dat")
plt.imshow(C)
plt.show()