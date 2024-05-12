/*
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * SPDX-FileCopyrightText: Copyright TF-RMM Contributors.
 */
#include <linux/linkage.h>

#include <asm/alternative.h>
#include <asm/assembler.h>
#include <asm/fpsimdmacros.h>
#include <asm/kvm.h>
#include <asm/kvm_arm.h>
#include <asm/kvm_asm.h>
#include <asm/kvm_mmu.h>
#include <asm/kvm_mte.h>
#include <asm/kvm_ptrauth.h>
	
    .text

SYM_FUNC_START(__rmm_entry)
	/*
	 * Save Link Register and X4, as per SMCCC v1.2 its value
	 * must be preserved unless it contains result, as specified
	 * in the function definition.
	 */
	stp	x4, lr, [sp, #-16]!
    
	/*
	 * Zero the space for X0-X3 in the smc_result structure
	 * and pass its address as the last argument.
	 */
	stp	xzr, xzr, [sp, #-16]!
    stp	xzr, xzr, [sp, #-16]!
    
    mov	x7, sp

    bl handle_ns_smc
    
    ldp	x0, x1, [sp], #16
	ldp	x2, x3, [sp], #16
	ldp	x4, lr, [sp], #16

    ret
SYM_FUNC_END(__rmm_entry)


