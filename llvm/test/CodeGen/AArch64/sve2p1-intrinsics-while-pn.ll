; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=aarch64-linux-gnu -mattr=+sve2p1 < %s | FileCheck %s
; RUN: llc -mtriple=aarch64-linux-gnu -mattr=+sme2 -force-streaming < %s | FileCheck %s


;
; WHILEGE
;

define target("aarch64.svcount") @whilege_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilege_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilege_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilege pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilege.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILEGT
;

define target("aarch64.svcount") @whilegt_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilegt_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilegt_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilegt pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILEHI
;

define target("aarch64.svcount") @whilehi_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehi_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehi_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehi pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILEHS
;

define target("aarch64.svcount") @whilehs_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilehs_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilehs_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilehs pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILELE
;

define target("aarch64.svcount") @whilele_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilele_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilele_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilele pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilele.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILELO
;

define target("aarch64.svcount") @whilelo_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelo_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelo_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelo pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILELS
;

define target("aarch64.svcount") @whilels_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilels_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilels_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilels pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilels.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


;
; WHILELT
;

define target("aarch64.svcount") @whilelt_c8_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c8_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.b, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c8(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c8_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c8_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.b, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c8(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c16_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c16_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.h, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c16(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c16_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c16_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.h, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c16(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c32_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c32_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.s, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c32(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c32_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c32_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.s, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c32(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c64_vl2(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c64_vl2:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.d, x0, x1, vlx2
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c64(i64 %a, i64 %b, i32 2)
  ret target("aarch64.svcount") %out
}

define target("aarch64.svcount") @whilelt_c64_vl4(i64 %a, i64 %b) nounwind {
; CHECK-LABEL: whilelt_c64_vl4:
; CHECK:       // %bb.0:
; CHECK-NEXT:    whilelt pn8.d, x0, x1, vlx4
; CHECK-NEXT:    mov p0.b, p8.b
; CHECK-NEXT:    ret
  %out = call target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c64(i64 %a, i64 %b, i32 4)
  ret target("aarch64.svcount") %out
}


declare target("aarch64.svcount") @llvm.aarch64.sve.whilege.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilege.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilege.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilege.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilegt.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehi.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilehs.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilele.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilele.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilele.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilele.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelo.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilels.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilels.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilels.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilels.c64(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c8(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c16(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c32(i64, i64, i32)
declare target("aarch64.svcount") @llvm.aarch64.sve.whilelt.c64(i64, i64, i32)