; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s | FileCheck %s

target triple = "aarch64-unknown-linux-gnu"

; INCP

define i64 @cntp_add_all_active_nxv16i1(i64 %x, <vscale x 16 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_all_active_nxv16i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.b
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 16 x i1> @llvm.aarch64.sve.ptrue.nxv16i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv16i1(<vscale x 16 x i1> %1, <vscale x 16 x i1> %pg)
  %add = add i64 %2, %x
  ret i64 %add
}

define i64 @cntp_add_all_active_nxv8i1(i64 %x, <vscale x 8 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_all_active_nxv8i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.h
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1> %1, <vscale x 8 x i1> %pg)
  %add = add i64 %2, %x
  ret i64 %add
}

define i64 @cntp_add_all_active_nxv4i1(i64 %x, <vscale x 4 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_all_active_nxv4i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.s
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %1, <vscale x 4 x i1> %pg)
  %add = add i64 %2, %x
  ret i64 %add
}

define i64 @cntp_add_all_active_nxv2i1(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_all_active_nxv2i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.d
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %1, <vscale x 2 x i1> %pg)
  %add = add i64 %2, %x
  ret i64 %add
}

define i64 @cntp_add_all_active_nxv8i1_via_cast(i64 %x, <vscale x 8 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_all_active_nxv8i1_via_cast:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.h
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 16 x i1> @llvm.aarch64.sve.ptrue.nxv16i1(i32 31)
  %2 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.convert.from.svbool.nxv8i1(<vscale x 16 x i1> %1)
  %3 = tail call i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1> %2, <vscale x 8 x i1> %pg)
  %add = add i64 %3, %x
  ret i64 %add
}

define i64 @cntp_add_all_active_nxv2i1_multiuse(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_all_active_nxv2i1_multiuse:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p1.d
; CHECK-NEXT:    cntp x8, p1, p0.d
; CHECK-NEXT:    add x9, x8, x0
; CHECK-NEXT:    madd x0, x8, x0, x9
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %1, <vscale x 2 x i1> %pg)
  %add = add i64 %2, %x
  %mul = mul i64 %2, %x
  %res = add i64 %add, %mul
  ret i64 %res
}

define i64 @cntp_add_same_active_nxv16i1(i64 %x, <vscale x 16 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_same_active_nxv16i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.b
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv16i1(<vscale x 16 x i1> %pg, <vscale x 16 x i1> %pg)
  %add = add i64 %1, %x
  ret i64 %add
}

define i64 @cntp_add_same_active_nxv8i1(i64 %x, <vscale x 8 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_same_active_nxv8i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.h
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1> %pg, <vscale x 8 x i1> %pg)
  %add = add i64 %1, %x
  ret i64 %add
}

define i64 @cntp_add_same_active_nxv4i1(i64 %x, <vscale x 4 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_same_active_nxv4i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.s
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %pg, <vscale x 4 x i1> %pg)
  %add = add i64 %1, %x
  ret i64 %add
}

define i64 @cntp_add_same_active_nxv2i1(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_same_active_nxv2i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    incp x0, p0.d
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %pg, <vscale x 2 x i1> %pg)
  %add = add i64 %1, %x
  ret i64 %add
}

define i64 @cntp_add_same_active_nxv2i1_multiuse(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_add_same_active_nxv2i1_multiuse:
; CHECK:       // %bb.0:
; CHECK-NEXT:    cntp x8, p0, p0.d
; CHECK-NEXT:    add x9, x8, x0
; CHECK-NEXT:    madd x0, x8, x0, x9
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %pg, <vscale x 2 x i1> %pg)
  %add = add i64 %1, %x
  %mul = mul i64 %1, %x
  %res = add i64 %add, %mul
  ret i64 %res
}

; DECP

define i64 @cntp_sub_all_active_nxv16i1(i64 %x, <vscale x 16 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_all_active_nxv16i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.b
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 16 x i1> @llvm.aarch64.sve.ptrue.nxv16i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv16i1(<vscale x 16 x i1> %1, <vscale x 16 x i1> %pg)
  %sub = sub i64 %x, %2
  ret i64 %sub
}

define i64 @cntp_sub_all_active_nxv8i1(i64 %x, <vscale x 8 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_all_active_nxv8i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.h
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1> %1, <vscale x 8 x i1> %pg)
  %sub = sub i64 %x, %2
  ret i64 %sub
}

define i64 @cntp_sub_all_active_nxv4i1(i64 %x, <vscale x 4 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_all_active_nxv4i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.s
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %1, <vscale x 4 x i1> %pg)
  %sub = sub i64 %x, %2
  ret i64 %sub
}

define i64 @cntp_sub_all_active_nxv2i1(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_all_active_nxv2i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.d
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %1, <vscale x 2 x i1> %pg)
  %sub = sub i64 %x, %2
  ret i64 %sub
}

define i64 @cntp_sub_all_active_nxv8i1_via_cast(i64 %x, <vscale x 8 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_all_active_nxv8i1_via_cast:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.h
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 16 x i1> @llvm.aarch64.sve.ptrue.nxv16i1(i32 31)
  %2 = tail call <vscale x 8 x i1> @llvm.aarch64.sve.convert.from.svbool.nxv8i1(<vscale x 16 x i1> %1)
  %3 = tail call i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1> %2, <vscale x 8 x i1> %pg)
  %sub = sub i64 %x, %3
  ret i64 %sub
}

define i64 @cntp_sub_all_active_nxv2i1_multiuse(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_all_active_nxv2i1_multiuse:
; CHECK:       // %bb.0:
; CHECK-NEXT:    ptrue p1.d
; CHECK-NEXT:    cntp x8, p1, p0.d
; CHECK-NEXT:    sub x9, x8, x0
; CHECK-NEXT:    madd x0, x8, x0, x9
; CHECK-NEXT:    ret
  %1 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %2 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %1, <vscale x 2 x i1> %pg)
  %sub = sub i64 %2, %x
  %mul = mul i64 %2, %x
  %res = add i64 %sub, %mul
  ret i64 %res
}

define i64 @cntp_sub_same_active_nxv16i1(i64 %x, <vscale x 16 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_same_active_nxv16i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.b
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv16i1(<vscale x 16 x i1> %pg, <vscale x 16 x i1> %pg)
  %sub = sub i64 %x, %1
  ret i64 %sub
}

define i64 @cntp_sub_same_active_nxv8i1(i64 %x, <vscale x 8 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_same_active_nxv8i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.h
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1> %pg, <vscale x 8 x i1> %pg)
  %sub = sub i64 %x, %1
  ret i64 %sub
}

define i64 @cntp_sub_same_active_nxv4i1(i64 %x, <vscale x 4 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_same_active_nxv4i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.s
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %pg, <vscale x 4 x i1> %pg)
  %sub = sub i64 %x, %1
  ret i64 %sub
}

define i64 @cntp_sub_same_active_nxv2i1(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_same_active_nxv2i1:
; CHECK:       // %bb.0:
; CHECK-NEXT:    decp x0, p0.d
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %pg, <vscale x 2 x i1> %pg)
  %sub = sub i64 %x, %1
  ret i64 %sub
}

define i64 @cntp_sub_same_active_nxv2i1_multiuse(i64 %x, <vscale x 2 x i1> %pg) #0 {
; CHECK-LABEL: cntp_sub_same_active_nxv2i1_multiuse:
; CHECK:       // %bb.0:
; CHECK-NEXT:    cntp x8, p0, p0.d
; CHECK-NEXT:    sub x9, x8, x0
; CHECK-NEXT:    madd x0, x8, x0, x9
; CHECK-NEXT:    ret
  %1 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %pg, <vscale x 2 x i1> %pg)
  %sub = sub i64 %1, %x
  %mul = mul i64 %1, %x
  %res = add i64 %sub, %mul
  ret i64 %res
}

declare <vscale x 8 x i1> @llvm.aarch64.sve.convert.from.svbool.nxv8i1(<vscale x 16 x i1>)
declare <vscale x 4 x i1> @llvm.aarch64.sve.convert.from.svbool.nxv4i1(<vscale x 16 x i1>)
declare <vscale x 2 x i1> @llvm.aarch64.sve.convert.from.svbool.nxv2i1(<vscale x 16 x i1>)

declare <vscale x 16 x i1> @llvm.aarch64.sve.ptrue.nxv16i1(i32)
declare <vscale x 8 x i1> @llvm.aarch64.sve.ptrue.nxv8i1(i32)
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32)
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32)

declare i64 @llvm.aarch64.sve.cntp.nxv16i1(<vscale x 16 x i1>, <vscale x 16 x i1>)
declare i64 @llvm.aarch64.sve.cntp.nxv8i1(<vscale x 8 x i1>, <vscale x 8 x i1>)
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>)
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>)

attributes #0 = { "target-features"="+sve" }