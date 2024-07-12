; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=amdgcn-mesa-mesa3d -mcpu=gfx908 < %s | FileCheck -check-prefix=GFX908 %s
; RUN: llc -mtriple=amdgcn-mesa-mesa3d -mcpu=gfx90a < %s | FileCheck -check-prefix=GFX90A %s
; RUN: llc -mtriple=amdgcn-mesa-mesa3d -mcpu=gfx940 < %s | FileCheck -check-prefix=GFX940 %s
; RUN: llc -mtriple=amdgcn-mesa-mesa3d -mcpu=gfx1200 < %s | FileCheck -check-prefix=GFX1200 %s

define void @struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset(float %val, ptr addrspace(8) inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) #0 {
; GFX908-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX908:       ; %bb.0:
; GFX908-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX908-NEXT:    buffer_atomic_add_f32 v0, v[1:2], s[4:7], s8 idxen offen
; GFX908-NEXT:    s_waitcnt vmcnt(0)
; GFX908-NEXT:    s_setpc_b64 s[30:31]
;
; GFX90A-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX90A:       ; %bb.0:
; GFX90A-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX90A-NEXT:    v_mov_b32_e32 v3, v2
; GFX90A-NEXT:    v_mov_b32_e32 v2, v1
; GFX90A-NEXT:    buffer_atomic_add_f32 v0, v[2:3], s[4:7], s8 idxen offen
; GFX90A-NEXT:    s_waitcnt vmcnt(0)
; GFX90A-NEXT:    s_setpc_b64 s[30:31]
;
; GFX940-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX940:       ; %bb.0:
; GFX940-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX940-NEXT:    v_mov_b32_e32 v3, v2
; GFX940-NEXT:    v_mov_b32_e32 v2, v1
; GFX940-NEXT:    buffer_atomic_add_f32 v0, v[2:3], s[0:3], s4 idxen offen
; GFX940-NEXT:    s_waitcnt vmcnt(0)
; GFX940-NEXT:    s_setpc_b64 s[30:31]
;
; GFX1200-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX1200:       ; %bb.0:
; GFX1200-NEXT:    s_wait_loadcnt_dscnt 0x0
; GFX1200-NEXT:    s_wait_expcnt 0x0
; GFX1200-NEXT:    s_wait_samplecnt 0x0
; GFX1200-NEXT:    s_wait_bvhcnt 0x0
; GFX1200-NEXT:    s_wait_kmcnt 0x0
; GFX1200-NEXT:    buffer_atomic_add_f32 v0, v[1:2], s[0:3], s4 idxen offen
; GFX1200-NEXT:    s_setpc_b64 s[30:31]
  %ret = call float @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.f32(float %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

; Natural mapping, no voffset
define void @struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__0_voffset__sgpr_soffset(float %val, ptr addrspace(8) inreg %rsrc, i32 %vindex, i32 inreg %soffset) #0 {
; GFX908-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__0_voffset__sgpr_soffset:
; GFX908:       ; %bb.0:
; GFX908-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX908-NEXT:    buffer_atomic_add_f32 v0, v1, s[4:7], s8 idxen
; GFX908-NEXT:    s_waitcnt vmcnt(0)
; GFX908-NEXT:    s_setpc_b64 s[30:31]
;
; GFX90A-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__0_voffset__sgpr_soffset:
; GFX90A:       ; %bb.0:
; GFX90A-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX90A-NEXT:    buffer_atomic_add_f32 v0, v1, s[4:7], s8 idxen
; GFX90A-NEXT:    s_waitcnt vmcnt(0)
; GFX90A-NEXT:    s_setpc_b64 s[30:31]
;
; GFX940-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__0_voffset__sgpr_soffset:
; GFX940:       ; %bb.0:
; GFX940-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX940-NEXT:    buffer_atomic_add_f32 v0, v1, s[0:3], s4 idxen
; GFX940-NEXT:    s_waitcnt vmcnt(0)
; GFX940-NEXT:    s_setpc_b64 s[30:31]
;
; GFX1200-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__0_voffset__sgpr_soffset:
; GFX1200:       ; %bb.0:
; GFX1200-NEXT:    s_wait_loadcnt_dscnt 0x0
; GFX1200-NEXT:    s_wait_expcnt 0x0
; GFX1200-NEXT:    s_wait_samplecnt 0x0
; GFX1200-NEXT:    s_wait_bvhcnt 0x0
; GFX1200-NEXT:    s_wait_kmcnt 0x0
; GFX1200-NEXT:    buffer_atomic_add_f32 v0, v1, s[0:3], s4 idxen
; GFX1200-NEXT:    s_setpc_b64 s[30:31]
  %ret = call float @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.f32(float %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 0, i32 %soffset, i32 0)
  ret void
}

define void @struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset_slc(float %val, ptr addrspace(8) inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) #0 {
; GFX908-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset_slc:
; GFX908:       ; %bb.0:
; GFX908-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX908-NEXT:    buffer_atomic_add_f32 v0, v[1:2], s[4:7], s8 idxen offen slc
; GFX908-NEXT:    s_waitcnt vmcnt(0)
; GFX908-NEXT:    s_setpc_b64 s[30:31]
;
; GFX90A-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset_slc:
; GFX90A:       ; %bb.0:
; GFX90A-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX90A-NEXT:    v_mov_b32_e32 v3, v2
; GFX90A-NEXT:    v_mov_b32_e32 v2, v1
; GFX90A-NEXT:    buffer_atomic_add_f32 v0, v[2:3], s[4:7], s8 idxen offen slc
; GFX90A-NEXT:    s_waitcnt vmcnt(0)
; GFX90A-NEXT:    s_setpc_b64 s[30:31]
;
; GFX940-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset_slc:
; GFX940:       ; %bb.0:
; GFX940-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX940-NEXT:    v_mov_b32_e32 v3, v2
; GFX940-NEXT:    v_mov_b32_e32 v2, v1
; GFX940-NEXT:    buffer_atomic_add_f32 v0, v[2:3], s[0:3], s4 idxen offen nt
; GFX940-NEXT:    s_waitcnt vmcnt(0)
; GFX940-NEXT:    s_setpc_b64 s[30:31]
;
; GFX1200-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset_slc:
; GFX1200:       ; %bb.0:
; GFX1200-NEXT:    s_wait_loadcnt_dscnt 0x0
; GFX1200-NEXT:    s_wait_expcnt 0x0
; GFX1200-NEXT:    s_wait_samplecnt 0x0
; GFX1200-NEXT:    s_wait_bvhcnt 0x0
; GFX1200-NEXT:    s_wait_kmcnt 0x0
; GFX1200-NEXT:    buffer_atomic_add_f32 v0, v[1:2], s[0:3], s4 idxen offen th:TH_ATOMIC_NT
; GFX1200-NEXT:    s_setpc_b64 s[30:31]
  %ret = call float @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.f32(float %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 2)
  ret void
}

define void @struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset(<2 x half> %val, ptr addrspace(8) inreg %rsrc, i32 %vindex, i32 %voffset, i32 inreg %soffset) #0 {
; GFX908-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX908:       ; %bb.0:
; GFX908-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX908-NEXT:    buffer_atomic_pk_add_f16 v0, v[1:2], s[4:7], s8 idxen offen
; GFX908-NEXT:    s_waitcnt vmcnt(0)
; GFX908-NEXT:    s_setpc_b64 s[30:31]
;
; GFX90A-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX90A:       ; %bb.0:
; GFX90A-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX90A-NEXT:    v_mov_b32_e32 v3, v2
; GFX90A-NEXT:    v_mov_b32_e32 v2, v1
; GFX90A-NEXT:    buffer_atomic_pk_add_f16 v0, v[2:3], s[4:7], s8 idxen offen
; GFX90A-NEXT:    s_waitcnt vmcnt(0)
; GFX90A-NEXT:    s_setpc_b64 s[30:31]
;
; GFX940-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX940:       ; %bb.0:
; GFX940-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX940-NEXT:    v_mov_b32_e32 v3, v2
; GFX940-NEXT:    v_mov_b32_e32 v2, v1
; GFX940-NEXT:    buffer_atomic_pk_add_f16 v0, v[2:3], s[0:3], s4 idxen offen
; GFX940-NEXT:    s_waitcnt vmcnt(0)
; GFX940-NEXT:    s_setpc_b64 s[30:31]
;
; GFX1200-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__sgpr_rsrc__vgpr_voffset__sgpr_soffset:
; GFX1200:       ; %bb.0:
; GFX1200-NEXT:    s_wait_loadcnt_dscnt 0x0
; GFX1200-NEXT:    s_wait_expcnt 0x0
; GFX1200-NEXT:    s_wait_samplecnt 0x0
; GFX1200-NEXT:    s_wait_bvhcnt 0x0
; GFX1200-NEXT:    s_wait_kmcnt 0x0
; GFX1200-NEXT:    buffer_atomic_pk_add_f16 v0, v[1:2], s[0:3], s4 idxen offen
; GFX1200-NEXT:    s_setpc_b64 s[30:31]
  %ret = call <2 x half> @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.v2f16(<2 x half> %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

; Test waterfall loop
define void @struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset(float %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset) #0 {
; GFX908-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX908:       ; %bb.0:
; GFX908-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX908-NEXT:    s_mov_b64 s[6:7], exec
; GFX908-NEXT:  .LBB4_1: ; =>This Inner Loop Header: Depth=1
; GFX908-NEXT:    v_readfirstlane_b32 s8, v1
; GFX908-NEXT:    v_readfirstlane_b32 s9, v2
; GFX908-NEXT:    v_readfirstlane_b32 s10, v3
; GFX908-NEXT:    v_readfirstlane_b32 s11, v4
; GFX908-NEXT:    v_cmp_eq_u64_e32 vcc, s[8:9], v[1:2]
; GFX908-NEXT:    v_cmp_eq_u64_e64 s[4:5], s[10:11], v[3:4]
; GFX908-NEXT:    v_readfirstlane_b32 s12, v7
; GFX908-NEXT:    s_and_b64 s[4:5], vcc, s[4:5]
; GFX908-NEXT:    v_cmp_eq_u32_e32 vcc, s12, v7
; GFX908-NEXT:    s_and_b64 s[4:5], s[4:5], vcc
; GFX908-NEXT:    s_and_saveexec_b64 s[4:5], s[4:5]
; GFX908-NEXT:    s_nop 0
; GFX908-NEXT:    buffer_atomic_add_f32 v0, v[5:6], s[8:11], s12 idxen offen
; GFX908-NEXT:    ; implicit-def: $vgpr1_vgpr2_vgpr3_vgpr4
; GFX908-NEXT:    ; implicit-def: $vgpr7
; GFX908-NEXT:    ; implicit-def: $vgpr0
; GFX908-NEXT:    ; implicit-def: $vgpr5_vgpr6
; GFX908-NEXT:    s_xor_b64 exec, exec, s[4:5]
; GFX908-NEXT:    s_cbranch_execnz .LBB4_1
; GFX908-NEXT:  ; %bb.2:
; GFX908-NEXT:    s_mov_b64 exec, s[6:7]
; GFX908-NEXT:    s_waitcnt vmcnt(0)
; GFX908-NEXT:    s_setpc_b64 s[30:31]
;
; GFX90A-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX90A:       ; %bb.0:
; GFX90A-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX90A-NEXT:    v_mov_b32_e32 v9, v6
; GFX90A-NEXT:    v_mov_b32_e32 v8, v5
; GFX90A-NEXT:    v_mov_b32_e32 v5, v4
; GFX90A-NEXT:    v_mov_b32_e32 v4, v3
; GFX90A-NEXT:    v_mov_b32_e32 v3, v2
; GFX90A-NEXT:    v_mov_b32_e32 v2, v1
; GFX90A-NEXT:    s_mov_b64 s[6:7], exec
; GFX90A-NEXT:  .LBB4_1: ; =>This Inner Loop Header: Depth=1
; GFX90A-NEXT:    v_readfirstlane_b32 s8, v2
; GFX90A-NEXT:    v_readfirstlane_b32 s9, v3
; GFX90A-NEXT:    v_readfirstlane_b32 s10, v4
; GFX90A-NEXT:    v_readfirstlane_b32 s11, v5
; GFX90A-NEXT:    v_cmp_eq_u64_e32 vcc, s[8:9], v[2:3]
; GFX90A-NEXT:    v_cmp_eq_u64_e64 s[4:5], s[10:11], v[4:5]
; GFX90A-NEXT:    v_readfirstlane_b32 s12, v7
; GFX90A-NEXT:    s_and_b64 s[4:5], vcc, s[4:5]
; GFX90A-NEXT:    v_cmp_eq_u32_e32 vcc, s12, v7
; GFX90A-NEXT:    s_and_b64 s[4:5], s[4:5], vcc
; GFX90A-NEXT:    s_and_saveexec_b64 s[4:5], s[4:5]
; GFX90A-NEXT:    s_nop 0
; GFX90A-NEXT:    buffer_atomic_add_f32 v0, v[8:9], s[8:11], s12 idxen offen
; GFX90A-NEXT:    ; implicit-def: $vgpr2_vgpr3_vgpr4_vgpr5
; GFX90A-NEXT:    ; implicit-def: $vgpr7
; GFX90A-NEXT:    ; implicit-def: $vgpr0
; GFX90A-NEXT:    ; implicit-def: $vgpr8_vgpr9
; GFX90A-NEXT:    s_xor_b64 exec, exec, s[4:5]
; GFX90A-NEXT:    s_cbranch_execnz .LBB4_1
; GFX90A-NEXT:  ; %bb.2:
; GFX90A-NEXT:    s_mov_b64 exec, s[6:7]
; GFX90A-NEXT:    s_waitcnt vmcnt(0)
; GFX90A-NEXT:    s_setpc_b64 s[30:31]
;
; GFX940-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX940:       ; %bb.0:
; GFX940-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX940-NEXT:    v_mov_b32_e32 v9, v6
; GFX940-NEXT:    v_mov_b32_e32 v8, v5
; GFX940-NEXT:    v_mov_b32_e32 v5, v4
; GFX940-NEXT:    v_mov_b32_e32 v4, v3
; GFX940-NEXT:    v_mov_b32_e32 v3, v2
; GFX940-NEXT:    v_mov_b32_e32 v2, v1
; GFX940-NEXT:    s_mov_b64 s[2:3], exec
; GFX940-NEXT:  .LBB4_1: ; =>This Inner Loop Header: Depth=1
; GFX940-NEXT:    v_readfirstlane_b32 s4, v2
; GFX940-NEXT:    v_readfirstlane_b32 s5, v3
; GFX940-NEXT:    v_readfirstlane_b32 s6, v4
; GFX940-NEXT:    v_readfirstlane_b32 s7, v5
; GFX940-NEXT:    v_cmp_eq_u64_e32 vcc, s[4:5], v[2:3]
; GFX940-NEXT:    v_readfirstlane_b32 s8, v7
; GFX940-NEXT:    v_cmp_eq_u64_e64 s[0:1], s[6:7], v[4:5]
; GFX940-NEXT:    s_and_b64 s[0:1], vcc, s[0:1]
; GFX940-NEXT:    v_cmp_eq_u32_e32 vcc, s8, v7
; GFX940-NEXT:    s_and_b64 s[0:1], s[0:1], vcc
; GFX940-NEXT:    s_and_saveexec_b64 s[0:1], s[0:1]
; GFX940-NEXT:    buffer_atomic_add_f32 v0, v[8:9], s[4:7], s8 idxen offen
; GFX940-NEXT:    ; implicit-def: $vgpr2_vgpr3_vgpr4_vgpr5
; GFX940-NEXT:    ; implicit-def: $vgpr7
; GFX940-NEXT:    ; implicit-def: $vgpr0
; GFX940-NEXT:    ; implicit-def: $vgpr8_vgpr9
; GFX940-NEXT:    s_xor_b64 exec, exec, s[0:1]
; GFX940-NEXT:    s_cbranch_execnz .LBB4_1
; GFX940-NEXT:  ; %bb.2:
; GFX940-NEXT:    s_mov_b64 exec, s[2:3]
; GFX940-NEXT:    s_waitcnt vmcnt(0)
; GFX940-NEXT:    s_setpc_b64 s[30:31]
;
; GFX1200-LABEL: struct_ptr_buffer_atomic_add_f32_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX1200:       ; %bb.0:
; GFX1200-NEXT:    s_wait_loadcnt_dscnt 0x0
; GFX1200-NEXT:    s_wait_expcnt 0x0
; GFX1200-NEXT:    s_wait_samplecnt 0x0
; GFX1200-NEXT:    s_wait_bvhcnt 0x0
; GFX1200-NEXT:    s_wait_kmcnt 0x0
; GFX1200-NEXT:    s_mov_b32 s2, exec_lo
; GFX1200-NEXT:  .LBB4_1: ; =>This Inner Loop Header: Depth=1
; GFX1200-NEXT:    v_readfirstlane_b32 s4, v1
; GFX1200-NEXT:    v_readfirstlane_b32 s5, v2
; GFX1200-NEXT:    v_readfirstlane_b32 s6, v3
; GFX1200-NEXT:    v_readfirstlane_b32 s7, v4
; GFX1200-NEXT:    v_readfirstlane_b32 s3, v7
; GFX1200-NEXT:    s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
; GFX1200-NEXT:    v_cmp_eq_u64_e32 vcc_lo, s[4:5], v[1:2]
; GFX1200-NEXT:    v_cmp_eq_u64_e64 s0, s[6:7], v[3:4]
; GFX1200-NEXT:    s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
; GFX1200-NEXT:    v_cmp_eq_u32_e64 s1, s3, v7
; GFX1200-NEXT:    s_and_b32 s0, vcc_lo, s0
; GFX1200-NEXT:    s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
; GFX1200-NEXT:    s_and_b32 s0, s0, s1
; GFX1200-NEXT:    s_delay_alu instid0(SALU_CYCLE_1)
; GFX1200-NEXT:    s_and_saveexec_b32 s0, s0
; GFX1200-NEXT:    buffer_atomic_add_f32 v0, v[5:6], s[4:7], s3 idxen offen
; GFX1200-NEXT:    ; implicit-def: $vgpr1_vgpr2_vgpr3_vgpr4
; GFX1200-NEXT:    ; implicit-def: $vgpr7
; GFX1200-NEXT:    ; implicit-def: $vgpr0
; GFX1200-NEXT:    ; implicit-def: $vgpr5_vgpr6
; GFX1200-NEXT:    s_xor_b32 exec_lo, exec_lo, s0
; GFX1200-NEXT:    s_cbranch_execnz .LBB4_1
; GFX1200-NEXT:  ; %bb.2:
; GFX1200-NEXT:    s_mov_b32 exec_lo, s2
; GFX1200-NEXT:    s_setpc_b64 s[30:31]
  %ret = call float @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.f32(float %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

; Test waterfall loop
define void @struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset(<2 x half> %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset) #0 {
; GFX908-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX908:       ; %bb.0:
; GFX908-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX908-NEXT:    s_mov_b64 s[6:7], exec
; GFX908-NEXT:  .LBB5_1: ; =>This Inner Loop Header: Depth=1
; GFX908-NEXT:    v_readfirstlane_b32 s8, v1
; GFX908-NEXT:    v_readfirstlane_b32 s9, v2
; GFX908-NEXT:    v_readfirstlane_b32 s10, v3
; GFX908-NEXT:    v_readfirstlane_b32 s11, v4
; GFX908-NEXT:    v_cmp_eq_u64_e32 vcc, s[8:9], v[1:2]
; GFX908-NEXT:    v_cmp_eq_u64_e64 s[4:5], s[10:11], v[3:4]
; GFX908-NEXT:    v_readfirstlane_b32 s12, v7
; GFX908-NEXT:    s_and_b64 s[4:5], vcc, s[4:5]
; GFX908-NEXT:    v_cmp_eq_u32_e32 vcc, s12, v7
; GFX908-NEXT:    s_and_b64 s[4:5], s[4:5], vcc
; GFX908-NEXT:    s_and_saveexec_b64 s[4:5], s[4:5]
; GFX908-NEXT:    s_nop 0
; GFX908-NEXT:    buffer_atomic_pk_add_f16 v0, v[5:6], s[8:11], s12 idxen offen
; GFX908-NEXT:    ; implicit-def: $vgpr1_vgpr2_vgpr3_vgpr4
; GFX908-NEXT:    ; implicit-def: $vgpr7
; GFX908-NEXT:    ; implicit-def: $vgpr0
; GFX908-NEXT:    ; implicit-def: $vgpr5_vgpr6
; GFX908-NEXT:    s_xor_b64 exec, exec, s[4:5]
; GFX908-NEXT:    s_cbranch_execnz .LBB5_1
; GFX908-NEXT:  ; %bb.2:
; GFX908-NEXT:    s_mov_b64 exec, s[6:7]
; GFX908-NEXT:    s_waitcnt vmcnt(0)
; GFX908-NEXT:    s_setpc_b64 s[30:31]
;
; GFX90A-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX90A:       ; %bb.0:
; GFX90A-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX90A-NEXT:    v_mov_b32_e32 v9, v6
; GFX90A-NEXT:    v_mov_b32_e32 v8, v5
; GFX90A-NEXT:    v_mov_b32_e32 v5, v4
; GFX90A-NEXT:    v_mov_b32_e32 v4, v3
; GFX90A-NEXT:    v_mov_b32_e32 v3, v2
; GFX90A-NEXT:    v_mov_b32_e32 v2, v1
; GFX90A-NEXT:    s_mov_b64 s[6:7], exec
; GFX90A-NEXT:  .LBB5_1: ; =>This Inner Loop Header: Depth=1
; GFX90A-NEXT:    v_readfirstlane_b32 s8, v2
; GFX90A-NEXT:    v_readfirstlane_b32 s9, v3
; GFX90A-NEXT:    v_readfirstlane_b32 s10, v4
; GFX90A-NEXT:    v_readfirstlane_b32 s11, v5
; GFX90A-NEXT:    v_cmp_eq_u64_e32 vcc, s[8:9], v[2:3]
; GFX90A-NEXT:    v_cmp_eq_u64_e64 s[4:5], s[10:11], v[4:5]
; GFX90A-NEXT:    v_readfirstlane_b32 s12, v7
; GFX90A-NEXT:    s_and_b64 s[4:5], vcc, s[4:5]
; GFX90A-NEXT:    v_cmp_eq_u32_e32 vcc, s12, v7
; GFX90A-NEXT:    s_and_b64 s[4:5], s[4:5], vcc
; GFX90A-NEXT:    s_and_saveexec_b64 s[4:5], s[4:5]
; GFX90A-NEXT:    s_nop 0
; GFX90A-NEXT:    buffer_atomic_pk_add_f16 v0, v[8:9], s[8:11], s12 idxen offen
; GFX90A-NEXT:    ; implicit-def: $vgpr2_vgpr3_vgpr4_vgpr5
; GFX90A-NEXT:    ; implicit-def: $vgpr7
; GFX90A-NEXT:    ; implicit-def: $vgpr0
; GFX90A-NEXT:    ; implicit-def: $vgpr8_vgpr9
; GFX90A-NEXT:    s_xor_b64 exec, exec, s[4:5]
; GFX90A-NEXT:    s_cbranch_execnz .LBB5_1
; GFX90A-NEXT:  ; %bb.2:
; GFX90A-NEXT:    s_mov_b64 exec, s[6:7]
; GFX90A-NEXT:    s_waitcnt vmcnt(0)
; GFX90A-NEXT:    s_setpc_b64 s[30:31]
;
; GFX940-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX940:       ; %bb.0:
; GFX940-NEXT:    s_waitcnt vmcnt(0) expcnt(0) lgkmcnt(0)
; GFX940-NEXT:    v_mov_b32_e32 v9, v6
; GFX940-NEXT:    v_mov_b32_e32 v8, v5
; GFX940-NEXT:    v_mov_b32_e32 v5, v4
; GFX940-NEXT:    v_mov_b32_e32 v4, v3
; GFX940-NEXT:    v_mov_b32_e32 v3, v2
; GFX940-NEXT:    v_mov_b32_e32 v2, v1
; GFX940-NEXT:    s_mov_b64 s[2:3], exec
; GFX940-NEXT:  .LBB5_1: ; =>This Inner Loop Header: Depth=1
; GFX940-NEXT:    v_readfirstlane_b32 s4, v2
; GFX940-NEXT:    v_readfirstlane_b32 s5, v3
; GFX940-NEXT:    v_readfirstlane_b32 s6, v4
; GFX940-NEXT:    v_readfirstlane_b32 s7, v5
; GFX940-NEXT:    v_cmp_eq_u64_e32 vcc, s[4:5], v[2:3]
; GFX940-NEXT:    v_readfirstlane_b32 s8, v7
; GFX940-NEXT:    v_cmp_eq_u64_e64 s[0:1], s[6:7], v[4:5]
; GFX940-NEXT:    s_and_b64 s[0:1], vcc, s[0:1]
; GFX940-NEXT:    v_cmp_eq_u32_e32 vcc, s8, v7
; GFX940-NEXT:    s_and_b64 s[0:1], s[0:1], vcc
; GFX940-NEXT:    s_and_saveexec_b64 s[0:1], s[0:1]
; GFX940-NEXT:    buffer_atomic_pk_add_f16 v0, v[8:9], s[4:7], s8 idxen offen
; GFX940-NEXT:    ; implicit-def: $vgpr2_vgpr3_vgpr4_vgpr5
; GFX940-NEXT:    ; implicit-def: $vgpr7
; GFX940-NEXT:    ; implicit-def: $vgpr0
; GFX940-NEXT:    ; implicit-def: $vgpr8_vgpr9
; GFX940-NEXT:    s_xor_b64 exec, exec, s[0:1]
; GFX940-NEXT:    s_cbranch_execnz .LBB5_1
; GFX940-NEXT:  ; %bb.2:
; GFX940-NEXT:    s_mov_b64 exec, s[2:3]
; GFX940-NEXT:    s_waitcnt vmcnt(0)
; GFX940-NEXT:    s_setpc_b64 s[30:31]
;
; GFX1200-LABEL: struct_ptr_buffer_atomic_add_v2f16_noret__vgpr_val__vgpr_rsrc__vgpr_voffset__vgpr_soffset:
; GFX1200:       ; %bb.0:
; GFX1200-NEXT:    s_wait_loadcnt_dscnt 0x0
; GFX1200-NEXT:    s_wait_expcnt 0x0
; GFX1200-NEXT:    s_wait_samplecnt 0x0
; GFX1200-NEXT:    s_wait_bvhcnt 0x0
; GFX1200-NEXT:    s_wait_kmcnt 0x0
; GFX1200-NEXT:    s_mov_b32 s2, exec_lo
; GFX1200-NEXT:  .LBB5_1: ; =>This Inner Loop Header: Depth=1
; GFX1200-NEXT:    v_readfirstlane_b32 s4, v1
; GFX1200-NEXT:    v_readfirstlane_b32 s5, v2
; GFX1200-NEXT:    v_readfirstlane_b32 s6, v3
; GFX1200-NEXT:    v_readfirstlane_b32 s7, v4
; GFX1200-NEXT:    v_readfirstlane_b32 s3, v7
; GFX1200-NEXT:    s_delay_alu instid0(VALU_DEP_4) | instskip(NEXT) | instid1(VALU_DEP_3)
; GFX1200-NEXT:    v_cmp_eq_u64_e32 vcc_lo, s[4:5], v[1:2]
; GFX1200-NEXT:    v_cmp_eq_u64_e64 s0, s[6:7], v[3:4]
; GFX1200-NEXT:    s_delay_alu instid0(VALU_DEP_3) | instskip(NEXT) | instid1(VALU_DEP_2)
; GFX1200-NEXT:    v_cmp_eq_u32_e64 s1, s3, v7
; GFX1200-NEXT:    s_and_b32 s0, vcc_lo, s0
; GFX1200-NEXT:    s_delay_alu instid0(VALU_DEP_1) | instid1(SALU_CYCLE_1)
; GFX1200-NEXT:    s_and_b32 s0, s0, s1
; GFX1200-NEXT:    s_delay_alu instid0(SALU_CYCLE_1)
; GFX1200-NEXT:    s_and_saveexec_b32 s0, s0
; GFX1200-NEXT:    buffer_atomic_pk_add_f16 v0, v[5:6], s[4:7], s3 idxen offen
; GFX1200-NEXT:    ; implicit-def: $vgpr1_vgpr2_vgpr3_vgpr4
; GFX1200-NEXT:    ; implicit-def: $vgpr7
; GFX1200-NEXT:    ; implicit-def: $vgpr0
; GFX1200-NEXT:    ; implicit-def: $vgpr5_vgpr6
; GFX1200-NEXT:    s_xor_b32 exec_lo, exec_lo, s0
; GFX1200-NEXT:    s_cbranch_execnz .LBB5_1
; GFX1200-NEXT:  ; %bb.2:
; GFX1200-NEXT:    s_mov_b32 exec_lo, s2
; GFX1200-NEXT:    s_setpc_b64 s[30:31]
  %ret = call <2 x half> @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.v2f16(<2 x half> %val, ptr addrspace(8) %rsrc, i32 %vindex, i32 %voffset, i32 %soffset, i32 0)
  ret void
}

declare float @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.f32(float, ptr addrspace(8), i32, i32, i32, i32 immarg)
declare <2 x half> @llvm.amdgcn.struct.ptr.buffer.atomic.fadd.v2f16(<2 x half>, ptr addrspace(8), i32, i32, i32, i32 immarg)

attributes #0 = { nounwind }