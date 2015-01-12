//===============================================================================
//  File Name       : t_altivec_env_pkg.sv
//  File Revision   : 1.1
//  Date            : 2014/1/3
//  Author          : wangjie
//  Email           : ycyquick@foxmail.com
//  History         : 2013/12/9  v1.0 wangjie (random test)
//                    2014/ 1/3  v1.1 wangjie (base + random)
//  ----------------------------------------------------------------------------
//  Description     : fuctional simulation platform                 
//  Function        : fuctional varification for vsfx, vcfx, vfpu and pu, include
//                    class altivec_c
//                    class stimulus_generator
//                    class altivec_scoreboard
//  ----------------------------------------------------------------------------
// Copyright (c) 2013,Tianjin University.
//               No.92 Weijin Road , Nankai District, Tianjin, 300072, China
// Tianjin University Confidential Proprietary
// ==============================================================================

//===============================================================================

package t_altivec_env_pkg;

`include	"./Define.v"
`include "./src/SystemVerilog/test/t_altivec_import.sv"//interface with C, "import" the C 
                                                       //routine with the import statement

int ins_begin = (`CHECKMODE == 0 ?   1 :      //vsfx
                 `CHECKMODE == 1 ?  71 :      //vcfx
                 `CHECKMODE == 2 ?  93 : 109);//vfpu ：pu
int ins_end   = (`CHECKMODE == 0 ?  70 :      //vsfx
                 `CHECKMODE == 1 ?  92 :      //vcfx
                 `CHECKMODE == 2 ?  96 : 142);//vfpu : pu 
                                              //ins 97-108 are not verified
int number_of_base = 2;                       //base test vectors in each instruction
                 
//===============================================================================
//  class altivec_c
//===============================================================================

  class altivec_c;//pack the value needed in one varification 
    rand bit [127:0] vra;      //input operand
    rand bit [127:0] vrb;      //input operand
    rand bit [127:0] vrc;      //input operand
    rand bit [127:0] vra_vfpu; //input operand for vfpu 0-3
    rand bit [127:0] vra_vfpu2;//input operand for vfpu 4-15
    rand bit [127:0] vrb_vfpu; //input operand for vfpu
    rand bit [127:0] vrc_vfpu; //input operand for vfpu
         bit [127:0] vrt;      //result
    rand bit [  7:0] ins;      //instructions
    rand bit [  4:0] uim;      //immediate data
    rand bit rc;               //control signal used in compare instructions
    string   str_ins;          //the name of the corresponding ins
    constraint c_ins {ins inside {[ins_begin : ins_end]};}//there are 70 instructions in vsfx...
    
    //constraints for operand a in vfpu
    constraint c_vra_vfpu { //for vfpu ins 0-3
                            vra_vfpu[ 30 :  23] >= 1;
                            vra_vfpu[ 30 :  23] <= 254;
                            vra_vfpu[ 62 :  55] >= 1;
                            vra_vfpu[ 62 :  55] <= 254;
                            vra_vfpu[ 94 :  87] >= 1;
                            vra_vfpu[ 94 :  87] <= 254;
                            vra_vfpu[126 : 119] >= 1;
                            vra_vfpu[126 : 119] <= 254;
                          }
    constraint c_vra_vfpu2 {//for vfpu ins 4-15
                            vra_vfpu2 >= 0;
                            vra_vfpu2 <= 31;
                          }
    //constraints for operand b in vfpu
    constraint c_vrb_vfpu {
                            //vrb_vfpu[31] == 1'b0;
                            vrb_vfpu[ 30 :  23] >= 1;
                            vrb_vfpu[ 30 :  23] <= 254;
                            vrb_vfpu[ 62 :  55] >= 1;
                            //vrb_vfpu[63] == 1'b0;
                            vrb_vfpu[ 62 :  55] <= 254;
                            vrb_vfpu[ 94 :  87] >= 1;
                            vrb_vfpu[ 94 :  87] <= 254;
                            //vrb_vfpu[95] == 1'b0;
                            vrb_vfpu[126 : 119] >= 1;
                            vrb_vfpu[126 : 119] <= 254;
                            //vrb_vfpu[127] == 1'b0;
                          }
    //constraints for operand c in vfpu
    constraint c_vrc_vfpu {
                            vrc_vfpu[ 30 :  23] >= 1;
                            vrc_vfpu[ 30 :  23] <= 254;
                            vrc_vfpu[ 62 :  55] >= 1;
                            vrc_vfpu[ 62 :  55] <= 254;
                            vrc_vfpu[ 94 :  87] >= 1;
                            vrc_vfpu[ 94 :  87] <= 254;
                            vrc_vfpu[126 : 119] >= 1;
                            vrc_vfpu[126 : 119] <= 254;
                          } 
    constraint c_ac_vfpu  {
                            vra_vfpu[ 30 :  23] + vrc_vfpu[ 30 :  23] <= 254;
                            vra_vfpu[ 62 :  55] + vrc_vfpu[ 62 :  55] <= 254;
                            vra_vfpu[ 94 :  87] + vrc_vfpu[ 97 :  87] <= 254;
                            vra_vfpu[126 : 119] + vrc_vfpu[126 : 119] <= 254;
                          }
    function setbase(bit [127:0] vra_ = 0, bit [127:0] vrb_ = 0, bit [127:0] vrc_ = 0, bit [  7:0] ins_ = 1, bit rc_ = 0);
      vra = vra_;
      vrb = vrb_;
      vrc = vrc_;
      ins = ins_;
      rc  = rc_;
    endfunction
    function setbase_vfpu(bit [127:0] vra_vfpu_ = 0, bit [127:0] vra_vfpu2_ = 0, bit [127:0] vrb_vfpu_ = 0, 
                          bit [127:0] vrc_vfpu_ = 0, bit [  7:0] ins_ = 1);
      vra_vfpu  = vra_vfpu_;
      vra_vfpu2 = vra_vfpu2_;
      vrb_vfpu  = vrb_vfpu_;
      vrc_vfpu  = vrc_vfpu_;
      ins       = ins_;
    endfunction
  endclass
  
  `include "./src/SystemVerilog/test/t_altivec_coverage.sv"//for coverage checking
  
//===============================================================================
//  function report
//===============================================================================

  function void report(string where, altivec_c t1);//every instrucion under simulation will be reported
    string str;
    if (t1.ins inside {[39:47], [64:70]})
      $sformat(str, "-> vra = %h, vrb = %h, ins = %d(%s, rc = %b)",
              t1.vra, t1.vrb, t1.ins, t1.str_ins, t1.rc);
    else if (t1.ins inside {[79:87], 95, 96, 136, 137, 139})
      $sformat(str, "-> vra = %h, vrb = %h, vrc = %h, ins = %d(%s)",
              t1.vra, t1.vrb, t1.vrc, t1.ins, t1.str_ins);
    else if (t1.ins inside {[97:100], [105:108]})//vfpu
      $sformat(str, "-> vrb = %h, ins = %d(%s)",
              t1.vrb, t1.ins, t1.str_ins);
    else
      $sformat(str, "-> vra = %h, vrb = %h, ins = %d(%s)",
              t1.vra, t1.vrb, t1.ins, t1.str_ins);
    $display("%s", str);
  endfunction
  
//===============================================================================
//  class stimulus_generator
//===============================================================================
  
  class stimulus_generator;
    mailbox #(altivec_c) fifo;
    bit stop = 0;
    bit base = `BASE;
    int ins_index = ins_begin;
    int i = 0;
    task generate_stimulus;
      altivec_c tmp;
      forever
      begin
        if (stop == 1)
          break;
        else if (stop == 0)
        begin
          tmp = new();
          if (base == 1)
          begin
            if (ins_index == ins_begin && i == 0)
            begin
              $display("\n------------------------------------------------------------"); 
              $display("--------            starting base test              --------");
              $display("------------------------------------------------------------\n");
            end
            if (ins_index inside {[93:108]})//vfpu
              case (i)//set base test vectors here
                0:tmp.setbase_vfpu(0,0,0,0,ins_index);
                1:tmp.setbase_vfpu(128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,
                                   128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,
                                   128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,
                                   128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,ins_index);
                default:$display("\nCall from default:case (i),set base test vectors");
              endcase
            else
              case (i)//set base test vectors here
                0:tmp.setbase(0,0,0,ins_index,0);
                1:tmp.setbase(128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,
                              128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,
                              128'hffff_ffff_ffff_ffff_ffff_ffff_ffff_ffff,ins_index,0);
                default:$display("\nCall from default:case (i),set base test vectors");
              endcase
            i = i + 1;
            if (i == number_of_base)
            begin
              i = 0;
              ins_index = ins_index + 1;
              if (ins_index == (ins_end + 1))
              begin
                base = 0;
              end
            end//if (i == number_of_base)
          end//if (base == 1)
          else if (base == 0)
          begin
            tmp.randomize();
            /*
            $display("time:%0d generator%0d send out a stimulous, vra: %0h,vrb:%0h,vrc:%0h, ins:%d",
                    $time, id, tmp.vra, tmp.vrb, tmp.vrc, tmp.ins);
            */
          end//if (base == 0)
          //instructions from vsfx
          case (tmp.ins)
              1:$sformat(tmp.str_ins, "vaddcuw   ");
              2:$sformat(tmp.str_ins, "vaddsbs   ");
              3:$sformat(tmp.str_ins, "vaddshs   ");
              4:$sformat(tmp.str_ins, "vaddsws   ");
              5:$sformat(tmp.str_ins, "vaddubm   ");
              6:$sformat(tmp.str_ins, "vadduhm   ");
              7:$sformat(tmp.str_ins, "vadduwm   ");
              8:$sformat(tmp.str_ins, "vaddubs   ");
              9:$sformat(tmp.str_ins, "vadduhs   ");
             10:$sformat(tmp.str_ins, "vadduws   ");
             11:$sformat(tmp.str_ins, "vsubcuw   ");
             12:$sformat(tmp.str_ins, "vsubsbs   ");
             13:$sformat(tmp.str_ins, "vsubshs   ");
             14:$sformat(tmp.str_ins, "vsubsws   ");
             15:$sformat(tmp.str_ins, "vsububm   ");
             16:$sformat(tmp.str_ins, "vsubuhm   ");
             17:$sformat(tmp.str_ins, "vsubuwm   ");
             18:$sformat(tmp.str_ins, "vsububs   ");
             19:$sformat(tmp.str_ins, "vsubuhs   ");
             20:$sformat(tmp.str_ins, "vsubuws   ");
             21:$sformat(tmp.str_ins, "vavgsb    ");
             22:$sformat(tmp.str_ins, "vavgsh    ");
             23:$sformat(tmp.str_ins, "vavgsw    ");
             24:$sformat(tmp.str_ins, "vavgub    ");
             25:$sformat(tmp.str_ins, "vavguh    ");
             26:$sformat(tmp.str_ins, "vavguw    ");
             27:$sformat(tmp.str_ins, "vmaxsb    ");
             28:$sformat(tmp.str_ins, "vmaxsh    ");
             29:$sformat(tmp.str_ins, "vmaxsw    ");
             30:$sformat(tmp.str_ins, "vmaxub    ");
             31:$sformat(tmp.str_ins, "vmaxuh    ");
             32:$sformat(tmp.str_ins, "vmaxuw    ");
             33:$sformat(tmp.str_ins, "vminsb    ");
             34:$sformat(tmp.str_ins, "vminsh    ");
             35:$sformat(tmp.str_ins, "vminsw    ");
             36:$sformat(tmp.str_ins, "vminub    ");
             37:$sformat(tmp.str_ins, "vminuh    ");
             38:$sformat(tmp.str_ins, "vminuw    ");
             39:$sformat(tmp.str_ins, "vcmpequb  ");
             40:$sformat(tmp.str_ins, "vcmpequh  ");
             41:$sformat(tmp.str_ins, "vcmpequw  ");
             42:$sformat(tmp.str_ins, "vcmpgtsb  ");
             43:$sformat(tmp.str_ins, "vcmpgtsh  ");
             44:$sformat(tmp.str_ins, "vcmpgtsw  ");
             45:$sformat(tmp.str_ins, "vcmpgtub  ");
             46:$sformat(tmp.str_ins, "vcmpgtuh  ");
             47:$sformat(tmp.str_ins, "vcmpgtuw  ");
             48:$sformat(tmp.str_ins, "vand      ");
             49:$sformat(tmp.str_ins, "vandc     ");
             50:$sformat(tmp.str_ins, "vnor      ");
             51:$sformat(tmp.str_ins, "vor       ");
             52:$sformat(tmp.str_ins, "vxor      ");
             53:$sformat(tmp.str_ins, "vrlb      ");
             54:$sformat(tmp.str_ins, "vrlh      ");
             55:$sformat(tmp.str_ins, "vrlw      ");
             56:$sformat(tmp.str_ins, "vslb      ");
             57:$sformat(tmp.str_ins, "vslh      ");
             58:$sformat(tmp.str_ins, "vslw      ");
             59:$sformat(tmp.str_ins, "vsrb      ");
             60:$sformat(tmp.str_ins, "vsrh      ");
             61:$sformat(tmp.str_ins, "vsrw      ");
             62:$sformat(tmp.str_ins, "vsrab     ");
             63:$sformat(tmp.str_ins, "vsrah     ");
             64:$sformat(tmp.str_ins, "vsraw     ");
             65:$sformat(tmp.str_ins, "vmaxfp    ");
             66:$sformat(tmp.str_ins, "vminfp    ");
             67:$sformat(tmp.str_ins, "vcmpbfp   ");
             68:$sformat(tmp.str_ins, "vcmpeqfp  ");
             69:$sformat(tmp.str_ins, "vcmpgefp  ");
             70:$sformat(tmp.str_ins, "vcmpgtfp  ");
             //instructions from vcfx
             71:$sformat(tmp.str_ins, "vmulesb   ");
             72:$sformat(tmp.str_ins, "vmulesh   ");
             73:$sformat(tmp.str_ins, "vmuleub   ");
             74:$sformat(tmp.str_ins, "vmuleuh   ");
             75:$sformat(tmp.str_ins, "vmulosb   ");
             76:$sformat(tmp.str_ins, "vmulosh   ");
             77:$sformat(tmp.str_ins, "vmuloub   ");
             78:$sformat(tmp.str_ins, "vmulouh   ");
             79:$sformat(tmp.str_ins, "vmhaddshs ");
             80:$sformat(tmp.str_ins, "vmhraddshs");
             81:$sformat(tmp.str_ins, "vmladduhm ");
             82:$sformat(tmp.str_ins, "vmsumubm  ");
             83:$sformat(tmp.str_ins, "vmsummbm  ");
             84:$sformat(tmp.str_ins, "vmsumshm  ");
             85:$sformat(tmp.str_ins, "vmsumshs  ");
             86:$sformat(tmp.str_ins, "vmsumuhm  ");
             87:$sformat(tmp.str_ins, "vmsumuhs  ");
             88:$sformat(tmp.str_ins, "vsumsws   ");
             89:$sformat(tmp.str_ins, "vsum2sws  ");
             90:$sformat(tmp.str_ins, "vsum4sbs  ");
             91:$sformat(tmp.str_ins, "vsum4shs  ");
             92:$sformat(tmp.str_ins, "vsum4ubs  ");
             //instructions from vfpu
             93:$sformat(tmp.str_ins, "vaddfp    ");
             94:$sformat(tmp.str_ins, "vsubfp    ");
             95:$sformat(tmp.str_ins, "vmaddfp   ");
             96:$sformat(tmp.str_ins, "vnmsubfp  ");
             97:$sformat(tmp.str_ins, "vrefp     ");
             98:$sformat(tmp.str_ins, "vrsqrtefp ");
             99:$sformat(tmp.str_ins, "vlogefp   ");
            100:$sformat(tmp.str_ins, "vexptefp  ");
            101:$sformat(tmp.str_ins, "vctsxs    ");
            102:$sformat(tmp.str_ins, "vctuxs    ");
            103:$sformat(tmp.str_ins, "vcfsx     ");
            104:$sformat(tmp.str_ins, "vcfux     ");
            105:$sformat(tmp.str_ins, "vrfim     ");
            106:$sformat(tmp.str_ins, "vrfin     ");
            107:$sformat(tmp.str_ins, "vrfip     ");
            108:$sformat(tmp.str_ins, "vrfiz     ");
            //instructions from pu
            109:$sformat(tmp.str_ins, "vpkpx     ");//Vector Pack and Unpack Instruction //1
            110:$sformat(tmp.str_ins, "vpkshss   ");
            111:$sformat(tmp.str_ins, "vpkshus   ");
            112:$sformat(tmp.str_ins, "vpkswss   ");
            113:$sformat(tmp.str_ins, "vpkswus   ");
            114:$sformat(tmp.str_ins, "vpkuhum   ");
            115:$sformat(tmp.str_ins, "vpkuhus   ");
            116:$sformat(tmp.str_ins, "vpkuwum   ");
            117:$sformat(tmp.str_ins, "vpkuwus   ");
            118:$sformat(tmp.str_ins, "vupkhpx   ");
            119:$sformat(tmp.str_ins, "vupkhsb   ");
            120:$sformat(tmp.str_ins, "vupkhsh   ");
            121:$sformat(tmp.str_ins, "vupklpx   ");
            122:$sformat(tmp.str_ins, "vupklsb   ");
            123:$sformat(tmp.str_ins, "vupklsh   ");//15
            124:$sformat(tmp.str_ins, "vmrghb    ");//Vector Merge Instruction //16
            125:$sformat(tmp.str_ins, "vmrghh    ");
            126:$sformat(tmp.str_ins, "vmrghw    ");
            127:$sformat(tmp.str_ins, "vmrglb    ");
            128:$sformat(tmp.str_ins, "vmrglh    ");
            129:$sformat(tmp.str_ins, "vmrglw    ");//21
            130:$sformat(tmp.str_ins, "vspltb    ");//Vector Splat Instruction //22
            131:$sformat(tmp.str_ins, "vsplth    ");
            132:$sformat(tmp.str_ins, "vspltw    ");
            133:$sformat(tmp.str_ins, "vspltisb  ");
            134:$sformat(tmp.str_ins, "vspltish  ");
            135:$sformat(tmp.str_ins, "vspltisw  ");//27
            136:$sformat(tmp.str_ins, "vperm     ");//Vector Permute Instruction //28
            137:$sformat(tmp.str_ins, "vsel      ");//Vector Select Instruction  //29
            138:$sformat(tmp.str_ins, "vsl       ");//Vector Shift Instruction   //30
            139:$sformat(tmp.str_ins, "vsldoi    ");
            140:$sformat(tmp.str_ins, "vslo      ");
            141:$sformat(tmp.str_ins, "vsr       ");
            142:$sformat(tmp.str_ins, "vsro      ");//34
          endcase
          fifo.put(tmp);
        end//if (stop == 0)
      end//forever             
    endtask//generate_stimulus
    task stop_stimulus_generation();
      stop = 1;
    endtask
  endclass//stimulus_generator
                                     
//===============================================================================
//  class altivec_scoreboard
//===============================================================================                                                   

  class altivec_scoreboard;
    mailbox #(altivec_c) fifo1;
    altivec_c t1;
    altivec_coverage cov;
    int limit = 40;//if count >= limit, test_done = 1
    bit test_done; //if test_done = 1, stop varification
    function new (mailbox #(altivec_c) fifo1_i);
      fifo1 = fifo1_i;
      test_done = 0;
      cov = new();
    endfunction
    task run;
      int count = 0;
      fork
        forever
        begin
          count = count + 1;
          fifo1.get(t1);  
          report("SBD", t1);
          update_and_check_score(count);
          cov.fifo1.put(t1);
        end
        cov.run();
      join
    endtask

    local function void update_and_check_score(input int count);
      bit [127:0] vrt;
      string str;
      case (t1.ins)//generate the software result, using c functions imported in "DPI-C"
      //instructions from vsfx
        1:do_vec_vaddcuw   (vrt, t1.vra, t1.vrb);
        2:do_vec_vaddsbs   (vrt, t1.vra, t1.vrb);
        3:do_vec_vaddshs   (vrt, t1.vra, t1.vrb);
        4:do_vec_vaddsws   (vrt, t1.vra, t1.vrb);
        5:do_vec_vaddubm   (vrt, t1.vra, t1.vrb);
        6:do_vec_vadduhm   (vrt, t1.vra, t1.vrb);
        7:do_vec_vadduwm   (vrt, t1.vra, t1.vrb);
        8:do_vec_vaddubs   (vrt, t1.vra, t1.vrb);
        9:do_vec_vadduhs   (vrt, t1.vra, t1.vrb);
       10:do_vec_vadduws   (vrt, t1.vra, t1.vrb);
       11:do_vec_vsubcuw   (vrt, t1.vra, t1.vrb);
       12:do_vec_vsubsbs   (vrt, t1.vra, t1.vrb);
       13:do_vec_vsubshs   (vrt, t1.vra, t1.vrb);
       14:do_vec_vsubsws   (vrt, t1.vra, t1.vrb);
       15:do_vec_vsububm   (vrt, t1.vra, t1.vrb);
       16:do_vec_vsubuhm   (vrt, t1.vra, t1.vrb);
       17:do_vec_vsubuwm   (vrt, t1.vra, t1.vrb);
       18:do_vec_vsububs   (vrt, t1.vra, t1.vrb);
       19:do_vec_vsubuhs   (vrt, t1.vra, t1.vrb);
       20:do_vec_vsubuws   (vrt, t1.vra, t1.vrb);
       21:do_vec_vavgsb    (vrt, t1.vra, t1.vrb);
       22:do_vec_vavgsh    (vrt, t1.vra, t1.vrb);
       23:do_vec_vavgsw    (vrt, t1.vra, t1.vrb);
       24:do_vec_vavgub    (vrt, t1.vra, t1.vrb);
       25:do_vec_vavguh    (vrt, t1.vra, t1.vrb);
       26:do_vec_vavguw    (vrt, t1.vra, t1.vrb);
       27:do_vec_vmaxsb    (vrt, t1.vra, t1.vrb);
       28:do_vec_vmaxsh    (vrt, t1.vra, t1.vrb);
       29:do_vec_vmaxsw    (vrt, t1.vra, t1.vrb);
       30:do_vec_vmaxub    (vrt, t1.vra, t1.vrb);
       31:do_vec_vmaxuh    (vrt, t1.vra, t1.vrb);
       32:do_vec_vmaxuw    (vrt, t1.vra, t1.vrb);
       33:do_vec_vminsb    (vrt, t1.vra, t1.vrb);
       34:do_vec_vminsh    (vrt, t1.vra, t1.vrb);
       35:do_vec_vminsw    (vrt, t1.vra, t1.vrb);
       36:do_vec_vminub    (vrt, t1.vra, t1.vrb);
       37:do_vec_vminuh    (vrt, t1.vra, t1.vrb);
       38:do_vec_vminuw    (vrt, t1.vra, t1.vrb);
       39:do_vec_vcmpequb  (vrt, t1.vra, t1.vrb, t1.rc);
       40:do_vec_vcmpequh  (vrt, t1.vra, t1.vrb, t1.rc);
       41:do_vec_vcmpequw  (vrt, t1.vra, t1.vrb, t1.rc);
       42:do_vec_vcmpgtsb  (vrt, t1.vra, t1.vrb, t1.rc);
       43:do_vec_vcmpgtsh  (vrt, t1.vra, t1.vrb, t1.rc);
       44:do_vec_vcmpgtsw  (vrt, t1.vra, t1.vrb, t1.rc);
       45:do_vec_vcmpgtub  (vrt, t1.vra, t1.vrb, t1.rc);
       46:do_vec_vcmpgtuh  (vrt, t1.vra, t1.vrb, t1.rc);
       47:do_vec_vcmpgtuw  (vrt, t1.vra, t1.vrb, t1.rc);
       48:do_vec_vand      (vrt, t1.vra, t1.vrb);
       49:do_vec_vandc     (vrt, t1.vra, t1.vrb);
       50:do_vec_vnor      (vrt, t1.vra, t1.vrb);
       51:do_vec_vor       (vrt, t1.vra, t1.vrb);
       52:do_vec_vxor      (vrt, t1.vra, t1.vrb);
       53:do_vec_vrlb      (vrt, t1.vra, t1.vrb);
       54:do_vec_vrlh      (vrt, t1.vra, t1.vrb);
       55:do_vec_vrlw      (vrt, t1.vra, t1.vrb);
       56:do_vec_vslb      (vrt, t1.vra, t1.vrb);
       57:do_vec_vslh      (vrt, t1.vra, t1.vrb);
       58:do_vec_vslw      (vrt, t1.vra, t1.vrb);
       59:do_vec_vsrb      (vrt, t1.vra, t1.vrb);
       60:do_vec_vsrh      (vrt, t1.vra, t1.vrb);
       61:do_vec_vsrw      (vrt, t1.vra, t1.vrb);
       62:do_vec_vsrab     (vrt, t1.vra, t1.vrb);
       63:do_vec_vsrah     (vrt, t1.vra, t1.vrb);
       64:do_vec_vsraw     (vrt, t1.vra, t1.vrb);
       65:do_vec_vmaxfp    (vrt, t1.vra, t1.vrb);
       66:do_vec_vminfp    (vrt, t1.vra, t1.vrb);
       67:do_vec_vcmpbfp   (vrt, t1.vra, t1.vrb, t1.rc);
       68:do_vec_vcmpeqfp  (vrt, t1.vra, t1.vrb, t1.rc);
       69:do_vec_vcmpgefp  (vrt, t1.vra, t1.vrb, t1.rc);
       70:do_vec_vcmpgtfp  (vrt, t1.vra, t1.vrb, t1.rc);
       //instructions from vcfx
       71:do_vec_vmulesb   (vrt, t1.vra, t1.vrb);
       72:do_vec_vmulesh   (vrt, t1.vra, t1.vrb);
       73:do_vec_vmuleub   (vrt, t1.vra, t1.vrb);
       74:do_vec_vmuleuh   (vrt, t1.vra, t1.vrb);
       75:do_vec_vmulosb   (vrt, t1.vra, t1.vrb);
       76:do_vec_vmulosh   (vrt, t1.vra, t1.vrb);
       77:do_vec_vmuloub   (vrt, t1.vra, t1.vrb);
       78:do_vec_vmulouh   (vrt, t1.vra, t1.vrb);
       79:do_vec_vmhaddshs (vrt, t1.vra, t1.vrb, t1.vrc);
       80:do_vec_vmhraddshs(vrt, t1.vra, t1.vrb, t1.vrc);
       81:do_vec_vmladduhm (vrt, t1.vra, t1.vrb, t1.vrc);
       82:do_vec_vmsumubm  (vrt, t1.vra, t1.vrb, t1.vrc);
       83:do_vec_vmsummbm  (vrt, t1.vra, t1.vrb, t1.vrc);
       84:do_vec_vmsumshm  (vrt, t1.vra, t1.vrb, t1.vrc);
       85:do_vec_vmsumshs  (vrt, t1.vra, t1.vrb, t1.vrc);
       86:do_vec_vmsumuhm  (vrt, t1.vra, t1.vrb, t1.vrc);
       87:do_vec_vmsumuhs  (vrt, t1.vra, t1.vrb, t1.vrc);
       88:do_vec_vsumsws   (vrt, t1.vra, t1.vrb);
       89:do_vec_vsum2sws  (vrt, t1.vra, t1.vrb);
       90:do_vec_vsum4sbs  (vrt, t1.vra, t1.vrb);
       91:do_vec_vsum4shs  (vrt, t1.vra, t1.vrb);
       92:do_vec_vsum4ubs  (vrt, t1.vra, t1.vrb);
       //instructions from vfpu
       93:do_vec_vaddfp    (vrt, t1.vra, t1.vrb);
       94:do_vec_vsubfp    (vrt, t1.vra, t1.vrb);
       95:do_vec_vmaddfp   (vrt, t1.vra, t1.vrb, t1.vrc);
       96:do_vec_vnmsubfp  (vrt, t1.vra, t1.vrb, t1.vrc);
       97:do_vec_vrefp     (vrt, t1.vrb);
       98:do_vec_vrsqrtefp (vrt, t1.vrb);
       99:do_vec_vlogefp   (vrt, t1.vrb);
      100:do_vec_vexptefp  (vrt, t1.vrb);
      101:do_vec_vctsxs    (vrt, t1.vra[4:0], t1.vrb);
      102:do_vec_vctuxs    (vrt, t1.vra[4:0], t1.vrb);
      103:do_vec_vcfsx     (vrt, t1.vra[4:0], t1.vrb);
      104:do_vec_vcfux     (vrt, t1.vra[4:0], t1.vrb);
      105:do_vec_vrfim     (vrt, t1.vrb);
      106:do_vec_vrfin     (vrt, t1.vrb);
      107:do_vec_vrfip     (vrt, t1.vrb);
      108:do_vec_vrfiz     (vrt, t1.vrb);
      //instructions from pu
      109:do_vec_vpkpx     (vrt, t1.vra, t1.vrb);
      110:do_vec_vpkshss   (vrt, t1.vra, t1.vrb);
      111:do_vec_vpkshus   (vrt, t1.vra, t1.vrb);
      112:do_vec_vpkswss   (vrt, t1.vra, t1.vrb);
      113:do_vec_vpkswus   (vrt, t1.vra, t1.vrb);
      114:do_vec_vpkuhum   (vrt, t1.vra, t1.vrb);
      115:do_vec_vpkuhus   (vrt, t1.vra, t1.vrb);
      116:do_vec_vpkuwum   (vrt, t1.vra, t1.vrb);
      117:do_vec_vpkuwus   (vrt, t1.vra, t1.vrb);	    
      118:do_vec_vupkhpx   (vrt, t1.vrb);
      119:do_vec_vupkhsb   (vrt, t1.vrb);
      120:do_vec_vupkhsh   (vrt, t1.vrb);
      121:do_vec_vupklpx   (vrt, t1.vrb);
      122:do_vec_vupklsb   (vrt, t1.vrb);
      123:do_vec_vupklsh   (vrt, t1.vrb);
      124:do_vec_vmrghb    (vrt, t1.vra, t1.vrb);
      125:do_vec_vmrghh    (vrt, t1.vra, t1.vrb);												
      126:do_vec_vmrghw    (vrt, t1.vra, t1.vrb);
      127:do_vec_vmrglb    (vrt, t1.vra, t1.vrb);
      128:do_vec_vmrglh    (vrt, t1.vra, t1.vrb);
      129:do_vec_vmrglw    (vrt, t1.vra, t1.vrb);
      130:do_vec_vspltb    (vrt, t1.vrb, t1.vra[3:0]);
      131:do_vec_vsplth    (vrt, t1.vrb, t1.vra[2:0]);
      132:do_vec_vspltw    (vrt, t1.vrb, t1.vra[1:0]);
      133:do_vec_vspltisb  (vrt, t1.vra[4:0]);
      134:do_vec_vspltish  (vrt, t1.vra[4:0]);
      135:do_vec_vspltisw  (vrt, t1.vra[4:0]);
      136:do_vec_vperm     (vrt, t1.vra, t1.vrb, t1.vrc);
      137:do_vec_vsel      (vrt, t1.vra, t1.vrb, t1.vrc);
      138:do_vec_vsl       (vrt, t1.vra, t1.vrb);
      139:do_vec_vsldoi    (vrt, t1.vra, t1.vrb, t1.vrc[3:0]);
      140:do_vec_vslo      (vrt, t1.vra, t1.vrb);
      141:do_vec_vsr       (vrt, t1.vra, t1.vrb);																							
      142:do_vec_vsro      (vrt, t1.vra, t1.vrb);
      default:
          $display("call from default case, t1.ins = %0d", t1.ins);
      endcase
      if (vrt != t1.vrt)//the software result is not equal to the hardware result
      begin
        $sformat(str, "------------Ins %0d (%s) MISMATCH!------------
                 vra = %h_%h_%h_%h
                 vrb = %h_%h_%h_%h
                 vrc = %h_%h_%h_%h
software result: vrt = %h_%h_%h_%h
hardware result: vrt = %h_%h_%h_%h",
                t1.ins, t1.str_ins, t1.vra[127:96],  t1.vra[ 95: 64],  t1.vra[ 63: 32],  t1.vra[ 31:  0],
                                    t1.vrb[127:96],  t1.vrb[ 95: 64],  t1.vrb[ 63: 32],  t1.vrb[ 31:  0],
                                    t1.vrc[127:96],  t1.vrc[ 95: 64],  t1.vrc[ 63: 32],  t1.vrc[ 31:  0],                  
                                       vrt[127:96],     vrt[ 95: 64],     vrt[ 63: 32],     vrt[ 31:  0],
                                    t1.vrt[127:96],  t1.vrt[ 95: 64],  t1.vrt[ 63: 32],  t1.vrt[ 31:  0]);              
        $display("%d\n SBD %s",count, str);
      end
      if (count == (ins_end - ins_begin + 1) * number_of_base && `BASE == 1)
      begin
        $display("\n------------------------------------------------------------");
        $display("--------            starting random test            --------");
        $display("------------------------------------------------------------\n");
      end
      //hardware and software comparison complete once
      if (count >= limit)
        test_done = 1;
      endfunction//update_and_check_score
  endclass//altivec_scoreboard
  
endpackage
