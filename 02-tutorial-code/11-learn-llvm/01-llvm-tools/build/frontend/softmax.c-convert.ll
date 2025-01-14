; ModuleID = 'build/frontend/softmax.c.bc'
source_filename = "softmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @softmax(ptr noundef %input, i32 noundef %size, ptr noundef %output) #0 {
entry:
  %input.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %output.addr = alloca ptr, align 8
  %max_val = alloca double, align 8
  %i = alloca i32, align 4
  %sum_exp = alloca double, align 8
  %i4 = alloca i32, align 4
  %i13 = alloca i32, align 4
  store ptr %input, ptr %input.addr, align 8
  store i32 %size, ptr %size.addr, align 4
  store ptr %output, ptr %output.addr, align 8
  store double 0xFFEFFFFFFFFFFFFF, ptr %max_val, align 8
  store i32 0, ptr %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4
  %1 = load i32, ptr %size.addr, align 4
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %input.addr, align 8
  %3 = load i32, ptr %i, align 4
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds double, ptr %2, i64 %idxprom
  %4 = load double, ptr %arrayidx, align 8
  %5 = load double, ptr %max_val, align 8
  %cmp1 = fcmp ogt double %4, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %6 = load ptr, ptr %input.addr, align 8
  %7 = load i32, ptr %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds double, ptr %6, i64 %idxprom2
  %8 = load double, ptr %arrayidx3, align 8
  store double %8, ptr %max_val, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %9 = load i32, ptr %i, align 4
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4
  br label %for.cond, !llvm.loop !6

for.end:                                          ; preds = %for.cond
  store double 0.000000e+00, ptr %sum_exp, align 8
  store i32 0, ptr %i4, align 4
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc10, %for.end
  %10 = load i32, ptr %i4, align 4
  %11 = load i32, ptr %size.addr, align 4
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body7, label %for.end12

for.body7:                                        ; preds = %for.cond5
  %12 = load ptr, ptr %input.addr, align 8
  %13 = load i32, ptr %i4, align 4
  %idxprom8 = sext i32 %13 to i64
  %arrayidx9 = getelementptr inbounds double, ptr %12, i64 %idxprom8
  %14 = load double, ptr %arrayidx9, align 8
  %15 = load double, ptr %max_val, align 8
  %sub = fsub double %14, %15
  %call = call double @exp(double noundef %sub) #2
  %16 = load double, ptr %sum_exp, align 8
  %add = fadd double %16, %call
  store double %add, ptr %sum_exp, align 8
  br label %for.inc10

for.inc10:                                        ; preds = %for.body7
  %17 = load i32, ptr %i4, align 4
  %inc11 = add nsw i32 %17, 1
  store i32 %inc11, ptr %i4, align 4
  br label %for.cond5, !llvm.loop !8

for.end12:                                        ; preds = %for.cond5
  store i32 0, ptr %i13, align 4
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc23, %for.end12
  %18 = load i32, ptr %i13, align 4
  %19 = load i32, ptr %size.addr, align 4
  %cmp15 = icmp slt i32 %18, %19
  br i1 %cmp15, label %for.body16, label %for.end25

for.body16:                                       ; preds = %for.cond14
  %20 = load ptr, ptr %input.addr, align 8
  %21 = load i32, ptr %i13, align 4
  %idxprom17 = sext i32 %21 to i64
  %arrayidx18 = getelementptr inbounds double, ptr %20, i64 %idxprom17
  %22 = load double, ptr %arrayidx18, align 8
  %23 = load double, ptr %max_val, align 8
  %sub19 = fsub double %22, %23
  %call20 = call double @exp(double noundef %sub19) #2
  %24 = load double, ptr %sum_exp, align 8
  %div = fdiv double %call20, %24
  %25 = load ptr, ptr %output.addr, align 8
  %26 = load i32, ptr %i13, align 4
  %idxprom21 = sext i32 %26 to i64
  %arrayidx22 = getelementptr inbounds double, ptr %25, i64 %idxprom21
  store double %div, ptr %arrayidx22, align 8
  br label %for.inc23

for.inc23:                                        ; preds = %for.body16
  %27 = load i32, ptr %i13, align 4
  %inc24 = add nsw i32 %27, 1
  store i32 %inc24, ptr %i13, align 4
  br label %for.cond14, !llvm.loop !9

for.end25:                                        ; preds = %for.cond14
  ret void
}

; Function Attrs: nounwind
declare double @exp(double noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 20.0.0git (git@gitlab-arch.yizhu.local:awesome-arch/llvm-project.git f590963db836ccbf7c547a3dea9dc719f24444d1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
