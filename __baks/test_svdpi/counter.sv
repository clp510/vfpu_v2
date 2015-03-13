`timescale 1ns/1ns

import  "DPI-C" function void do_vec_vmaddfp (
                                            output bit [31:0] vrt,
                                            input  bit [31:0] vra,
                                            input  bit [31:0] vrb,
                                            input  bit [31:0] vrc
                                            );

import  "DPI-C" function void counter7 (
                                        output bit [6:0]    out,
                                        input  bit [6:0]    in,
                                        input  bit reset,load);

program automatic counter;
bit [6:0]   out,in;
bit         reset,load;

bit [31:0]  vra,vrb,vrc,vrt;
initial begin
    $monitor("SV:out=%3d,in=%3d,reset=%0d,load=%0d\n",out,in,reset,load);
    reset   = 0;
    load    = 0;
    in      = 126;
    out     = 42;
    counter7(out,in,reset,load);

    #10 reset   = 1;
    counter7(out,in,reset,load);

    #100;
    $display("test vmaddfp");
    $monitor("SV:vrt=%h,vra=%h,vrb=%h,vrc=%h\n",vrt,vra,vrb,vrc);
    vra = 32'h3f800000;
    vrb = 32'h40000000;
    vrc = 32'h40400000;
    do_vec_vmaddfp(vrt,vra,vrb,vrc);
    #20;
    vra = 32'h40000000;
    vrb = 32'h40400000;
    vrc = 32'h40400000;
    do_vec_vmaddfp(vrt,vra,vrb,vrc);
    #20;


    end
endprogram    
