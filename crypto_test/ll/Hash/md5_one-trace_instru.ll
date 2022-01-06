; ModuleID = 'bc/Hash/md5_one-trace_instru.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MD5state_st = type { i32, i32, i32, i32, i32, i32, [16 x i32], i32 }

@MD5.m = internal global [16 x i8] zeroinitializer, align 16, !dbg !0
@memset_func = internal global i8* (i8*, i32, i64)* @memset, align 8, !dbg !18
@__const.main.ibuf = private unnamed_addr constant [13 x i8] c"compute,md5!\00", align 1
@.str = private unnamed_addr constant [28 x i8] c"DDEP: SrcID: %d DestID: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"CDEP: SrcID: %d DestID: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Store: %lu ID: %d @Ln,Col: %d,%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Load: %lu ID: %d @Ln,Col: %d,%d\0A\00", align 1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i8* @MD5(i8* %d, i64 %n, i8* %md) #0 !dbg !2 {
entry:
  %ptr.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr.i, metadata !33, metadata !DIExpression()), !dbg !37
  %len.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr.i, metadata !39, metadata !DIExpression()), !dbg !40
  %retval = alloca i8*, align 8
  %d.addr = alloca i8*, align 8
  %n.addr = alloca i64, align 8
  %md.addr = alloca i8*, align 8
  %c = alloca %struct.MD5state_st, align 4
  store i8* %d, i8** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %md, i8** %md.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %md.addr, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %c, metadata !47, metadata !DIExpression()), !dbg !62
  %0 = load i8*, i8** %md.addr, align 8, !dbg !63
  %cmp = icmp eq i8* %0, null, !dbg !65
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @MD5.m, i64 0, i64 0), i8** %md.addr, align 8, !dbg !67
  br label %if.end, !dbg !68

if.end:                                           ; preds = %if.then, %entry
  %call = call i32 @MD5_Init(%struct.MD5state_st* %c), !dbg !69
  %tobool = icmp ne i32 %call, 0, !dbg !69
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !71

if.then1:                                         ; preds = %if.end
  store i8* null, i8** %retval, align 8, !dbg !72
  br label %return, !dbg !72

if.end2:                                          ; preds = %if.end
  %1 = load i8*, i8** %d.addr, align 8, !dbg !73
  %2 = load i64, i64* %n.addr, align 8, !dbg !74
  %call3 = call i32 @MD5_Update(%struct.MD5state_st* %c, i8* %1, i64 %2), !dbg !75
  %3 = load i8*, i8** %md.addr, align 8, !dbg !76
  %call4 = call i32 @MD5_Final(i8* %3, %struct.MD5state_st* %c), !dbg !77
  %4 = bitcast %struct.MD5state_st* %c to i8*, !dbg !78
  store i8* %4, i8** %ptr.addr.i, align 8
  store i64 92, i64* %len.addr.i, align 8
  %5 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @memset_func, align 8, !dbg !79
  %6 = load i8*, i8** %ptr.addr.i, align 8, !dbg !80
  %7 = load i64, i64* %len.addr.i, align 8, !dbg !81
  %call.i = call i8* %5(i8* %6, i32 0, i64 %7) #7, !dbg !79
  %8 = load i8*, i8** %md.addr, align 8, !dbg !82
  store i8* %8, i8** %retval, align 8, !dbg !83
  br label %return, !dbg !83

return:                                           ; preds = %if.end2, %if.then1
  %9 = load i8*, i8** %retval, align 8, !dbg !84
  ret i8* %9, !dbg !84
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @MD5_Init(%struct.MD5state_st*) #2

declare dso_local i32 @MD5_Update(%struct.MD5state_st*, i8*, i64) #2

declare dso_local i32 @MD5_Final(i8*, %struct.MD5state_st*) #2

; Function Attrs: nounwind
declare dso_local i8* @memset(i8*, i32, i64) #3

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @OPENSSL_cleanse(i8* %ptr, i64 %len) #0 !dbg !34 {
entry:
  %ptr.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !33, metadata !DIExpression()), !dbg !85
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !39, metadata !DIExpression()), !dbg !86
  %0 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @memset_func, align 8, !dbg !87
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !88
  %2 = load i64, i64* %len.addr, align 8, !dbg !89
  %call = call i8* %0(i8* %1, i32 0, i64 %2), !dbg !87
  ret void, !dbg !90
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #4 !dbg !91 {
entry:
  %ptr.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr.i.i, metadata !33, metadata !DIExpression()), !dbg !94
  %len.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr.i.i, metadata !39, metadata !DIExpression()), !dbg !97
  %retval.i = alloca i8*, align 8
  %d.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %d.addr.i, metadata !41, metadata !DIExpression()), !dbg !98
  %n.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr.i, metadata !43, metadata !DIExpression()), !dbg !99
  %md.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %md.addr.i, metadata !45, metadata !DIExpression()), !dbg !100
  %c.i = alloca %struct.MD5state_st, align 4
  call void @llvm.dbg.declare(metadata %struct.MD5state_st* %c.i, metadata !47, metadata !DIExpression()), !dbg !101
  %ibuf = alloca [13 x i8], align 1
  %hash = alloca [16 x i8], align 16
  call void @llvm.dbg.declare(metadata [13 x i8]* %ibuf, metadata !102, metadata !DIExpression()), !dbg !106
  %0 = bitcast [13 x i8]* %ibuf to i8*, !dbg !106
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %0, i8* align 1 getelementptr inbounds ([13 x i8], [13 x i8]* @__const.main.ibuf, i32 0, i32 0), i64 13, i1 false), !dbg !106
  call void @llvm.dbg.declare(metadata [16 x i8]* %hash, metadata !107, metadata !DIExpression()), !dbg !108
  %arraydecay = getelementptr inbounds [13 x i8], [13 x i8]* %ibuf, i64 0, i64 0, !dbg !109
  %arraydecay1 = getelementptr inbounds [13 x i8], [13 x i8]* %ibuf, i64 0, i64 0, !dbg !110
  %call = call i64 @strlen(i8* %arraydecay1) #8, !dbg !111
  %arraydecay2 = getelementptr inbounds [16 x i8], [16 x i8]* %hash, i64 0, i64 0, !dbg !112
  %1 = ptrtoint i8** %d.addr.i to i64
  call void @printStoreAddr(i64 %1, i32 24, i32 0, i32 0)
  store i8* %arraydecay, i8** %d.addr.i, align 8
  call void @printDDep(i32 18, i32 24)
  call void @printDDep(i32 22, i32 24)
  %2 = ptrtoint i64* %n.addr.i to i64
  call void @printStoreAddr(i64 %2, i32 27, i32 0, i32 0)
  store i64 %call, i64* %n.addr.i, align 8
  call void @printDDep(i32 24, i32 27)
  call void @printDDep(i32 22, i32 27)
  %3 = ptrtoint i8** %md.addr.i to i64
  call void @printStoreAddr(i64 %3, i32 30, i32 0, i32 0)
  store i8* %arraydecay2, i8** %md.addr.i, align 8
  call void @printDDep(i32 27, i32 30)
  call void @printDDep(i32 22, i32 30)
  %4 = ptrtoint i8** %md.addr.i to i64, !dbg !113
  call void @printLoadAddr(i64 %4, i32 33, i32 24, i32 9), !dbg !113
  %5 = load i8*, i8** %md.addr.i, align 8, !dbg !113
  call void @printDDep(i32 30, i32 33), !dbg !113
  call void @printDDep(i32 30, i32 33), !dbg !113
  %cmp.i = icmp eq i8* %5, null, !dbg !114
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !115

if.then.i:                                        ; preds = %entry
  %6 = ptrtoint i8** %md.addr.i to i64, !dbg !116
  call void @printStoreAddr(i64 %6, i32 38, i32 25, i32 12), !dbg !116
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @MD5.m, i64 0, i64 0), i8** %md.addr.i, align 8, !dbg !116
  call void @printDDep(i32 30, i32 38), !dbg !116
  call void @printDDep(i32 33, i32 38), !dbg !116
  call void @printCDep(i32 33, i32 38), !dbg !116
  br label %if.end.i, !dbg !117

if.end.i:                                         ; preds = %if.then.i, %entry
  %call.i = call i32 @MD5_Init(%struct.MD5state_st* %c.i) #7, !dbg !118
  %tobool.i = icmp ne i32 %call.i, 0, !dbg !118
  br i1 %tobool.i, label %if.end2.i, label %if.then1.i, !dbg !119

if.then1.i:                                       ; preds = %if.end.i
  %7 = ptrtoint i8** %retval.i to i64, !dbg !120
  call void @printStoreAddr(i64 %7, i32 46, i32 27, i32 9), !dbg !120
  store i8* null, i8** %retval.i, align 8, !dbg !120
  call void @printDDep(i32 43, i32 46), !dbg !120
  call void @printDDep(i32 43, i32 46), !dbg !120
  call void @printCDep(i32 33, i32 46), !dbg !120
  br label %MD5.exit, !dbg !120

if.end2.i:                                        ; preds = %if.end.i
  %8 = ptrtoint i8** %d.addr.i to i64, !dbg !121
  call void @printLoadAddr(i64 %8, i32 51, i32 29, i32 20), !dbg !121
  %9 = load i8*, i8** %d.addr.i, align 8, !dbg !121
  call void @printDDep(i32 24, i32 51), !dbg !121
  call void @printDDep(i32 43, i32 51), !dbg !121
  call void @printCDep(i32 33, i32 51), !dbg !121
  %10 = ptrtoint i64* %n.addr.i to i64, !dbg !122
  call void @printLoadAddr(i64 %10, i32 55, i32 29, i32 23), !dbg !122
  %11 = load i64, i64* %n.addr.i, align 8, !dbg !122
  call void @printDDep(i32 27, i32 55), !dbg !122
  call void @printDDep(i32 43, i32 55), !dbg !122
  call void @printCDep(i32 33, i32 55), !dbg !122
  %call3.i = call i32 @MD5_Update(%struct.MD5state_st* %c.i, i8* %9, i64 %11) #7, !dbg !123
  %12 = ptrtoint i8** %md.addr.i to i64, !dbg !124
  call void @printLoadAddr(i64 %12, i32 60, i32 44, i32 15), !dbg !124
  %13 = load i8*, i8** %md.addr.i, align 8, !dbg !124
  call void @printDDep(i32 30, i32 60), !dbg !124
  call void @printDDep(i32 38, i32 60), !dbg !124
  call void @printDDep(i32 59, i32 60), !dbg !124
  call void @printCDep(i32 33, i32 60), !dbg !124
  %call4.i = call i32 @MD5_Final(i8* %13, %struct.MD5state_st* %c.i) #7, !dbg !125
  %14 = bitcast %struct.MD5state_st* %c.i to i8*, !dbg !126
  %15 = ptrtoint i8** %ptr.addr.i.i to i64
  call void @printStoreAddr(i64 %15, i32 67, i32 0, i32 0)
  store i8* %14, i8** %ptr.addr.i.i, align 8
  call void @printDDep(i32 65, i32 67)
  call void @printDDep(i32 65, i32 67)
  call void @printCDep(i32 33, i32 67)
  %16 = ptrtoint i64* %len.addr.i.i to i64
  call void @printStoreAddr(i64 %16, i32 71, i32 0, i32 0)
  store i64 92, i64* %len.addr.i.i, align 8
  call void @printDDep(i32 67, i32 71)
  call void @printDDep(i32 65, i32 71)
  call void @printCDep(i32 33, i32 71)
  call void @printLoadAddr(i64 ptrtoint (i8* (i8*, i32, i64)** @memset_func to i64), i32 75, i32 60, i32 5), !dbg !127
  %17 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @memset_func, align 8, !dbg !127
  call void @printDDep(i32 71, i32 75), !dbg !127
  call void @printDDep(i32 75, i32 75), !dbg !127
  call void @printCDep(i32 33, i32 75), !dbg !127
  %18 = ptrtoint i8** %ptr.addr.i.i to i64, !dbg !128
  call void @printLoadAddr(i64 %18, i32 79, i32 60, i32 17), !dbg !128
  %19 = load i8*, i8** %ptr.addr.i.i, align 8, !dbg !128
  call void @printDDep(i32 67, i32 79), !dbg !128
  call void @printDDep(i32 75, i32 79), !dbg !128
  call void @printCDep(i32 33, i32 79), !dbg !128
  %20 = ptrtoint i64* %len.addr.i.i to i64, !dbg !129
  call void @printLoadAddr(i64 %20, i32 83, i32 60, i32 25), !dbg !129
  %21 = load i64, i64* %len.addr.i.i, align 8, !dbg !129
  call void @printDDep(i32 71, i32 83), !dbg !129
  call void @printDDep(i32 75, i32 83), !dbg !129
  call void @printCDep(i32 33, i32 83), !dbg !129
  %call.i.i = call i8* %17(i8* %19, i32 0, i64 %21) #7, !dbg !127
  %22 = ptrtoint i8** %md.addr.i to i64, !dbg !130
  call void @printLoadAddr(i64 %22, i32 88, i32 46, i32 12), !dbg !130
  %23 = load i8*, i8** %md.addr.i, align 8, !dbg !130
  call void @printDDep(i32 30, i32 88), !dbg !130
  call void @printDDep(i32 38, i32 88), !dbg !130
  call void @printDDep(i32 87, i32 88), !dbg !130
  call void @printCDep(i32 33, i32 88), !dbg !130
  %24 = ptrtoint i8** %retval.i to i64, !dbg !131
  call void @printStoreAddr(i64 %24, i32 93, i32 46, i32 5), !dbg !131
  store i8* %23, i8** %retval.i, align 8, !dbg !131
  call void @printDDep(i32 87, i32 93), !dbg !131
  call void @printDDep(i32 87, i32 93), !dbg !131
  call void @printCDep(i32 33, i32 93), !dbg !131
  br label %MD5.exit, !dbg !131

MD5.exit:                                         ; preds = %if.then1.i, %if.end2.i
  %25 = ptrtoint i8** %retval.i to i64, !dbg !132
  call void @printLoadAddr(i64 %25, i32 98, i32 47, i32 1), !dbg !132
  %26 = load i8*, i8** %retval.i, align 8, !dbg !132
  call void @printDDep(i32 93, i32 98), !dbg !132
  call void @printDDep(i32 46, i32 98), !dbg !132
  call void @printDDep(i32 93, i32 98), !dbg !132
  ret i32 0, !dbg !133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printDDep(i32 %ID1, i32 %ID2) #4 {
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

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printCDep(i32 %ID1, i32 %ID2) #4 {
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
define dso_local void @printStoreAddr(i64 %addr, i32 %ID, i32 %LineLoc, i32 %ColLoc) #4 {
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %0, i32 %1, i32 %2, i32 %3)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @printLoadAddr(i64 %addr, i32 %ID, i32 %LineLoc, i32 %ColLoc) #4 {
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
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %0, i32 %1, i32 %2, i32 %3)
  ret void
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!13}
!llvm.ident = !{!29, !29}
!llvm.module.flags = !{!30, !31, !32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 22, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "MD5", scope: !3, file: !3, line: 19, type: !4, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!3 = !DIFile(filename: "Hash/md5_one.c", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !10, !6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 46, baseType: !12)
!11 = !DIFile(filename: "Tools/LLVM/llvm-10.0.0/build/lib/clang/10.0.0/include/stddef.h", directory: "/home/phil")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, retainedTypes: !15, globals: !17, splitDebugInlining: false, nameTableKind: None)
!14 = !{}
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!17 = !{!0, !18}
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "memset_func", scope: !13, file: !3, line: 56, type: !20, isLocal: true, isDefinition: true)
!20 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "memset_t", file: !3, line: 54, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!16, !16, !25, !10}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 128, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: 16)
!29 = !{!"clang version 10.0.0 "}
!30 = !{i32 7, !"Dwarf Version", i32 4}
!31 = !{i32 2, !"Debug Info Version", i32 3}
!32 = !{i32 1, !"wchar_size", i32 4}
!33 = !DILocalVariable(name: "ptr", arg: 1, scope: !34, file: !3, line: 58, type: !16)
!34 = distinct !DISubprogram(name: "OPENSSL_cleanse", scope: !3, file: !3, line: 58, type: !35, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !16, !10}
!37 = !DILocation(line: 58, column: 28, scope: !34, inlinedAt: !38)
!38 = distinct !DILocation(line: 45, column: 5, scope: !2)
!39 = !DILocalVariable(name: "len", arg: 2, scope: !34, file: !3, line: 58, type: !10)
!40 = !DILocation(line: 58, column: 40, scope: !34, inlinedAt: !38)
!41 = !DILocalVariable(name: "d", arg: 1, scope: !2, file: !3, line: 19, type: !8)
!42 = !DILocation(line: 19, column: 41, scope: !2)
!43 = !DILocalVariable(name: "n", arg: 2, scope: !2, file: !3, line: 19, type: !10)
!44 = !DILocation(line: 19, column: 51, scope: !2)
!45 = !DILocalVariable(name: "md", arg: 3, scope: !2, file: !3, line: 19, type: !6)
!46 = !DILocation(line: 19, column: 69, scope: !2)
!47 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 21, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "MD5_CTX", file: !49, line: 38, baseType: !50)
!49 = !DIFile(filename: "/usr/local/include/openssl/md5.h", directory: "")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MD5state_st", file: !49, line: 33, size: 736, elements: !51)
!51 = !{!52, !54, !55, !56, !57, !58, !59, !61}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "A", scope: !50, file: !49, line: 34, baseType: !53, size: 32)
!53 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "B", scope: !50, file: !49, line: 34, baseType: !53, size: 32, offset: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "C", scope: !50, file: !49, line: 34, baseType: !53, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "D", scope: !50, file: !49, line: 34, baseType: !53, size: 32, offset: 96)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "Nl", scope: !50, file: !49, line: 35, baseType: !53, size: 32, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "Nh", scope: !50, file: !49, line: 35, baseType: !53, size: 32, offset: 160)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !50, file: !49, line: 36, baseType: !60, size: 512, offset: 192)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 512, elements: !27)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !50, file: !49, line: 37, baseType: !53, size: 32, offset: 704)
!62 = !DILocation(line: 21, column: 13, scope: !2)
!63 = !DILocation(line: 24, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !2, file: !3, line: 24, column: 9)
!65 = !DILocation(line: 24, column: 12, scope: !64)
!66 = !DILocation(line: 24, column: 9, scope: !2)
!67 = !DILocation(line: 25, column: 12, scope: !64)
!68 = !DILocation(line: 25, column: 9, scope: !64)
!69 = !DILocation(line: 26, column: 10, scope: !70)
!70 = distinct !DILexicalBlock(scope: !2, file: !3, line: 26, column: 9)
!71 = !DILocation(line: 26, column: 9, scope: !2)
!72 = !DILocation(line: 27, column: 9, scope: !70)
!73 = !DILocation(line: 29, column: 20, scope: !2)
!74 = !DILocation(line: 29, column: 23, scope: !2)
!75 = !DILocation(line: 29, column: 5, scope: !2)
!76 = !DILocation(line: 44, column: 15, scope: !2)
!77 = !DILocation(line: 44, column: 5, scope: !2)
!78 = !DILocation(line: 45, column: 21, scope: !2)
!79 = !DILocation(line: 60, column: 5, scope: !34, inlinedAt: !38)
!80 = !DILocation(line: 60, column: 17, scope: !34, inlinedAt: !38)
!81 = !DILocation(line: 60, column: 25, scope: !34, inlinedAt: !38)
!82 = !DILocation(line: 46, column: 12, scope: !2)
!83 = !DILocation(line: 46, column: 5, scope: !2)
!84 = !DILocation(line: 47, column: 1, scope: !2)
!85 = !DILocation(line: 58, column: 28, scope: !34)
!86 = !DILocation(line: 58, column: 40, scope: !34)
!87 = !DILocation(line: 60, column: 5, scope: !34)
!88 = !DILocation(line: 60, column: 17, scope: !34)
!89 = !DILocation(line: 60, column: 25, scope: !34)
!90 = !DILocation(line: 61, column: 1, scope: !34)
!91 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 63, type: !92, scopeLine: 64, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!92 = !DISubroutineType(types: !93)
!93 = !{!25}
!94 = !DILocation(line: 58, column: 28, scope: !34, inlinedAt: !95)
!95 = distinct !DILocation(line: 45, column: 5, scope: !2, inlinedAt: !96)
!96 = distinct !DILocation(line: 67, column: 5, scope: !91)
!97 = !DILocation(line: 58, column: 40, scope: !34, inlinedAt: !95)
!98 = !DILocation(line: 19, column: 41, scope: !2, inlinedAt: !96)
!99 = !DILocation(line: 19, column: 51, scope: !2, inlinedAt: !96)
!100 = !DILocation(line: 19, column: 69, scope: !2, inlinedAt: !96)
!101 = !DILocation(line: 21, column: 13, scope: !2, inlinedAt: !96)
!102 = !DILocalVariable(name: "ibuf", scope: !91, file: !3, line: 65, type: !103)
!103 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 104, elements: !104)
!104 = !{!105}
!105 = !DISubrange(count: 13)
!106 = !DILocation(line: 65, column: 19, scope: !91)
!107 = !DILocalVariable(name: "hash", scope: !91, file: !3, line: 66, type: !26)
!108 = !DILocation(line: 66, column: 19, scope: !91)
!109 = !DILocation(line: 67, column: 9, scope: !91)
!110 = !DILocation(line: 67, column: 22, scope: !91)
!111 = !DILocation(line: 67, column: 15, scope: !91)
!112 = !DILocation(line: 67, column: 29, scope: !91)
!113 = !DILocation(line: 24, column: 9, scope: !64, inlinedAt: !96)
!114 = !DILocation(line: 24, column: 12, scope: !64, inlinedAt: !96)
!115 = !DILocation(line: 24, column: 9, scope: !2, inlinedAt: !96)
!116 = !DILocation(line: 25, column: 12, scope: !64, inlinedAt: !96)
!117 = !DILocation(line: 25, column: 9, scope: !64, inlinedAt: !96)
!118 = !DILocation(line: 26, column: 10, scope: !70, inlinedAt: !96)
!119 = !DILocation(line: 26, column: 9, scope: !2, inlinedAt: !96)
!120 = !DILocation(line: 27, column: 9, scope: !70, inlinedAt: !96)
!121 = !DILocation(line: 29, column: 20, scope: !2, inlinedAt: !96)
!122 = !DILocation(line: 29, column: 23, scope: !2, inlinedAt: !96)
!123 = !DILocation(line: 29, column: 5, scope: !2, inlinedAt: !96)
!124 = !DILocation(line: 44, column: 15, scope: !2, inlinedAt: !96)
!125 = !DILocation(line: 44, column: 5, scope: !2, inlinedAt: !96)
!126 = !DILocation(line: 45, column: 21, scope: !2, inlinedAt: !96)
!127 = !DILocation(line: 60, column: 5, scope: !34, inlinedAt: !95)
!128 = !DILocation(line: 60, column: 17, scope: !34, inlinedAt: !95)
!129 = !DILocation(line: 60, column: 25, scope: !34, inlinedAt: !95)
!130 = !DILocation(line: 46, column: 12, scope: !2, inlinedAt: !96)
!131 = !DILocation(line: 46, column: 5, scope: !2, inlinedAt: !96)
!132 = !DILocation(line: 47, column: 1, scope: !2, inlinedAt: !96)
!133 = !DILocation(line: 68, column: 1, scope: !91)
