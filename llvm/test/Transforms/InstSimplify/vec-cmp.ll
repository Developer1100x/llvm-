; NOTE: Assertions have been autogenerated by utils/update_test_checks.py
; RUN: opt < %s -passes=instsimplify -S | FileCheck %s

define <2 x i1> @nonzero_vec_splat(<2 x i32> %x) {
; CHECK-LABEL: @nonzero_vec_splat(
; CHECK-NEXT:    ret <2 x i1> zeroinitializer
;
  %y = or <2 x i32> %x, <i32 1, i32 1>
  %c = icmp eq <2 x i32> %y, zeroinitializer
  ret <2 x i1> %c
}

define <2 x i1> @nonzero_vec_nonsplat(<2 x i32> %x) {
; CHECK-LABEL: @nonzero_vec_nonsplat(
; CHECK-NEXT:    ret <2 x i1> <i1 true, i1 true>
;
  %y = or <2 x i32> %x, <i32 2, i32 1>
  %c = icmp ne <2 x i32> %y, zeroinitializer
  ret <2 x i1> %c
}

define <2 x i1> @nonzero_vec_undef_elt(<2 x i32> %x) {
; CHECK-LABEL: @nonzero_vec_undef_elt(
; CHECK-NEXT:    [[Y:%.*]] = or <2 x i32> [[X:%.*]], <i32 undef, i32 1>
; CHECK-NEXT:    [[C:%.*]] = icmp eq <2 x i32> [[Y]], zeroinitializer
; CHECK-NEXT:    ret <2 x i1> [[C]]
;
  %y = or <2 x i32> %x, <i32 undef, i32 1>
  %c = icmp eq <2 x i32> %y, zeroinitializer
  ret <2 x i1> %c
}

define <2 x i1> @nonzero_vec_poison_elt(<2 x i32> %x) {
; CHECK-LABEL: @nonzero_vec_poison_elt(
; CHECK-NEXT:    ret <2 x i1> zeroinitializer
;
  %y = or <2 x i32> %x, <i32 poison, i32 1>
  %c = icmp eq <2 x i32> %y, zeroinitializer
  ret <2 x i1> %c
}

define <2 x i1> @may_be_zero_vec(<2 x i32> %x) {
; CHECK-LABEL: @may_be_zero_vec(
; CHECK-NEXT:    [[Y:%.*]] = or <2 x i32> [[X:%.*]], <i32 0, i32 1>
; CHECK-NEXT:    [[C:%.*]] = icmp ne <2 x i32> [[Y]], zeroinitializer
; CHECK-NEXT:    ret <2 x i1> [[C]]
;
  %y = or <2 x i32> %x, <i32 0, i32 1>
  %c = icmp ne <2 x i32> %y, zeroinitializer
  ret <2 x i1> %c
}

; Multiplies of non-zero numbers are non-zero if there is no unsigned overflow.
define <2 x i1> @nonzero_vec_mul_nuw(<2 x i32> %x, <2 x i32> %y) {
; CHECK-LABEL: @nonzero_vec_mul_nuw(
; CHECK-NEXT:    ret <2 x i1> zeroinitializer
;
  %xnz = or <2 x i32> %x, <i32 1, i32 2>
  %ynz = or <2 x i32> %y, <i32 3, i32 poison>
  %m = mul nuw <2 x i32> %xnz, %ynz
  %c = icmp eq <2 x i32> %m, zeroinitializer
  ret <2 x i1> %c
}

; Multiplies of non-zero numbers are non-zero if there is no signed overflow.
define <2 x i1> @nonzero_vec_mul_nsw(<2 x i32> %x, <2 x i32> %y) {
; CHECK-LABEL: @nonzero_vec_mul_nsw(
; CHECK-NEXT:    ret <2 x i1> <i1 true, i1 true>
;
  %xnz = or <2 x i32> %x, <i32 poison, i32 2>
  %ynz = or <2 x i32> %y, <i32 3, i32 4>
  %m = mul nsw <2 x i32> %xnz, %ynz
  %c = icmp ne <2 x i32> %m, zeroinitializer
  ret <2 x i1> %c
}
