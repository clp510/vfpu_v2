#include<stdio.h>
#include<altivec.h>
//=======================================================================
typedef union vec{
//Standard C Datatypes
unsigned int   s_i[4];
float            f[4];
//Altivec data type
vector unsigned char      v_u_c;
vector signed   char      v_s_c;
vector bool     char      v_b_c;
vector unsigned short     v_u_s;
vector unsigned short int v_u_s_i;
vector signed   short     v_s_s;
vector signed   short int v_s_s_i;
vector bool     short     v_b_s;
vector bool     short int v_b_s_i;
vector unsigned int       v_u_i;
vector signed   int       v_s_i;
vector bool     int       v_b_i;
vector float              v_f;
vector pixel              v_p;
}vector_type;

void vec_print_std(vector_type vec)
{
  int i;
  for(i=0;i<4;i++)
  {    
    printf("%08x",vec.s_i[i]); 
  }
}

//=========================================================================


vector_type a = { 0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000 };
vector_type b = { 0x00200000, 0x3f800000, 0x3f800000, 0x3f800000 };
vector_type c = { 0x00400000, 0x3f800000, 0x3f800000, 0x3f800000 };

vector_type f;
vector_type vscr_value = {0x0,0x0,0x0,0x0};

int main(){
//----------------------------------------
//Non Java Mode
//----------------------------------------
//Detect Machine state is Non-Java mode or not,1--NJ mode,0--Java mode
vector unsigned short d;
d = vec_mfvscr();
vec_print_std((vector_type)d);

printf("\n");
//-----------------------------------
printf("Non Java mode result:\n");
f.v_f = vec_madd(a.v_f,b.v_f,c.v_f);
vec_print_std(f);
printf("\n");

//---------------------------------------
//Java Mode
//---------------------------------------
//enter Java Mode
vec_mtvscr(vscr_value);
//check for Machine mode
d = vec_mfvscr();
vec_print_std((vector_type)d);
printf("\n");
printf("Java mode result:\n");
f.v_f = vec_madd(a.v_f,b.v_f,c.v_f);
vec_print_std(f);
printf("\n");

return 0;
}
