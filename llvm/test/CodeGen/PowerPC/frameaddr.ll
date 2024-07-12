; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py UTC_ARGS: --version 5
; RUN: llc -mtriple=powerpc-ibm-aix-xcoff -verify-machineinstrs < %s -mcpu=pwr7 | FileCheck %s --check-prefix=AIX32
; RUN: llc -mtriple=powerpc64-ibm-aix-xcoff -verify-machineinstrs < %s -mcpu=pwr7 | FileCheck %s --check-prefix=AIX64
; RUN: llc -mtriple=powerpc64le-unknown-linux-gnu -verify-machineinstrs < %s -mcpu=pwr7 | FileCheck %s --check-prefix=LE

define ptr @main() #0 {
; AIX32-LABEL: main:
; AIX32:       # %bb.0: # %entry
; AIX32-NEXT:    stwu 1, -32(1)
; AIX32-NEXT:    mr 3, 1
; AIX32-NEXT:    addi 1, 1, 32
; AIX32-NEXT:    blr
;
; AIX64-LABEL: main:
; AIX64:       # %bb.0: # %entry
; AIX64-NEXT:    stdu 1, -48(1)
; AIX64-NEXT:    mr 3, 1
; AIX64-NEXT:    addi 1, 1, 48
; AIX64-NEXT:    blr
;
; LE-LABEL: main:
; LE:       # %bb.0: # %entry
; LE-NEXT:    stdu 1, -32(1)
; LE-NEXT:    mr 3, 1
; LE-NEXT:    addi 1, 1, 32
; LE-NEXT:    blr
entry:
  %0 = call ptr @llvm.frameaddress(i32 0)
  ret ptr %0
}

define ptr @foo_naked() #3 { ; naked
; AIX32-LABEL: foo_naked:
; AIX32:       # %bb.0: # %entry
; AIX32-NEXT:    lwz 3, 0(1)
; AIX32-NEXT:    blr
;
; AIX64-LABEL: foo_naked:
; AIX64:       # %bb.0: # %entry
; AIX64-NEXT:    ld 3, 0(1)
; AIX64-NEXT:    blr
;
; LE-LABEL: foo_naked:
; LE:       # %bb.0: # %entry
; LE-NEXT:    ld 3, 0(1)
; LE-NEXT:    blr
entry:
  %0 = call ptr @llvm.frameaddress(i32 1)
  ret ptr %0
}

define ptr @foo1() #0 {
; AIX32-LABEL: foo1:
; AIX32:       # %bb.0: # %entry
; AIX32-NEXT:    stwu 1, -32(1)
; AIX32-NEXT:    lwz 3, 0(1)
; AIX32-NEXT:    addi 1, 1, 32
; AIX32-NEXT:    blr
;
; AIX64-LABEL: foo1:
; AIX64:       # %bb.0: # %entry
; AIX64-NEXT:    stdu 1, -48(1)
; AIX64-NEXT:    ld 3, 0(1)
; AIX64-NEXT:    addi 1, 1, 48
; AIX64-NEXT:    blr
;
; LE-LABEL: foo1:
; LE:       # %bb.0: # %entry
; LE-NEXT:    stdu 1, -32(1)
; LE-NEXT:    ld 3, 0(1)
; LE-NEXT:    addi 1, 1, 32
; LE-NEXT:    blr
entry:
  %0 = call ptr @llvm.frameaddress(i32 1)
  ret ptr %0
}

define ptr @foo2() #0 {
; AIX32-LABEL: foo2:
; AIX32:       # %bb.0: # %entry
; AIX32-NEXT:    stwu 1, -32(1)
; AIX32-NEXT:    lwz 3, 0(1)
; AIX32-NEXT:    lwz 3, 0(3)
; AIX32-NEXT:    addi 1, 1, 32
; AIX32-NEXT:    blr
;
; AIX64-LABEL: foo2:
; AIX64:       # %bb.0: # %entry
; AIX64-NEXT:    stdu 1, -48(1)
; AIX64-NEXT:    ld 3, 0(1)
; AIX64-NEXT:    ld 3, 0(3)
; AIX64-NEXT:    addi 1, 1, 48
; AIX64-NEXT:    blr
;
; LE-LABEL: foo2:
; LE:       # %bb.0: # %entry
; LE-NEXT:    stdu 1, -32(1)
; LE-NEXT:    ld 3, 0(1)
; LE-NEXT:    ld 3, 0(3)
; LE-NEXT:    addi 1, 1, 32
; LE-NEXT:    blr
entry:
  %0 = call ptr @llvm.frameaddress(i32 2)
  ret ptr %0
}

define ptr @bar0() #0 {
; AIX32-LABEL: bar0:
; AIX32:       # %bb.0: # %entry
; AIX32-NEXT:    mflr 0
; AIX32-NEXT:    stw 31, -4(1)
; AIX32-NEXT:    stw 0, 8(1)
; AIX32-NEXT:    lis 0, -2
; AIX32-NEXT:    ori 0, 0, 31008
; AIX32-NEXT:    stwux 1, 1, 0
; AIX32-NEXT:    mr 31, 1
; AIX32-NEXT:    addi 3, 31, 60
; AIX32-NEXT:    bl .use[PR]
; AIX32-NEXT:    nop
; AIX32-NEXT:    mr 3, 31
; AIX32-NEXT:    lwz 1, 0(1)
; AIX32-NEXT:    lwz 0, 8(1)
; AIX32-NEXT:    lwz 31, -4(1)
; AIX32-NEXT:    mtlr 0
; AIX32-NEXT:    blr
;
; AIX64-LABEL: bar0:
; AIX64:       # %bb.0: # %entry
; AIX64-NEXT:    mflr 0
; AIX64-NEXT:    std 31, -8(1)
; AIX64-NEXT:    std 0, 16(1)
; AIX64-NEXT:    lis 0, -2
; AIX64-NEXT:    ori 0, 0, 30944
; AIX64-NEXT:    stdux 1, 1, 0
; AIX64-NEXT:    mr 31, 1
; AIX64-NEXT:    addi 3, 31, 120
; AIX64-NEXT:    bl .use[PR]
; AIX64-NEXT:    nop
; AIX64-NEXT:    mr 3, 31
; AIX64-NEXT:    ld 1, 0(1)
; AIX64-NEXT:    ld 0, 16(1)
; AIX64-NEXT:    ld 31, -8(1)
; AIX64-NEXT:    mtlr 0
; AIX64-NEXT:    blr
;
; LE-LABEL: bar0:
; LE:       # %bb.0: # %entry
; LE-NEXT:    mflr 0
; LE-NEXT:    std 31, -8(1)
; LE-NEXT:    std 0, 16(1)
; LE-NEXT:    lis 0, -2
; LE-NEXT:    ori 0, 0, 31024
; LE-NEXT:    stdux 1, 1, 0
; LE-NEXT:    mr 31, 1
; LE-NEXT:    addi 3, 31, 40
; LE-NEXT:    bl use
; LE-NEXT:    nop
; LE-NEXT:    mr 3, 31
; LE-NEXT:    ld 1, 0(1)
; LE-NEXT:    ld 0, 16(1)
; LE-NEXT:    ld 31, -8(1)
; LE-NEXT:    mtlr 0
; LE-NEXT:    blr
entry:
  %x = alloca [100000 x i8]                       ; <ptr> [#uses=1]
  call void @use(ptr %x) nounwind
  %0 = call ptr @llvm.frameaddress(i32 0)
  ret ptr %0
}

define ptr @bar1() #0 {
; AIX32-LABEL: bar1:
; AIX32:       # %bb.0: # %entry
; AIX32-NEXT:    mflr 0
; AIX32-NEXT:    stw 31, -4(1)
; AIX32-NEXT:    stw 0, 8(1)
; AIX32-NEXT:    lis 0, -2
; AIX32-NEXT:    ori 0, 0, 31008
; AIX32-NEXT:    stwux 1, 1, 0
; AIX32-NEXT:    mr 31, 1
; AIX32-NEXT:    addi 3, 31, 60
; AIX32-NEXT:    bl .use[PR]
; AIX32-NEXT:    nop
; AIX32-NEXT:    lwz 3, 0(31)
; AIX32-NEXT:    lwz 1, 0(1)
; AIX32-NEXT:    lwz 0, 8(1)
; AIX32-NEXT:    lwz 31, -4(1)
; AIX32-NEXT:    mtlr 0
; AIX32-NEXT:    blr
;
; AIX64-LABEL: bar1:
; AIX64:       # %bb.0: # %entry
; AIX64-NEXT:    mflr 0
; AIX64-NEXT:    std 31, -8(1)
; AIX64-NEXT:    std 0, 16(1)
; AIX64-NEXT:    lis 0, -2
; AIX64-NEXT:    ori 0, 0, 30944
; AIX64-NEXT:    stdux 1, 1, 0
; AIX64-NEXT:    mr 31, 1
; AIX64-NEXT:    addi 3, 31, 120
; AIX64-NEXT:    bl .use[PR]
; AIX64-NEXT:    nop
; AIX64-NEXT:    ld 3, 0(31)
; AIX64-NEXT:    ld 1, 0(1)
; AIX64-NEXT:    ld 0, 16(1)
; AIX64-NEXT:    ld 31, -8(1)
; AIX64-NEXT:    mtlr 0
; AIX64-NEXT:    blr
;
; LE-LABEL: bar1:
; LE:       # %bb.0: # %entry
; LE-NEXT:    mflr 0
; LE-NEXT:    std 31, -8(1)
; LE-NEXT:    std 0, 16(1)
; LE-NEXT:    lis 0, -2
; LE-NEXT:    ori 0, 0, 31024
; LE-NEXT:    stdux 1, 1, 0
; LE-NEXT:    mr 31, 1
; LE-NEXT:    addi 3, 31, 40
; LE-NEXT:    bl use
; LE-NEXT:    nop
; LE-NEXT:    ld 3, 0(31)
; LE-NEXT:    ld 1, 0(1)
; LE-NEXT:    ld 0, 16(1)
; LE-NEXT:    ld 31, -8(1)
; LE-NEXT:    mtlr 0
; LE-NEXT:    blr
entry:
  %x = alloca [100000 x i8]                       ; <ptr> [#uses=1]
  call void @use(ptr %x) nounwind
  %0 = call ptr @llvm.frameaddress(i32 1)
  ret ptr %0
}

declare void @use(ptr)

declare ptr @llvm.frameaddress(i32) #2

attributes #0 = { nounwind "less-precise-fpmad"="false" "frame-pointer"="non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn nounwind }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind naked "less-precise-fpmad"="false" "frame-pointer"="non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "unsafe-fp-math"="false" "use-soft-float"="false" }