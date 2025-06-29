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
static const char *ng0 = "C:/Users/rafam/OneDrive/Documentos/Facul/Sistemas Digitais/Trabalho 2/Trabalho-2-Sistemas-Digitais/calculadora_fpga/teclado_ps2_tb.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_2902940868_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 3992);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 2920);
    xsi_process_wait(t2, t11);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

}

static void work_a_2902940868_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 3360U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);

LAB4:
LAB5:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 4056);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(54, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3168);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:;
LAB7:    goto LAB2;

LAB8:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4056);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(56, ng0);
    t7 = (40 * 1000000LL);
    t2 = (t0 + 3168);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}

void work_a_2902940868_3212880686_sub_144420774_36105193(char *t0, char *t1, char *t2)
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
    char *t24;
    char *t25;
    int t26;
    int t27;
    int t28;
    int t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    unsigned char t34;

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
    t18 = (t0 + 4184);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t18);
    t23 = (80 * 1000000LL);
    xsi_process_wait(t1, t23);

LAB7:    t6 = (t1 + 88U);
    t10 = *((char **)t6);
    t11 = (t10 + 2480U);
    *((unsigned int *)t11) = 1U;
    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t18 = (t14 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB8;

LAB9:    t22 = (t1 + 88U);
    t24 = *((char **)t22);
    t25 = (t24 + 2480U);
    *((unsigned int *)t25) = 3U;

LAB5:
LAB6:
LAB4:    t8 = 0;
    t26 = 7;

LAB10:    if (t8 <= t26)
        goto LAB11;

LAB13:    t6 = (t7 + 56U);
    t10 = *((char **)t6);
    t16 = *((unsigned char *)t10);
    t6 = (t0 + 4184);
    t11 = (t6 + 56U);
    t13 = *((char **)t11);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = t16;
    xsi_driver_first_trans_fast(t6);
    t23 = (80 * 1000000LL);
    xsi_process_wait(t1, t23);

LAB24:    t6 = (t1 + 88U);
    t10 = *((char **)t6);
    t11 = (t10 + 2480U);
    *((unsigned int *)t11) = 1U;
    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t18 = (t14 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB25;

LAB26:    t22 = (t1 + 88U);
    t24 = *((char **)t22);
    t25 = (t24 + 2480U);
    *((unsigned int *)t25) = 3U;

LAB22:
LAB23:
LAB21:    t6 = (t0 + 4184);
    t10 = (t6 + 56U);
    t11 = *((char **)t10);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t6);
    t23 = (80 * 1000000LL);
    xsi_process_wait(t1, t23);

LAB30:    t6 = (t1 + 88U);
    t10 = *((char **)t6);
    t11 = (t10 + 2480U);
    *((unsigned int *)t11) = 1U;
    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t18 = (t14 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB31;

LAB32:    t22 = (t1 + 88U);
    t24 = *((char **)t22);
    t25 = (t24 + 2480U);
    *((unsigned int *)t25) = 3U;

LAB28:
LAB29:
LAB27:
LAB1:    return;
LAB3:    *((char **)t15) = t2;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB11:    t6 = (t5 + 0U);
    t27 = *((int *)t6);
    t10 = (t5 + 8U);
    t28 = *((int *)t10);
    t29 = (t8 - t27);
    t9 = (t29 * t28);
    t11 = (t5 + 4U);
    t30 = *((int *)t11);
    xsi_vhdl_check_range_of_index(t27, t30, t28, t8);
    t31 = (1U * t9);
    t32 = (0 + t31);
    t13 = (t2 + t32);
    t16 = *((unsigned char *)t13);
    t14 = (t0 + 4184);
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
    t27 = *((int *)t6);
    t11 = (t5 + 8U);
    t28 = *((int *)t11);
    t29 = (t8 - t27);
    t9 = (t29 * t28);
    t13 = (t5 + 4U);
    t30 = *((int *)t13);
    xsi_vhdl_check_range_of_index(t27, t30, t28, t8);
    t31 = (1U * t9);
    t32 = (0 + t31);
    t14 = (t2 + t32);
    t33 = *((unsigned char *)t14);
    t34 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t16, t33);
    t18 = (t7 + 56U);
    t19 = *((char **)t18);
    t18 = (t19 + 0);
    *((unsigned char *)t18) = t34;
    t23 = (80 * 1000000LL);
    xsi_process_wait(t1, t23);

LAB17:    t6 = (t1 + 88U);
    t10 = *((char **)t6);
    t11 = (t10 + 2480U);
    *((unsigned int *)t11) = 1U;
    t13 = (t1 + 88U);
    t14 = *((char **)t13);
    t18 = (t14 + 0U);
    getcontext(t18);
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t21 = (t20 + 2480U);
    t9 = *((unsigned int *)t21);
    if (t9 == 1)
        goto LAB18;

LAB19:    t22 = (t1 + 88U);
    t24 = *((char **)t22);
    t25 = (t24 + 2480U);
    *((unsigned int *)t25) = 3U;

LAB15:
LAB16:
LAB14:
LAB12:    if (t8 == t26)
        goto LAB13;

LAB20:    t27 = (t8 + 1);
    t8 = t27;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

LAB31:    xsi_saveStackAndSuspend(t1);
    goto LAB32;

}

static void work_a_2902940868_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    t1 = (t0 + 3608U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(86, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7592);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7600);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(94, ng0);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(97, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(98, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(99, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    xsi_set_current_line(101, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7608);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(102, ng0);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7616);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7624);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(112, ng0);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    xsi_set_current_line(119, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7632);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 3416);
    t4 = (t0 + 7640);
    work_a_2902940868_3212880686_sub_144420774_36105193(t0, t2, t4);
    xsi_set_current_line(121, ng0);
    t3 = (200 * 1000000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(124, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB54:    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4120);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t3 = (40 * 1000LL);
    t2 = (t0 + 3416);
    xsi_process_wait(t2, t3);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    goto LAB52;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(128, ng0);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    goto LAB2;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

}


extern void work_a_2902940868_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2902940868_3212880686_p_0,(void *)work_a_2902940868_3212880686_p_1,(void *)work_a_2902940868_3212880686_p_2};
	static char *se[] = {(void *)work_a_2902940868_3212880686_sub_144420774_36105193};
	xsi_register_didat("work_a_2902940868_3212880686", "isim/teclado_ps2_tb_isim_beh.exe.sim/work/a_2902940868_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
