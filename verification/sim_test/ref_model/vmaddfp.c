#include "svdpi.h"
//#include "ppc_vector.c"
//Vector Multiply-Add Single-Precision 
void do_vec_vmaddfp(svBitVecVal vrt[4], svBitVecVal vra[4], svBitVecVal vrb[4], svBitVecVal vrc[4]){
     unsigned int aop,bop,cop;
     int i;
     float a;
     for (i=0;i<4;i++){
         aop = vra[i];
         bop = vrb[i];
         cop = vrc[i];
		// printf("vra= %x\n",vra[i]);
		// printf("vrb= %x\n",vrb[i]);
		// printf("brc= %x\n",vrc[i]);
		 a=(*(float *)&aop)*(*(float *)&cop)+(*(float *)&bop);
         vrt[i]=floatPointInverse( a );
	    // vrt[i]=floatPointInverse(floatPoint(aop)*floatPoint(cop)+floatPoint(bop));

		// printf("a= %x\n",*(unsigned int *)&a);
		// printf("res= %x\n",vrt[i]);
     }
}

