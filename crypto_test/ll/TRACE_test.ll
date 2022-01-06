; ModuleID = 'bc/TRACE_test.bc'
source_filename = "TRACE_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [28 x i8] c"DDEP: SrcID: %d DestID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CDEP: SrcID: %d DestID: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Store: 0x%llx ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Load: 0x%llx ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"InstCounter: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDDep(i32 %ID1, i32 %ID2) #0 {
entry:
  %ID1.addr = alloca i32, align 4
  %ID2.addr = alloca i32, align 4
  store i32 %ID1, i32* %ID1.addr, align 4
  store i32 %ID2, i32* %ID2.addr, align 4
  %0 = load i32, i32* %ID1.addr, align 4
  %1 = load i32, i32* %ID2.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %0, i32 %1)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printCDep(i32 %ID1, i32 %ID2) #0 {
entry:
  %ID1.addr = alloca i32, align 4
  %ID2.addr = alloca i32, align 4
  store i32 %ID1, i32* %ID1.addr, align 4
  store i32 %ID2, i32* %ID2.addr, align 4
  %0 = load i32, i32* %ID1.addr, align 4
  %1 = load i32, i32* %ID2.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %0, i32 %1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStoreAddr(i64 %addr, i32 %ID, i32 %LineLoc, i32 %ColLoc) #0 {
entry:
  %addr.addr = alloca i64, align 8
  %ID.addr = alloca i32, align 4
  %LineLoc.addr = alloca i32, align 4
  %ColLoc.addr = alloca i32, align 4
  store i64 %addr, i64* %addr.addr, align 8
  store i32 %ID, i32* %ID.addr, align 4
  store i32 %LineLoc, i32* %LineLoc.addr, align 4
  store i32 %ColLoc, i32* %ColLoc.addr, align 4
  %0 = load i64, i64* %addr.addr, align 8
  %1 = load i32, i32* %ID.addr, align 4
  %2 = load i32, i32* %LineLoc.addr, align 4
  %3 = load i32, i32* %ColLoc.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %0, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLoadAddr(i64 %addr, i32 %ID, i32 %LineLoc, i32 %ColLoc) #0 {
entry:
  %addr.addr = alloca i64, align 8
  %ID.addr = alloca i32, align 4
  %LineLoc.addr = alloca i32, align 4
  %ColLoc.addr = alloca i32, align 4
  store i64 %addr, i64* %addr.addr, align 8
  store i32 %ID, i32* %ID.addr, align 4
  store i32 %LineLoc, i32* %LineLoc.addr, align 4
  store i32 %ColLoc, i32* %ColLoc.addr, align 4
  %0 = load i64, i64* %addr.addr, align 8
  %1 = load i32, i32* %ID.addr, align 4
  %2 = load i32, i32* %LineLoc.addr, align 4
  %3 = load i32, i32* %ColLoc.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %0, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printCounter(i32 %counter) #0 {
entry:
  %counter.addr = alloca i32, align 4
  store i32 %counter, i32* %counter.addr, align 4
  %0 = load i32, i32* %counter.addr, align 4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 "}
