; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i386-apple-darwin8 -mattr=+sse2 | FileCheck %s --check-prefix=X86
; RUN: llc < %s -mtriple=x86_64-apple-darwin8 -mattr=+sse2 | FileCheck %s --check-prefix=X64
; rdar://6034396

define void @test(i32 %x, ptr %y) nounwind {
; X86-LABEL: test:
; X86:       ## %bb.0: ## %entry
; X86-NEXT:    movl {{[0-9]+}}(%esp), %eax
; X86-NEXT:    movl {{[0-9]+}}(%esp), %ecx
; X86-NEXT:    shrl $23, %ecx
; X86-NEXT:    cvtsi2ss %ecx, %xmm0
; X86-NEXT:    movss %xmm0, (%eax)
; X86-NEXT:    retl
;
; X64-LABEL: test:
; X64:       ## %bb.0: ## %entry
; X64-NEXT:    shrl $23, %edi
; X64-NEXT:    cvtsi2ss %edi, %xmm0
; X64-NEXT:    movss %xmm0, (%rsi)
; X64-NEXT:    retq
entry:
  lshr i32 %x, 23
  uitofp i32 %0 to float
  store float %1, ptr %y
  ret void
}

define float @test_without_nneg(i32 %x) nounwind {
; X86-LABEL: test_without_nneg:
; X86:       ## %bb.0:
; X86-NEXT:    pushl %eax
; X86-NEXT:    movss {{.*#+}} xmm0 = mem[0],zero,zero,zero
; X86-NEXT:    orpd {{\.?LCPI[0-9]+_[0-9]+}}, %xmm0
; X86-NEXT:    subsd {{\.?LCPI[0-9]+_[0-9]+}}, %xmm0
; X86-NEXT:    cvtsd2ss %xmm0, %xmm0
; X86-NEXT:    movss %xmm0, (%esp)
; X86-NEXT:    flds (%esp)
; X86-NEXT:    popl %eax
; X86-NEXT:    retl
;
; X64-LABEL: test_without_nneg:
; X64:       ## %bb.0:
; X64-NEXT:    movl %edi, %eax
; X64-NEXT:    cvtsi2ss %rax, %xmm0
; X64-NEXT:    retq
  %r = uitofp i32 %x to float
  ret float %r
}

define float @test_with_nneg(i32 %x) nounwind {
; X86-LABEL: test_with_nneg:
; X86:       ## %bb.0:
; X86-NEXT:    pushl %eax
; X86-NEXT:    cvtsi2ssl {{[0-9]+}}(%esp), %xmm0
; X86-NEXT:    movss %xmm0, (%esp)
; X86-NEXT:    flds (%esp)
; X86-NEXT:    popl %eax
; X86-NEXT:    retl
;
; X64-LABEL: test_with_nneg:
; X64:       ## %bb.0:
; X64-NEXT:    cvtsi2ss %edi, %xmm0
; X64-NEXT:    retq
  %r = uitofp nneg i32 %x to float
  ret float %r
}

define <4 x float> @test_with_nneg_vec(<4 x i32> %x) nounwind {
; X86-LABEL: test_with_nneg_vec:
; X86:       ## %bb.0:
; X86-NEXT:    cvtdq2ps %xmm0, %xmm0
; X86-NEXT:    retl
;
; X64-LABEL: test_with_nneg_vec:
; X64:       ## %bb.0:
; X64-NEXT:    cvtdq2ps %xmm0, %xmm0
; X64-NEXT:    retq
  %r = uitofp nneg <4 x i32> %x to <4 x float>
  ret <4 x float> %r
}