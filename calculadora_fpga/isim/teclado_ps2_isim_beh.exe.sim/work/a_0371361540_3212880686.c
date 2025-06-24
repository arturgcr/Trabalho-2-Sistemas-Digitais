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
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0371361540_3212880686_p_0(char *t0)
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

LAB0:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7376);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(41, ng0);
    t3 = (t0 + 2632U);
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

LAB6:    t15 = (t0 + 7584);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 3U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t16 = (2 - 2);
    t5 = (t16 * -1);
    t6 = (1U * t5);
    t7 = (0 + t6);
    t1 = (t3 + t7);
    t2 = *((unsigned char *)t1);
    t4 = (t0 + 2632U);
    t8 = *((char **)t4);
    t23 = (1 - 2);
    t17 = (t23 * -1);
    t24 = (1U * t17);
    t25 = (0 + t24);
    t4 = (t8 + t25);
    t10 = *((unsigned char *)t4);
    t18 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t10);
    t26 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t2, t18);
    t9 = (t0 + 7648);
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

static void work_a_0371361540_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2792U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 7712);
    t7 = (t3 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(11U);
    memset(t1, 0, 11U);
    t3 = t1;
    memset(t3, (unsigned char)2, 11U);
    t4 = (t0 + 7776);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 11U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 7840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1512U);
    t4 = *((char **)t1);
    t6 = *((unsigned char *)t4);
    t1 = (t0 + 2952U);
    t7 = *((char **)t1);
    t11 = *((int *)t7);
    t12 = (t11 - 10);
    t13 = (t12 * -1);
    t14 = (1 * t13);
    t15 = (0U + t14);
    t1 = (t0 + 7776);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    *((unsigned char *)t16) = t6;
    xsi_driver_first_trans_delta(t1, t15, 1, 0LL);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t2 = (t11 == 10);
    if (t2 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t11 = *((int *)t3);
    t12 = (t11 + 1);
    t1 = (t0 + 7712);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((int *)t9) = t12;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(63, ng0);
    t1 = (t0 + 7840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB11:    goto LAB6;

LAB10:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 3112U);
    t4 = *((char **)t1);
    t13 = (10 - 8);
    t14 = (t13 * 1U);
    t15 = (0 + t14);
    t1 = (t4 + t15);
    t7 = (t0 + 7904);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t16 = *((char **)t10);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 7712);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 7840);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}

static void work_a_0371361540_3212880686_p_2(char *t0)
{
    char t10[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int t20;
    int t21;
    int t22;
    int t23;
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
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    char *t65;

LAB0:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 7408);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(73, ng0);
    t3 = (t0 + 3432U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 3272U);
    t7 = *((char **)t3);
    t3 = (t0 + 14444U);
    t8 = (t0 + 14526);
    t11 = (t10 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 7;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t13 = (7 - 0);
    t14 = (t13 * 1);
    t14 = (t14 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t14;
    t15 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t7, t3, t8, t10);
    if (t15 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 3592U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB11;

LAB12:
LAB9:    goto LAB6;

LAB8:    xsi_set_current_line(75, ng0);
    t12 = (t0 + 7968);
    t16 = (t12 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(76, ng0);
    t1 = (t0 + 8032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 8032);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t1 = (t0 + 14534);
    t13 = xsi_mem_cmp(t1, t3, 8U);
    if (t13 == 1)
        goto LAB14;

LAB32:    t7 = (t0 + 14542);
    t20 = xsi_mem_cmp(t7, t3, 8U);
    if (t20 == 1)
        goto LAB15;

LAB33:    t9 = (t0 + 14550);
    t21 = xsi_mem_cmp(t9, t3, 8U);
    if (t21 == 1)
        goto LAB16;

LAB34:    t12 = (t0 + 14558);
    t22 = xsi_mem_cmp(t12, t3, 8U);
    if (t22 == 1)
        goto LAB17;

LAB35:    t17 = (t0 + 14566);
    t23 = xsi_mem_cmp(t17, t3, 8U);
    if (t23 == 1)
        goto LAB18;

LAB36:    t19 = (t0 + 14574);
    t25 = xsi_mem_cmp(t19, t3, 8U);
    if (t25 == 1)
        goto LAB19;

LAB37:    t26 = (t0 + 14582);
    t28 = xsi_mem_cmp(t26, t3, 8U);
    if (t28 == 1)
        goto LAB20;

LAB38:    t29 = (t0 + 14590);
    t31 = xsi_mem_cmp(t29, t3, 8U);
    if (t31 == 1)
        goto LAB21;

LAB39:    t32 = (t0 + 14598);
    t34 = xsi_mem_cmp(t32, t3, 8U);
    if (t34 == 1)
        goto LAB22;

LAB40:    t35 = (t0 + 14606);
    t37 = xsi_mem_cmp(t35, t3, 8U);
    if (t37 == 1)
        goto LAB23;

LAB41:    t38 = (t0 + 14614);
    t40 = xsi_mem_cmp(t38, t3, 8U);
    if (t40 == 1)
        goto LAB24;

LAB42:    t41 = (t0 + 14622);
    t43 = xsi_mem_cmp(t41, t3, 8U);
    if (t43 == 1)
        goto LAB25;

LAB43:    t44 = (t0 + 14630);
    t46 = xsi_mem_cmp(t44, t3, 8U);
    if (t46 == 1)
        goto LAB26;

LAB44:    t47 = (t0 + 14638);
    t49 = xsi_mem_cmp(t47, t3, 8U);
    if (t49 == 1)
        goto LAB27;

LAB45:    t50 = (t0 + 14646);
    t52 = xsi_mem_cmp(t50, t3, 8U);
    if (t52 == 1)
        goto LAB28;

LAB46:    t53 = (t0 + 14654);
    t55 = xsi_mem_cmp(t53, t3, 8U);
    if (t55 == 1)
        goto LAB29;

LAB47:    t56 = (t0 + 14662);
    t58 = xsi_mem_cmp(t56, t3, 8U);
    if (t58 == 1)
        goto LAB30;

LAB48:
LAB31:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 14806);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);

LAB13:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 7968);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB14:    xsi_set_current_line(80, ng0);
    t59 = (t0 + 14670);
    t61 = (t0 + 8096);
    t62 = (t61 + 56U);
    t63 = *((char **)t62);
    t64 = (t63 + 56U);
    t65 = *((char **)t64);
    memcpy(t65, t59, 8U);
    xsi_driver_first_trans_fast(t61);
    goto LAB13;

LAB15:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 14678);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB16:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 14686);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB17:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 14694);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB18:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 14702);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB19:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 14710);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB20:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 14718);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB21:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 14726);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB22:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 14734);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB23:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 14742);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB24:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 14750);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB25:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 14758);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB26:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 14766);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB27:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 14774);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB28:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 14782);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB29:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 14790);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB30:    xsi_set_current_line(100, ng0);
    t1 = (t0 + 14798);
    t4 = (t0 + 8096);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB13;

LAB49:;
}

static void work_a_0371361540_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 3912U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8160);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7424);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0371361540_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(113, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 8224);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7440);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0371361540_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(114, ng0);

LAB3:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    t1 = (t0 + 8288);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7456);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0371361540_3212880686_p_6(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(115, ng0);

LAB3:    t1 = (t0 + 3592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8352);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7472);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0371361540_3212880686_p_7(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(116, ng0);

LAB3:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 8416);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 7488);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0371361540_3212880686_p_8(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(117, ng0);

LAB3:    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t1 = (t0 + 8480);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 7504);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0371361540_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0371361540_3212880686_p_0,(void *)work_a_0371361540_3212880686_p_1,(void *)work_a_0371361540_3212880686_p_2,(void *)work_a_0371361540_3212880686_p_3,(void *)work_a_0371361540_3212880686_p_4,(void *)work_a_0371361540_3212880686_p_5,(void *)work_a_0371361540_3212880686_p_6,(void *)work_a_0371361540_3212880686_p_7,(void *)work_a_0371361540_3212880686_p_8};
	xsi_register_didat("work_a_0371361540_3212880686", "isim/teclado_ps2_isim_beh.exe.sim/work/a_0371361540_3212880686.didat");
	xsi_register_executes(pe);
}
