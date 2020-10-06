/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/49292/Desktop/Computer Hardware Experiments/experiment/GaryCodes/GaryDecode.vhd";



static void work_a_3069169239_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(46, ng0);

LAB3:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = xsi_vhdl_bitvec_srl(t1, t2, 4U, 1);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = xsi_vhdl_bitvec_xor(t3, t1, 4U, t4, 4U);
    t5 = (4U != 4U);
    if (t5 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 3600);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 4U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 3488);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB6;

}

static void work_a_3069169239_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(47, ng0);

LAB3:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = xsi_vhdl_bitvec_srl(t1, t3, 4U, 2);
    t4 = xsi_vhdl_bitvec_xor(t4, t2, 4U, t1, 4U);
    t5 = (4U != 4U);
    if (t5 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 3664);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 3504);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB6;

}

static void work_a_3069169239_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(48, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = xsi_vhdl_bitvec_srl(t1, t3, 4U, 3);
    t4 = xsi_vhdl_bitvec_xor(t4, t2, 4U, t1, 4U);
    t5 = (4U != 4U);
    if (t5 == 1)
        goto LAB5;

LAB6:    t6 = (t0 + 3728);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 3520);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB6;

}


extern void work_a_3069169239_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3069169239_3212880686_p_0,(void *)work_a_3069169239_3212880686_p_1,(void *)work_a_3069169239_3212880686_p_2};
	xsi_register_didat("work_a_3069169239_3212880686", "isim/decoder_isim_beh.exe.sim/work/a_3069169239_3212880686.didat");
	xsi_register_executes(pe);
}
