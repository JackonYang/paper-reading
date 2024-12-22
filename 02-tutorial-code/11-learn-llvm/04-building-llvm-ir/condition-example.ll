; ModuleID = 'my_module'
source_filename = "my_module"

@globalVar = global i32 42

define i32 @add(i32 %0, i32 %1) {
entry:
  %cond = icmp ult i32 %0, 100
  br i1 %cond, label %true_block, label %false_block

true_block:                                       ; preds = %entry
  %sum = add i32 %0, %1
  br label %merge_block

false_block:                                      ; preds = %entry
  br label %merge_block

merge_block:                                      ; preds = %false_block, %true_block
  %result = phi i32 [ %sum, %true_block ], [ 0, %false_block ]
  %globalValue = load i32, ptr @globalVar, align 4
  %result1 = add i32 %result, %globalValue
  ret i32 %result1
}
