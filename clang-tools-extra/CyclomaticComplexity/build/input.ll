; Example LLVM IR code for testing Cyclomatic Complexity
define i32 @main() {
  entry:
    %cmp = icmp sgt i32 1, 0
    br i1 %cmp, label %true_block, label %false_block

  true_block:
    %add = add i32 1, 2
    br label %end_block

  false_block:
    %sub = sub i32 1, 2
    br label %end_block

  end_block:
    %result = phi i32 [ %add, %true_block ], [ %sub, %false_block ]
    ret i32 %result
}
