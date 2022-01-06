; ModuleID = 'bc/test1-trace.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@A = common dso_local global [3 x i32] zeroinitializer, align 4, !dbg !0
@.str = private unnamed_addr constant [5 x i8] c"mark\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [8 x i8] c"test1.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [28 x i8] c"DDEP: SrcID: %d DestID: %d\0A\00", align 1
@.str.1.3 = private unnamed_addr constant [28 x i8] c"CDEP: SrcID: %d DestID: %d\0A\00", align 1
@.str.2.4 = private unnamed_addr constant [37 x i8] c"Store: 0x%llx ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Load: 0x%llx ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [102 x i8] c"SymbolicStore: Concrete: 0x%llx Symbolic: From: 0x%llx To: 0x%llx StepSize: %d ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [101 x i8] c"SymbolicLoad: Concrete: 0x%llx Symbolic: From: 0x%llx To: 0x%llx StepSize: %d ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"InstCounter: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !17, metadata !DIExpression()), !dbg !18
  %3 = bitcast i32* %2 to i8*, !dbg !19
  call void @llvm.var.annotation(i8* %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i32 6), !dbg !19
  store i32 0, i32* %2, align 4, !dbg !20
  %4 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @A, i64 0, i64 0), align 4, !dbg !21
  %5 = icmp eq i32 %4, 0, !dbg !22
  %6 = zext i1 %5 to i32, !dbg !22
  %7 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @A, i64 0, i64 1), align 4, !dbg !23
  %8 = icmp eq i32 %7, 0, !dbg !24
  %9 = zext i1 %8 to i32, !dbg !24
  %10 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @A, i64 0, i64 2), align 4, !dbg !25
  %11 = icmp eq i32 %10, 0, !dbg !26
  %12 = zext i1 %11 to i32, !dbg !26
  %13 = load i32, i32* %2, align 4, !dbg !27
  %14 = sext i32 %13 to i64, !dbg !28
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* @A, i64 0, i64 %14, !dbg !28
  store i32 1, i32* %15, align 4, !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDDep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %5, i32 %6)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printCDep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1.3, i64 0, i64 0), i32 %5, i32 %6)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printStoreAddr(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2.4, i64 0, i64 0), i64 %9, i32 %10, i32 %11, i32 %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLoadAddr(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %9, i32 %10, i32 %11, i32 %12)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSymStoreAddr(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.4, i64 0, i64 0), i64 %15, i64 %16, i64 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printSymLoadAddr(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.5, i64 0, i64 0), i64 %15, i64 %16, i64 %17, i32 %18, i32 %19, i32 %20, i32 %21)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printCounter(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %3)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!2}
!llvm.ident = !{!10, !10}
!llvm.module.flags = !{!11, !12, !13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "A", scope: !2, file: !3, line: 3, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "test1.c", directory: "/home/fase2022/artifact/Test")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 96, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 3)
!10 = !{!"clang version 10.0.0-4ubuntu1 "}
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 5, type: !15, scopeLine: 5, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 6, type: !7)
!18 = !DILocation(line: 6, column: 7, scope: !14)
!19 = !DILocation(line: 6, column: 3, scope: !14)
!20 = !DILocation(line: 7, column: 5, scope: !14)
!21 = !DILocation(line: 8, column: 3, scope: !14)
!22 = !DILocation(line: 8, column: 8, scope: !14)
!23 = !DILocation(line: 9, column: 3, scope: !14)
!24 = !DILocation(line: 9, column: 8, scope: !14)
!25 = !DILocation(line: 10, column: 3, scope: !14)
!26 = !DILocation(line: 10, column: 8, scope: !14)
!27 = !DILocation(line: 11, column: 5, scope: !14)
!28 = !DILocation(line: 11, column: 3, scope: !14)
!29 = !DILocation(line: 11, column: 8, scope: !14)
!30 = !DILocation(line: 13, column: 3, scope: !14)
