; NOTE: Assertions have been autogenerated by utils/update_test_checks.py UTC_ARGS: --version 5
; RUN: opt < %s -passes=instcombine -S | FileCheck %s

define i1 @scmp_eq_0(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_eq_0(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp eq i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp eq i8 %1, 0
  ret i1 %2
}

define i1 @scmp_ne_0(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_ne_0(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp ne i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

define i1 @scmp_eq_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_eq_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sgt i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp eq i8 %1, 1
  ret i1 %2
}

define i1 @scmp_ne_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_ne_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sle i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp ne i8 %1, 1
  ret i1 %2
}

define i1 @scmp_eq_negative_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_eq_negative_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp slt i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp eq i8 %1, -1
  ret i1 %2
}

define i1 @scmp_ne_negative_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_ne_negative_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sge i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp ne i8 %1, -1
  ret i1 %2
}

define i1 @scmp_sgt_0(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_sgt_0(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sgt i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp sgt i8 %1, 0
  ret i1 %2
}

define i1 @scmp_sgt_neg_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_sgt_neg_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sge i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp sgt i8 %1, -1
  ret i1 %2
}

define i1 @scmp_sge_0(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_sge_0(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sge i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp sge i8 %1, 0
  ret i1 %2
}

define i1 @scmp_sge_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_sge_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sgt i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp sge i8 %1, 1
  ret i1 %2
}

define i1 @scmp_slt_0(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_slt_0(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp slt i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp slt i8 %1, 0
  ret i1 %2
}

define i1 @scmp_slt_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_slt_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sle i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp slt i8 %1, 1
  ret i1 %2
}

define i1 @scmp_sle_0(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_sle_0(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp sle i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp sle i8 %1, 0
  ret i1 %2
}

define i1 @scmp_sle_neg_1(i32 %x, i32 %y) {
; CHECK-LABEL: define i1 @scmp_sle_neg_1(
; CHECK-SAME: i32 [[X:%.*]], i32 [[Y:%.*]]) {
; CHECK-NEXT:    [[TMP2:%.*]] = icmp slt i32 [[X]], [[Y]]
; CHECK-NEXT:    ret i1 [[TMP2]]
;
  %1 = call i8 @llvm.scmp(i32 %x, i32 %y)
  %2 = icmp sle i8 %1, -1
  ret i1 %2
}