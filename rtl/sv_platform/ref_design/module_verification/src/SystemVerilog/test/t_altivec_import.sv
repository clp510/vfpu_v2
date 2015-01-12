//===============================================================================
//  File Name       : t_altivec_import.sv
//  File Revision   : 1.0
//  Date            : 2014/1/3
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//	History         : 2014/1/3  v1.0 wangjie
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform				         
//  Function        : interface with C, "import" the C routine with the
//                    import statement
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

  //instructions from vsfx
  import "DPI-C" function void do_vec_vaddcuw    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vaddsbs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vaddshs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);											
  import "DPI-C" function void do_vec_vaddsws    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vaddubm    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vaddubs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vadduhm    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vadduhs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vadduwm    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vadduws    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubcuw    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubsbs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubshs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubsws    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsububm    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsububs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubuhm    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubuhs    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubuwm    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubuws    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vavgsb     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vavgsh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vavgsw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vavgub     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vavguh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vavguw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxfp     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxsb     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxsh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxsw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxub     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxuh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaxuw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminfp     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminsb     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminsh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminsw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminub     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminuh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vminuw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vcmpbfp    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpeqfp   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpequb   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpequh   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpequw   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgefp   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtfp   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtsb   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtsh   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtsw   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtub   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtuh   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vcmpgtuw   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input bit rc);
  import "DPI-C" function void do_vec_vand       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vandc      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vnor       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vor        (output bit[127:0]vrt,
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vxor       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vrlb       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vrlh       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vrlw       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vslb       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vslh       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vslw       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsrab      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsrah      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsraw      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsrb       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsrh       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsrw       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);											 
  //instructions from vcfx
  import "DPI-C" function void do_vec_vmulesb    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmulesh    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmuleub    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vmuleuh    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vmulosb    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vmulosh    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vmuloub    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vmulouh    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vmhaddshs  (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc); 
  import "DPI-C" function void do_vec_vmhraddshs (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc); 
  import "DPI-C" function void do_vec_vmladduhm  (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc); 
  import "DPI-C" function void do_vec_vmsumubm   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);
  import "DPI-C" function void do_vec_vmsummbm   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);											  
  import "DPI-C" function void do_vec_vmsumshm   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);
  import "DPI-C" function void do_vec_vmsumshs   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);
  import "DPI-C" function void do_vec_vmsumuhm   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);											  
  import "DPI-C" function void do_vec_vmsumuhs   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);
  import "DPI-C" function void do_vec_vsumsws    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vsum2sws   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vsum4sbs   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vsum4shs   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb); 
  import "DPI-C" function void do_vec_vsum4ubs   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  //instructions from vfpu
  import "DPI-C" function void do_vec_vaddfp     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsubfp     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmaddfp    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);
  import "DPI-C" function void do_vec_vnmsubfp   (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb, vrc);
  import "DPI-C" function void do_vec_vrefp      (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vrsqrtefp  (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vlogefp    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vexptefp   (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vctsxs     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vctuxs     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vcfsx      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vcfux      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vrfim      (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vrfin      (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vrfip      (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vrfiz      (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);  
  //instructions from pu
  import "DPI-C" function void do_vec_vpkpx      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);									
  import "DPI-C" function void do_vec_vpkshss    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkshus    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkswss    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkswus    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkuhum    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkuhus    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkuwum    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vpkuwus    (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);											
  import "DPI-C" function void do_vec_vupkhpx    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vupkhsb    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vupkhsh    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vupklpx    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vupklsb    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);
  import "DPI-C" function void do_vec_vupklsh    (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb);                                             
  import "DPI-C" function void do_vec_vmrghb     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmrghh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);												
  import "DPI-C" function void do_vec_vmrghw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmrglb     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmrglh     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vmrglw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);                                 
  import "DPI-C" function void do_vec_vspltb     (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb, 
                                                   input int       vra);                    
  import "DPI-C" function void do_vec_vspltisb   (output bit[127:0]vrt, 
                                                   input int       vra);                              
  import "DPI-C" function void do_vec_vsplth     (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb, 
                                                   input int       vra);                           
  import "DPI-C" function void do_vec_vspltish   (output bit[127:0]vrt, 
                                                   input int       vra);                 
  import "DPI-C" function void do_vec_vspltw     (output bit[127:0]vrt, 
                                                   input bit[127:0]vrb, 
                                                   input int       vra);                             
  import "DPI-C" function void do_vec_vspltisw   (output bit[127:0]vrt, 
                                                   input int       vra);
  import "DPI-C" function void do_vec_vperm      (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,vrc);
  import "DPI-C" function void do_vec_vsel       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,vrc);
  import "DPI-C" function void do_vec_vsl        (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsldoi     (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb,
                                                   input int       vrc);
  import "DPI-C" function void do_vec_vslo       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);
  import "DPI-C" function void do_vec_vsr        (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);																							
  import "DPI-C" function void do_vec_vsro       (output bit[127:0]vrt, 
                                                   input bit[127:0]vra, vrb);	
                                                   