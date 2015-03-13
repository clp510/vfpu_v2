#include "svdpi.h"
#include "DirectC.h"
#ifdef __cplusplus
extern "C" {
#endif
extern void  do_vec_vmaddfp(/*OUT*/svBitVecVal* A0,
	 const svBitVecVal* A1,
	 const svBitVecVal* A2,
	 const svBitVecVal* A3);
#ifdef __cplusplus
} /*extern "C" */
#endif
#ifdef __cplusplus
extern "C" {
#endif
#ifndef _DPI_WRAPPER_do_vec_vmaddfp_0x2a
#define _DPI_WRAPPER_do_vec_vmaddfp_0x2a
void  do_vec_vmaddfp_0x2a(svBitVecVal* A0,U  A1,U  A2,U  A3)
{

svBitVecVal A1_SmallBV;
svBitVecVal A2_SmallBV;
svBitVecVal A3_SmallBV;

A1_SmallBV = (svBitVecVal)(A1);
A2_SmallBV = (svBitVecVal)(A2);
A3_SmallBV = (svBitVecVal)(A3);

do_vec_vmaddfp(A0,&A1_SmallBV,&A2_SmallBV,&A3_SmallBV);


A1 = (U)A1_SmallBV;
A2 = (U)A2_SmallBV;
A3 = (U)A3_SmallBV;

}
#endif
#ifdef __cplusplus
} /*extern "C" */
#endif
