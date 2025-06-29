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
static const char *ng0 = "C:/Users/rafam/OneDrive/Documentos/Facul/Sistemas Digitais/Trabalho 2/Trabalho-2-Sistemas-Digitais/calculadora_fpga/src/teclado_ps2.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_2229798109_3212880686_p_0(char *t0)
{
    char t11[16];
    char t13[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned int t5;
    unsigned int t6;
    unsigned int t7;
    char *t8;
    char *t9;
    unsigned char t10;
    char *t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned char t26;

LAB0:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5584);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t5 = (2 - 1);
    t6 = (t5 * 1U);
    t7 = (0 + t6);
    t3 = (t4 + t7);
    t8 = (t0 + 1352U);
    t9 = *((char **)t8);
    t10 = *((unsigned char *)t9);
    t12 = ((IEEE_P_2592010699) + 4024);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 1;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 1);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t8 = xsi_base_array_concat(t8, t11, t12, (char)97, t3, t13, (char)99, t10, (char)101);
    t17 = (2U + 1U);
    t18 = (3U != t17);
    if (t18 == 1)
        goto LAB5;

LAB6:    t15 = (t0 + 5728);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 3U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t16 = (2 - 2);
    t5 = (t16 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t3 + t7);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 1992U);
    t8 = *((char **)t4);
    t23 = (1 - 2);
    t17 = (t23 * -1);
    t24 = (1U * t17);
    t25 = (0 + t24);
    t4 = (t8 + t25);
    t10 = *((unsigned char *)t4);
    t18 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t26 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t2, t18);
    t9 = (t0 + 5792);
    t12 = (t9 + 56U);
    t14 = *((char **)t12);
    t15 = (t14 + 56U);
    t19 = *((char **)t15);
    *((unsigned char *)t19) = t26;
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

LAB5:    xsi_size_not_matching(3U, t17, 0);
    goto LAB6;

}

static void work_a_2229798109_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5600);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 5856);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(11U);
    memset(t1, 0, 11U);
    t3 = t1;
    memset(t3, (unsigned char)2, 11U);
    t4 = (t0 + 5920);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 5984);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 6048);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t11 = *((int *)t7);
    t12 = (t11 - 10);
    t13 = (t12 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t1 = (t0 + 5920);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    *((unsigned char *)t16) = t6;
    xsi_driver_first_trans_delta(t1, t15, 1, 0LL);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t2 = (t11 == 10);
    if (t2 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t12 = (t11 + 1);
    t1 = (t0 + 5856);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t12;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 6048);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t13 = (10 - 8);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t3 + t15);
    t4 = (t0 + 5984);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 5856);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}

static void work_a_2229798109_3212880686_p_2(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    int t14;
    int t16;
    char *t17;
    int t19;
    char *t20;
    int t22;
    char *t23;
    int t25;
    char *t26;
    int t28;
    char *t29;
    int t31;
    char *t32;
    int t34;
    char *t35;
    int t37;
    char *t38;
    int t40;
    char *t41;
    int t43;
    char *t44;
    int t46;
    char *t47;
    int t49;
    char *t50;
    int t52;
    char *t53;
    int t55;
    char *t56;
    int t58;
    char *t59;
    int t61;
    char *t62;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;

LAB0:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5616);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t1 = (t0 + 11024);
    t2 = 1;
    if (8U == 8U)
        goto LAB11;

LAB12:    t2 = 0;

LAB13:    if (t2 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(106, ng0);
    t1 = (t0 + 6176);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB9:    goto LAB3;

LAB5:    xsi_set_current_line(71, ng0);
    t3 = xsi_get_transient_memory(8U);
    memset(t3, 0, 8U);
    t7 = t3;
    memset(t7, (unsigned char)2, 8U);
    t8 = (t0 + 6112);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(74, ng0);
    t9 = (t0 + 2632U);
    t10 = *((char **)t9);
    t9 = (t0 + 11032);
    t14 = xsi_mem_cmp(t9, t10, 8U);
    if (t14 == 1)
        goto LAB18;

LAB36:    t12 = (t0 + 11040);
    t16 = xsi_mem_cmp(t12, t10, 8U);
    if (t16 == 1)
        goto LAB19;

LAB37:    t17 = (t0 + 11048);
    t19 = xsi_mem_cmp(t17, t10, 8U);
    if (t19 == 1)
        goto LAB20;

LAB38:    t20 = (t0 + 11056);
    t22 = xsi_mem_cmp(t20, t10, 8U);
    if (t22 == 1)
        goto LAB21;

LAB39:    t23 = (t0 + 11064);
    t25 = xsi_mem_cmp(t23, t10, 8U);
    if (t25 == 1)
        goto LAB22;

LAB40:    t26 = (t0 + 11072);
    t28 = xsi_mem_cmp(t26, t10, 8U);
    if (t28 == 1)
        goto LAB23;

LAB41:    t29 = (t0 + 11080);
    t31 = xsi_mem_cmp(t29, t10, 8U);
    if (t31 == 1)
        goto LAB24;

LAB42:    t32 = (t0 + 11088);
    t34 = xsi_mem_cmp(t32, t10, 8U);
    if (t34 == 1)
        goto LAB25;

LAB43:    t35 = (t0 + 11096);
    t37 = xsi_mem_cmp(t35, t10, 8U);
    if (t37 == 1)
        goto LAB26;

LAB44:    t38 = (t0 + 11104);
    t40 = xsi_mem_cmp(t38, t10, 8U);
    if (t40 == 1)
        goto LAB27;

LAB45:    t41 = (t0 + 11112);
    t43 = xsi_mem_cmp(t41, t10, 8U);
    if (t43 == 1)
        goto LAB28;

LAB46:    t44 = (t0 + 11120);
    t46 = xsi_mem_cmp(t44, t10, 8U);
    if (t46 == 1)
        goto LAB29;

LAB47:    t47 = (t0 + 11128);
    t49 = xsi_mem_cmp(t47, t10, 8U);
    if (t49 == 1)
        goto LAB30;

LAB48:    t50 = (t0 + 11136);
    t52 = xsi_mem_cmp(t50, t10, 8U);
    if (t52 == 1)
        goto LAB31;

LAB49:    t53 = (t0 + 11144);
    t55 = xsi_mem_cmp(t53, t10, 8U);
    if (t55 == 1)
        goto LAB32;

LAB50:    t56 = (t0 + 11152);
    t58 = xsi_mem_cmp(t56, t10, 8U);
    if (t58 == 1)
        goto LAB33;

LAB51:    t59 = (t0 + 11160);
    t61 = xsi_mem_cmp(t59, t10, 8U);
    if (t61 == 1)
        goto LAB34;

LAB52:
LAB35:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 11304);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);

LAB17:    xsi_set_current_line(102, ng0);
    t1 = (t0 + 3112U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t2);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB54;

LAB56:
LAB55:    goto LAB9;

LAB11:    t13 = 0;

LAB14:    if (t13 < 8U)
        goto LAB15;
    else
        goto LAB13;

LAB15:    t7 = (t3 + t13);
    t8 = (t1 + t13);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB12;

LAB16:    t13 = (t13 + 1);
    goto LAB14;

LAB18:    xsi_set_current_line(75, ng0);
    t62 = (t0 + 11168);
    t64 = (t0 + 6112);
    t65 = (t64 + 56U);
    t66 = *((char **)t65);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    memcpy(t68, t62, 8U);
    xsi_driver_first_trans_fast(t64);
    goto LAB17;

LAB19:    xsi_set_current_line(76, ng0);
    t1 = (t0 + 11176);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB20:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 11184);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB21:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 11192);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB22:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 11200);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB23:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 11208);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB24:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 11216);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB25:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 11224);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB26:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 11232);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB27:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 11240);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB28:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 11248);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB29:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 11256);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB30:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 11264);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB31:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 11272);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB32:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 11280);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB33:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 11288);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB34:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 11296);
    t4 = (t0 + 6112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB17;

LAB53:;
LAB54:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6176);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB55;

}

static void work_a_2229798109_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5632);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2229798109_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6304);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5648);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2229798109_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2229798109_3212880686_p_0,(void *)work_a_2229798109_3212880686_p_1,(void *)work_a_2229798109_3212880686_p_2,(void *)work_a_2229798109_3212880686_p_3,(void *)work_a_2229798109_3212880686_p_4};
	xsi_register_didat("work_a_2229798109_3212880686", "isim/tb_teclado_ps2_isim_beh.exe.sim/work/a_2229798109_3212880686.didat");
	xsi_register_executes(pe);
}
