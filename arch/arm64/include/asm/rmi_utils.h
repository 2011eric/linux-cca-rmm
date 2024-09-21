#ifndef RMI_UTILS_H
#define RMI_UTILS_H

#define SMC_RESULT_REGS 5

struct smc_result {
	unsigned long x[SMC_RESULT_REGS];
};
extern void  invoke_pseudo_rmi(unsigned int function_id,
		   unsigned long arg0,
		   unsigned long arg1,
		   unsigned long arg2,
		   unsigned long arg3,
		   unsigned long arg4,
		   unsigned long arg5,
		   struct smc_result *res);

#endif
