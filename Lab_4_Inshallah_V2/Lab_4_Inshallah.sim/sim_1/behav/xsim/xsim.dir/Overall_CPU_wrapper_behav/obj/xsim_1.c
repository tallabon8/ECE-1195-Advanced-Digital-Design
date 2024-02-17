/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_42(char*, char *);
extern void execute_43(char*, char *);
extern void execute_47(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_55(char*, char *);
extern void execute_190(char*, char *);
extern void execute_59(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_100(char*, char *);
extern void execute_101(char*, char *);
extern void execute_103(char*, char *);
extern void execute_104(char*, char *);
extern void execute_106(char*, char *);
extern void execute_107(char*, char *);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_118(char*, char *);
extern void execute_119(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_139(char*, char *);
extern void execute_140(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_169(char*, char *);
extern void execute_170(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_176(char*, char *);
extern void execute_178(char*, char *);
extern void execute_179(char*, char *);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_182(char*, char *);
extern void execute_183(char*, char *);
extern void execute_184(char*, char *);
extern void execute_185(char*, char *);
extern void execute_186(char*, char *);
extern void execute_187(char*, char *);
extern void execute_188(char*, char *);
extern void execute_189(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_195(char*, char *);
extern void execute_201(char*, char *);
extern void execute_207(char*, char *);
extern void execute_210(char*, char *);
extern void execute_213(char*, char *);
extern void execute_214(char*, char *);
extern void execute_232(char*, char *);
extern void execute_216(char*, char *);
extern void execute_217(char*, char *);
extern void execute_219(char*, char *);
extern void execute_220(char*, char *);
extern void execute_222(char*, char *);
extern void execute_223(char*, char *);
extern void execute_225(char*, char *);
extern void execute_227(char*, char *);
extern void execute_229(char*, char *);
extern void execute_230(char*, char *);
extern void execute_231(char*, char *);
extern void execute_235(char*, char *);
extern void execute_238(char*, char *);
extern void execute_241(char*, char *);
extern void execute_244(char*, char *);
extern void execute_247(char*, char *);
extern void execute_250(char*, char *);
extern void execute_253(char*, char *);
extern void execute_256(char*, char *);
extern void execute_259(char*, char *);
extern void execute_262(char*, char *);
extern void execute_268(char*, char *);
extern void execute_271(char*, char *);
extern void execute_274(char*, char *);
extern void execute_277(char*, char *);
extern void execute_278(char*, char *);
extern void execute_279(char*, char *);
extern void execute_282(char*, char *);
extern void execute_301(char*, char *);
extern void execute_302(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_63(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_65(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_66(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_107(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_108(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_110(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_114(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_122(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_125(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_130(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_131(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_132(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_133(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_134(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_135(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_137(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_139(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_142(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_274(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_275(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_276(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_277(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_282(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[200] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_42, (funcp)execute_43, (funcp)execute_47, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_55, (funcp)execute_190, (funcp)execute_59, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_82, (funcp)execute_83, (funcp)execute_85, (funcp)execute_86, (funcp)execute_88, (funcp)execute_89, (funcp)execute_91, (funcp)execute_92, (funcp)execute_94, (funcp)execute_95, (funcp)execute_97, (funcp)execute_98, (funcp)execute_100, (funcp)execute_101, (funcp)execute_103, (funcp)execute_104, (funcp)execute_106, (funcp)execute_107, (funcp)execute_109, (funcp)execute_110, (funcp)execute_112, (funcp)execute_113, (funcp)execute_115, (funcp)execute_116, (funcp)execute_118, (funcp)execute_119, (funcp)execute_121, (funcp)execute_122, (funcp)execute_124, (funcp)execute_125, (funcp)execute_127, (funcp)execute_128, (funcp)execute_130, (funcp)execute_131, (funcp)execute_133, (funcp)execute_134, (funcp)execute_136, (funcp)execute_137, (funcp)execute_139, (funcp)execute_140, (funcp)execute_142, (funcp)execute_143, (funcp)execute_145, (funcp)execute_146, (funcp)execute_148, (funcp)execute_149, (funcp)execute_151, (funcp)execute_152, (funcp)execute_154, (funcp)execute_155, (funcp)execute_157, (funcp)execute_158, (funcp)execute_160, (funcp)execute_161, (funcp)execute_163, (funcp)execute_164, (funcp)execute_166, (funcp)execute_167, (funcp)execute_169, (funcp)execute_170, (funcp)execute_172, (funcp)execute_173, (funcp)execute_176, (funcp)execute_178, (funcp)execute_179, (funcp)execute_180, (funcp)execute_181, (funcp)execute_182, (funcp)execute_183, (funcp)execute_184, (funcp)execute_185, (funcp)execute_186, (funcp)execute_187, (funcp)execute_188, (funcp)execute_189, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_201, (funcp)execute_207, (funcp)execute_210, (funcp)execute_213, (funcp)execute_214, (funcp)execute_232, (funcp)execute_216, (funcp)execute_217, (funcp)execute_219, (funcp)execute_220, (funcp)execute_222, (funcp)execute_223, (funcp)execute_225, (funcp)execute_227, (funcp)execute_229, (funcp)execute_230, (funcp)execute_231, (funcp)execute_235, (funcp)execute_238, (funcp)execute_241, (funcp)execute_244, (funcp)execute_247, (funcp)execute_250, (funcp)execute_253, (funcp)execute_256, (funcp)execute_259, (funcp)execute_262, (funcp)execute_268, (funcp)execute_271, (funcp)execute_274, (funcp)execute_277, (funcp)execute_278, (funcp)execute_279, (funcp)execute_282, (funcp)execute_301, (funcp)execute_302, (funcp)execute_295, (funcp)execute_296, (funcp)execute_297, (funcp)execute_298, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_63, (funcp)transaction_65, (funcp)transaction_66, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_74, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_83, (funcp)transaction_93, (funcp)transaction_95, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_107, (funcp)transaction_108, (funcp)transaction_109, (funcp)transaction_110, (funcp)transaction_111, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_114, (funcp)transaction_116, (funcp)transaction_117, (funcp)transaction_118, (funcp)transaction_120, (funcp)transaction_121, (funcp)transaction_122, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_125, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_130, (funcp)transaction_131, (funcp)transaction_132, (funcp)transaction_133, (funcp)transaction_134, (funcp)transaction_135, (funcp)transaction_136, (funcp)transaction_137, (funcp)transaction_138, (funcp)transaction_139, (funcp)transaction_142, (funcp)transaction_274, (funcp)transaction_275, (funcp)transaction_276, (funcp)transaction_277, (funcp)transaction_282};
const int NumRelocateId= 200;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Overall_CPU_wrapper_behav/xsim.reloc",  (void **)funcTab, 200);
	iki_vhdl_file_variable_register(dp + 70272);
	iki_vhdl_file_variable_register(dp + 70328);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Overall_CPU_wrapper_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 81248, dp + 133448, 0, 63, 0, 63, 64, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 81248, dp + 133960, 0, 63, 0, 63, 64, 1);

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/Overall_CPU_wrapper_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Overall_CPU_wrapper_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Overall_CPU_wrapper_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Overall_CPU_wrapper_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
