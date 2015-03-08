#include "svdpi.h"
#include "stdio.h"
//#include "ppc_vector.c"
//Vector Multiply-Add Single-Precision 
void do_vec_vmaddfp(svBitVecVal *vrt, 
                    const svBitVecVal *vra, 
                    const svBitVecVal *vrb, 
                    const svBitVecVal *vrc){
     unsigned int aop,bop,cop;
     unsigned int vrt_tmp;
     float a;
         aop = *vra;
         bop = *vrb;
         cop = *vrc;
//		 printf("vra= %x\n",aop);
//		 printf("vrb= %x\n",bop);
//		 printf("vrc= %x\n",cop);
		 a=(*(float *)&aop)*(*(float *)&cop)+(*(float *)&bop);
         vrt_tmp=(*(unsigned int*)&a);
	    // vrt[i]=floatPointInverse(floatPoint(aop)*floatPoint(cop)+floatPoint(bop));
  //      printf("vrt_tmp=%x\n",vrt_tmp);
        *vrt = vrt_tmp;
		// printf("a= %x\n",*(unsigned int *)&a);
		// printf("res= %x\n",vrt[i]);
}

