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
static const char *ng0 = "F:/Sistemas Digitais Trabalho 2/teste3/Trabalho-2-Sistemas-Digitais/calculadora_fpga/top2_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_1656860509_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4032U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3840);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4664);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 2928U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3840);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

void work_a_1656860509_3212880686_sub_144420774_54575813(char *t0, char *t1, char *t2)
{
    char t3[128];
    char t4[24];
    char t5[16];
    char t12[8];
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    int64 t23;
    int64 t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    int t29;
    int t30;
    int t31;
    int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned char t35;
    unsigned char t36;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t3 + 4U);
    t10 = ((IEEE_P_2592010699) + 3320);
    t11 = (t7 + 88U);
    *((char **)t11) = t10;
    t13 = (t7 + 56U);
    *((char **)t13) = t12;
    *((unsigned char *)t12) = (unsigned char)3;
    t14 = (t7 + 80U);
    *((unsigned int *)t14) = 1U;
    t15 = (t4 + 4U);
    t16 = (t2 != 0);
    if (t16 == 1)
        goto LAB3;

LAB2:    t17 = (t4 + 12U);
    *((char **)t17) = t5;
    t18 = (t0 + 4728);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB7:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB8;

LAB9:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB5:
LAB6:
LAB4:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB13:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB14;

LAB15:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB11:
LAB12:
LAB10:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    t8 = 0;
    t28 = 7;

LAB16:    if (t8 <= t28)
        goto LAB17;

LAB19:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t16 = *((unsigned char *)t10);
    t6 = (t0 + 4728);
    t11 = (t6 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = t16;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB36:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB37;

LAB38:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB34:
LAB35:
LAB33:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB42:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB43;

LAB44:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB40:
LAB41:
LAB39:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 4728);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB48:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB49;

LAB50:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB46:
LAB47:
LAB45:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB54:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB55;

LAB56:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB52:
LAB53:
LAB51:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);

LAB1:    return;
LAB3:    *((char **)t15) = t2;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB14:    xsi_saveStackAndSuspend(t1);
    goto LAB15;

LAB17:    t6 = (t5 + 0U);
    t29 = *((int *)t6);
    t10 = (t5 + 8U);
    t30 = *((int *)t10);
    t31 = (t8 - t29);
    t9 = (t31 * t30);
    t11 = (t5 + 4U);
    t32 = *((int *)t11);
    xsi_vhdl_check_range_of_index(t29, t32, t30, t8);
    t33 = (1U * t9);
    t34 = (0 + t33);
    t13 = (t2 + t34);
    t16 = *((unsigned char *)t13);
    t14 = (t0 + 4728);
    t18 = (t14 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    *((unsigned char *)t21) = t16;
    xsi_driver_first_trans_fast(t14);
    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t16 = *((unsigned char *)t10);
    t6 = (t5 + 0U);
    t29 = *((int *)t6);
    t11 = (t5 + 8U);
    t30 = *((int *)t11);
    t31 = (t8 - t29);
    t9 = (t31 * t30);
    t13 = (t5 + 4U);
    t32 = *((int *)t13);
    xsi_vhdl_check_range_of_index(t29, t32, t30, t8);
    t33 = (1U * t9);
    t34 = (0 + t33);
    t14 = (t2 + t34);
    t35 = *((unsigned char *)t14);
    t36 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t16, t35);
    t18 = (t7 + 56U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    *((unsigned char *)t18) = t36;
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB23:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB24;

LAB25:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB21:
LAB22:
LAB20:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t6);
    t6 = (t0 + 3048U);
    t10 = *((char **)t6);
    t23 = *((int64 *)t10);
    t24 = (t23 / 2);
    xsi_process_wait(t1, t24);

LAB29:    t6 = (t1 + 88U);
    t11 = *((char **)t6);
    t13 = (t11 + 2480U);
    *((unsigned int *)t13) = 1U;
    t14 = (t1 + 88U);
    t18 = *((char **)t14);
    t19 = (t18 + 0U);
    getcontext(t19);
    t20 = (t1 + 88U);
    t21 = *((char **)t20);
    t22 = (t21 + 2480U);
    t9 = *((unsigned int *)t22);
    if (t9 == 1)
        goto LAB30;

LAB31:    t25 = (t1 + 88U);
    t26 = *((char **)t25);
    t27 = (t26 + 2480U);
    *((unsigned int *)t27) = 3U;

LAB27:
LAB28:
LAB26:    t6 = (t0 + 4792);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);

LAB18:    if (t8 == t28)
        goto LAB19;

LAB32:    t29 = (t8 + 1);
    t8 = t29;
    goto LAB16;

LAB24:    xsi_saveStackAndSuspend(t1);
    goto LAB25;

LAB30:    xsi_saveStackAndSuspend(t1);
    goto LAB31;

LAB37:    xsi_saveStackAndSuspend(t1);
    goto LAB38;

LAB43:    xsi_saveStackAndSuspend(t1);
    goto LAB44;

LAB49:    xsi_saveStackAndSuspend(t1);
    goto LAB50;

LAB55:    xsi_saveStackAndSuspend(t1);
    goto LAB56;

}

static void work_a_1656860509_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(109, ng0);
    t3 = (160 * 1000000000LL);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8200);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8208);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(117, ng0);
    t3 = (140 * 1000000000LL);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8216);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8224);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(121, ng0);
    t3 = (140 * 1000000000LL);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8232);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8240);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(125, ng0);
    t3 = (140 * 1000000000LL);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8248);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4088);
    t4 = (t0 + 8256);
    work_a_1656860509_3212880686_sub_144420774_54575813(t0, t2, t4);
    xsi_set_current_line(129, ng0);
    t3 = (140 * 1000000000LL);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(130, ng0);
    t3 = (750 * 1000000000LL);
    t2 = (t0 + 4088);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(132, ng0);
    if ((unsigned char)0 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(133, ng0);

LAB32:    *((char **)t1) = &&LAB33;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t2 = (t0 + 8264);
    xsi_report(t2, 20U, (unsigned char)0);
    goto LAB29;

LAB30:    goto LAB2;

LAB31:    goto LAB30;

LAB33:    goto LAB31;

}


extern void work_a_1656860509_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1656860509_3212880686_p_0,(void *)work_a_1656860509_3212880686_p_1};
	static char *se[] = {(void *)work_a_1656860509_3212880686_sub_144420774_54575813};
	xsi_register_didat("work_a_1656860509_3212880686", "isim/tb_top2_isim_beh.exe.sim/work/a_1656860509_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
