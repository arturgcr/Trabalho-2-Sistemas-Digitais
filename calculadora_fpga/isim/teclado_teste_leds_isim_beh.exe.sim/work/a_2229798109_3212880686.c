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

LAB0:    xsi_set_current_line(38, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5744);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(39, ng0);
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

LAB6:    t15 = (t0 + 5888);
    t19 = (t15 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t8, 3U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(40, ng0);
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
    t9 = (t0 + 5952);
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
    char t14[16];
    char t15[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned char t13;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    int t24;

LAB0:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5760);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 6016);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t8 = (t2 == (unsigned char)3);
    if (t8 != 0)
        goto LAB8;

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 6080);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(11U);
    memset(t1, 0, 11U);
    t3 = t1;
    memset(t3, (unsigned char)2, 11U);
    t4 = (t0 + 6144);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 11U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(52, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 6208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(53, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t3 = t1;
    memset(t3, (unsigned char)2, 8U);
    t4 = (t0 + 6272);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB6;

LAB8:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2472U);
    t4 = *((char **)t1);
    t10 = (10 - 10);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t4 + t12);
    t5 = (t0 + 1512U);
    t6 = *((char **)t5);
    t13 = *((unsigned char *)t6);
    t7 = ((IEEE_P_2592010699) + 4024);
    t9 = (t15 + 0U);
    t16 = (t9 + 0U);
    *((int *)t16) = 10;
    t16 = (t9 + 4U);
    *((int *)t16) = 1;
    t16 = (t9 + 8U);
    *((int *)t16) = -1;
    t17 = (1 - 10);
    t18 = (t17 * -1);
    t18 = (t18 + 1);
    t16 = (t9 + 12U);
    *((unsigned int *)t16) = t18;
    t5 = xsi_base_array_concat(t5, t14, t7, (char)97, t1, t15, (char)99, t13, (char)101);
    t18 = (10U + 1U);
    t19 = (11U != t18);
    if (t19 == 1)
        goto LAB10;

LAB11:    t16 = (t0 + 6144);
    t20 = (t16 + 56U);
    t21 = *((char **)t20);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    memcpy(t23, t5, 11U);
    xsi_driver_first_trans_fast(t16);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t17 = *((int *)t3);
    t2 = (t17 == 10);
    if (t2 != 0)
        goto LAB12;

LAB14:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t17 = *((int *)t3);
    t24 = (t17 + 1);
    t1 = (t0 + 6080);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((int *)t7) = t24;
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB6;

LAB10:    xsi_size_not_matching(11U, t18, 0);
    goto LAB11;

LAB12:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 6272);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t4, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t10 = (10 - 8);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t1 = (t3 + t12);
    t4 = (t0 + 6208);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t9 = *((char **)t7);
    memcpy(t9, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 6080);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((int *)t6) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 6016);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

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
    unsigned char t13;
    unsigned int t14;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    int t33;
    char *t34;
    int t36;
    char *t37;
    int t39;
    char *t40;
    int t42;
    char *t43;
    int t45;
    char *t46;
    int t48;
    char *t49;
    int t51;
    char *t52;
    int t54;
    char *t55;
    int t57;
    char *t58;
    int t60;
    char *t61;
    int t63;
    char *t64;
    char *t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5776);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 3272U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB10;

LAB11:    t2 = (unsigned char)0;

LAB12:    if (t2 != 0)
        goto LAB8;

LAB9:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 6400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(73, ng0);
    t3 = xsi_get_transient_memory(8U);
    memset(t3, 0, 8U);
    t7 = t3;
    memset(t7, (unsigned char)2, 8U);
    t8 = (t0 + 6336);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(75, ng0);
    t10 = (t0 + 2632U);
    t11 = *((char **)t10);
    t10 = (t0 + 11405);
    t15 = xsi_mem_cmp(t10, t11, 8U);
    if (t15 == 1)
        goto LAB20;

LAB38:    t16 = (t0 + 11413);
    t18 = xsi_mem_cmp(t16, t11, 8U);
    if (t18 == 1)
        goto LAB21;

LAB39:    t19 = (t0 + 11421);
    t21 = xsi_mem_cmp(t19, t11, 8U);
    if (t21 == 1)
        goto LAB22;

LAB40:    t22 = (t0 + 11429);
    t24 = xsi_mem_cmp(t22, t11, 8U);
    if (t24 == 1)
        goto LAB23;

LAB41:    t25 = (t0 + 11437);
    t27 = xsi_mem_cmp(t25, t11, 8U);
    if (t27 == 1)
        goto LAB24;

LAB42:    t28 = (t0 + 11445);
    t30 = xsi_mem_cmp(t28, t11, 8U);
    if (t30 == 1)
        goto LAB25;

LAB43:    t31 = (t0 + 11453);
    t33 = xsi_mem_cmp(t31, t11, 8U);
    if (t33 == 1)
        goto LAB26;

LAB44:    t34 = (t0 + 11461);
    t36 = xsi_mem_cmp(t34, t11, 8U);
    if (t36 == 1)
        goto LAB27;

LAB45:    t37 = (t0 + 11469);
    t39 = xsi_mem_cmp(t37, t11, 8U);
    if (t39 == 1)
        goto LAB28;

LAB46:    t40 = (t0 + 11477);
    t42 = xsi_mem_cmp(t40, t11, 8U);
    if (t42 == 1)
        goto LAB29;

LAB47:    t43 = (t0 + 11485);
    t45 = xsi_mem_cmp(t43, t11, 8U);
    if (t45 == 1)
        goto LAB30;

LAB48:    t46 = (t0 + 11493);
    t48 = xsi_mem_cmp(t46, t11, 8U);
    if (t48 == 1)
        goto LAB31;

LAB49:    t49 = (t0 + 11501);
    t51 = xsi_mem_cmp(t49, t11, 8U);
    if (t51 == 1)
        goto LAB32;

LAB50:    t52 = (t0 + 11509);
    t54 = xsi_mem_cmp(t52, t11, 8U);
    if (t54 == 1)
        goto LAB33;

LAB51:    t55 = (t0 + 11517);
    t57 = xsi_mem_cmp(t55, t11, 8U);
    if (t57 == 1)
        goto LAB34;

LAB52:    t58 = (t0 + 11525);
    t60 = xsi_mem_cmp(t58, t11, 8U);
    if (t60 == 1)
        goto LAB35;

LAB53:    t61 = (t0 + 11533);
    t63 = xsi_mem_cmp(t61, t11, 8U);
    if (t63 == 1)
        goto LAB36;

LAB54:
LAB37:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 11677);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);

LAB19:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 6400);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    t1 = (t0 + 2792U);
    t4 = *((char **)t1);
    t1 = (t0 + 11397);
    t13 = 1;
    if (8U == 8U)
        goto LAB13;

LAB14:    t13 = 0;

LAB15:    t2 = t13;
    goto LAB12;

LAB13:    t14 = 0;

LAB16:    if (t14 < 8U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t8 = (t4 + t14);
    t9 = (t1 + t14);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB14;

LAB18:    t14 = (t14 + 1);
    goto LAB16;

LAB20:    xsi_set_current_line(76, ng0);
    t64 = (t0 + 11541);
    t66 = (t0 + 6336);
    t67 = (t66 + 56U);
    t68 = *((char **)t67);
    t69 = (t68 + 56U);
    t70 = *((char **)t69);
    memcpy(t70, t64, 8U);
    xsi_driver_first_trans_fast(t66);
    goto LAB19;

LAB21:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 11549);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB22:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 11557);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB23:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 11565);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB24:    xsi_set_current_line(80, ng0);
    t1 = (t0 + 11573);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB25:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 11581);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB26:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 11589);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB27:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 11597);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB28:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 11605);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB29:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 11613);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB30:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 11621);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB31:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 11629);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB32:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 11637);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB33:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 11645);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB34:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 11653);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB35:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 11661);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB36:    xsi_set_current_line(96, ng0);
    t1 = (t0 + 11669);
    t4 = (t0 + 6336);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t4);
    goto LAB19;

LAB55:;
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

LAB0:    xsi_set_current_line(111, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6464);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5792);
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

LAB0:    xsi_set_current_line(112, ng0);

LAB3:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6528);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 5808);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2229798109_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2229798109_3212880686_p_0,(void *)work_a_2229798109_3212880686_p_1,(void *)work_a_2229798109_3212880686_p_2,(void *)work_a_2229798109_3212880686_p_3,(void *)work_a_2229798109_3212880686_p_4};
	xsi_register_didat("work_a_2229798109_3212880686", "isim/teclado_teste_leds_isim_beh.exe.sim/work/a_2229798109_3212880686.didat");
	xsi_register_executes(pe);
}
