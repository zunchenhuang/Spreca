; ModuleID = 'bc/Cipher/idea.bc'
source_filename = "Cipher/idea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idea_key_st = type { [9 x [6 x i32]] }

@.str = private unnamed_addr constant [5 x i8] c"mark\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [14 x i8] c"Cipher/idea.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [33 x i8] c"01234567890123456789012345678901\00", align 1
@key = dso_local global i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i32 0, i32 0), align 8, !dbg !0
@.str.3 = private unnamed_addr constant [17 x i8] c"testing idea enc\00", align 1
@__const.main.charset = private unnamed_addr constant [94 x i8] c"!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\00", align 16

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @IDEA_set_encrypt_key(i8* %key, %struct.idea_key_st* %ks) #0 !dbg !18 {
entry:
  %key.addr = alloca i8*, align 8
  %ks.addr = alloca %struct.idea_key_st*, align 8
  %i = alloca i32, align 4
  %kt = alloca i32*, align 8
  %kf = alloca i32*, align 8
  %r0 = alloca i32, align 4
  %r1 = alloca i32, align 4
  %r2 = alloca i32, align 4
  store i8* %key, i8** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr, metadata !32, metadata !DIExpression()), !dbg !33
  store %struct.idea_key_st* %ks, %struct.idea_key_st** %ks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %ks.addr, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32** %kt, metadata !38, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32** %kf, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i32* %r0, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %r1, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata i32* %r2, metadata !47, metadata !DIExpression()), !dbg !48
  %0 = load %struct.idea_key_st*, %struct.idea_key_st** %ks.addr, align 8, !dbg !49
  %data = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %0, i32 0, i32 0, !dbg !50
  %arrayidx = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data, i64 0, i64 0, !dbg !49
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 0, !dbg !49
  store i32* %arrayidx1, i32** %kt, align 8, !dbg !51
  %1 = load i8*, i8** %key.addr, align 8, !dbg !52
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i32 1, !dbg !52
  store i8* %incdec.ptr, i8** %key.addr, align 8, !dbg !52
  %2 = load i8, i8* %1, align 1, !dbg !52
  %conv = zext i8 %2 to i32, !dbg !52
  %shl = shl i32 %conv, 8, !dbg !52
  %3 = load i32*, i32** %kt, align 8, !dbg !52
  %arrayidx2 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !52
  store i32 %shl, i32* %arrayidx2, align 4, !dbg !52
  %4 = load i8*, i8** %key.addr, align 8, !dbg !52
  %incdec.ptr3 = getelementptr inbounds i8, i8* %4, i32 1, !dbg !52
  store i8* %incdec.ptr3, i8** %key.addr, align 8, !dbg !52
  %5 = load i8, i8* %4, align 1, !dbg !52
  %conv4 = zext i8 %5 to i32, !dbg !52
  %6 = load i32*, i32** %kt, align 8, !dbg !52
  %arrayidx5 = getelementptr inbounds i32, i32* %6, i64 0, !dbg !52
  %7 = load i32, i32* %arrayidx5, align 4, !dbg !52
  %or = or i32 %7, %conv4, !dbg !52
  store i32 %or, i32* %arrayidx5, align 4, !dbg !52
  %8 = load i8*, i8** %key.addr, align 8, !dbg !53
  %incdec.ptr6 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !53
  store i8* %incdec.ptr6, i8** %key.addr, align 8, !dbg !53
  %9 = load i8, i8* %8, align 1, !dbg !53
  %conv7 = zext i8 %9 to i32, !dbg !53
  %shl8 = shl i32 %conv7, 8, !dbg !53
  %10 = load i32*, i32** %kt, align 8, !dbg !53
  %arrayidx9 = getelementptr inbounds i32, i32* %10, i64 1, !dbg !53
  store i32 %shl8, i32* %arrayidx9, align 4, !dbg !53
  %11 = load i8*, i8** %key.addr, align 8, !dbg !53
  %incdec.ptr10 = getelementptr inbounds i8, i8* %11, i32 1, !dbg !53
  store i8* %incdec.ptr10, i8** %key.addr, align 8, !dbg !53
  %12 = load i8, i8* %11, align 1, !dbg !53
  %conv11 = zext i8 %12 to i32, !dbg !53
  %13 = load i32*, i32** %kt, align 8, !dbg !53
  %arrayidx12 = getelementptr inbounds i32, i32* %13, i64 1, !dbg !53
  %14 = load i32, i32* %arrayidx12, align 4, !dbg !53
  %or13 = or i32 %14, %conv11, !dbg !53
  store i32 %or13, i32* %arrayidx12, align 4, !dbg !53
  %15 = load i8*, i8** %key.addr, align 8, !dbg !54
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1, !dbg !54
  store i8* %incdec.ptr14, i8** %key.addr, align 8, !dbg !54
  %16 = load i8, i8* %15, align 1, !dbg !54
  %conv15 = zext i8 %16 to i32, !dbg !54
  %shl16 = shl i32 %conv15, 8, !dbg !54
  %17 = load i32*, i32** %kt, align 8, !dbg !54
  %arrayidx17 = getelementptr inbounds i32, i32* %17, i64 2, !dbg !54
  store i32 %shl16, i32* %arrayidx17, align 4, !dbg !54
  %18 = load i8*, i8** %key.addr, align 8, !dbg !54
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1, !dbg !54
  store i8* %incdec.ptr18, i8** %key.addr, align 8, !dbg !54
  %19 = load i8, i8* %18, align 1, !dbg !54
  %conv19 = zext i8 %19 to i32, !dbg !54
  %20 = load i32*, i32** %kt, align 8, !dbg !54
  %arrayidx20 = getelementptr inbounds i32, i32* %20, i64 2, !dbg !54
  %21 = load i32, i32* %arrayidx20, align 4, !dbg !54
  %or21 = or i32 %21, %conv19, !dbg !54
  store i32 %or21, i32* %arrayidx20, align 4, !dbg !54
  %22 = load i8*, i8** %key.addr, align 8, !dbg !55
  %incdec.ptr22 = getelementptr inbounds i8, i8* %22, i32 1, !dbg !55
  store i8* %incdec.ptr22, i8** %key.addr, align 8, !dbg !55
  %23 = load i8, i8* %22, align 1, !dbg !55
  %conv23 = zext i8 %23 to i32, !dbg !55
  %shl24 = shl i32 %conv23, 8, !dbg !55
  %24 = load i32*, i32** %kt, align 8, !dbg !55
  %arrayidx25 = getelementptr inbounds i32, i32* %24, i64 3, !dbg !55
  store i32 %shl24, i32* %arrayidx25, align 4, !dbg !55
  %25 = load i8*, i8** %key.addr, align 8, !dbg !55
  %incdec.ptr26 = getelementptr inbounds i8, i8* %25, i32 1, !dbg !55
  store i8* %incdec.ptr26, i8** %key.addr, align 8, !dbg !55
  %26 = load i8, i8* %25, align 1, !dbg !55
  %conv27 = zext i8 %26 to i32, !dbg !55
  %27 = load i32*, i32** %kt, align 8, !dbg !55
  %arrayidx28 = getelementptr inbounds i32, i32* %27, i64 3, !dbg !55
  %28 = load i32, i32* %arrayidx28, align 4, !dbg !55
  %or29 = or i32 %28, %conv27, !dbg !55
  store i32 %or29, i32* %arrayidx28, align 4, !dbg !55
  %29 = load i8*, i8** %key.addr, align 8, !dbg !56
  %incdec.ptr30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !56
  store i8* %incdec.ptr30, i8** %key.addr, align 8, !dbg !56
  %30 = load i8, i8* %29, align 1, !dbg !56
  %conv31 = zext i8 %30 to i32, !dbg !56
  %shl32 = shl i32 %conv31, 8, !dbg !56
  %31 = load i32*, i32** %kt, align 8, !dbg !56
  %arrayidx33 = getelementptr inbounds i32, i32* %31, i64 4, !dbg !56
  store i32 %shl32, i32* %arrayidx33, align 4, !dbg !56
  %32 = load i8*, i8** %key.addr, align 8, !dbg !56
  %incdec.ptr34 = getelementptr inbounds i8, i8* %32, i32 1, !dbg !56
  store i8* %incdec.ptr34, i8** %key.addr, align 8, !dbg !56
  %33 = load i8, i8* %32, align 1, !dbg !56
  %conv35 = zext i8 %33 to i32, !dbg !56
  %34 = load i32*, i32** %kt, align 8, !dbg !56
  %arrayidx36 = getelementptr inbounds i32, i32* %34, i64 4, !dbg !56
  %35 = load i32, i32* %arrayidx36, align 4, !dbg !56
  %or37 = or i32 %35, %conv35, !dbg !56
  store i32 %or37, i32* %arrayidx36, align 4, !dbg !56
  %36 = load i8*, i8** %key.addr, align 8, !dbg !57
  %incdec.ptr38 = getelementptr inbounds i8, i8* %36, i32 1, !dbg !57
  store i8* %incdec.ptr38, i8** %key.addr, align 8, !dbg !57
  %37 = load i8, i8* %36, align 1, !dbg !57
  %conv39 = zext i8 %37 to i32, !dbg !57
  %shl40 = shl i32 %conv39, 8, !dbg !57
  %38 = load i32*, i32** %kt, align 8, !dbg !57
  %arrayidx41 = getelementptr inbounds i32, i32* %38, i64 5, !dbg !57
  store i32 %shl40, i32* %arrayidx41, align 4, !dbg !57
  %39 = load i8*, i8** %key.addr, align 8, !dbg !57
  %incdec.ptr42 = getelementptr inbounds i8, i8* %39, i32 1, !dbg !57
  store i8* %incdec.ptr42, i8** %key.addr, align 8, !dbg !57
  %40 = load i8, i8* %39, align 1, !dbg !57
  %conv43 = zext i8 %40 to i32, !dbg !57
  %41 = load i32*, i32** %kt, align 8, !dbg !57
  %arrayidx44 = getelementptr inbounds i32, i32* %41, i64 5, !dbg !57
  %42 = load i32, i32* %arrayidx44, align 4, !dbg !57
  %or45 = or i32 %42, %conv43, !dbg !57
  store i32 %or45, i32* %arrayidx44, align 4, !dbg !57
  %43 = load i8*, i8** %key.addr, align 8, !dbg !58
  %incdec.ptr46 = getelementptr inbounds i8, i8* %43, i32 1, !dbg !58
  store i8* %incdec.ptr46, i8** %key.addr, align 8, !dbg !58
  %44 = load i8, i8* %43, align 1, !dbg !58
  %conv47 = zext i8 %44 to i32, !dbg !58
  %shl48 = shl i32 %conv47, 8, !dbg !58
  %45 = load i32*, i32** %kt, align 8, !dbg !58
  %arrayidx49 = getelementptr inbounds i32, i32* %45, i64 6, !dbg !58
  store i32 %shl48, i32* %arrayidx49, align 4, !dbg !58
  %46 = load i8*, i8** %key.addr, align 8, !dbg !58
  %incdec.ptr50 = getelementptr inbounds i8, i8* %46, i32 1, !dbg !58
  store i8* %incdec.ptr50, i8** %key.addr, align 8, !dbg !58
  %47 = load i8, i8* %46, align 1, !dbg !58
  %conv51 = zext i8 %47 to i32, !dbg !58
  %48 = load i32*, i32** %kt, align 8, !dbg !58
  %arrayidx52 = getelementptr inbounds i32, i32* %48, i64 6, !dbg !58
  %49 = load i32, i32* %arrayidx52, align 4, !dbg !58
  %or53 = or i32 %49, %conv51, !dbg !58
  store i32 %or53, i32* %arrayidx52, align 4, !dbg !58
  %50 = load i8*, i8** %key.addr, align 8, !dbg !59
  %incdec.ptr54 = getelementptr inbounds i8, i8* %50, i32 1, !dbg !59
  store i8* %incdec.ptr54, i8** %key.addr, align 8, !dbg !59
  %51 = load i8, i8* %50, align 1, !dbg !59
  %conv55 = zext i8 %51 to i32, !dbg !59
  %shl56 = shl i32 %conv55, 8, !dbg !59
  %52 = load i32*, i32** %kt, align 8, !dbg !59
  %arrayidx57 = getelementptr inbounds i32, i32* %52, i64 7, !dbg !59
  store i32 %shl56, i32* %arrayidx57, align 4, !dbg !59
  %53 = load i8*, i8** %key.addr, align 8, !dbg !59
  %incdec.ptr58 = getelementptr inbounds i8, i8* %53, i32 1, !dbg !59
  store i8* %incdec.ptr58, i8** %key.addr, align 8, !dbg !59
  %54 = load i8, i8* %53, align 1, !dbg !59
  %conv59 = zext i8 %54 to i32, !dbg !59
  %55 = load i32*, i32** %kt, align 8, !dbg !59
  %arrayidx60 = getelementptr inbounds i32, i32* %55, i64 7, !dbg !59
  %56 = load i32, i32* %arrayidx60, align 4, !dbg !59
  %or61 = or i32 %56, %conv59, !dbg !59
  store i32 %or61, i32* %arrayidx60, align 4, !dbg !59
  %57 = load i32*, i32** %kt, align 8, !dbg !60
  store i32* %57, i32** %kf, align 8, !dbg !61
  %58 = load i32*, i32** %kt, align 8, !dbg !62
  %add.ptr = getelementptr inbounds i32, i32* %58, i64 8, !dbg !62
  store i32* %add.ptr, i32** %kt, align 8, !dbg !62
  store i32 0, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !65

for.cond:                                         ; preds = %for.inc, %entry
  %59 = load i32, i32* %i, align 4, !dbg !66
  %cmp = icmp slt i32 %59, 6, !dbg !68
  br i1 %cmp, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %60 = load i32*, i32** %kf, align 8, !dbg !70
  %arrayidx63 = getelementptr inbounds i32, i32* %60, i64 1, !dbg !70
  %61 = load i32, i32* %arrayidx63, align 4, !dbg !70
  store i32 %61, i32* %r2, align 4, !dbg !72
  %62 = load i32*, i32** %kf, align 8, !dbg !73
  %arrayidx64 = getelementptr inbounds i32, i32* %62, i64 2, !dbg !73
  %63 = load i32, i32* %arrayidx64, align 4, !dbg !73
  store i32 %63, i32* %r1, align 4, !dbg !74
  %64 = load i32, i32* %r2, align 4, !dbg !75
  %shl65 = shl i32 %64, 9, !dbg !76
  %65 = load i32, i32* %r1, align 4, !dbg !77
  %shr = lshr i32 %65, 7, !dbg !78
  %or66 = or i32 %shl65, %shr, !dbg !79
  %and = and i32 %or66, 65535, !dbg !80
  %66 = load i32*, i32** %kt, align 8, !dbg !81
  %incdec.ptr67 = getelementptr inbounds i32, i32* %66, i32 1, !dbg !81
  store i32* %incdec.ptr67, i32** %kt, align 8, !dbg !81
  store i32 %and, i32* %66, align 4, !dbg !82
  %67 = load i32*, i32** %kf, align 8, !dbg !83
  %arrayidx68 = getelementptr inbounds i32, i32* %67, i64 3, !dbg !83
  %68 = load i32, i32* %arrayidx68, align 4, !dbg !83
  store i32 %68, i32* %r0, align 4, !dbg !84
  %69 = load i32, i32* %r1, align 4, !dbg !85
  %shl69 = shl i32 %69, 9, !dbg !86
  %70 = load i32, i32* %r0, align 4, !dbg !87
  %shr70 = lshr i32 %70, 7, !dbg !88
  %or71 = or i32 %shl69, %shr70, !dbg !89
  %and72 = and i32 %or71, 65535, !dbg !90
  %71 = load i32*, i32** %kt, align 8, !dbg !91
  %incdec.ptr73 = getelementptr inbounds i32, i32* %71, i32 1, !dbg !91
  store i32* %incdec.ptr73, i32** %kt, align 8, !dbg !91
  store i32 %and72, i32* %71, align 4, !dbg !92
  %72 = load i32*, i32** %kf, align 8, !dbg !93
  %arrayidx74 = getelementptr inbounds i32, i32* %72, i64 4, !dbg !93
  %73 = load i32, i32* %arrayidx74, align 4, !dbg !93
  store i32 %73, i32* %r1, align 4, !dbg !94
  %74 = load i32, i32* %r0, align 4, !dbg !95
  %shl75 = shl i32 %74, 9, !dbg !96
  %75 = load i32, i32* %r1, align 4, !dbg !97
  %shr76 = lshr i32 %75, 7, !dbg !98
  %or77 = or i32 %shl75, %shr76, !dbg !99
  %and78 = and i32 %or77, 65535, !dbg !100
  %76 = load i32*, i32** %kt, align 8, !dbg !101
  %incdec.ptr79 = getelementptr inbounds i32, i32* %76, i32 1, !dbg !101
  store i32* %incdec.ptr79, i32** %kt, align 8, !dbg !101
  store i32 %and78, i32* %76, align 4, !dbg !102
  %77 = load i32*, i32** %kf, align 8, !dbg !103
  %arrayidx80 = getelementptr inbounds i32, i32* %77, i64 5, !dbg !103
  %78 = load i32, i32* %arrayidx80, align 4, !dbg !103
  store i32 %78, i32* %r0, align 4, !dbg !104
  %79 = load i32, i32* %r1, align 4, !dbg !105
  %shl81 = shl i32 %79, 9, !dbg !106
  %80 = load i32, i32* %r0, align 4, !dbg !107
  %shr82 = lshr i32 %80, 7, !dbg !108
  %or83 = or i32 %shl81, %shr82, !dbg !109
  %and84 = and i32 %or83, 65535, !dbg !110
  %81 = load i32*, i32** %kt, align 8, !dbg !111
  %incdec.ptr85 = getelementptr inbounds i32, i32* %81, i32 1, !dbg !111
  store i32* %incdec.ptr85, i32** %kt, align 8, !dbg !111
  store i32 %and84, i32* %81, align 4, !dbg !112
  %82 = load i32*, i32** %kf, align 8, !dbg !113
  %arrayidx86 = getelementptr inbounds i32, i32* %82, i64 6, !dbg !113
  %83 = load i32, i32* %arrayidx86, align 4, !dbg !113
  store i32 %83, i32* %r1, align 4, !dbg !114
  %84 = load i32, i32* %r0, align 4, !dbg !115
  %shl87 = shl i32 %84, 9, !dbg !116
  %85 = load i32, i32* %r1, align 4, !dbg !117
  %shr88 = lshr i32 %85, 7, !dbg !118
  %or89 = or i32 %shl87, %shr88, !dbg !119
  %and90 = and i32 %or89, 65535, !dbg !120
  %86 = load i32*, i32** %kt, align 8, !dbg !121
  %incdec.ptr91 = getelementptr inbounds i32, i32* %86, i32 1, !dbg !121
  store i32* %incdec.ptr91, i32** %kt, align 8, !dbg !121
  store i32 %and90, i32* %86, align 4, !dbg !122
  %87 = load i32*, i32** %kf, align 8, !dbg !123
  %arrayidx92 = getelementptr inbounds i32, i32* %87, i64 7, !dbg !123
  %88 = load i32, i32* %arrayidx92, align 4, !dbg !123
  store i32 %88, i32* %r0, align 4, !dbg !124
  %89 = load i32, i32* %r1, align 4, !dbg !125
  %shl93 = shl i32 %89, 9, !dbg !126
  %90 = load i32, i32* %r0, align 4, !dbg !127
  %shr94 = lshr i32 %90, 7, !dbg !128
  %or95 = or i32 %shl93, %shr94, !dbg !129
  %and96 = and i32 %or95, 65535, !dbg !130
  %91 = load i32*, i32** %kt, align 8, !dbg !131
  %incdec.ptr97 = getelementptr inbounds i32, i32* %91, i32 1, !dbg !131
  store i32* %incdec.ptr97, i32** %kt, align 8, !dbg !131
  store i32 %and96, i32* %91, align 4, !dbg !132
  %92 = load i32*, i32** %kf, align 8, !dbg !133
  %arrayidx98 = getelementptr inbounds i32, i32* %92, i64 0, !dbg !133
  %93 = load i32, i32* %arrayidx98, align 4, !dbg !133
  store i32 %93, i32* %r1, align 4, !dbg !134
  %94 = load i32, i32* %i, align 4, !dbg !135
  %cmp99 = icmp sge i32 %94, 5, !dbg !137
  br i1 %cmp99, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %for.body
  br label %for.end, !dbg !139

if.end:                                           ; preds = %for.body
  %95 = load i32, i32* %r0, align 4, !dbg !140
  %shl101 = shl i32 %95, 9, !dbg !141
  %96 = load i32, i32* %r1, align 4, !dbg !142
  %shr102 = lshr i32 %96, 7, !dbg !143
  %or103 = or i32 %shl101, %shr102, !dbg !144
  %and104 = and i32 %or103, 65535, !dbg !145
  %97 = load i32*, i32** %kt, align 8, !dbg !146
  %incdec.ptr105 = getelementptr inbounds i32, i32* %97, i32 1, !dbg !146
  store i32* %incdec.ptr105, i32** %kt, align 8, !dbg !146
  store i32 %and104, i32* %97, align 4, !dbg !147
  %98 = load i32, i32* %r1, align 4, !dbg !148
  %shl106 = shl i32 %98, 9, !dbg !149
  %99 = load i32, i32* %r2, align 4, !dbg !150
  %shr107 = lshr i32 %99, 7, !dbg !151
  %or108 = or i32 %shl106, %shr107, !dbg !152
  %and109 = and i32 %or108, 65535, !dbg !153
  %100 = load i32*, i32** %kt, align 8, !dbg !154
  %incdec.ptr110 = getelementptr inbounds i32, i32* %100, i32 1, !dbg !154
  store i32* %incdec.ptr110, i32** %kt, align 8, !dbg !154
  store i32 %and109, i32* %100, align 4, !dbg !155
  %101 = load i32*, i32** %kf, align 8, !dbg !156
  %add.ptr111 = getelementptr inbounds i32, i32* %101, i64 8, !dbg !156
  store i32* %add.ptr111, i32** %kf, align 8, !dbg !156
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %if.end
  %102 = load i32, i32* %i, align 4, !dbg !158
  %inc = add nsw i32 %102, 1, !dbg !158
  store i32 %inc, i32* %i, align 4, !dbg !158
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %if.then, %for.cond
  ret void, !dbg !162
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @IDEA_set_decrypt_key(%struct.idea_key_st* %ek, %struct.idea_key_st* %dk) #0 !dbg !163 {
entry:
  %xin.addr.i35 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %xin.addr.i35, metadata !166, metadata !DIExpression()), !dbg !170
  %n1.i36 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n1.i36, metadata !175, metadata !DIExpression()), !dbg !177
  %n2.i37 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n2.i37, metadata !178, metadata !DIExpression()), !dbg !179
  %q.i38 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %q.i38, metadata !180, metadata !DIExpression()), !dbg !181
  %r.i39 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %r.i39, metadata !182, metadata !DIExpression()), !dbg !183
  %b1.i40 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %b1.i40, metadata !184, metadata !DIExpression()), !dbg !185
  %b2.i41 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %b2.i41, metadata !186, metadata !DIExpression()), !dbg !187
  %t.i42 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t.i42, metadata !188, metadata !DIExpression()), !dbg !189
  %xin.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %xin.addr.i, metadata !166, metadata !DIExpression()), !dbg !190
  %n1.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n1.i, metadata !175, metadata !DIExpression()), !dbg !192
  %n2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %n2.i, metadata !178, metadata !DIExpression()), !dbg !193
  %q.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %q.i, metadata !180, metadata !DIExpression()), !dbg !194
  %r.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %r.i, metadata !182, metadata !DIExpression()), !dbg !195
  %b1.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %b1.i, metadata !184, metadata !DIExpression()), !dbg !196
  %b2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %b2.i, metadata !186, metadata !DIExpression()), !dbg !197
  %t.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t.i, metadata !188, metadata !DIExpression()), !dbg !198
  %ek.addr = alloca %struct.idea_key_st*, align 8
  %dk.addr = alloca %struct.idea_key_st*, align 8
  %r = alloca i32, align 4
  %fp = alloca i32*, align 8
  %tp = alloca i32*, align 8
  %t = alloca i32, align 4
  store %struct.idea_key_st* %ek, %struct.idea_key_st** %ek.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %ek.addr, metadata !199, metadata !DIExpression()), !dbg !200
  store %struct.idea_key_st* %dk, %struct.idea_key_st** %dk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %dk.addr, metadata !201, metadata !DIExpression()), !dbg !202
  call void @llvm.dbg.declare(metadata i32* %r, metadata !203, metadata !DIExpression()), !dbg !204
  call void @llvm.dbg.declare(metadata i32** %fp, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i32** %tp, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i32* %t, metadata !209, metadata !DIExpression()), !dbg !210
  %0 = load %struct.idea_key_st*, %struct.idea_key_st** %dk.addr, align 8, !dbg !211
  %data = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %0, i32 0, i32 0, !dbg !212
  %arrayidx = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data, i64 0, i64 0, !dbg !211
  %arrayidx1 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx, i64 0, i64 0, !dbg !211
  store i32* %arrayidx1, i32** %tp, align 8, !dbg !213
  %1 = load %struct.idea_key_st*, %struct.idea_key_st** %ek.addr, align 8, !dbg !214
  %data2 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %1, i32 0, i32 0, !dbg !215
  %arrayidx3 = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data2, i64 0, i64 8, !dbg !214
  %arrayidx4 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx3, i64 0, i64 0, !dbg !214
  store i32* %arrayidx4, i32** %fp, align 8, !dbg !216
  store i32 0, i32* %r, align 4, !dbg !217
  br label %for.cond, !dbg !218

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %r, align 4, !dbg !219
  %cmp = icmp slt i32 %2, 9, !dbg !220
  br i1 %cmp, label %for.body, label %for.end, !dbg !221

for.body:                                         ; preds = %for.cond
  %3 = load i32*, i32** %fp, align 8, !dbg !222
  %arrayidx5 = getelementptr inbounds i32, i32* %3, i64 0, !dbg !222
  %4 = load i32, i32* %arrayidx5, align 4, !dbg !222
  store i32 %4, i32* %xin.addr.i, align 4
  %5 = load i32, i32* %xin.addr.i, align 4, !dbg !223
  %cmp.i = icmp eq i32 %5, 0, !dbg !225
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !226

if.then.i:                                        ; preds = %for.body
  store i64 0, i64* %b2.i, align 8, !dbg !227
  br label %inverse.exit, !dbg !228

if.else.i:                                        ; preds = %for.body
  store i64 65537, i64* %n1.i, align 8, !dbg !229
  %6 = load i32, i32* %xin.addr.i, align 4, !dbg !231
  %conv.i = zext i32 %6 to i64, !dbg !231
  store i64 %conv.i, i64* %n2.i, align 8, !dbg !232
  store i64 1, i64* %b2.i, align 8, !dbg !233
  store i64 0, i64* %b1.i, align 8, !dbg !234
  br label %do.body.i, !dbg !235

do.body.i:                                        ; preds = %if.end9.i, %if.else.i
  %7 = load i64, i64* %n1.i, align 8, !dbg !236
  %8 = load i64, i64* %n2.i, align 8, !dbg !238
  %rem.i = srem i64 %7, %8, !dbg !239
  store i64 %rem.i, i64* %r.i, align 8, !dbg !240
  %9 = load i64, i64* %n1.i, align 8, !dbg !241
  %10 = load i64, i64* %r.i, align 8, !dbg !242
  %sub.i = sub nsw i64 %9, %10, !dbg !243
  %11 = load i64, i64* %n2.i, align 8, !dbg !244
  %div.i = sdiv i64 %sub.i, %11, !dbg !245
  store i64 %div.i, i64* %q.i, align 8, !dbg !246
  %12 = load i64, i64* %r.i, align 8, !dbg !247
  %cmp1.i = icmp eq i64 %12, 0, !dbg !249
  br i1 %cmp1.i, label %if.then3.i, label %if.else7.i, !dbg !250

if.then3.i:                                       ; preds = %do.body.i
  %13 = load i64, i64* %b2.i, align 8, !dbg !251
  %cmp4.i = icmp slt i64 %13, 0, !dbg !254
  br i1 %cmp4.i, label %if.then6.i, label %if.end.i, !dbg !255

if.then6.i:                                       ; preds = %if.then3.i
  %14 = load i64, i64* %b2.i, align 8, !dbg !256
  %add.i = add nsw i64 65537, %14, !dbg !257
  store i64 %add.i, i64* %b2.i, align 8, !dbg !258
  br label %if.end.i, !dbg !259

if.end.i:                                         ; preds = %if.then6.i, %if.then3.i
  br label %if.end9.i, !dbg !260

if.else7.i:                                       ; preds = %do.body.i
  %15 = load i64, i64* %n2.i, align 8, !dbg !261
  store i64 %15, i64* %n1.i, align 8, !dbg !263
  %16 = load i64, i64* %r.i, align 8, !dbg !264
  store i64 %16, i64* %n2.i, align 8, !dbg !265
  %17 = load i64, i64* %b2.i, align 8, !dbg !266
  store i64 %17, i64* %t.i, align 8, !dbg !267
  %18 = load i64, i64* %b1.i, align 8, !dbg !268
  %19 = load i64, i64* %q.i, align 8, !dbg !269
  %20 = load i64, i64* %b2.i, align 8, !dbg !270
  %mul.i = mul nsw i64 %19, %20, !dbg !271
  %sub8.i = sub nsw i64 %18, %mul.i, !dbg !272
  store i64 %sub8.i, i64* %b2.i, align 8, !dbg !273
  %21 = load i64, i64* %t.i, align 8, !dbg !274
  store i64 %21, i64* %b1.i, align 8, !dbg !275
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.else7.i, %if.end.i
  %22 = load i64, i64* %r.i, align 8, !dbg !276
  %cmp10.i = icmp ne i64 %22, 0, !dbg !277
  br i1 %cmp10.i, label %do.body.i, label %do.end.i, !dbg !278, !llvm.loop !279

do.end.i:                                         ; preds = %if.end9.i
  br label %inverse.exit

inverse.exit:                                     ; preds = %if.then.i, %do.end.i
  %23 = load i64, i64* %b2.i, align 8, !dbg !281
  %conv13.i = trunc i64 %23 to i32, !dbg !282
  %24 = load i32*, i32** %tp, align 8, !dbg !283
  %incdec.ptr = getelementptr inbounds i32, i32* %24, i32 1, !dbg !283
  store i32* %incdec.ptr, i32** %tp, align 8, !dbg !283
  store i32 %conv13.i, i32* %24, align 4, !dbg !284
  %25 = load i32*, i32** %fp, align 8, !dbg !285
  %arrayidx6 = getelementptr inbounds i32, i32* %25, i64 2, !dbg !285
  %26 = load i32, i32* %arrayidx6, align 4, !dbg !285
  %conv = zext i32 %26 to i64, !dbg !285
  %sub = sub nsw i64 65536, %conv, !dbg !286
  %conv7 = trunc i64 %sub to i32, !dbg !287
  %and = and i32 %conv7, 65535, !dbg !288
  %27 = load i32*, i32** %tp, align 8, !dbg !289
  %incdec.ptr8 = getelementptr inbounds i32, i32* %27, i32 1, !dbg !289
  store i32* %incdec.ptr8, i32** %tp, align 8, !dbg !289
  store i32 %and, i32* %27, align 4, !dbg !290
  %28 = load i32*, i32** %fp, align 8, !dbg !291
  %arrayidx9 = getelementptr inbounds i32, i32* %28, i64 1, !dbg !291
  %29 = load i32, i32* %arrayidx9, align 4, !dbg !291
  %conv10 = zext i32 %29 to i64, !dbg !291
  %sub11 = sub nsw i64 65536, %conv10, !dbg !292
  %conv12 = trunc i64 %sub11 to i32, !dbg !293
  %and13 = and i32 %conv12, 65535, !dbg !294
  %30 = load i32*, i32** %tp, align 8, !dbg !295
  %incdec.ptr14 = getelementptr inbounds i32, i32* %30, i32 1, !dbg !295
  store i32* %incdec.ptr14, i32** %tp, align 8, !dbg !295
  store i32 %and13, i32* %30, align 4, !dbg !296
  %31 = load i32*, i32** %fp, align 8, !dbg !297
  %arrayidx15 = getelementptr inbounds i32, i32* %31, i64 3, !dbg !297
  %32 = load i32, i32* %arrayidx15, align 4, !dbg !297
  store i32 %32, i32* %xin.addr.i35, align 4
  %33 = load i32, i32* %xin.addr.i35, align 4, !dbg !298
  %cmp.i43 = icmp eq i32 %33, 0, !dbg !299
  br i1 %cmp.i43, label %if.then.i44, label %if.else.i46, !dbg !300

if.then.i44:                                      ; preds = %inverse.exit
  store i64 0, i64* %b2.i41, align 8, !dbg !301
  br label %inverse.exit64, !dbg !302

if.else.i46:                                      ; preds = %inverse.exit
  store i64 65537, i64* %n1.i36, align 8, !dbg !303
  %34 = load i32, i32* %xin.addr.i35, align 4, !dbg !304
  %conv.i45 = zext i32 %34 to i64, !dbg !304
  store i64 %conv.i45, i64* %n2.i37, align 8, !dbg !305
  store i64 1, i64* %b2.i41, align 8, !dbg !306
  store i64 0, i64* %b1.i40, align 8, !dbg !307
  br label %do.body.i51, !dbg !308

do.body.i51:                                      ; preds = %if.end9.i60, %if.else.i46
  %35 = load i64, i64* %n1.i36, align 8, !dbg !309
  %36 = load i64, i64* %n2.i37, align 8, !dbg !310
  %rem.i47 = srem i64 %35, %36, !dbg !311
  store i64 %rem.i47, i64* %r.i39, align 8, !dbg !312
  %37 = load i64, i64* %n1.i36, align 8, !dbg !313
  %38 = load i64, i64* %r.i39, align 8, !dbg !314
  %sub.i48 = sub nsw i64 %37, %38, !dbg !315
  %39 = load i64, i64* %n2.i37, align 8, !dbg !316
  %div.i49 = sdiv i64 %sub.i48, %39, !dbg !317
  store i64 %div.i49, i64* %q.i38, align 8, !dbg !318
  %40 = load i64, i64* %r.i39, align 8, !dbg !319
  %cmp1.i50 = icmp eq i64 %40, 0, !dbg !320
  br i1 %cmp1.i50, label %if.then3.i53, label %if.else7.i59, !dbg !321

if.then3.i53:                                     ; preds = %do.body.i51
  %41 = load i64, i64* %b2.i41, align 8, !dbg !322
  %cmp4.i52 = icmp slt i64 %41, 0, !dbg !323
  br i1 %cmp4.i52, label %if.then6.i55, label %if.end.i56, !dbg !324

if.then6.i55:                                     ; preds = %if.then3.i53
  %42 = load i64, i64* %b2.i41, align 8, !dbg !325
  %add.i54 = add nsw i64 65537, %42, !dbg !326
  store i64 %add.i54, i64* %b2.i41, align 8, !dbg !327
  br label %if.end.i56, !dbg !328

if.end.i56:                                       ; preds = %if.then6.i55, %if.then3.i53
  br label %if.end9.i60, !dbg !329

if.else7.i59:                                     ; preds = %do.body.i51
  %43 = load i64, i64* %n2.i37, align 8, !dbg !330
  store i64 %43, i64* %n1.i36, align 8, !dbg !331
  %44 = load i64, i64* %r.i39, align 8, !dbg !332
  store i64 %44, i64* %n2.i37, align 8, !dbg !333
  %45 = load i64, i64* %b2.i41, align 8, !dbg !334
  store i64 %45, i64* %t.i42, align 8, !dbg !335
  %46 = load i64, i64* %b1.i40, align 8, !dbg !336
  %47 = load i64, i64* %q.i38, align 8, !dbg !337
  %48 = load i64, i64* %b2.i41, align 8, !dbg !338
  %mul.i57 = mul nsw i64 %47, %48, !dbg !339
  %sub8.i58 = sub nsw i64 %46, %mul.i57, !dbg !340
  store i64 %sub8.i58, i64* %b2.i41, align 8, !dbg !341
  %49 = load i64, i64* %t.i42, align 8, !dbg !342
  store i64 %49, i64* %b1.i40, align 8, !dbg !343
  br label %if.end9.i60

if.end9.i60:                                      ; preds = %if.else7.i59, %if.end.i56
  %50 = load i64, i64* %r.i39, align 8, !dbg !344
  %cmp10.i61 = icmp ne i64 %50, 0, !dbg !345
  br i1 %cmp10.i61, label %do.body.i51, label %do.end.i62, !dbg !346, !llvm.loop !347

do.end.i62:                                       ; preds = %if.end9.i60
  br label %inverse.exit64

inverse.exit64:                                   ; preds = %if.then.i44, %do.end.i62
  %51 = load i64, i64* %b2.i41, align 8, !dbg !349
  %conv13.i63 = trunc i64 %51 to i32, !dbg !350
  %52 = load i32*, i32** %tp, align 8, !dbg !351
  %incdec.ptr17 = getelementptr inbounds i32, i32* %52, i32 1, !dbg !351
  store i32* %incdec.ptr17, i32** %tp, align 8, !dbg !351
  store i32 %conv13.i63, i32* %52, align 4, !dbg !352
  %53 = load i32, i32* %r, align 4, !dbg !353
  %cmp18 = icmp eq i32 %53, 8, !dbg !355
  br i1 %cmp18, label %if.then, label %if.end, !dbg !356

if.then:                                          ; preds = %inverse.exit64
  br label %for.end, !dbg !357

if.end:                                           ; preds = %inverse.exit64
  %54 = load i32*, i32** %fp, align 8, !dbg !358
  %add.ptr = getelementptr inbounds i32, i32* %54, i64 -6, !dbg !358
  store i32* %add.ptr, i32** %fp, align 8, !dbg !358
  %55 = load i32*, i32** %fp, align 8, !dbg !359
  %arrayidx20 = getelementptr inbounds i32, i32* %55, i64 4, !dbg !359
  %56 = load i32, i32* %arrayidx20, align 4, !dbg !359
  %57 = load i32*, i32** %tp, align 8, !dbg !360
  %incdec.ptr21 = getelementptr inbounds i32, i32* %57, i32 1, !dbg !360
  store i32* %incdec.ptr21, i32** %tp, align 8, !dbg !360
  store i32 %56, i32* %57, align 4, !dbg !361
  %58 = load i32*, i32** %fp, align 8, !dbg !362
  %arrayidx22 = getelementptr inbounds i32, i32* %58, i64 5, !dbg !362
  %59 = load i32, i32* %arrayidx22, align 4, !dbg !362
  %60 = load i32*, i32** %tp, align 8, !dbg !363
  %incdec.ptr23 = getelementptr inbounds i32, i32* %60, i32 1, !dbg !363
  store i32* %incdec.ptr23, i32** %tp, align 8, !dbg !363
  store i32 %59, i32* %60, align 4, !dbg !364
  br label %for.inc, !dbg !365

for.inc:                                          ; preds = %if.end
  %61 = load i32, i32* %r, align 4, !dbg !366
  %inc = add nsw i32 %61, 1, !dbg !366
  store i32 %inc, i32* %r, align 4, !dbg !366
  br label %for.cond, !dbg !367, !llvm.loop !368

for.end:                                          ; preds = %if.then, %for.cond
  %62 = load %struct.idea_key_st*, %struct.idea_key_st** %dk.addr, align 8, !dbg !370
  %data24 = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %62, i32 0, i32 0, !dbg !371
  %arrayidx25 = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data24, i64 0, i64 0, !dbg !370
  %arrayidx26 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx25, i64 0, i64 0, !dbg !370
  store i32* %arrayidx26, i32** %tp, align 8, !dbg !372
  %63 = load i32*, i32** %tp, align 8, !dbg !373
  %arrayidx27 = getelementptr inbounds i32, i32* %63, i64 1, !dbg !373
  %64 = load i32, i32* %arrayidx27, align 4, !dbg !373
  store i32 %64, i32* %t, align 4, !dbg !374
  %65 = load i32*, i32** %tp, align 8, !dbg !375
  %arrayidx28 = getelementptr inbounds i32, i32* %65, i64 2, !dbg !375
  %66 = load i32, i32* %arrayidx28, align 4, !dbg !375
  %67 = load i32*, i32** %tp, align 8, !dbg !376
  %arrayidx29 = getelementptr inbounds i32, i32* %67, i64 1, !dbg !376
  store i32 %66, i32* %arrayidx29, align 4, !dbg !377
  %68 = load i32, i32* %t, align 4, !dbg !378
  %69 = load i32*, i32** %tp, align 8, !dbg !379
  %arrayidx30 = getelementptr inbounds i32, i32* %69, i64 2, !dbg !379
  store i32 %68, i32* %arrayidx30, align 4, !dbg !380
  %70 = load i32*, i32** %tp, align 8, !dbg !381
  %arrayidx31 = getelementptr inbounds i32, i32* %70, i64 49, !dbg !381
  %71 = load i32, i32* %arrayidx31, align 4, !dbg !381
  store i32 %71, i32* %t, align 4, !dbg !382
  %72 = load i32*, i32** %tp, align 8, !dbg !383
  %arrayidx32 = getelementptr inbounds i32, i32* %72, i64 50, !dbg !383
  %73 = load i32, i32* %arrayidx32, align 4, !dbg !383
  %74 = load i32*, i32** %tp, align 8, !dbg !384
  %arrayidx33 = getelementptr inbounds i32, i32* %74, i64 49, !dbg !384
  store i32 %73, i32* %arrayidx33, align 4, !dbg !385
  %75 = load i32, i32* %t, align 4, !dbg !386
  %76 = load i32*, i32** %tp, align 8, !dbg !387
  %arrayidx34 = getelementptr inbounds i32, i32* %76, i64 50, !dbg !387
  store i32 %75, i32* %arrayidx34, align 4, !dbg !388
  ret void, !dbg !389
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @IDEA_ecb_encrypt(i8* %in, i8* %out, %struct.idea_key_st* %ks) #0 !dbg !390 {
entry:
  %d.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %d.addr.i, metadata !393, metadata !DIExpression()), !dbg !398
  %key.addr.i = alloca %struct.idea_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %key.addr.i, metadata !400, metadata !DIExpression()), !dbg !401
  %p.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.i, metadata !402, metadata !DIExpression()), !dbg !403
  %x1.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x1.i, metadata !404, metadata !DIExpression()), !dbg !405
  %x2.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x2.i, metadata !406, metadata !DIExpression()), !dbg !407
  %x3.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x3.i, metadata !408, metadata !DIExpression()), !dbg !409
  %x4.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x4.i, metadata !410, metadata !DIExpression()), !dbg !411
  %t0.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t0.i, metadata !412, metadata !DIExpression()), !dbg !413
  %t1.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t1.i, metadata !414, metadata !DIExpression()), !dbg !415
  %ul.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ul.i, metadata !416, metadata !DIExpression()), !dbg !417
  %in.addr = alloca i8*, align 8
  %out.addr = alloca i8*, align 8
  %ks.addr = alloca %struct.idea_key_st*, align 8
  %l0 = alloca i64, align 8
  %l1 = alloca i64, align 8
  %d = alloca [2 x i64], align 16
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !418, metadata !DIExpression()), !dbg !419
  store i8* %out, i8** %out.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr, metadata !420, metadata !DIExpression()), !dbg !421
  store %struct.idea_key_st* %ks, %struct.idea_key_st** %ks.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %ks.addr, metadata !422, metadata !DIExpression()), !dbg !423
  call void @llvm.dbg.declare(metadata i64* %l0, metadata !424, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.declare(metadata i64* %l1, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata [2 x i64]* %d, metadata !428, metadata !DIExpression()), !dbg !432
  %0 = load i8*, i8** %in.addr, align 8, !dbg !433
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i32 1, !dbg !433
  store i8* %incdec.ptr, i8** %in.addr, align 8, !dbg !433
  %1 = load i8, i8* %0, align 1, !dbg !433
  %conv = zext i8 %1 to i64, !dbg !433
  %shl = shl i64 %conv, 24, !dbg !433
  store i64 %shl, i64* %l0, align 8, !dbg !433
  %2 = load i8*, i8** %in.addr, align 8, !dbg !433
  %incdec.ptr1 = getelementptr inbounds i8, i8* %2, i32 1, !dbg !433
  store i8* %incdec.ptr1, i8** %in.addr, align 8, !dbg !433
  %3 = load i8, i8* %2, align 1, !dbg !433
  %conv2 = zext i8 %3 to i64, !dbg !433
  %shl3 = shl i64 %conv2, 16, !dbg !433
  %4 = load i64, i64* %l0, align 8, !dbg !433
  %or = or i64 %4, %shl3, !dbg !433
  store i64 %or, i64* %l0, align 8, !dbg !433
  %5 = load i8*, i8** %in.addr, align 8, !dbg !433
  %incdec.ptr4 = getelementptr inbounds i8, i8* %5, i32 1, !dbg !433
  store i8* %incdec.ptr4, i8** %in.addr, align 8, !dbg !433
  %6 = load i8, i8* %5, align 1, !dbg !433
  %conv5 = zext i8 %6 to i64, !dbg !433
  %shl6 = shl i64 %conv5, 8, !dbg !433
  %7 = load i64, i64* %l0, align 8, !dbg !433
  %or7 = or i64 %7, %shl6, !dbg !433
  store i64 %or7, i64* %l0, align 8, !dbg !433
  %8 = load i8*, i8** %in.addr, align 8, !dbg !433
  %incdec.ptr8 = getelementptr inbounds i8, i8* %8, i32 1, !dbg !433
  store i8* %incdec.ptr8, i8** %in.addr, align 8, !dbg !433
  %9 = load i8, i8* %8, align 1, !dbg !433
  %conv9 = zext i8 %9 to i64, !dbg !433
  %10 = load i64, i64* %l0, align 8, !dbg !433
  %or10 = or i64 %10, %conv9, !dbg !433
  store i64 %or10, i64* %l0, align 8, !dbg !433
  %11 = load i64, i64* %l0, align 8, !dbg !434
  %arrayidx = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 0, !dbg !435
  store i64 %11, i64* %arrayidx, align 16, !dbg !436
  %12 = load i8*, i8** %in.addr, align 8, !dbg !437
  %incdec.ptr11 = getelementptr inbounds i8, i8* %12, i32 1, !dbg !437
  store i8* %incdec.ptr11, i8** %in.addr, align 8, !dbg !437
  %13 = load i8, i8* %12, align 1, !dbg !437
  %conv12 = zext i8 %13 to i64, !dbg !437
  %shl13 = shl i64 %conv12, 24, !dbg !437
  store i64 %shl13, i64* %l1, align 8, !dbg !437
  %14 = load i8*, i8** %in.addr, align 8, !dbg !437
  %incdec.ptr14 = getelementptr inbounds i8, i8* %14, i32 1, !dbg !437
  store i8* %incdec.ptr14, i8** %in.addr, align 8, !dbg !437
  %15 = load i8, i8* %14, align 1, !dbg !437
  %conv15 = zext i8 %15 to i64, !dbg !437
  %shl16 = shl i64 %conv15, 16, !dbg !437
  %16 = load i64, i64* %l1, align 8, !dbg !437
  %or17 = or i64 %16, %shl16, !dbg !437
  store i64 %or17, i64* %l1, align 8, !dbg !437
  %17 = load i8*, i8** %in.addr, align 8, !dbg !437
  %incdec.ptr18 = getelementptr inbounds i8, i8* %17, i32 1, !dbg !437
  store i8* %incdec.ptr18, i8** %in.addr, align 8, !dbg !437
  %18 = load i8, i8* %17, align 1, !dbg !437
  %conv19 = zext i8 %18 to i64, !dbg !437
  %shl20 = shl i64 %conv19, 8, !dbg !437
  %19 = load i64, i64* %l1, align 8, !dbg !437
  %or21 = or i64 %19, %shl20, !dbg !437
  store i64 %or21, i64* %l1, align 8, !dbg !437
  %20 = load i8*, i8** %in.addr, align 8, !dbg !437
  %incdec.ptr22 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !437
  store i8* %incdec.ptr22, i8** %in.addr, align 8, !dbg !437
  %21 = load i8, i8* %20, align 1, !dbg !437
  %conv23 = zext i8 %21 to i64, !dbg !437
  %22 = load i64, i64* %l1, align 8, !dbg !437
  %or24 = or i64 %22, %conv23, !dbg !437
  store i64 %or24, i64* %l1, align 8, !dbg !437
  %23 = load i64, i64* %l1, align 8, !dbg !438
  %arrayidx25 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 1, !dbg !439
  store i64 %23, i64* %arrayidx25, align 8, !dbg !440
  %arraydecay = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 0, !dbg !441
  %24 = load %struct.idea_key_st*, %struct.idea_key_st** %ks.addr, align 8, !dbg !442
  store i64* %arraydecay, i64** %d.addr.i, align 8
  store %struct.idea_key_st* %24, %struct.idea_key_st** %key.addr.i, align 8
  %key.addr1.i = bitcast %struct.idea_key_st** %key.addr.i to i8*
  call void @llvm.var.annotation(i8* %key.addr1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 133) #6
  %25 = load i64*, i64** %d.addr.i, align 8, !dbg !443
  %26 = load i64, i64* %25, align 8, !dbg !443
  store i64 %26, i64* %x2.i, align 8, !dbg !444
  %27 = load i64, i64* %x2.i, align 8, !dbg !445
  %shr.i = lshr i64 %27, 16, !dbg !446
  store i64 %shr.i, i64* %x1.i, align 8, !dbg !447
  %28 = load i64*, i64** %d.addr.i, align 8, !dbg !448
  %arrayidx2.i = getelementptr inbounds i64, i64* %28, i64 1, !dbg !448
  %29 = load i64, i64* %arrayidx2.i, align 8, !dbg !448
  store i64 %29, i64* %x4.i, align 8, !dbg !449
  %30 = load i64, i64* %x4.i, align 8, !dbg !450
  %shr3.i = lshr i64 %30, 16, !dbg !451
  store i64 %shr3.i, i64* %x3.i, align 8, !dbg !452
  %31 = load %struct.idea_key_st*, %struct.idea_key_st** %key.addr.i, align 8, !dbg !453
  %data.i = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %31, i32 0, i32 0, !dbg !454
  %arrayidx4.i = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data.i, i64 0, i64 0, !dbg !453
  %arrayidx5.i = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx4.i, i64 0, i64 0, !dbg !453
  store i32* %arrayidx5.i, i32** %p.i, align 8, !dbg !455
  %32 = load i64, i64* %x1.i, align 8, !dbg !456
  %and.i = and i64 %32, 65535, !dbg !456
  store i64 %and.i, i64* %x1.i, align 8, !dbg !456
  %33 = load i64, i64* %x1.i, align 8, !dbg !456
  %34 = load i32*, i32** %p.i, align 8, !dbg !456
  %35 = load i32, i32* %34, align 4, !dbg !456
  %conv.i = zext i32 %35 to i64, !dbg !456
  %mul.i = mul i64 %33, %conv.i, !dbg !456
  store i64 %mul.i, i64* %ul.i, align 8, !dbg !456
  %36 = load i64, i64* %ul.i, align 8, !dbg !457
  %cmp.i = icmp ne i64 %36, 0, !dbg !457
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !456

if.then.i:                                        ; preds = %entry
  %37 = load i64, i64* %ul.i, align 8, !dbg !459
  %and7.i = and i64 %37, 65535, !dbg !459
  %38 = load i64, i64* %ul.i, align 8, !dbg !459
  %shr8.i = lshr i64 %38, 16, !dbg !459
  %sub.i = sub i64 %and7.i, %shr8.i, !dbg !459
  store i64 %sub.i, i64* %x1.i, align 8, !dbg !459
  %39 = load i64, i64* %x1.i, align 8, !dbg !459
  %shr9.i = lshr i64 %39, 16, !dbg !459
  %40 = load i64, i64* %x1.i, align 8, !dbg !459
  %sub10.i = sub i64 %40, %shr9.i, !dbg !459
  store i64 %sub10.i, i64* %x1.i, align 8, !dbg !459
  br label %if.end.i, !dbg !459

if.else.i:                                        ; preds = %entry
  %41 = load i64, i64* %x1.i, align 8, !dbg !457
  %conv11.i = trunc i64 %41 to i32, !dbg !457
  %sub12.i = sub nsw i32 0, %conv11.i, !dbg !457
  %42 = load i32*, i32** %p.i, align 8, !dbg !457
  %43 = load i32, i32* %42, align 4, !dbg !457
  %sub13.i = sub i32 %sub12.i, %43, !dbg !457
  %add.i = add i32 %sub13.i, 1, !dbg !457
  %conv14.i = zext i32 %add.i to i64, !dbg !457
  store i64 %conv14.i, i64* %x1.i, align 8, !dbg !457
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %44 = load i32*, i32** %p.i, align 8, !dbg !456
  %incdec.ptr.i = getelementptr inbounds i32, i32* %44, i32 1, !dbg !456
  store i32* %incdec.ptr.i, i32** %p.i, align 8, !dbg !456
  %45 = load i32*, i32** %p.i, align 8, !dbg !456
  %incdec.ptr15.i = getelementptr inbounds i32, i32* %45, i32 1, !dbg !456
  store i32* %incdec.ptr15.i, i32** %p.i, align 8, !dbg !456
  %46 = load i32, i32* %45, align 4, !dbg !456
  %conv16.i = zext i32 %46 to i64, !dbg !456
  %47 = load i64, i64* %x2.i, align 8, !dbg !456
  %add17.i = add i64 %47, %conv16.i, !dbg !456
  store i64 %add17.i, i64* %x2.i, align 8, !dbg !456
  %48 = load i32*, i32** %p.i, align 8, !dbg !456
  %incdec.ptr18.i = getelementptr inbounds i32, i32* %48, i32 1, !dbg !456
  store i32* %incdec.ptr18.i, i32** %p.i, align 8, !dbg !456
  %49 = load i32, i32* %48, align 4, !dbg !456
  %conv19.i = zext i32 %49 to i64, !dbg !456
  %50 = load i64, i64* %x3.i, align 8, !dbg !456
  %add20.i = add i64 %50, %conv19.i, !dbg !456
  store i64 %add20.i, i64* %x3.i, align 8, !dbg !456
  %51 = load i64, i64* %x4.i, align 8, !dbg !456
  %and21.i = and i64 %51, 65535, !dbg !456
  store i64 %and21.i, i64* %x4.i, align 8, !dbg !456
  %52 = load i64, i64* %x4.i, align 8, !dbg !456
  %53 = load i32*, i32** %p.i, align 8, !dbg !456
  %54 = load i32, i32* %53, align 4, !dbg !456
  %conv22.i = zext i32 %54 to i64, !dbg !456
  %mul23.i = mul i64 %52, %conv22.i, !dbg !456
  store i64 %mul23.i, i64* %ul.i, align 8, !dbg !456
  %55 = load i64, i64* %ul.i, align 8, !dbg !461
  %cmp24.i = icmp ne i64 %55, 0, !dbg !461
  br i1 %cmp24.i, label %if.then26.i, label %if.else32.i, !dbg !456

if.then26.i:                                      ; preds = %if.end.i
  %56 = load i64, i64* %ul.i, align 8, !dbg !463
  %and27.i = and i64 %56, 65535, !dbg !463
  %57 = load i64, i64* %ul.i, align 8, !dbg !463
  %shr28.i = lshr i64 %57, 16, !dbg !463
  %sub29.i = sub i64 %and27.i, %shr28.i, !dbg !463
  store i64 %sub29.i, i64* %x4.i, align 8, !dbg !463
  %58 = load i64, i64* %x4.i, align 8, !dbg !463
  %shr30.i = lshr i64 %58, 16, !dbg !463
  %59 = load i64, i64* %x4.i, align 8, !dbg !463
  %sub31.i = sub i64 %59, %shr30.i, !dbg !463
  store i64 %sub31.i, i64* %x4.i, align 8, !dbg !463
  br label %if.end38.i, !dbg !463

if.else32.i:                                      ; preds = %if.end.i
  %60 = load i64, i64* %x4.i, align 8, !dbg !461
  %conv33.i = trunc i64 %60 to i32, !dbg !461
  %sub34.i = sub nsw i32 0, %conv33.i, !dbg !461
  %61 = load i32*, i32** %p.i, align 8, !dbg !461
  %62 = load i32, i32* %61, align 4, !dbg !461
  %sub35.i = sub i32 %sub34.i, %62, !dbg !461
  %add36.i = add i32 %sub35.i, 1, !dbg !461
  %conv37.i = zext i32 %add36.i to i64, !dbg !461
  store i64 %conv37.i, i64* %x4.i, align 8, !dbg !461
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.else32.i, %if.then26.i
  %63 = load i32*, i32** %p.i, align 8, !dbg !456
  %incdec.ptr39.i = getelementptr inbounds i32, i32* %63, i32 1, !dbg !456
  store i32* %incdec.ptr39.i, i32** %p.i, align 8, !dbg !456
  %64 = load i64, i64* %x1.i, align 8, !dbg !456
  %65 = load i64, i64* %x3.i, align 8, !dbg !456
  %xor.i = xor i64 %64, %65, !dbg !456
  %and40.i = and i64 %xor.i, 65535, !dbg !456
  store i64 %and40.i, i64* %t0.i, align 8, !dbg !456
  %66 = load i64, i64* %t0.i, align 8, !dbg !456
  %67 = load i32*, i32** %p.i, align 8, !dbg !456
  %68 = load i32, i32* %67, align 4, !dbg !456
  %conv41.i = zext i32 %68 to i64, !dbg !456
  %mul42.i = mul i64 %66, %conv41.i, !dbg !456
  store i64 %mul42.i, i64* %ul.i, align 8, !dbg !456
  %69 = load i64, i64* %ul.i, align 8, !dbg !465
  %cmp43.i = icmp ne i64 %69, 0, !dbg !465
  br i1 %cmp43.i, label %if.then45.i, label %if.else51.i, !dbg !456

if.then45.i:                                      ; preds = %if.end38.i
  %70 = load i64, i64* %ul.i, align 8, !dbg !467
  %and46.i = and i64 %70, 65535, !dbg !467
  %71 = load i64, i64* %ul.i, align 8, !dbg !467
  %shr47.i = lshr i64 %71, 16, !dbg !467
  %sub48.i = sub i64 %and46.i, %shr47.i, !dbg !467
  store i64 %sub48.i, i64* %t0.i, align 8, !dbg !467
  %72 = load i64, i64* %t0.i, align 8, !dbg !467
  %shr49.i = lshr i64 %72, 16, !dbg !467
  %73 = load i64, i64* %t0.i, align 8, !dbg !467
  %sub50.i = sub i64 %73, %shr49.i, !dbg !467
  store i64 %sub50.i, i64* %t0.i, align 8, !dbg !467
  br label %if.end57.i, !dbg !467

if.else51.i:                                      ; preds = %if.end38.i
  %74 = load i64, i64* %t0.i, align 8, !dbg !465
  %conv52.i = trunc i64 %74 to i32, !dbg !465
  %sub53.i = sub nsw i32 0, %conv52.i, !dbg !465
  %75 = load i32*, i32** %p.i, align 8, !dbg !465
  %76 = load i32, i32* %75, align 4, !dbg !465
  %sub54.i = sub i32 %sub53.i, %76, !dbg !465
  %add55.i = add i32 %sub54.i, 1, !dbg !465
  %conv56.i = zext i32 %add55.i to i64, !dbg !465
  store i64 %conv56.i, i64* %t0.i, align 8, !dbg !465
  br label %if.end57.i

if.end57.i:                                       ; preds = %if.else51.i, %if.then45.i
  %77 = load i32*, i32** %p.i, align 8, !dbg !456
  %incdec.ptr58.i = getelementptr inbounds i32, i32* %77, i32 1, !dbg !456
  store i32* %incdec.ptr58.i, i32** %p.i, align 8, !dbg !456
  %78 = load i64, i64* %t0.i, align 8, !dbg !456
  %79 = load i64, i64* %x2.i, align 8, !dbg !456
  %80 = load i64, i64* %x4.i, align 8, !dbg !456
  %xor59.i = xor i64 %79, %80, !dbg !456
  %add60.i = add i64 %78, %xor59.i, !dbg !456
  %and61.i = and i64 %add60.i, 65535, !dbg !456
  store i64 %and61.i, i64* %t1.i, align 8, !dbg !456
  %81 = load i64, i64* %t1.i, align 8, !dbg !456
  %82 = load i32*, i32** %p.i, align 8, !dbg !456
  %83 = load i32, i32* %82, align 4, !dbg !456
  %conv62.i = zext i32 %83 to i64, !dbg !456
  %mul63.i = mul i64 %81, %conv62.i, !dbg !456
  store i64 %mul63.i, i64* %ul.i, align 8, !dbg !456
  %84 = load i64, i64* %ul.i, align 8, !dbg !469
  %cmp64.i = icmp ne i64 %84, 0, !dbg !469
  br i1 %cmp64.i, label %if.then66.i, label %if.else72.i, !dbg !456

if.then66.i:                                      ; preds = %if.end57.i
  %85 = load i64, i64* %ul.i, align 8, !dbg !471
  %and67.i = and i64 %85, 65535, !dbg !471
  %86 = load i64, i64* %ul.i, align 8, !dbg !471
  %shr68.i = lshr i64 %86, 16, !dbg !471
  %sub69.i = sub i64 %and67.i, %shr68.i, !dbg !471
  store i64 %sub69.i, i64* %t1.i, align 8, !dbg !471
  %87 = load i64, i64* %t1.i, align 8, !dbg !471
  %shr70.i = lshr i64 %87, 16, !dbg !471
  %88 = load i64, i64* %t1.i, align 8, !dbg !471
  %sub71.i = sub i64 %88, %shr70.i, !dbg !471
  store i64 %sub71.i, i64* %t1.i, align 8, !dbg !471
  br label %if.end78.i, !dbg !471

if.else72.i:                                      ; preds = %if.end57.i
  %89 = load i64, i64* %t1.i, align 8, !dbg !469
  %conv73.i = trunc i64 %89 to i32, !dbg !469
  %sub74.i = sub nsw i32 0, %conv73.i, !dbg !469
  %90 = load i32*, i32** %p.i, align 8, !dbg !469
  %91 = load i32, i32* %90, align 4, !dbg !469
  %sub75.i = sub i32 %sub74.i, %91, !dbg !469
  %add76.i = add i32 %sub75.i, 1, !dbg !469
  %conv77.i = zext i32 %add76.i to i64, !dbg !469
  store i64 %conv77.i, i64* %t1.i, align 8, !dbg !469
  br label %if.end78.i

if.end78.i:                                       ; preds = %if.else72.i, %if.then66.i
  %92 = load i32*, i32** %p.i, align 8, !dbg !456
  %incdec.ptr79.i = getelementptr inbounds i32, i32* %92, i32 1, !dbg !456
  store i32* %incdec.ptr79.i, i32** %p.i, align 8, !dbg !456
  %93 = load i64, i64* %t1.i, align 8, !dbg !456
  %94 = load i64, i64* %t0.i, align 8, !dbg !456
  %add80.i = add i64 %94, %93, !dbg !456
  store i64 %add80.i, i64* %t0.i, align 8, !dbg !456
  %95 = load i64, i64* %t1.i, align 8, !dbg !456
  %96 = load i64, i64* %x1.i, align 8, !dbg !456
  %xor81.i = xor i64 %96, %95, !dbg !456
  store i64 %xor81.i, i64* %x1.i, align 8, !dbg !456
  %97 = load i64, i64* %t0.i, align 8, !dbg !456
  %98 = load i64, i64* %x4.i, align 8, !dbg !456
  %xor82.i = xor i64 %98, %97, !dbg !456
  store i64 %xor82.i, i64* %x4.i, align 8, !dbg !456
  %99 = load i64, i64* %x2.i, align 8, !dbg !456
  %100 = load i64, i64* %t0.i, align 8, !dbg !456
  %xor83.i = xor i64 %99, %100, !dbg !456
  store i64 %xor83.i, i64* %ul.i, align 8, !dbg !456
  %101 = load i64, i64* %x3.i, align 8, !dbg !456
  %102 = load i64, i64* %t1.i, align 8, !dbg !456
  %xor84.i = xor i64 %101, %102, !dbg !456
  store i64 %xor84.i, i64* %x2.i, align 8, !dbg !456
  %103 = load i64, i64* %ul.i, align 8, !dbg !456
  store i64 %103, i64* %x3.i, align 8, !dbg !456
  %104 = load i64, i64* %x1.i, align 8, !dbg !473
  %and85.i = and i64 %104, 65535, !dbg !473
  store i64 %and85.i, i64* %x1.i, align 8, !dbg !473
  %105 = load i64, i64* %x1.i, align 8, !dbg !473
  %106 = load i32*, i32** %p.i, align 8, !dbg !473
  %107 = load i32, i32* %106, align 4, !dbg !473
  %conv86.i = zext i32 %107 to i64, !dbg !473
  %mul87.i = mul i64 %105, %conv86.i, !dbg !473
  store i64 %mul87.i, i64* %ul.i, align 8, !dbg !473
  %108 = load i64, i64* %ul.i, align 8, !dbg !474
  %cmp88.i = icmp ne i64 %108, 0, !dbg !474
  br i1 %cmp88.i, label %if.then90.i, label %if.else96.i, !dbg !473

if.then90.i:                                      ; preds = %if.end78.i
  %109 = load i64, i64* %ul.i, align 8, !dbg !476
  %and91.i = and i64 %109, 65535, !dbg !476
  %110 = load i64, i64* %ul.i, align 8, !dbg !476
  %shr92.i = lshr i64 %110, 16, !dbg !476
  %sub93.i = sub i64 %and91.i, %shr92.i, !dbg !476
  store i64 %sub93.i, i64* %x1.i, align 8, !dbg !476
  %111 = load i64, i64* %x1.i, align 8, !dbg !476
  %shr94.i = lshr i64 %111, 16, !dbg !476
  %112 = load i64, i64* %x1.i, align 8, !dbg !476
  %sub95.i = sub i64 %112, %shr94.i, !dbg !476
  store i64 %sub95.i, i64* %x1.i, align 8, !dbg !476
  br label %if.end102.i, !dbg !476

if.else96.i:                                      ; preds = %if.end78.i
  %113 = load i64, i64* %x1.i, align 8, !dbg !474
  %conv97.i = trunc i64 %113 to i32, !dbg !474
  %sub98.i = sub nsw i32 0, %conv97.i, !dbg !474
  %114 = load i32*, i32** %p.i, align 8, !dbg !474
  %115 = load i32, i32* %114, align 4, !dbg !474
  %sub99.i = sub i32 %sub98.i, %115, !dbg !474
  %add100.i = add i32 %sub99.i, 1, !dbg !474
  %conv101.i = zext i32 %add100.i to i64, !dbg !474
  store i64 %conv101.i, i64* %x1.i, align 8, !dbg !474
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.else96.i, %if.then90.i
  %116 = load i32*, i32** %p.i, align 8, !dbg !473
  %incdec.ptr103.i = getelementptr inbounds i32, i32* %116, i32 1, !dbg !473
  store i32* %incdec.ptr103.i, i32** %p.i, align 8, !dbg !473
  %117 = load i32*, i32** %p.i, align 8, !dbg !473
  %incdec.ptr104.i = getelementptr inbounds i32, i32* %117, i32 1, !dbg !473
  store i32* %incdec.ptr104.i, i32** %p.i, align 8, !dbg !473
  %118 = load i32, i32* %117, align 4, !dbg !473
  %conv105.i = zext i32 %118 to i64, !dbg !473
  %119 = load i64, i64* %x2.i, align 8, !dbg !473
  %add106.i = add i64 %119, %conv105.i, !dbg !473
  store i64 %add106.i, i64* %x2.i, align 8, !dbg !473
  %120 = load i32*, i32** %p.i, align 8, !dbg !473
  %incdec.ptr107.i = getelementptr inbounds i32, i32* %120, i32 1, !dbg !473
  store i32* %incdec.ptr107.i, i32** %p.i, align 8, !dbg !473
  %121 = load i32, i32* %120, align 4, !dbg !473
  %conv108.i = zext i32 %121 to i64, !dbg !473
  %122 = load i64, i64* %x3.i, align 8, !dbg !473
  %add109.i = add i64 %122, %conv108.i, !dbg !473
  store i64 %add109.i, i64* %x3.i, align 8, !dbg !473
  %123 = load i64, i64* %x4.i, align 8, !dbg !473
  %and110.i = and i64 %123, 65535, !dbg !473
  store i64 %and110.i, i64* %x4.i, align 8, !dbg !473
  %124 = load i64, i64* %x4.i, align 8, !dbg !473
  %125 = load i32*, i32** %p.i, align 8, !dbg !473
  %126 = load i32, i32* %125, align 4, !dbg !473
  %conv111.i = zext i32 %126 to i64, !dbg !473
  %mul112.i = mul i64 %124, %conv111.i, !dbg !473
  store i64 %mul112.i, i64* %ul.i, align 8, !dbg !473
  %127 = load i64, i64* %ul.i, align 8, !dbg !478
  %cmp113.i = icmp ne i64 %127, 0, !dbg !478
  br i1 %cmp113.i, label %if.then115.i, label %if.else121.i, !dbg !473

if.then115.i:                                     ; preds = %if.end102.i
  %128 = load i64, i64* %ul.i, align 8, !dbg !480
  %and116.i = and i64 %128, 65535, !dbg !480
  %129 = load i64, i64* %ul.i, align 8, !dbg !480
  %shr117.i = lshr i64 %129, 16, !dbg !480
  %sub118.i = sub i64 %and116.i, %shr117.i, !dbg !480
  store i64 %sub118.i, i64* %x4.i, align 8, !dbg !480
  %130 = load i64, i64* %x4.i, align 8, !dbg !480
  %shr119.i = lshr i64 %130, 16, !dbg !480
  %131 = load i64, i64* %x4.i, align 8, !dbg !480
  %sub120.i = sub i64 %131, %shr119.i, !dbg !480
  store i64 %sub120.i, i64* %x4.i, align 8, !dbg !480
  br label %if.end127.i, !dbg !480

if.else121.i:                                     ; preds = %if.end102.i
  %132 = load i64, i64* %x4.i, align 8, !dbg !478
  %conv122.i = trunc i64 %132 to i32, !dbg !478
  %sub123.i = sub nsw i32 0, %conv122.i, !dbg !478
  %133 = load i32*, i32** %p.i, align 8, !dbg !478
  %134 = load i32, i32* %133, align 4, !dbg !478
  %sub124.i = sub i32 %sub123.i, %134, !dbg !478
  %add125.i = add i32 %sub124.i, 1, !dbg !478
  %conv126.i = zext i32 %add125.i to i64, !dbg !478
  store i64 %conv126.i, i64* %x4.i, align 8, !dbg !478
  br label %if.end127.i

if.end127.i:                                      ; preds = %if.else121.i, %if.then115.i
  %135 = load i32*, i32** %p.i, align 8, !dbg !473
  %incdec.ptr128.i = getelementptr inbounds i32, i32* %135, i32 1, !dbg !473
  store i32* %incdec.ptr128.i, i32** %p.i, align 8, !dbg !473
  %136 = load i64, i64* %x1.i, align 8, !dbg !473
  %137 = load i64, i64* %x3.i, align 8, !dbg !473
  %xor129.i = xor i64 %136, %137, !dbg !473
  %and130.i = and i64 %xor129.i, 65535, !dbg !473
  store i64 %and130.i, i64* %t0.i, align 8, !dbg !473
  %138 = load i64, i64* %t0.i, align 8, !dbg !473
  %139 = load i32*, i32** %p.i, align 8, !dbg !473
  %140 = load i32, i32* %139, align 4, !dbg !473
  %conv131.i = zext i32 %140 to i64, !dbg !473
  %mul132.i = mul i64 %138, %conv131.i, !dbg !473
  store i64 %mul132.i, i64* %ul.i, align 8, !dbg !473
  %141 = load i64, i64* %ul.i, align 8, !dbg !482
  %cmp133.i = icmp ne i64 %141, 0, !dbg !482
  br i1 %cmp133.i, label %if.then135.i, label %if.else141.i, !dbg !473

if.then135.i:                                     ; preds = %if.end127.i
  %142 = load i64, i64* %ul.i, align 8, !dbg !484
  %and136.i = and i64 %142, 65535, !dbg !484
  %143 = load i64, i64* %ul.i, align 8, !dbg !484
  %shr137.i = lshr i64 %143, 16, !dbg !484
  %sub138.i = sub i64 %and136.i, %shr137.i, !dbg !484
  store i64 %sub138.i, i64* %t0.i, align 8, !dbg !484
  %144 = load i64, i64* %t0.i, align 8, !dbg !484
  %shr139.i = lshr i64 %144, 16, !dbg !484
  %145 = load i64, i64* %t0.i, align 8, !dbg !484
  %sub140.i = sub i64 %145, %shr139.i, !dbg !484
  store i64 %sub140.i, i64* %t0.i, align 8, !dbg !484
  br label %if.end147.i, !dbg !484

if.else141.i:                                     ; preds = %if.end127.i
  %146 = load i64, i64* %t0.i, align 8, !dbg !482
  %conv142.i = trunc i64 %146 to i32, !dbg !482
  %sub143.i = sub nsw i32 0, %conv142.i, !dbg !482
  %147 = load i32*, i32** %p.i, align 8, !dbg !482
  %148 = load i32, i32* %147, align 4, !dbg !482
  %sub144.i = sub i32 %sub143.i, %148, !dbg !482
  %add145.i = add i32 %sub144.i, 1, !dbg !482
  %conv146.i = zext i32 %add145.i to i64, !dbg !482
  store i64 %conv146.i, i64* %t0.i, align 8, !dbg !482
  br label %if.end147.i

if.end147.i:                                      ; preds = %if.else141.i, %if.then135.i
  %149 = load i32*, i32** %p.i, align 8, !dbg !473
  %incdec.ptr148.i = getelementptr inbounds i32, i32* %149, i32 1, !dbg !473
  store i32* %incdec.ptr148.i, i32** %p.i, align 8, !dbg !473
  %150 = load i64, i64* %t0.i, align 8, !dbg !473
  %151 = load i64, i64* %x2.i, align 8, !dbg !473
  %152 = load i64, i64* %x4.i, align 8, !dbg !473
  %xor149.i = xor i64 %151, %152, !dbg !473
  %add150.i = add i64 %150, %xor149.i, !dbg !473
  %and151.i = and i64 %add150.i, 65535, !dbg !473
  store i64 %and151.i, i64* %t1.i, align 8, !dbg !473
  %153 = load i64, i64* %t1.i, align 8, !dbg !473
  %154 = load i32*, i32** %p.i, align 8, !dbg !473
  %155 = load i32, i32* %154, align 4, !dbg !473
  %conv152.i = zext i32 %155 to i64, !dbg !473
  %mul153.i = mul i64 %153, %conv152.i, !dbg !473
  store i64 %mul153.i, i64* %ul.i, align 8, !dbg !473
  %156 = load i64, i64* %ul.i, align 8, !dbg !486
  %cmp154.i = icmp ne i64 %156, 0, !dbg !486
  br i1 %cmp154.i, label %if.then156.i, label %if.else162.i, !dbg !473

if.then156.i:                                     ; preds = %if.end147.i
  %157 = load i64, i64* %ul.i, align 8, !dbg !488
  %and157.i = and i64 %157, 65535, !dbg !488
  %158 = load i64, i64* %ul.i, align 8, !dbg !488
  %shr158.i = lshr i64 %158, 16, !dbg !488
  %sub159.i = sub i64 %and157.i, %shr158.i, !dbg !488
  store i64 %sub159.i, i64* %t1.i, align 8, !dbg !488
  %159 = load i64, i64* %t1.i, align 8, !dbg !488
  %shr160.i = lshr i64 %159, 16, !dbg !488
  %160 = load i64, i64* %t1.i, align 8, !dbg !488
  %sub161.i = sub i64 %160, %shr160.i, !dbg !488
  store i64 %sub161.i, i64* %t1.i, align 8, !dbg !488
  br label %if.end168.i, !dbg !488

if.else162.i:                                     ; preds = %if.end147.i
  %161 = load i64, i64* %t1.i, align 8, !dbg !486
  %conv163.i = trunc i64 %161 to i32, !dbg !486
  %sub164.i = sub nsw i32 0, %conv163.i, !dbg !486
  %162 = load i32*, i32** %p.i, align 8, !dbg !486
  %163 = load i32, i32* %162, align 4, !dbg !486
  %sub165.i = sub i32 %sub164.i, %163, !dbg !486
  %add166.i = add i32 %sub165.i, 1, !dbg !486
  %conv167.i = zext i32 %add166.i to i64, !dbg !486
  store i64 %conv167.i, i64* %t1.i, align 8, !dbg !486
  br label %if.end168.i

if.end168.i:                                      ; preds = %if.else162.i, %if.then156.i
  %164 = load i32*, i32** %p.i, align 8, !dbg !473
  %incdec.ptr169.i = getelementptr inbounds i32, i32* %164, i32 1, !dbg !473
  store i32* %incdec.ptr169.i, i32** %p.i, align 8, !dbg !473
  %165 = load i64, i64* %t1.i, align 8, !dbg !473
  %166 = load i64, i64* %t0.i, align 8, !dbg !473
  %add170.i = add i64 %166, %165, !dbg !473
  store i64 %add170.i, i64* %t0.i, align 8, !dbg !473
  %167 = load i64, i64* %t1.i, align 8, !dbg !473
  %168 = load i64, i64* %x1.i, align 8, !dbg !473
  %xor171.i = xor i64 %168, %167, !dbg !473
  store i64 %xor171.i, i64* %x1.i, align 8, !dbg !473
  %169 = load i64, i64* %t0.i, align 8, !dbg !473
  %170 = load i64, i64* %x4.i, align 8, !dbg !473
  %xor172.i = xor i64 %170, %169, !dbg !473
  store i64 %xor172.i, i64* %x4.i, align 8, !dbg !473
  %171 = load i64, i64* %x2.i, align 8, !dbg !473
  %172 = load i64, i64* %t0.i, align 8, !dbg !473
  %xor173.i = xor i64 %171, %172, !dbg !473
  store i64 %xor173.i, i64* %ul.i, align 8, !dbg !473
  %173 = load i64, i64* %x3.i, align 8, !dbg !473
  %174 = load i64, i64* %t1.i, align 8, !dbg !473
  %xor174.i = xor i64 %173, %174, !dbg !473
  store i64 %xor174.i, i64* %x2.i, align 8, !dbg !473
  %175 = load i64, i64* %ul.i, align 8, !dbg !473
  store i64 %175, i64* %x3.i, align 8, !dbg !473
  %176 = load i64, i64* %x1.i, align 8, !dbg !490
  %and175.i = and i64 %176, 65535, !dbg !490
  store i64 %and175.i, i64* %x1.i, align 8, !dbg !490
  %177 = load i64, i64* %x1.i, align 8, !dbg !490
  %178 = load i32*, i32** %p.i, align 8, !dbg !490
  %179 = load i32, i32* %178, align 4, !dbg !490
  %conv176.i = zext i32 %179 to i64, !dbg !490
  %mul177.i = mul i64 %177, %conv176.i, !dbg !490
  store i64 %mul177.i, i64* %ul.i, align 8, !dbg !490
  %180 = load i64, i64* %ul.i, align 8, !dbg !491
  %cmp178.i = icmp ne i64 %180, 0, !dbg !491
  br i1 %cmp178.i, label %if.then180.i, label %if.else186.i, !dbg !490

if.then180.i:                                     ; preds = %if.end168.i
  %181 = load i64, i64* %ul.i, align 8, !dbg !493
  %and181.i = and i64 %181, 65535, !dbg !493
  %182 = load i64, i64* %ul.i, align 8, !dbg !493
  %shr182.i = lshr i64 %182, 16, !dbg !493
  %sub183.i = sub i64 %and181.i, %shr182.i, !dbg !493
  store i64 %sub183.i, i64* %x1.i, align 8, !dbg !493
  %183 = load i64, i64* %x1.i, align 8, !dbg !493
  %shr184.i = lshr i64 %183, 16, !dbg !493
  %184 = load i64, i64* %x1.i, align 8, !dbg !493
  %sub185.i = sub i64 %184, %shr184.i, !dbg !493
  store i64 %sub185.i, i64* %x1.i, align 8, !dbg !493
  br label %if.end192.i, !dbg !493

if.else186.i:                                     ; preds = %if.end168.i
  %185 = load i64, i64* %x1.i, align 8, !dbg !491
  %conv187.i = trunc i64 %185 to i32, !dbg !491
  %sub188.i = sub nsw i32 0, %conv187.i, !dbg !491
  %186 = load i32*, i32** %p.i, align 8, !dbg !491
  %187 = load i32, i32* %186, align 4, !dbg !491
  %sub189.i = sub i32 %sub188.i, %187, !dbg !491
  %add190.i = add i32 %sub189.i, 1, !dbg !491
  %conv191.i = zext i32 %add190.i to i64, !dbg !491
  store i64 %conv191.i, i64* %x1.i, align 8, !dbg !491
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else186.i, %if.then180.i
  %188 = load i32*, i32** %p.i, align 8, !dbg !490
  %incdec.ptr193.i = getelementptr inbounds i32, i32* %188, i32 1, !dbg !490
  store i32* %incdec.ptr193.i, i32** %p.i, align 8, !dbg !490
  %189 = load i32*, i32** %p.i, align 8, !dbg !490
  %incdec.ptr194.i = getelementptr inbounds i32, i32* %189, i32 1, !dbg !490
  store i32* %incdec.ptr194.i, i32** %p.i, align 8, !dbg !490
  %190 = load i32, i32* %189, align 4, !dbg !490
  %conv195.i = zext i32 %190 to i64, !dbg !490
  %191 = load i64, i64* %x2.i, align 8, !dbg !490
  %add196.i = add i64 %191, %conv195.i, !dbg !490
  store i64 %add196.i, i64* %x2.i, align 8, !dbg !490
  %192 = load i32*, i32** %p.i, align 8, !dbg !490
  %incdec.ptr197.i = getelementptr inbounds i32, i32* %192, i32 1, !dbg !490
  store i32* %incdec.ptr197.i, i32** %p.i, align 8, !dbg !490
  %193 = load i32, i32* %192, align 4, !dbg !490
  %conv198.i = zext i32 %193 to i64, !dbg !490
  %194 = load i64, i64* %x3.i, align 8, !dbg !490
  %add199.i = add i64 %194, %conv198.i, !dbg !490
  store i64 %add199.i, i64* %x3.i, align 8, !dbg !490
  %195 = load i64, i64* %x4.i, align 8, !dbg !490
  %and200.i = and i64 %195, 65535, !dbg !490
  store i64 %and200.i, i64* %x4.i, align 8, !dbg !490
  %196 = load i64, i64* %x4.i, align 8, !dbg !490
  %197 = load i32*, i32** %p.i, align 8, !dbg !490
  %198 = load i32, i32* %197, align 4, !dbg !490
  %conv201.i = zext i32 %198 to i64, !dbg !490
  %mul202.i = mul i64 %196, %conv201.i, !dbg !490
  store i64 %mul202.i, i64* %ul.i, align 8, !dbg !490
  %199 = load i64, i64* %ul.i, align 8, !dbg !495
  %cmp203.i = icmp ne i64 %199, 0, !dbg !495
  br i1 %cmp203.i, label %if.then205.i, label %if.else211.i, !dbg !490

if.then205.i:                                     ; preds = %if.end192.i
  %200 = load i64, i64* %ul.i, align 8, !dbg !497
  %and206.i = and i64 %200, 65535, !dbg !497
  %201 = load i64, i64* %ul.i, align 8, !dbg !497
  %shr207.i = lshr i64 %201, 16, !dbg !497
  %sub208.i = sub i64 %and206.i, %shr207.i, !dbg !497
  store i64 %sub208.i, i64* %x4.i, align 8, !dbg !497
  %202 = load i64, i64* %x4.i, align 8, !dbg !497
  %shr209.i = lshr i64 %202, 16, !dbg !497
  %203 = load i64, i64* %x4.i, align 8, !dbg !497
  %sub210.i = sub i64 %203, %shr209.i, !dbg !497
  store i64 %sub210.i, i64* %x4.i, align 8, !dbg !497
  br label %if.end217.i, !dbg !497

if.else211.i:                                     ; preds = %if.end192.i
  %204 = load i64, i64* %x4.i, align 8, !dbg !495
  %conv212.i = trunc i64 %204 to i32, !dbg !495
  %sub213.i = sub nsw i32 0, %conv212.i, !dbg !495
  %205 = load i32*, i32** %p.i, align 8, !dbg !495
  %206 = load i32, i32* %205, align 4, !dbg !495
  %sub214.i = sub i32 %sub213.i, %206, !dbg !495
  %add215.i = add i32 %sub214.i, 1, !dbg !495
  %conv216.i = zext i32 %add215.i to i64, !dbg !495
  store i64 %conv216.i, i64* %x4.i, align 8, !dbg !495
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.else211.i, %if.then205.i
  %207 = load i32*, i32** %p.i, align 8, !dbg !490
  %incdec.ptr218.i = getelementptr inbounds i32, i32* %207, i32 1, !dbg !490
  store i32* %incdec.ptr218.i, i32** %p.i, align 8, !dbg !490
  %208 = load i64, i64* %x1.i, align 8, !dbg !490
  %209 = load i64, i64* %x3.i, align 8, !dbg !490
  %xor219.i = xor i64 %208, %209, !dbg !490
  %and220.i = and i64 %xor219.i, 65535, !dbg !490
  store i64 %and220.i, i64* %t0.i, align 8, !dbg !490
  %210 = load i64, i64* %t0.i, align 8, !dbg !490
  %211 = load i32*, i32** %p.i, align 8, !dbg !490
  %212 = load i32, i32* %211, align 4, !dbg !490
  %conv221.i = zext i32 %212 to i64, !dbg !490
  %mul222.i = mul i64 %210, %conv221.i, !dbg !490
  store i64 %mul222.i, i64* %ul.i, align 8, !dbg !490
  %213 = load i64, i64* %ul.i, align 8, !dbg !499
  %cmp223.i = icmp ne i64 %213, 0, !dbg !499
  br i1 %cmp223.i, label %if.then225.i, label %if.else231.i, !dbg !490

if.then225.i:                                     ; preds = %if.end217.i
  %214 = load i64, i64* %ul.i, align 8, !dbg !501
  %and226.i = and i64 %214, 65535, !dbg !501
  %215 = load i64, i64* %ul.i, align 8, !dbg !501
  %shr227.i = lshr i64 %215, 16, !dbg !501
  %sub228.i = sub i64 %and226.i, %shr227.i, !dbg !501
  store i64 %sub228.i, i64* %t0.i, align 8, !dbg !501
  %216 = load i64, i64* %t0.i, align 8, !dbg !501
  %shr229.i = lshr i64 %216, 16, !dbg !501
  %217 = load i64, i64* %t0.i, align 8, !dbg !501
  %sub230.i = sub i64 %217, %shr229.i, !dbg !501
  store i64 %sub230.i, i64* %t0.i, align 8, !dbg !501
  br label %if.end237.i, !dbg !501

if.else231.i:                                     ; preds = %if.end217.i
  %218 = load i64, i64* %t0.i, align 8, !dbg !499
  %conv232.i = trunc i64 %218 to i32, !dbg !499
  %sub233.i = sub nsw i32 0, %conv232.i, !dbg !499
  %219 = load i32*, i32** %p.i, align 8, !dbg !499
  %220 = load i32, i32* %219, align 4, !dbg !499
  %sub234.i = sub i32 %sub233.i, %220, !dbg !499
  %add235.i = add i32 %sub234.i, 1, !dbg !499
  %conv236.i = zext i32 %add235.i to i64, !dbg !499
  store i64 %conv236.i, i64* %t0.i, align 8, !dbg !499
  br label %if.end237.i

if.end237.i:                                      ; preds = %if.else231.i, %if.then225.i
  %221 = load i32*, i32** %p.i, align 8, !dbg !490
  %incdec.ptr238.i = getelementptr inbounds i32, i32* %221, i32 1, !dbg !490
  store i32* %incdec.ptr238.i, i32** %p.i, align 8, !dbg !490
  %222 = load i64, i64* %t0.i, align 8, !dbg !490
  %223 = load i64, i64* %x2.i, align 8, !dbg !490
  %224 = load i64, i64* %x4.i, align 8, !dbg !490
  %xor239.i = xor i64 %223, %224, !dbg !490
  %add240.i = add i64 %222, %xor239.i, !dbg !490
  %and241.i = and i64 %add240.i, 65535, !dbg !490
  store i64 %and241.i, i64* %t1.i, align 8, !dbg !490
  %225 = load i64, i64* %t1.i, align 8, !dbg !490
  %226 = load i32*, i32** %p.i, align 8, !dbg !490
  %227 = load i32, i32* %226, align 4, !dbg !490
  %conv242.i = zext i32 %227 to i64, !dbg !490
  %mul243.i = mul i64 %225, %conv242.i, !dbg !490
  store i64 %mul243.i, i64* %ul.i, align 8, !dbg !490
  %228 = load i64, i64* %ul.i, align 8, !dbg !503
  %cmp244.i = icmp ne i64 %228, 0, !dbg !503
  br i1 %cmp244.i, label %if.then246.i, label %if.else252.i, !dbg !490

if.then246.i:                                     ; preds = %if.end237.i
  %229 = load i64, i64* %ul.i, align 8, !dbg !505
  %and247.i = and i64 %229, 65535, !dbg !505
  %230 = load i64, i64* %ul.i, align 8, !dbg !505
  %shr248.i = lshr i64 %230, 16, !dbg !505
  %sub249.i = sub i64 %and247.i, %shr248.i, !dbg !505
  store i64 %sub249.i, i64* %t1.i, align 8, !dbg !505
  %231 = load i64, i64* %t1.i, align 8, !dbg !505
  %shr250.i = lshr i64 %231, 16, !dbg !505
  %232 = load i64, i64* %t1.i, align 8, !dbg !505
  %sub251.i = sub i64 %232, %shr250.i, !dbg !505
  store i64 %sub251.i, i64* %t1.i, align 8, !dbg !505
  br label %if.end258.i, !dbg !505

if.else252.i:                                     ; preds = %if.end237.i
  %233 = load i64, i64* %t1.i, align 8, !dbg !503
  %conv253.i = trunc i64 %233 to i32, !dbg !503
  %sub254.i = sub nsw i32 0, %conv253.i, !dbg !503
  %234 = load i32*, i32** %p.i, align 8, !dbg !503
  %235 = load i32, i32* %234, align 4, !dbg !503
  %sub255.i = sub i32 %sub254.i, %235, !dbg !503
  %add256.i = add i32 %sub255.i, 1, !dbg !503
  %conv257.i = zext i32 %add256.i to i64, !dbg !503
  store i64 %conv257.i, i64* %t1.i, align 8, !dbg !503
  br label %if.end258.i

if.end258.i:                                      ; preds = %if.else252.i, %if.then246.i
  %236 = load i32*, i32** %p.i, align 8, !dbg !490
  %incdec.ptr259.i = getelementptr inbounds i32, i32* %236, i32 1, !dbg !490
  store i32* %incdec.ptr259.i, i32** %p.i, align 8, !dbg !490
  %237 = load i64, i64* %t1.i, align 8, !dbg !490
  %238 = load i64, i64* %t0.i, align 8, !dbg !490
  %add260.i = add i64 %238, %237, !dbg !490
  store i64 %add260.i, i64* %t0.i, align 8, !dbg !490
  %239 = load i64, i64* %t1.i, align 8, !dbg !490
  %240 = load i64, i64* %x1.i, align 8, !dbg !490
  %xor261.i = xor i64 %240, %239, !dbg !490
  store i64 %xor261.i, i64* %x1.i, align 8, !dbg !490
  %241 = load i64, i64* %t0.i, align 8, !dbg !490
  %242 = load i64, i64* %x4.i, align 8, !dbg !490
  %xor262.i = xor i64 %242, %241, !dbg !490
  store i64 %xor262.i, i64* %x4.i, align 8, !dbg !490
  %243 = load i64, i64* %x2.i, align 8, !dbg !490
  %244 = load i64, i64* %t0.i, align 8, !dbg !490
  %xor263.i = xor i64 %243, %244, !dbg !490
  store i64 %xor263.i, i64* %ul.i, align 8, !dbg !490
  %245 = load i64, i64* %x3.i, align 8, !dbg !490
  %246 = load i64, i64* %t1.i, align 8, !dbg !490
  %xor264.i = xor i64 %245, %246, !dbg !490
  store i64 %xor264.i, i64* %x2.i, align 8, !dbg !490
  %247 = load i64, i64* %ul.i, align 8, !dbg !490
  store i64 %247, i64* %x3.i, align 8, !dbg !490
  %248 = load i64, i64* %x1.i, align 8, !dbg !507
  %and265.i = and i64 %248, 65535, !dbg !507
  store i64 %and265.i, i64* %x1.i, align 8, !dbg !507
  %249 = load i64, i64* %x1.i, align 8, !dbg !507
  %250 = load i32*, i32** %p.i, align 8, !dbg !507
  %251 = load i32, i32* %250, align 4, !dbg !507
  %conv266.i = zext i32 %251 to i64, !dbg !507
  %mul267.i = mul i64 %249, %conv266.i, !dbg !507
  store i64 %mul267.i, i64* %ul.i, align 8, !dbg !507
  %252 = load i64, i64* %ul.i, align 8, !dbg !508
  %cmp268.i = icmp ne i64 %252, 0, !dbg !508
  br i1 %cmp268.i, label %if.then270.i, label %if.else276.i, !dbg !507

if.then270.i:                                     ; preds = %if.end258.i
  %253 = load i64, i64* %ul.i, align 8, !dbg !510
  %and271.i = and i64 %253, 65535, !dbg !510
  %254 = load i64, i64* %ul.i, align 8, !dbg !510
  %shr272.i = lshr i64 %254, 16, !dbg !510
  %sub273.i = sub i64 %and271.i, %shr272.i, !dbg !510
  store i64 %sub273.i, i64* %x1.i, align 8, !dbg !510
  %255 = load i64, i64* %x1.i, align 8, !dbg !510
  %shr274.i = lshr i64 %255, 16, !dbg !510
  %256 = load i64, i64* %x1.i, align 8, !dbg !510
  %sub275.i = sub i64 %256, %shr274.i, !dbg !510
  store i64 %sub275.i, i64* %x1.i, align 8, !dbg !510
  br label %if.end282.i, !dbg !510

if.else276.i:                                     ; preds = %if.end258.i
  %257 = load i64, i64* %x1.i, align 8, !dbg !508
  %conv277.i = trunc i64 %257 to i32, !dbg !508
  %sub278.i = sub nsw i32 0, %conv277.i, !dbg !508
  %258 = load i32*, i32** %p.i, align 8, !dbg !508
  %259 = load i32, i32* %258, align 4, !dbg !508
  %sub279.i = sub i32 %sub278.i, %259, !dbg !508
  %add280.i = add i32 %sub279.i, 1, !dbg !508
  %conv281.i = zext i32 %add280.i to i64, !dbg !508
  store i64 %conv281.i, i64* %x1.i, align 8, !dbg !508
  br label %if.end282.i

if.end282.i:                                      ; preds = %if.else276.i, %if.then270.i
  %260 = load i32*, i32** %p.i, align 8, !dbg !507
  %incdec.ptr283.i = getelementptr inbounds i32, i32* %260, i32 1, !dbg !507
  store i32* %incdec.ptr283.i, i32** %p.i, align 8, !dbg !507
  %261 = load i32*, i32** %p.i, align 8, !dbg !507
  %incdec.ptr284.i = getelementptr inbounds i32, i32* %261, i32 1, !dbg !507
  store i32* %incdec.ptr284.i, i32** %p.i, align 8, !dbg !507
  %262 = load i32, i32* %261, align 4, !dbg !507
  %conv285.i = zext i32 %262 to i64, !dbg !507
  %263 = load i64, i64* %x2.i, align 8, !dbg !507
  %add286.i = add i64 %263, %conv285.i, !dbg !507
  store i64 %add286.i, i64* %x2.i, align 8, !dbg !507
  %264 = load i32*, i32** %p.i, align 8, !dbg !507
  %incdec.ptr287.i = getelementptr inbounds i32, i32* %264, i32 1, !dbg !507
  store i32* %incdec.ptr287.i, i32** %p.i, align 8, !dbg !507
  %265 = load i32, i32* %264, align 4, !dbg !507
  %conv288.i = zext i32 %265 to i64, !dbg !507
  %266 = load i64, i64* %x3.i, align 8, !dbg !507
  %add289.i = add i64 %266, %conv288.i, !dbg !507
  store i64 %add289.i, i64* %x3.i, align 8, !dbg !507
  %267 = load i64, i64* %x4.i, align 8, !dbg !507
  %and290.i = and i64 %267, 65535, !dbg !507
  store i64 %and290.i, i64* %x4.i, align 8, !dbg !507
  %268 = load i64, i64* %x4.i, align 8, !dbg !507
  %269 = load i32*, i32** %p.i, align 8, !dbg !507
  %270 = load i32, i32* %269, align 4, !dbg !507
  %conv291.i = zext i32 %270 to i64, !dbg !507
  %mul292.i = mul i64 %268, %conv291.i, !dbg !507
  store i64 %mul292.i, i64* %ul.i, align 8, !dbg !507
  %271 = load i64, i64* %ul.i, align 8, !dbg !512
  %cmp293.i = icmp ne i64 %271, 0, !dbg !512
  br i1 %cmp293.i, label %if.then295.i, label %if.else301.i, !dbg !507

if.then295.i:                                     ; preds = %if.end282.i
  %272 = load i64, i64* %ul.i, align 8, !dbg !514
  %and296.i = and i64 %272, 65535, !dbg !514
  %273 = load i64, i64* %ul.i, align 8, !dbg !514
  %shr297.i = lshr i64 %273, 16, !dbg !514
  %sub298.i = sub i64 %and296.i, %shr297.i, !dbg !514
  store i64 %sub298.i, i64* %x4.i, align 8, !dbg !514
  %274 = load i64, i64* %x4.i, align 8, !dbg !514
  %shr299.i = lshr i64 %274, 16, !dbg !514
  %275 = load i64, i64* %x4.i, align 8, !dbg !514
  %sub300.i = sub i64 %275, %shr299.i, !dbg !514
  store i64 %sub300.i, i64* %x4.i, align 8, !dbg !514
  br label %if.end307.i, !dbg !514

if.else301.i:                                     ; preds = %if.end282.i
  %276 = load i64, i64* %x4.i, align 8, !dbg !512
  %conv302.i = trunc i64 %276 to i32, !dbg !512
  %sub303.i = sub nsw i32 0, %conv302.i, !dbg !512
  %277 = load i32*, i32** %p.i, align 8, !dbg !512
  %278 = load i32, i32* %277, align 4, !dbg !512
  %sub304.i = sub i32 %sub303.i, %278, !dbg !512
  %add305.i = add i32 %sub304.i, 1, !dbg !512
  %conv306.i = zext i32 %add305.i to i64, !dbg !512
  store i64 %conv306.i, i64* %x4.i, align 8, !dbg !512
  br label %if.end307.i

if.end307.i:                                      ; preds = %if.else301.i, %if.then295.i
  %279 = load i32*, i32** %p.i, align 8, !dbg !507
  %incdec.ptr308.i = getelementptr inbounds i32, i32* %279, i32 1, !dbg !507
  store i32* %incdec.ptr308.i, i32** %p.i, align 8, !dbg !507
  %280 = load i64, i64* %x1.i, align 8, !dbg !507
  %281 = load i64, i64* %x3.i, align 8, !dbg !507
  %xor309.i = xor i64 %280, %281, !dbg !507
  %and310.i = and i64 %xor309.i, 65535, !dbg !507
  store i64 %and310.i, i64* %t0.i, align 8, !dbg !507
  %282 = load i64, i64* %t0.i, align 8, !dbg !507
  %283 = load i32*, i32** %p.i, align 8, !dbg !507
  %284 = load i32, i32* %283, align 4, !dbg !507
  %conv311.i = zext i32 %284 to i64, !dbg !507
  %mul312.i = mul i64 %282, %conv311.i, !dbg !507
  store i64 %mul312.i, i64* %ul.i, align 8, !dbg !507
  %285 = load i64, i64* %ul.i, align 8, !dbg !516
  %cmp313.i = icmp ne i64 %285, 0, !dbg !516
  br i1 %cmp313.i, label %if.then315.i, label %if.else321.i, !dbg !507

if.then315.i:                                     ; preds = %if.end307.i
  %286 = load i64, i64* %ul.i, align 8, !dbg !518
  %and316.i = and i64 %286, 65535, !dbg !518
  %287 = load i64, i64* %ul.i, align 8, !dbg !518
  %shr317.i = lshr i64 %287, 16, !dbg !518
  %sub318.i = sub i64 %and316.i, %shr317.i, !dbg !518
  store i64 %sub318.i, i64* %t0.i, align 8, !dbg !518
  %288 = load i64, i64* %t0.i, align 8, !dbg !518
  %shr319.i = lshr i64 %288, 16, !dbg !518
  %289 = load i64, i64* %t0.i, align 8, !dbg !518
  %sub320.i = sub i64 %289, %shr319.i, !dbg !518
  store i64 %sub320.i, i64* %t0.i, align 8, !dbg !518
  br label %if.end327.i, !dbg !518

if.else321.i:                                     ; preds = %if.end307.i
  %290 = load i64, i64* %t0.i, align 8, !dbg !516
  %conv322.i = trunc i64 %290 to i32, !dbg !516
  %sub323.i = sub nsw i32 0, %conv322.i, !dbg !516
  %291 = load i32*, i32** %p.i, align 8, !dbg !516
  %292 = load i32, i32* %291, align 4, !dbg !516
  %sub324.i = sub i32 %sub323.i, %292, !dbg !516
  %add325.i = add i32 %sub324.i, 1, !dbg !516
  %conv326.i = zext i32 %add325.i to i64, !dbg !516
  store i64 %conv326.i, i64* %t0.i, align 8, !dbg !516
  br label %if.end327.i

if.end327.i:                                      ; preds = %if.else321.i, %if.then315.i
  %293 = load i32*, i32** %p.i, align 8, !dbg !507
  %incdec.ptr328.i = getelementptr inbounds i32, i32* %293, i32 1, !dbg !507
  store i32* %incdec.ptr328.i, i32** %p.i, align 8, !dbg !507
  %294 = load i64, i64* %t0.i, align 8, !dbg !507
  %295 = load i64, i64* %x2.i, align 8, !dbg !507
  %296 = load i64, i64* %x4.i, align 8, !dbg !507
  %xor329.i = xor i64 %295, %296, !dbg !507
  %add330.i = add i64 %294, %xor329.i, !dbg !507
  %and331.i = and i64 %add330.i, 65535, !dbg !507
  store i64 %and331.i, i64* %t1.i, align 8, !dbg !507
  %297 = load i64, i64* %t1.i, align 8, !dbg !507
  %298 = load i32*, i32** %p.i, align 8, !dbg !507
  %299 = load i32, i32* %298, align 4, !dbg !507
  %conv332.i = zext i32 %299 to i64, !dbg !507
  %mul333.i = mul i64 %297, %conv332.i, !dbg !507
  store i64 %mul333.i, i64* %ul.i, align 8, !dbg !507
  %300 = load i64, i64* %ul.i, align 8, !dbg !520
  %cmp334.i = icmp ne i64 %300, 0, !dbg !520
  br i1 %cmp334.i, label %if.then336.i, label %if.else342.i, !dbg !507

if.then336.i:                                     ; preds = %if.end327.i
  %301 = load i64, i64* %ul.i, align 8, !dbg !522
  %and337.i = and i64 %301, 65535, !dbg !522
  %302 = load i64, i64* %ul.i, align 8, !dbg !522
  %shr338.i = lshr i64 %302, 16, !dbg !522
  %sub339.i = sub i64 %and337.i, %shr338.i, !dbg !522
  store i64 %sub339.i, i64* %t1.i, align 8, !dbg !522
  %303 = load i64, i64* %t1.i, align 8, !dbg !522
  %shr340.i = lshr i64 %303, 16, !dbg !522
  %304 = load i64, i64* %t1.i, align 8, !dbg !522
  %sub341.i = sub i64 %304, %shr340.i, !dbg !522
  store i64 %sub341.i, i64* %t1.i, align 8, !dbg !522
  br label %if.end348.i, !dbg !522

if.else342.i:                                     ; preds = %if.end327.i
  %305 = load i64, i64* %t1.i, align 8, !dbg !520
  %conv343.i = trunc i64 %305 to i32, !dbg !520
  %sub344.i = sub nsw i32 0, %conv343.i, !dbg !520
  %306 = load i32*, i32** %p.i, align 8, !dbg !520
  %307 = load i32, i32* %306, align 4, !dbg !520
  %sub345.i = sub i32 %sub344.i, %307, !dbg !520
  %add346.i = add i32 %sub345.i, 1, !dbg !520
  %conv347.i = zext i32 %add346.i to i64, !dbg !520
  store i64 %conv347.i, i64* %t1.i, align 8, !dbg !520
  br label %if.end348.i

if.end348.i:                                      ; preds = %if.else342.i, %if.then336.i
  %308 = load i32*, i32** %p.i, align 8, !dbg !507
  %incdec.ptr349.i = getelementptr inbounds i32, i32* %308, i32 1, !dbg !507
  store i32* %incdec.ptr349.i, i32** %p.i, align 8, !dbg !507
  %309 = load i64, i64* %t1.i, align 8, !dbg !507
  %310 = load i64, i64* %t0.i, align 8, !dbg !507
  %add350.i = add i64 %310, %309, !dbg !507
  store i64 %add350.i, i64* %t0.i, align 8, !dbg !507
  %311 = load i64, i64* %t1.i, align 8, !dbg !507
  %312 = load i64, i64* %x1.i, align 8, !dbg !507
  %xor351.i = xor i64 %312, %311, !dbg !507
  store i64 %xor351.i, i64* %x1.i, align 8, !dbg !507
  %313 = load i64, i64* %t0.i, align 8, !dbg !507
  %314 = load i64, i64* %x4.i, align 8, !dbg !507
  %xor352.i = xor i64 %314, %313, !dbg !507
  store i64 %xor352.i, i64* %x4.i, align 8, !dbg !507
  %315 = load i64, i64* %x2.i, align 8, !dbg !507
  %316 = load i64, i64* %t0.i, align 8, !dbg !507
  %xor353.i = xor i64 %315, %316, !dbg !507
  store i64 %xor353.i, i64* %ul.i, align 8, !dbg !507
  %317 = load i64, i64* %x3.i, align 8, !dbg !507
  %318 = load i64, i64* %t1.i, align 8, !dbg !507
  %xor354.i = xor i64 %317, %318, !dbg !507
  store i64 %xor354.i, i64* %x2.i, align 8, !dbg !507
  %319 = load i64, i64* %ul.i, align 8, !dbg !507
  store i64 %319, i64* %x3.i, align 8, !dbg !507
  %320 = load i64, i64* %x1.i, align 8, !dbg !524
  %and355.i = and i64 %320, 65535, !dbg !524
  store i64 %and355.i, i64* %x1.i, align 8, !dbg !524
  %321 = load i64, i64* %x1.i, align 8, !dbg !524
  %322 = load i32*, i32** %p.i, align 8, !dbg !524
  %323 = load i32, i32* %322, align 4, !dbg !524
  %conv356.i = zext i32 %323 to i64, !dbg !524
  %mul357.i = mul i64 %321, %conv356.i, !dbg !524
  store i64 %mul357.i, i64* %ul.i, align 8, !dbg !524
  %324 = load i64, i64* %ul.i, align 8, !dbg !525
  %cmp358.i = icmp ne i64 %324, 0, !dbg !525
  br i1 %cmp358.i, label %if.then360.i, label %if.else366.i, !dbg !524

if.then360.i:                                     ; preds = %if.end348.i
  %325 = load i64, i64* %ul.i, align 8, !dbg !527
  %and361.i = and i64 %325, 65535, !dbg !527
  %326 = load i64, i64* %ul.i, align 8, !dbg !527
  %shr362.i = lshr i64 %326, 16, !dbg !527
  %sub363.i = sub i64 %and361.i, %shr362.i, !dbg !527
  store i64 %sub363.i, i64* %x1.i, align 8, !dbg !527
  %327 = load i64, i64* %x1.i, align 8, !dbg !527
  %shr364.i = lshr i64 %327, 16, !dbg !527
  %328 = load i64, i64* %x1.i, align 8, !dbg !527
  %sub365.i = sub i64 %328, %shr364.i, !dbg !527
  store i64 %sub365.i, i64* %x1.i, align 8, !dbg !527
  br label %if.end372.i, !dbg !527

if.else366.i:                                     ; preds = %if.end348.i
  %329 = load i64, i64* %x1.i, align 8, !dbg !525
  %conv367.i = trunc i64 %329 to i32, !dbg !525
  %sub368.i = sub nsw i32 0, %conv367.i, !dbg !525
  %330 = load i32*, i32** %p.i, align 8, !dbg !525
  %331 = load i32, i32* %330, align 4, !dbg !525
  %sub369.i = sub i32 %sub368.i, %331, !dbg !525
  %add370.i = add i32 %sub369.i, 1, !dbg !525
  %conv371.i = zext i32 %add370.i to i64, !dbg !525
  store i64 %conv371.i, i64* %x1.i, align 8, !dbg !525
  br label %if.end372.i

if.end372.i:                                      ; preds = %if.else366.i, %if.then360.i
  %332 = load i32*, i32** %p.i, align 8, !dbg !524
  %incdec.ptr373.i = getelementptr inbounds i32, i32* %332, i32 1, !dbg !524
  store i32* %incdec.ptr373.i, i32** %p.i, align 8, !dbg !524
  %333 = load i32*, i32** %p.i, align 8, !dbg !524
  %incdec.ptr374.i = getelementptr inbounds i32, i32* %333, i32 1, !dbg !524
  store i32* %incdec.ptr374.i, i32** %p.i, align 8, !dbg !524
  %334 = load i32, i32* %333, align 4, !dbg !524
  %conv375.i = zext i32 %334 to i64, !dbg !524
  %335 = load i64, i64* %x2.i, align 8, !dbg !524
  %add376.i = add i64 %335, %conv375.i, !dbg !524
  store i64 %add376.i, i64* %x2.i, align 8, !dbg !524
  %336 = load i32*, i32** %p.i, align 8, !dbg !524
  %incdec.ptr377.i = getelementptr inbounds i32, i32* %336, i32 1, !dbg !524
  store i32* %incdec.ptr377.i, i32** %p.i, align 8, !dbg !524
  %337 = load i32, i32* %336, align 4, !dbg !524
  %conv378.i = zext i32 %337 to i64, !dbg !524
  %338 = load i64, i64* %x3.i, align 8, !dbg !524
  %add379.i = add i64 %338, %conv378.i, !dbg !524
  store i64 %add379.i, i64* %x3.i, align 8, !dbg !524
  %339 = load i64, i64* %x4.i, align 8, !dbg !524
  %and380.i = and i64 %339, 65535, !dbg !524
  store i64 %and380.i, i64* %x4.i, align 8, !dbg !524
  %340 = load i64, i64* %x4.i, align 8, !dbg !524
  %341 = load i32*, i32** %p.i, align 8, !dbg !524
  %342 = load i32, i32* %341, align 4, !dbg !524
  %conv381.i = zext i32 %342 to i64, !dbg !524
  %mul382.i = mul i64 %340, %conv381.i, !dbg !524
  store i64 %mul382.i, i64* %ul.i, align 8, !dbg !524
  %343 = load i64, i64* %ul.i, align 8, !dbg !529
  %cmp383.i = icmp ne i64 %343, 0, !dbg !529
  br i1 %cmp383.i, label %if.then385.i, label %if.else391.i, !dbg !524

if.then385.i:                                     ; preds = %if.end372.i
  %344 = load i64, i64* %ul.i, align 8, !dbg !531
  %and386.i = and i64 %344, 65535, !dbg !531
  %345 = load i64, i64* %ul.i, align 8, !dbg !531
  %shr387.i = lshr i64 %345, 16, !dbg !531
  %sub388.i = sub i64 %and386.i, %shr387.i, !dbg !531
  store i64 %sub388.i, i64* %x4.i, align 8, !dbg !531
  %346 = load i64, i64* %x4.i, align 8, !dbg !531
  %shr389.i = lshr i64 %346, 16, !dbg !531
  %347 = load i64, i64* %x4.i, align 8, !dbg !531
  %sub390.i = sub i64 %347, %shr389.i, !dbg !531
  store i64 %sub390.i, i64* %x4.i, align 8, !dbg !531
  br label %if.end397.i, !dbg !531

if.else391.i:                                     ; preds = %if.end372.i
  %348 = load i64, i64* %x4.i, align 8, !dbg !529
  %conv392.i = trunc i64 %348 to i32, !dbg !529
  %sub393.i = sub nsw i32 0, %conv392.i, !dbg !529
  %349 = load i32*, i32** %p.i, align 8, !dbg !529
  %350 = load i32, i32* %349, align 4, !dbg !529
  %sub394.i = sub i32 %sub393.i, %350, !dbg !529
  %add395.i = add i32 %sub394.i, 1, !dbg !529
  %conv396.i = zext i32 %add395.i to i64, !dbg !529
  store i64 %conv396.i, i64* %x4.i, align 8, !dbg !529
  br label %if.end397.i

if.end397.i:                                      ; preds = %if.else391.i, %if.then385.i
  %351 = load i32*, i32** %p.i, align 8, !dbg !524
  %incdec.ptr398.i = getelementptr inbounds i32, i32* %351, i32 1, !dbg !524
  store i32* %incdec.ptr398.i, i32** %p.i, align 8, !dbg !524
  %352 = load i64, i64* %x1.i, align 8, !dbg !524
  %353 = load i64, i64* %x3.i, align 8, !dbg !524
  %xor399.i = xor i64 %352, %353, !dbg !524
  %and400.i = and i64 %xor399.i, 65535, !dbg !524
  store i64 %and400.i, i64* %t0.i, align 8, !dbg !524
  %354 = load i64, i64* %t0.i, align 8, !dbg !524
  %355 = load i32*, i32** %p.i, align 8, !dbg !524
  %356 = load i32, i32* %355, align 4, !dbg !524
  %conv401.i = zext i32 %356 to i64, !dbg !524
  %mul402.i = mul i64 %354, %conv401.i, !dbg !524
  store i64 %mul402.i, i64* %ul.i, align 8, !dbg !524
  %357 = load i64, i64* %ul.i, align 8, !dbg !533
  %cmp403.i = icmp ne i64 %357, 0, !dbg !533
  br i1 %cmp403.i, label %if.then405.i, label %if.else411.i, !dbg !524

if.then405.i:                                     ; preds = %if.end397.i
  %358 = load i64, i64* %ul.i, align 8, !dbg !535
  %and406.i = and i64 %358, 65535, !dbg !535
  %359 = load i64, i64* %ul.i, align 8, !dbg !535
  %shr407.i = lshr i64 %359, 16, !dbg !535
  %sub408.i = sub i64 %and406.i, %shr407.i, !dbg !535
  store i64 %sub408.i, i64* %t0.i, align 8, !dbg !535
  %360 = load i64, i64* %t0.i, align 8, !dbg !535
  %shr409.i = lshr i64 %360, 16, !dbg !535
  %361 = load i64, i64* %t0.i, align 8, !dbg !535
  %sub410.i = sub i64 %361, %shr409.i, !dbg !535
  store i64 %sub410.i, i64* %t0.i, align 8, !dbg !535
  br label %if.end417.i, !dbg !535

if.else411.i:                                     ; preds = %if.end397.i
  %362 = load i64, i64* %t0.i, align 8, !dbg !533
  %conv412.i = trunc i64 %362 to i32, !dbg !533
  %sub413.i = sub nsw i32 0, %conv412.i, !dbg !533
  %363 = load i32*, i32** %p.i, align 8, !dbg !533
  %364 = load i32, i32* %363, align 4, !dbg !533
  %sub414.i = sub i32 %sub413.i, %364, !dbg !533
  %add415.i = add i32 %sub414.i, 1, !dbg !533
  %conv416.i = zext i32 %add415.i to i64, !dbg !533
  store i64 %conv416.i, i64* %t0.i, align 8, !dbg !533
  br label %if.end417.i

if.end417.i:                                      ; preds = %if.else411.i, %if.then405.i
  %365 = load i32*, i32** %p.i, align 8, !dbg !524
  %incdec.ptr418.i = getelementptr inbounds i32, i32* %365, i32 1, !dbg !524
  store i32* %incdec.ptr418.i, i32** %p.i, align 8, !dbg !524
  %366 = load i64, i64* %t0.i, align 8, !dbg !524
  %367 = load i64, i64* %x2.i, align 8, !dbg !524
  %368 = load i64, i64* %x4.i, align 8, !dbg !524
  %xor419.i = xor i64 %367, %368, !dbg !524
  %add420.i = add i64 %366, %xor419.i, !dbg !524
  %and421.i = and i64 %add420.i, 65535, !dbg !524
  store i64 %and421.i, i64* %t1.i, align 8, !dbg !524
  %369 = load i64, i64* %t1.i, align 8, !dbg !524
  %370 = load i32*, i32** %p.i, align 8, !dbg !524
  %371 = load i32, i32* %370, align 4, !dbg !524
  %conv422.i = zext i32 %371 to i64, !dbg !524
  %mul423.i = mul i64 %369, %conv422.i, !dbg !524
  store i64 %mul423.i, i64* %ul.i, align 8, !dbg !524
  %372 = load i64, i64* %ul.i, align 8, !dbg !537
  %cmp424.i = icmp ne i64 %372, 0, !dbg !537
  br i1 %cmp424.i, label %if.then426.i, label %if.else432.i, !dbg !524

if.then426.i:                                     ; preds = %if.end417.i
  %373 = load i64, i64* %ul.i, align 8, !dbg !539
  %and427.i = and i64 %373, 65535, !dbg !539
  %374 = load i64, i64* %ul.i, align 8, !dbg !539
  %shr428.i = lshr i64 %374, 16, !dbg !539
  %sub429.i = sub i64 %and427.i, %shr428.i, !dbg !539
  store i64 %sub429.i, i64* %t1.i, align 8, !dbg !539
  %375 = load i64, i64* %t1.i, align 8, !dbg !539
  %shr430.i = lshr i64 %375, 16, !dbg !539
  %376 = load i64, i64* %t1.i, align 8, !dbg !539
  %sub431.i = sub i64 %376, %shr430.i, !dbg !539
  store i64 %sub431.i, i64* %t1.i, align 8, !dbg !539
  br label %if.end438.i, !dbg !539

if.else432.i:                                     ; preds = %if.end417.i
  %377 = load i64, i64* %t1.i, align 8, !dbg !537
  %conv433.i = trunc i64 %377 to i32, !dbg !537
  %sub434.i = sub nsw i32 0, %conv433.i, !dbg !537
  %378 = load i32*, i32** %p.i, align 8, !dbg !537
  %379 = load i32, i32* %378, align 4, !dbg !537
  %sub435.i = sub i32 %sub434.i, %379, !dbg !537
  %add436.i = add i32 %sub435.i, 1, !dbg !537
  %conv437.i = zext i32 %add436.i to i64, !dbg !537
  store i64 %conv437.i, i64* %t1.i, align 8, !dbg !537
  br label %if.end438.i

if.end438.i:                                      ; preds = %if.else432.i, %if.then426.i
  %380 = load i32*, i32** %p.i, align 8, !dbg !524
  %incdec.ptr439.i = getelementptr inbounds i32, i32* %380, i32 1, !dbg !524
  store i32* %incdec.ptr439.i, i32** %p.i, align 8, !dbg !524
  %381 = load i64, i64* %t1.i, align 8, !dbg !524
  %382 = load i64, i64* %t0.i, align 8, !dbg !524
  %add440.i = add i64 %382, %381, !dbg !524
  store i64 %add440.i, i64* %t0.i, align 8, !dbg !524
  %383 = load i64, i64* %t1.i, align 8, !dbg !524
  %384 = load i64, i64* %x1.i, align 8, !dbg !524
  %xor441.i = xor i64 %384, %383, !dbg !524
  store i64 %xor441.i, i64* %x1.i, align 8, !dbg !524
  %385 = load i64, i64* %t0.i, align 8, !dbg !524
  %386 = load i64, i64* %x4.i, align 8, !dbg !524
  %xor442.i = xor i64 %386, %385, !dbg !524
  store i64 %xor442.i, i64* %x4.i, align 8, !dbg !524
  %387 = load i64, i64* %x2.i, align 8, !dbg !524
  %388 = load i64, i64* %t0.i, align 8, !dbg !524
  %xor443.i = xor i64 %387, %388, !dbg !524
  store i64 %xor443.i, i64* %ul.i, align 8, !dbg !524
  %389 = load i64, i64* %x3.i, align 8, !dbg !524
  %390 = load i64, i64* %t1.i, align 8, !dbg !524
  %xor444.i = xor i64 %389, %390, !dbg !524
  store i64 %xor444.i, i64* %x2.i, align 8, !dbg !524
  %391 = load i64, i64* %ul.i, align 8, !dbg !524
  store i64 %391, i64* %x3.i, align 8, !dbg !524
  %392 = load i64, i64* %x1.i, align 8, !dbg !541
  %and445.i = and i64 %392, 65535, !dbg !541
  store i64 %and445.i, i64* %x1.i, align 8, !dbg !541
  %393 = load i64, i64* %x1.i, align 8, !dbg !541
  %394 = load i32*, i32** %p.i, align 8, !dbg !541
  %395 = load i32, i32* %394, align 4, !dbg !541
  %conv446.i = zext i32 %395 to i64, !dbg !541
  %mul447.i = mul i64 %393, %conv446.i, !dbg !541
  store i64 %mul447.i, i64* %ul.i, align 8, !dbg !541
  %396 = load i64, i64* %ul.i, align 8, !dbg !542
  %cmp448.i = icmp ne i64 %396, 0, !dbg !542
  br i1 %cmp448.i, label %if.then450.i, label %if.else456.i, !dbg !541

if.then450.i:                                     ; preds = %if.end438.i
  %397 = load i64, i64* %ul.i, align 8, !dbg !544
  %and451.i = and i64 %397, 65535, !dbg !544
  %398 = load i64, i64* %ul.i, align 8, !dbg !544
  %shr452.i = lshr i64 %398, 16, !dbg !544
  %sub453.i = sub i64 %and451.i, %shr452.i, !dbg !544
  store i64 %sub453.i, i64* %x1.i, align 8, !dbg !544
  %399 = load i64, i64* %x1.i, align 8, !dbg !544
  %shr454.i = lshr i64 %399, 16, !dbg !544
  %400 = load i64, i64* %x1.i, align 8, !dbg !544
  %sub455.i = sub i64 %400, %shr454.i, !dbg !544
  store i64 %sub455.i, i64* %x1.i, align 8, !dbg !544
  br label %if.end462.i, !dbg !544

if.else456.i:                                     ; preds = %if.end438.i
  %401 = load i64, i64* %x1.i, align 8, !dbg !542
  %conv457.i = trunc i64 %401 to i32, !dbg !542
  %sub458.i = sub nsw i32 0, %conv457.i, !dbg !542
  %402 = load i32*, i32** %p.i, align 8, !dbg !542
  %403 = load i32, i32* %402, align 4, !dbg !542
  %sub459.i = sub i32 %sub458.i, %403, !dbg !542
  %add460.i = add i32 %sub459.i, 1, !dbg !542
  %conv461.i = zext i32 %add460.i to i64, !dbg !542
  store i64 %conv461.i, i64* %x1.i, align 8, !dbg !542
  br label %if.end462.i

if.end462.i:                                      ; preds = %if.else456.i, %if.then450.i
  %404 = load i32*, i32** %p.i, align 8, !dbg !541
  %incdec.ptr463.i = getelementptr inbounds i32, i32* %404, i32 1, !dbg !541
  store i32* %incdec.ptr463.i, i32** %p.i, align 8, !dbg !541
  %405 = load i32*, i32** %p.i, align 8, !dbg !541
  %incdec.ptr464.i = getelementptr inbounds i32, i32* %405, i32 1, !dbg !541
  store i32* %incdec.ptr464.i, i32** %p.i, align 8, !dbg !541
  %406 = load i32, i32* %405, align 4, !dbg !541
  %conv465.i = zext i32 %406 to i64, !dbg !541
  %407 = load i64, i64* %x2.i, align 8, !dbg !541
  %add466.i = add i64 %407, %conv465.i, !dbg !541
  store i64 %add466.i, i64* %x2.i, align 8, !dbg !541
  %408 = load i32*, i32** %p.i, align 8, !dbg !541
  %incdec.ptr467.i = getelementptr inbounds i32, i32* %408, i32 1, !dbg !541
  store i32* %incdec.ptr467.i, i32** %p.i, align 8, !dbg !541
  %409 = load i32, i32* %408, align 4, !dbg !541
  %conv468.i = zext i32 %409 to i64, !dbg !541
  %410 = load i64, i64* %x3.i, align 8, !dbg !541
  %add469.i = add i64 %410, %conv468.i, !dbg !541
  store i64 %add469.i, i64* %x3.i, align 8, !dbg !541
  %411 = load i64, i64* %x4.i, align 8, !dbg !541
  %and470.i = and i64 %411, 65535, !dbg !541
  store i64 %and470.i, i64* %x4.i, align 8, !dbg !541
  %412 = load i64, i64* %x4.i, align 8, !dbg !541
  %413 = load i32*, i32** %p.i, align 8, !dbg !541
  %414 = load i32, i32* %413, align 4, !dbg !541
  %conv471.i = zext i32 %414 to i64, !dbg !541
  %mul472.i = mul i64 %412, %conv471.i, !dbg !541
  store i64 %mul472.i, i64* %ul.i, align 8, !dbg !541
  %415 = load i64, i64* %ul.i, align 8, !dbg !546
  %cmp473.i = icmp ne i64 %415, 0, !dbg !546
  br i1 %cmp473.i, label %if.then475.i, label %if.else481.i, !dbg !541

if.then475.i:                                     ; preds = %if.end462.i
  %416 = load i64, i64* %ul.i, align 8, !dbg !548
  %and476.i = and i64 %416, 65535, !dbg !548
  %417 = load i64, i64* %ul.i, align 8, !dbg !548
  %shr477.i = lshr i64 %417, 16, !dbg !548
  %sub478.i = sub i64 %and476.i, %shr477.i, !dbg !548
  store i64 %sub478.i, i64* %x4.i, align 8, !dbg !548
  %418 = load i64, i64* %x4.i, align 8, !dbg !548
  %shr479.i = lshr i64 %418, 16, !dbg !548
  %419 = load i64, i64* %x4.i, align 8, !dbg !548
  %sub480.i = sub i64 %419, %shr479.i, !dbg !548
  store i64 %sub480.i, i64* %x4.i, align 8, !dbg !548
  br label %if.end487.i, !dbg !548

if.else481.i:                                     ; preds = %if.end462.i
  %420 = load i64, i64* %x4.i, align 8, !dbg !546
  %conv482.i = trunc i64 %420 to i32, !dbg !546
  %sub483.i = sub nsw i32 0, %conv482.i, !dbg !546
  %421 = load i32*, i32** %p.i, align 8, !dbg !546
  %422 = load i32, i32* %421, align 4, !dbg !546
  %sub484.i = sub i32 %sub483.i, %422, !dbg !546
  %add485.i = add i32 %sub484.i, 1, !dbg !546
  %conv486.i = zext i32 %add485.i to i64, !dbg !546
  store i64 %conv486.i, i64* %x4.i, align 8, !dbg !546
  br label %if.end487.i

if.end487.i:                                      ; preds = %if.else481.i, %if.then475.i
  %423 = load i32*, i32** %p.i, align 8, !dbg !541
  %incdec.ptr488.i = getelementptr inbounds i32, i32* %423, i32 1, !dbg !541
  store i32* %incdec.ptr488.i, i32** %p.i, align 8, !dbg !541
  %424 = load i64, i64* %x1.i, align 8, !dbg !541
  %425 = load i64, i64* %x3.i, align 8, !dbg !541
  %xor489.i = xor i64 %424, %425, !dbg !541
  %and490.i = and i64 %xor489.i, 65535, !dbg !541
  store i64 %and490.i, i64* %t0.i, align 8, !dbg !541
  %426 = load i64, i64* %t0.i, align 8, !dbg !541
  %427 = load i32*, i32** %p.i, align 8, !dbg !541
  %428 = load i32, i32* %427, align 4, !dbg !541
  %conv491.i = zext i32 %428 to i64, !dbg !541
  %mul492.i = mul i64 %426, %conv491.i, !dbg !541
  store i64 %mul492.i, i64* %ul.i, align 8, !dbg !541
  %429 = load i64, i64* %ul.i, align 8, !dbg !550
  %cmp493.i = icmp ne i64 %429, 0, !dbg !550
  br i1 %cmp493.i, label %if.then495.i, label %if.else501.i, !dbg !541

if.then495.i:                                     ; preds = %if.end487.i
  %430 = load i64, i64* %ul.i, align 8, !dbg !552
  %and496.i = and i64 %430, 65535, !dbg !552
  %431 = load i64, i64* %ul.i, align 8, !dbg !552
  %shr497.i = lshr i64 %431, 16, !dbg !552
  %sub498.i = sub i64 %and496.i, %shr497.i, !dbg !552
  store i64 %sub498.i, i64* %t0.i, align 8, !dbg !552
  %432 = load i64, i64* %t0.i, align 8, !dbg !552
  %shr499.i = lshr i64 %432, 16, !dbg !552
  %433 = load i64, i64* %t0.i, align 8, !dbg !552
  %sub500.i = sub i64 %433, %shr499.i, !dbg !552
  store i64 %sub500.i, i64* %t0.i, align 8, !dbg !552
  br label %if.end507.i, !dbg !552

if.else501.i:                                     ; preds = %if.end487.i
  %434 = load i64, i64* %t0.i, align 8, !dbg !550
  %conv502.i = trunc i64 %434 to i32, !dbg !550
  %sub503.i = sub nsw i32 0, %conv502.i, !dbg !550
  %435 = load i32*, i32** %p.i, align 8, !dbg !550
  %436 = load i32, i32* %435, align 4, !dbg !550
  %sub504.i = sub i32 %sub503.i, %436, !dbg !550
  %add505.i = add i32 %sub504.i, 1, !dbg !550
  %conv506.i = zext i32 %add505.i to i64, !dbg !550
  store i64 %conv506.i, i64* %t0.i, align 8, !dbg !550
  br label %if.end507.i

if.end507.i:                                      ; preds = %if.else501.i, %if.then495.i
  %437 = load i32*, i32** %p.i, align 8, !dbg !541
  %incdec.ptr508.i = getelementptr inbounds i32, i32* %437, i32 1, !dbg !541
  store i32* %incdec.ptr508.i, i32** %p.i, align 8, !dbg !541
  %438 = load i64, i64* %t0.i, align 8, !dbg !541
  %439 = load i64, i64* %x2.i, align 8, !dbg !541
  %440 = load i64, i64* %x4.i, align 8, !dbg !541
  %xor509.i = xor i64 %439, %440, !dbg !541
  %add510.i = add i64 %438, %xor509.i, !dbg !541
  %and511.i = and i64 %add510.i, 65535, !dbg !541
  store i64 %and511.i, i64* %t1.i, align 8, !dbg !541
  %441 = load i64, i64* %t1.i, align 8, !dbg !541
  %442 = load i32*, i32** %p.i, align 8, !dbg !541
  %443 = load i32, i32* %442, align 4, !dbg !541
  %conv512.i = zext i32 %443 to i64, !dbg !541
  %mul513.i = mul i64 %441, %conv512.i, !dbg !541
  store i64 %mul513.i, i64* %ul.i, align 8, !dbg !541
  %444 = load i64, i64* %ul.i, align 8, !dbg !554
  %cmp514.i = icmp ne i64 %444, 0, !dbg !554
  br i1 %cmp514.i, label %if.then516.i, label %if.else522.i, !dbg !541

if.then516.i:                                     ; preds = %if.end507.i
  %445 = load i64, i64* %ul.i, align 8, !dbg !556
  %and517.i = and i64 %445, 65535, !dbg !556
  %446 = load i64, i64* %ul.i, align 8, !dbg !556
  %shr518.i = lshr i64 %446, 16, !dbg !556
  %sub519.i = sub i64 %and517.i, %shr518.i, !dbg !556
  store i64 %sub519.i, i64* %t1.i, align 8, !dbg !556
  %447 = load i64, i64* %t1.i, align 8, !dbg !556
  %shr520.i = lshr i64 %447, 16, !dbg !556
  %448 = load i64, i64* %t1.i, align 8, !dbg !556
  %sub521.i = sub i64 %448, %shr520.i, !dbg !556
  store i64 %sub521.i, i64* %t1.i, align 8, !dbg !556
  br label %if.end528.i, !dbg !556

if.else522.i:                                     ; preds = %if.end507.i
  %449 = load i64, i64* %t1.i, align 8, !dbg !554
  %conv523.i = trunc i64 %449 to i32, !dbg !554
  %sub524.i = sub nsw i32 0, %conv523.i, !dbg !554
  %450 = load i32*, i32** %p.i, align 8, !dbg !554
  %451 = load i32, i32* %450, align 4, !dbg !554
  %sub525.i = sub i32 %sub524.i, %451, !dbg !554
  %add526.i = add i32 %sub525.i, 1, !dbg !554
  %conv527.i = zext i32 %add526.i to i64, !dbg !554
  store i64 %conv527.i, i64* %t1.i, align 8, !dbg !554
  br label %if.end528.i

if.end528.i:                                      ; preds = %if.else522.i, %if.then516.i
  %452 = load i32*, i32** %p.i, align 8, !dbg !541
  %incdec.ptr529.i = getelementptr inbounds i32, i32* %452, i32 1, !dbg !541
  store i32* %incdec.ptr529.i, i32** %p.i, align 8, !dbg !541
  %453 = load i64, i64* %t1.i, align 8, !dbg !541
  %454 = load i64, i64* %t0.i, align 8, !dbg !541
  %add530.i = add i64 %454, %453, !dbg !541
  store i64 %add530.i, i64* %t0.i, align 8, !dbg !541
  %455 = load i64, i64* %t1.i, align 8, !dbg !541
  %456 = load i64, i64* %x1.i, align 8, !dbg !541
  %xor531.i = xor i64 %456, %455, !dbg !541
  store i64 %xor531.i, i64* %x1.i, align 8, !dbg !541
  %457 = load i64, i64* %t0.i, align 8, !dbg !541
  %458 = load i64, i64* %x4.i, align 8, !dbg !541
  %xor532.i = xor i64 %458, %457, !dbg !541
  store i64 %xor532.i, i64* %x4.i, align 8, !dbg !541
  %459 = load i64, i64* %x2.i, align 8, !dbg !541
  %460 = load i64, i64* %t0.i, align 8, !dbg !541
  %xor533.i = xor i64 %459, %460, !dbg !541
  store i64 %xor533.i, i64* %ul.i, align 8, !dbg !541
  %461 = load i64, i64* %x3.i, align 8, !dbg !541
  %462 = load i64, i64* %t1.i, align 8, !dbg !541
  %xor534.i = xor i64 %461, %462, !dbg !541
  store i64 %xor534.i, i64* %x2.i, align 8, !dbg !541
  %463 = load i64, i64* %ul.i, align 8, !dbg !541
  store i64 %463, i64* %x3.i, align 8, !dbg !541
  %464 = load i64, i64* %x1.i, align 8, !dbg !558
  %and535.i = and i64 %464, 65535, !dbg !558
  store i64 %and535.i, i64* %x1.i, align 8, !dbg !558
  %465 = load i64, i64* %x1.i, align 8, !dbg !558
  %466 = load i32*, i32** %p.i, align 8, !dbg !558
  %467 = load i32, i32* %466, align 4, !dbg !558
  %conv536.i = zext i32 %467 to i64, !dbg !558
  %mul537.i = mul i64 %465, %conv536.i, !dbg !558
  store i64 %mul537.i, i64* %ul.i, align 8, !dbg !558
  %468 = load i64, i64* %ul.i, align 8, !dbg !559
  %cmp538.i = icmp ne i64 %468, 0, !dbg !559
  br i1 %cmp538.i, label %if.then540.i, label %if.else546.i, !dbg !558

if.then540.i:                                     ; preds = %if.end528.i
  %469 = load i64, i64* %ul.i, align 8, !dbg !561
  %and541.i = and i64 %469, 65535, !dbg !561
  %470 = load i64, i64* %ul.i, align 8, !dbg !561
  %shr542.i = lshr i64 %470, 16, !dbg !561
  %sub543.i = sub i64 %and541.i, %shr542.i, !dbg !561
  store i64 %sub543.i, i64* %x1.i, align 8, !dbg !561
  %471 = load i64, i64* %x1.i, align 8, !dbg !561
  %shr544.i = lshr i64 %471, 16, !dbg !561
  %472 = load i64, i64* %x1.i, align 8, !dbg !561
  %sub545.i = sub i64 %472, %shr544.i, !dbg !561
  store i64 %sub545.i, i64* %x1.i, align 8, !dbg !561
  br label %if.end552.i, !dbg !561

if.else546.i:                                     ; preds = %if.end528.i
  %473 = load i64, i64* %x1.i, align 8, !dbg !559
  %conv547.i = trunc i64 %473 to i32, !dbg !559
  %sub548.i = sub nsw i32 0, %conv547.i, !dbg !559
  %474 = load i32*, i32** %p.i, align 8, !dbg !559
  %475 = load i32, i32* %474, align 4, !dbg !559
  %sub549.i = sub i32 %sub548.i, %475, !dbg !559
  %add550.i = add i32 %sub549.i, 1, !dbg !559
  %conv551.i = zext i32 %add550.i to i64, !dbg !559
  store i64 %conv551.i, i64* %x1.i, align 8, !dbg !559
  br label %if.end552.i

if.end552.i:                                      ; preds = %if.else546.i, %if.then540.i
  %476 = load i32*, i32** %p.i, align 8, !dbg !558
  %incdec.ptr553.i = getelementptr inbounds i32, i32* %476, i32 1, !dbg !558
  store i32* %incdec.ptr553.i, i32** %p.i, align 8, !dbg !558
  %477 = load i32*, i32** %p.i, align 8, !dbg !558
  %incdec.ptr554.i = getelementptr inbounds i32, i32* %477, i32 1, !dbg !558
  store i32* %incdec.ptr554.i, i32** %p.i, align 8, !dbg !558
  %478 = load i32, i32* %477, align 4, !dbg !558
  %conv555.i = zext i32 %478 to i64, !dbg !558
  %479 = load i64, i64* %x2.i, align 8, !dbg !558
  %add556.i = add i64 %479, %conv555.i, !dbg !558
  store i64 %add556.i, i64* %x2.i, align 8, !dbg !558
  %480 = load i32*, i32** %p.i, align 8, !dbg !558
  %incdec.ptr557.i = getelementptr inbounds i32, i32* %480, i32 1, !dbg !558
  store i32* %incdec.ptr557.i, i32** %p.i, align 8, !dbg !558
  %481 = load i32, i32* %480, align 4, !dbg !558
  %conv558.i = zext i32 %481 to i64, !dbg !558
  %482 = load i64, i64* %x3.i, align 8, !dbg !558
  %add559.i = add i64 %482, %conv558.i, !dbg !558
  store i64 %add559.i, i64* %x3.i, align 8, !dbg !558
  %483 = load i64, i64* %x4.i, align 8, !dbg !558
  %and560.i = and i64 %483, 65535, !dbg !558
  store i64 %and560.i, i64* %x4.i, align 8, !dbg !558
  %484 = load i64, i64* %x4.i, align 8, !dbg !558
  %485 = load i32*, i32** %p.i, align 8, !dbg !558
  %486 = load i32, i32* %485, align 4, !dbg !558
  %conv561.i = zext i32 %486 to i64, !dbg !558
  %mul562.i = mul i64 %484, %conv561.i, !dbg !558
  store i64 %mul562.i, i64* %ul.i, align 8, !dbg !558
  %487 = load i64, i64* %ul.i, align 8, !dbg !563
  %cmp563.i = icmp ne i64 %487, 0, !dbg !563
  br i1 %cmp563.i, label %if.then565.i, label %if.else571.i, !dbg !558

if.then565.i:                                     ; preds = %if.end552.i
  %488 = load i64, i64* %ul.i, align 8, !dbg !565
  %and566.i = and i64 %488, 65535, !dbg !565
  %489 = load i64, i64* %ul.i, align 8, !dbg !565
  %shr567.i = lshr i64 %489, 16, !dbg !565
  %sub568.i = sub i64 %and566.i, %shr567.i, !dbg !565
  store i64 %sub568.i, i64* %x4.i, align 8, !dbg !565
  %490 = load i64, i64* %x4.i, align 8, !dbg !565
  %shr569.i = lshr i64 %490, 16, !dbg !565
  %491 = load i64, i64* %x4.i, align 8, !dbg !565
  %sub570.i = sub i64 %491, %shr569.i, !dbg !565
  store i64 %sub570.i, i64* %x4.i, align 8, !dbg !565
  br label %if.end577.i, !dbg !565

if.else571.i:                                     ; preds = %if.end552.i
  %492 = load i64, i64* %x4.i, align 8, !dbg !563
  %conv572.i = trunc i64 %492 to i32, !dbg !563
  %sub573.i = sub nsw i32 0, %conv572.i, !dbg !563
  %493 = load i32*, i32** %p.i, align 8, !dbg !563
  %494 = load i32, i32* %493, align 4, !dbg !563
  %sub574.i = sub i32 %sub573.i, %494, !dbg !563
  %add575.i = add i32 %sub574.i, 1, !dbg !563
  %conv576.i = zext i32 %add575.i to i64, !dbg !563
  store i64 %conv576.i, i64* %x4.i, align 8, !dbg !563
  br label %if.end577.i

if.end577.i:                                      ; preds = %if.else571.i, %if.then565.i
  %495 = load i32*, i32** %p.i, align 8, !dbg !558
  %incdec.ptr578.i = getelementptr inbounds i32, i32* %495, i32 1, !dbg !558
  store i32* %incdec.ptr578.i, i32** %p.i, align 8, !dbg !558
  %496 = load i64, i64* %x1.i, align 8, !dbg !558
  %497 = load i64, i64* %x3.i, align 8, !dbg !558
  %xor579.i = xor i64 %496, %497, !dbg !558
  %and580.i = and i64 %xor579.i, 65535, !dbg !558
  store i64 %and580.i, i64* %t0.i, align 8, !dbg !558
  %498 = load i64, i64* %t0.i, align 8, !dbg !558
  %499 = load i32*, i32** %p.i, align 8, !dbg !558
  %500 = load i32, i32* %499, align 4, !dbg !558
  %conv581.i = zext i32 %500 to i64, !dbg !558
  %mul582.i = mul i64 %498, %conv581.i, !dbg !558
  store i64 %mul582.i, i64* %ul.i, align 8, !dbg !558
  %501 = load i64, i64* %ul.i, align 8, !dbg !567
  %cmp583.i = icmp ne i64 %501, 0, !dbg !567
  br i1 %cmp583.i, label %if.then585.i, label %if.else591.i, !dbg !558

if.then585.i:                                     ; preds = %if.end577.i
  %502 = load i64, i64* %ul.i, align 8, !dbg !569
  %and586.i = and i64 %502, 65535, !dbg !569
  %503 = load i64, i64* %ul.i, align 8, !dbg !569
  %shr587.i = lshr i64 %503, 16, !dbg !569
  %sub588.i = sub i64 %and586.i, %shr587.i, !dbg !569
  store i64 %sub588.i, i64* %t0.i, align 8, !dbg !569
  %504 = load i64, i64* %t0.i, align 8, !dbg !569
  %shr589.i = lshr i64 %504, 16, !dbg !569
  %505 = load i64, i64* %t0.i, align 8, !dbg !569
  %sub590.i = sub i64 %505, %shr589.i, !dbg !569
  store i64 %sub590.i, i64* %t0.i, align 8, !dbg !569
  br label %if.end597.i, !dbg !569

if.else591.i:                                     ; preds = %if.end577.i
  %506 = load i64, i64* %t0.i, align 8, !dbg !567
  %conv592.i = trunc i64 %506 to i32, !dbg !567
  %sub593.i = sub nsw i32 0, %conv592.i, !dbg !567
  %507 = load i32*, i32** %p.i, align 8, !dbg !567
  %508 = load i32, i32* %507, align 4, !dbg !567
  %sub594.i = sub i32 %sub593.i, %508, !dbg !567
  %add595.i = add i32 %sub594.i, 1, !dbg !567
  %conv596.i = zext i32 %add595.i to i64, !dbg !567
  store i64 %conv596.i, i64* %t0.i, align 8, !dbg !567
  br label %if.end597.i

if.end597.i:                                      ; preds = %if.else591.i, %if.then585.i
  %509 = load i32*, i32** %p.i, align 8, !dbg !558
  %incdec.ptr598.i = getelementptr inbounds i32, i32* %509, i32 1, !dbg !558
  store i32* %incdec.ptr598.i, i32** %p.i, align 8, !dbg !558
  %510 = load i64, i64* %t0.i, align 8, !dbg !558
  %511 = load i64, i64* %x2.i, align 8, !dbg !558
  %512 = load i64, i64* %x4.i, align 8, !dbg !558
  %xor599.i = xor i64 %511, %512, !dbg !558
  %add600.i = add i64 %510, %xor599.i, !dbg !558
  %and601.i = and i64 %add600.i, 65535, !dbg !558
  store i64 %and601.i, i64* %t1.i, align 8, !dbg !558
  %513 = load i64, i64* %t1.i, align 8, !dbg !558
  %514 = load i32*, i32** %p.i, align 8, !dbg !558
  %515 = load i32, i32* %514, align 4, !dbg !558
  %conv602.i = zext i32 %515 to i64, !dbg !558
  %mul603.i = mul i64 %513, %conv602.i, !dbg !558
  store i64 %mul603.i, i64* %ul.i, align 8, !dbg !558
  %516 = load i64, i64* %ul.i, align 8, !dbg !571
  %cmp604.i = icmp ne i64 %516, 0, !dbg !571
  br i1 %cmp604.i, label %if.then606.i, label %if.else612.i, !dbg !558

if.then606.i:                                     ; preds = %if.end597.i
  %517 = load i64, i64* %ul.i, align 8, !dbg !573
  %and607.i = and i64 %517, 65535, !dbg !573
  %518 = load i64, i64* %ul.i, align 8, !dbg !573
  %shr608.i = lshr i64 %518, 16, !dbg !573
  %sub609.i = sub i64 %and607.i, %shr608.i, !dbg !573
  store i64 %sub609.i, i64* %t1.i, align 8, !dbg !573
  %519 = load i64, i64* %t1.i, align 8, !dbg !573
  %shr610.i = lshr i64 %519, 16, !dbg !573
  %520 = load i64, i64* %t1.i, align 8, !dbg !573
  %sub611.i = sub i64 %520, %shr610.i, !dbg !573
  store i64 %sub611.i, i64* %t1.i, align 8, !dbg !573
  br label %if.end618.i, !dbg !573

if.else612.i:                                     ; preds = %if.end597.i
  %521 = load i64, i64* %t1.i, align 8, !dbg !571
  %conv613.i = trunc i64 %521 to i32, !dbg !571
  %sub614.i = sub nsw i32 0, %conv613.i, !dbg !571
  %522 = load i32*, i32** %p.i, align 8, !dbg !571
  %523 = load i32, i32* %522, align 4, !dbg !571
  %sub615.i = sub i32 %sub614.i, %523, !dbg !571
  %add616.i = add i32 %sub615.i, 1, !dbg !571
  %conv617.i = zext i32 %add616.i to i64, !dbg !571
  store i64 %conv617.i, i64* %t1.i, align 8, !dbg !571
  br label %if.end618.i

if.end618.i:                                      ; preds = %if.else612.i, %if.then606.i
  %524 = load i32*, i32** %p.i, align 8, !dbg !558
  %incdec.ptr619.i = getelementptr inbounds i32, i32* %524, i32 1, !dbg !558
  store i32* %incdec.ptr619.i, i32** %p.i, align 8, !dbg !558
  %525 = load i64, i64* %t1.i, align 8, !dbg !558
  %526 = load i64, i64* %t0.i, align 8, !dbg !558
  %add620.i = add i64 %526, %525, !dbg !558
  store i64 %add620.i, i64* %t0.i, align 8, !dbg !558
  %527 = load i64, i64* %t1.i, align 8, !dbg !558
  %528 = load i64, i64* %x1.i, align 8, !dbg !558
  %xor621.i = xor i64 %528, %527, !dbg !558
  store i64 %xor621.i, i64* %x1.i, align 8, !dbg !558
  %529 = load i64, i64* %t0.i, align 8, !dbg !558
  %530 = load i64, i64* %x4.i, align 8, !dbg !558
  %xor622.i = xor i64 %530, %529, !dbg !558
  store i64 %xor622.i, i64* %x4.i, align 8, !dbg !558
  %531 = load i64, i64* %x2.i, align 8, !dbg !558
  %532 = load i64, i64* %t0.i, align 8, !dbg !558
  %xor623.i = xor i64 %531, %532, !dbg !558
  store i64 %xor623.i, i64* %ul.i, align 8, !dbg !558
  %533 = load i64, i64* %x3.i, align 8, !dbg !558
  %534 = load i64, i64* %t1.i, align 8, !dbg !558
  %xor624.i = xor i64 %533, %534, !dbg !558
  store i64 %xor624.i, i64* %x2.i, align 8, !dbg !558
  %535 = load i64, i64* %ul.i, align 8, !dbg !558
  store i64 %535, i64* %x3.i, align 8, !dbg !558
  %536 = load i64, i64* %x1.i, align 8, !dbg !575
  %and625.i = and i64 %536, 65535, !dbg !575
  store i64 %and625.i, i64* %x1.i, align 8, !dbg !575
  %537 = load i64, i64* %x1.i, align 8, !dbg !575
  %538 = load i32*, i32** %p.i, align 8, !dbg !575
  %539 = load i32, i32* %538, align 4, !dbg !575
  %conv626.i = zext i32 %539 to i64, !dbg !575
  %mul627.i = mul i64 %537, %conv626.i, !dbg !575
  store i64 %mul627.i, i64* %ul.i, align 8, !dbg !575
  %540 = load i64, i64* %ul.i, align 8, !dbg !576
  %cmp628.i = icmp ne i64 %540, 0, !dbg !576
  br i1 %cmp628.i, label %if.then630.i, label %if.else636.i, !dbg !575

if.then630.i:                                     ; preds = %if.end618.i
  %541 = load i64, i64* %ul.i, align 8, !dbg !578
  %and631.i = and i64 %541, 65535, !dbg !578
  %542 = load i64, i64* %ul.i, align 8, !dbg !578
  %shr632.i = lshr i64 %542, 16, !dbg !578
  %sub633.i = sub i64 %and631.i, %shr632.i, !dbg !578
  store i64 %sub633.i, i64* %x1.i, align 8, !dbg !578
  %543 = load i64, i64* %x1.i, align 8, !dbg !578
  %shr634.i = lshr i64 %543, 16, !dbg !578
  %544 = load i64, i64* %x1.i, align 8, !dbg !578
  %sub635.i = sub i64 %544, %shr634.i, !dbg !578
  store i64 %sub635.i, i64* %x1.i, align 8, !dbg !578
  br label %if.end642.i, !dbg !578

if.else636.i:                                     ; preds = %if.end618.i
  %545 = load i64, i64* %x1.i, align 8, !dbg !576
  %conv637.i = trunc i64 %545 to i32, !dbg !576
  %sub638.i = sub nsw i32 0, %conv637.i, !dbg !576
  %546 = load i32*, i32** %p.i, align 8, !dbg !576
  %547 = load i32, i32* %546, align 4, !dbg !576
  %sub639.i = sub i32 %sub638.i, %547, !dbg !576
  %add640.i = add i32 %sub639.i, 1, !dbg !576
  %conv641.i = zext i32 %add640.i to i64, !dbg !576
  store i64 %conv641.i, i64* %x1.i, align 8, !dbg !576
  br label %if.end642.i

if.end642.i:                                      ; preds = %if.else636.i, %if.then630.i
  %548 = load i32*, i32** %p.i, align 8, !dbg !575
  %incdec.ptr643.i = getelementptr inbounds i32, i32* %548, i32 1, !dbg !575
  store i32* %incdec.ptr643.i, i32** %p.i, align 8, !dbg !575
  %549 = load i32*, i32** %p.i, align 8, !dbg !575
  %incdec.ptr644.i = getelementptr inbounds i32, i32* %549, i32 1, !dbg !575
  store i32* %incdec.ptr644.i, i32** %p.i, align 8, !dbg !575
  %550 = load i32, i32* %549, align 4, !dbg !575
  %conv645.i = zext i32 %550 to i64, !dbg !575
  %551 = load i64, i64* %x2.i, align 8, !dbg !575
  %add646.i = add i64 %551, %conv645.i, !dbg !575
  store i64 %add646.i, i64* %x2.i, align 8, !dbg !575
  %552 = load i32*, i32** %p.i, align 8, !dbg !575
  %incdec.ptr647.i = getelementptr inbounds i32, i32* %552, i32 1, !dbg !575
  store i32* %incdec.ptr647.i, i32** %p.i, align 8, !dbg !575
  %553 = load i32, i32* %552, align 4, !dbg !575
  %conv648.i = zext i32 %553 to i64, !dbg !575
  %554 = load i64, i64* %x3.i, align 8, !dbg !575
  %add649.i = add i64 %554, %conv648.i, !dbg !575
  store i64 %add649.i, i64* %x3.i, align 8, !dbg !575
  %555 = load i64, i64* %x4.i, align 8, !dbg !575
  %and650.i = and i64 %555, 65535, !dbg !575
  store i64 %and650.i, i64* %x4.i, align 8, !dbg !575
  %556 = load i64, i64* %x4.i, align 8, !dbg !575
  %557 = load i32*, i32** %p.i, align 8, !dbg !575
  %558 = load i32, i32* %557, align 4, !dbg !575
  %conv651.i = zext i32 %558 to i64, !dbg !575
  %mul652.i = mul i64 %556, %conv651.i, !dbg !575
  store i64 %mul652.i, i64* %ul.i, align 8, !dbg !575
  %559 = load i64, i64* %ul.i, align 8, !dbg !580
  %cmp653.i = icmp ne i64 %559, 0, !dbg !580
  br i1 %cmp653.i, label %if.then655.i, label %if.else661.i, !dbg !575

if.then655.i:                                     ; preds = %if.end642.i
  %560 = load i64, i64* %ul.i, align 8, !dbg !582
  %and656.i = and i64 %560, 65535, !dbg !582
  %561 = load i64, i64* %ul.i, align 8, !dbg !582
  %shr657.i = lshr i64 %561, 16, !dbg !582
  %sub658.i = sub i64 %and656.i, %shr657.i, !dbg !582
  store i64 %sub658.i, i64* %x4.i, align 8, !dbg !582
  %562 = load i64, i64* %x4.i, align 8, !dbg !582
  %shr659.i = lshr i64 %562, 16, !dbg !582
  %563 = load i64, i64* %x4.i, align 8, !dbg !582
  %sub660.i = sub i64 %563, %shr659.i, !dbg !582
  store i64 %sub660.i, i64* %x4.i, align 8, !dbg !582
  br label %if.end667.i, !dbg !582

if.else661.i:                                     ; preds = %if.end642.i
  %564 = load i64, i64* %x4.i, align 8, !dbg !580
  %conv662.i = trunc i64 %564 to i32, !dbg !580
  %sub663.i = sub nsw i32 0, %conv662.i, !dbg !580
  %565 = load i32*, i32** %p.i, align 8, !dbg !580
  %566 = load i32, i32* %565, align 4, !dbg !580
  %sub664.i = sub i32 %sub663.i, %566, !dbg !580
  %add665.i = add i32 %sub664.i, 1, !dbg !580
  %conv666.i = zext i32 %add665.i to i64, !dbg !580
  store i64 %conv666.i, i64* %x4.i, align 8, !dbg !580
  br label %if.end667.i

if.end667.i:                                      ; preds = %if.else661.i, %if.then655.i
  %567 = load i32*, i32** %p.i, align 8, !dbg !575
  %incdec.ptr668.i = getelementptr inbounds i32, i32* %567, i32 1, !dbg !575
  store i32* %incdec.ptr668.i, i32** %p.i, align 8, !dbg !575
  %568 = load i64, i64* %x1.i, align 8, !dbg !575
  %569 = load i64, i64* %x3.i, align 8, !dbg !575
  %xor669.i = xor i64 %568, %569, !dbg !575
  %and670.i = and i64 %xor669.i, 65535, !dbg !575
  store i64 %and670.i, i64* %t0.i, align 8, !dbg !575
  %570 = load i64, i64* %t0.i, align 8, !dbg !575
  %571 = load i32*, i32** %p.i, align 8, !dbg !575
  %572 = load i32, i32* %571, align 4, !dbg !575
  %conv671.i = zext i32 %572 to i64, !dbg !575
  %mul672.i = mul i64 %570, %conv671.i, !dbg !575
  store i64 %mul672.i, i64* %ul.i, align 8, !dbg !575
  %573 = load i64, i64* %ul.i, align 8, !dbg !584
  %cmp673.i = icmp ne i64 %573, 0, !dbg !584
  br i1 %cmp673.i, label %if.then675.i, label %if.else681.i, !dbg !575

if.then675.i:                                     ; preds = %if.end667.i
  %574 = load i64, i64* %ul.i, align 8, !dbg !586
  %and676.i = and i64 %574, 65535, !dbg !586
  %575 = load i64, i64* %ul.i, align 8, !dbg !586
  %shr677.i = lshr i64 %575, 16, !dbg !586
  %sub678.i = sub i64 %and676.i, %shr677.i, !dbg !586
  store i64 %sub678.i, i64* %t0.i, align 8, !dbg !586
  %576 = load i64, i64* %t0.i, align 8, !dbg !586
  %shr679.i = lshr i64 %576, 16, !dbg !586
  %577 = load i64, i64* %t0.i, align 8, !dbg !586
  %sub680.i = sub i64 %577, %shr679.i, !dbg !586
  store i64 %sub680.i, i64* %t0.i, align 8, !dbg !586
  br label %if.end687.i, !dbg !586

if.else681.i:                                     ; preds = %if.end667.i
  %578 = load i64, i64* %t0.i, align 8, !dbg !584
  %conv682.i = trunc i64 %578 to i32, !dbg !584
  %sub683.i = sub nsw i32 0, %conv682.i, !dbg !584
  %579 = load i32*, i32** %p.i, align 8, !dbg !584
  %580 = load i32, i32* %579, align 4, !dbg !584
  %sub684.i = sub i32 %sub683.i, %580, !dbg !584
  %add685.i = add i32 %sub684.i, 1, !dbg !584
  %conv686.i = zext i32 %add685.i to i64, !dbg !584
  store i64 %conv686.i, i64* %t0.i, align 8, !dbg !584
  br label %if.end687.i

if.end687.i:                                      ; preds = %if.else681.i, %if.then675.i
  %581 = load i32*, i32** %p.i, align 8, !dbg !575
  %incdec.ptr688.i = getelementptr inbounds i32, i32* %581, i32 1, !dbg !575
  store i32* %incdec.ptr688.i, i32** %p.i, align 8, !dbg !575
  %582 = load i64, i64* %t0.i, align 8, !dbg !575
  %583 = load i64, i64* %x2.i, align 8, !dbg !575
  %584 = load i64, i64* %x4.i, align 8, !dbg !575
  %xor689.i = xor i64 %583, %584, !dbg !575
  %add690.i = add i64 %582, %xor689.i, !dbg !575
  %and691.i = and i64 %add690.i, 65535, !dbg !575
  store i64 %and691.i, i64* %t1.i, align 8, !dbg !575
  %585 = load i64, i64* %t1.i, align 8, !dbg !575
  %586 = load i32*, i32** %p.i, align 8, !dbg !575
  %587 = load i32, i32* %586, align 4, !dbg !575
  %conv692.i = zext i32 %587 to i64, !dbg !575
  %mul693.i = mul i64 %585, %conv692.i, !dbg !575
  store i64 %mul693.i, i64* %ul.i, align 8, !dbg !575
  %588 = load i64, i64* %ul.i, align 8, !dbg !588
  %cmp694.i = icmp ne i64 %588, 0, !dbg !588
  br i1 %cmp694.i, label %if.then696.i, label %if.else702.i, !dbg !575

if.then696.i:                                     ; preds = %if.end687.i
  %589 = load i64, i64* %ul.i, align 8, !dbg !590
  %and697.i = and i64 %589, 65535, !dbg !590
  %590 = load i64, i64* %ul.i, align 8, !dbg !590
  %shr698.i = lshr i64 %590, 16, !dbg !590
  %sub699.i = sub i64 %and697.i, %shr698.i, !dbg !590
  store i64 %sub699.i, i64* %t1.i, align 8, !dbg !590
  %591 = load i64, i64* %t1.i, align 8, !dbg !590
  %shr700.i = lshr i64 %591, 16, !dbg !590
  %592 = load i64, i64* %t1.i, align 8, !dbg !590
  %sub701.i = sub i64 %592, %shr700.i, !dbg !590
  store i64 %sub701.i, i64* %t1.i, align 8, !dbg !590
  br label %if.end708.i, !dbg !590

if.else702.i:                                     ; preds = %if.end687.i
  %593 = load i64, i64* %t1.i, align 8, !dbg !588
  %conv703.i = trunc i64 %593 to i32, !dbg !588
  %sub704.i = sub nsw i32 0, %conv703.i, !dbg !588
  %594 = load i32*, i32** %p.i, align 8, !dbg !588
  %595 = load i32, i32* %594, align 4, !dbg !588
  %sub705.i = sub i32 %sub704.i, %595, !dbg !588
  %add706.i = add i32 %sub705.i, 1, !dbg !588
  %conv707.i = zext i32 %add706.i to i64, !dbg !588
  store i64 %conv707.i, i64* %t1.i, align 8, !dbg !588
  br label %if.end708.i

if.end708.i:                                      ; preds = %if.else702.i, %if.then696.i
  %596 = load i32*, i32** %p.i, align 8, !dbg !575
  %incdec.ptr709.i = getelementptr inbounds i32, i32* %596, i32 1, !dbg !575
  store i32* %incdec.ptr709.i, i32** %p.i, align 8, !dbg !575
  %597 = load i64, i64* %t1.i, align 8, !dbg !575
  %598 = load i64, i64* %t0.i, align 8, !dbg !575
  %add710.i = add i64 %598, %597, !dbg !575
  store i64 %add710.i, i64* %t0.i, align 8, !dbg !575
  %599 = load i64, i64* %t1.i, align 8, !dbg !575
  %600 = load i64, i64* %x1.i, align 8, !dbg !575
  %xor711.i = xor i64 %600, %599, !dbg !575
  store i64 %xor711.i, i64* %x1.i, align 8, !dbg !575
  %601 = load i64, i64* %t0.i, align 8, !dbg !575
  %602 = load i64, i64* %x4.i, align 8, !dbg !575
  %xor712.i = xor i64 %602, %601, !dbg !575
  store i64 %xor712.i, i64* %x4.i, align 8, !dbg !575
  %603 = load i64, i64* %x2.i, align 8, !dbg !575
  %604 = load i64, i64* %t0.i, align 8, !dbg !575
  %xor713.i = xor i64 %603, %604, !dbg !575
  store i64 %xor713.i, i64* %ul.i, align 8, !dbg !575
  %605 = load i64, i64* %x3.i, align 8, !dbg !575
  %606 = load i64, i64* %t1.i, align 8, !dbg !575
  %xor714.i = xor i64 %605, %606, !dbg !575
  store i64 %xor714.i, i64* %x2.i, align 8, !dbg !575
  %607 = load i64, i64* %ul.i, align 8, !dbg !575
  store i64 %607, i64* %x3.i, align 8, !dbg !575
  %608 = load i64, i64* %x1.i, align 8, !dbg !592
  %and715.i = and i64 %608, 65535, !dbg !592
  store i64 %and715.i, i64* %x1.i, align 8, !dbg !592
  %609 = load i64, i64* %x1.i, align 8, !dbg !593
  %610 = load i32*, i32** %p.i, align 8, !dbg !593
  %611 = load i32, i32* %610, align 4, !dbg !593
  %conv716.i = zext i32 %611 to i64, !dbg !593
  %mul717.i = mul i64 %609, %conv716.i, !dbg !593
  store i64 %mul717.i, i64* %ul.i, align 8, !dbg !593
  %612 = load i64, i64* %ul.i, align 8, !dbg !594
  %cmp718.i = icmp ne i64 %612, 0, !dbg !594
  br i1 %cmp718.i, label %if.then720.i, label %if.else726.i, !dbg !593

if.then720.i:                                     ; preds = %if.end708.i
  %613 = load i64, i64* %ul.i, align 8, !dbg !596
  %and721.i = and i64 %613, 65535, !dbg !596
  %614 = load i64, i64* %ul.i, align 8, !dbg !596
  %shr722.i = lshr i64 %614, 16, !dbg !596
  %sub723.i = sub i64 %and721.i, %shr722.i, !dbg !596
  store i64 %sub723.i, i64* %x1.i, align 8, !dbg !596
  %615 = load i64, i64* %x1.i, align 8, !dbg !596
  %shr724.i = lshr i64 %615, 16, !dbg !596
  %616 = load i64, i64* %x1.i, align 8, !dbg !596
  %sub725.i = sub i64 %616, %shr724.i, !dbg !596
  store i64 %sub725.i, i64* %x1.i, align 8, !dbg !596
  br label %if.end732.i, !dbg !596

if.else726.i:                                     ; preds = %if.end708.i
  %617 = load i64, i64* %x1.i, align 8, !dbg !594
  %conv727.i = trunc i64 %617 to i32, !dbg !594
  %sub728.i = sub nsw i32 0, %conv727.i, !dbg !594
  %618 = load i32*, i32** %p.i, align 8, !dbg !594
  %619 = load i32, i32* %618, align 4, !dbg !594
  %sub729.i = sub i32 %sub728.i, %619, !dbg !594
  %add730.i = add i32 %sub729.i, 1, !dbg !594
  %conv731.i = zext i32 %add730.i to i64, !dbg !594
  store i64 %conv731.i, i64* %x1.i, align 8, !dbg !594
  br label %if.end732.i

if.end732.i:                                      ; preds = %if.else726.i, %if.then720.i
  %620 = load i32*, i32** %p.i, align 8, !dbg !598
  %incdec.ptr733.i = getelementptr inbounds i32, i32* %620, i32 1, !dbg !598
  store i32* %incdec.ptr733.i, i32** %p.i, align 8, !dbg !598
  %621 = load i64, i64* %x3.i, align 8, !dbg !599
  %622 = load i32*, i32** %p.i, align 8, !dbg !600
  %incdec.ptr734.i = getelementptr inbounds i32, i32* %622, i32 1, !dbg !600
  store i32* %incdec.ptr734.i, i32** %p.i, align 8, !dbg !600
  %623 = load i32, i32* %622, align 4, !dbg !601
  %conv735.i = zext i32 %623 to i64, !dbg !601
  %add736.i = add i64 %621, %conv735.i, !dbg !602
  store i64 %add736.i, i64* %t0.i, align 8, !dbg !603
  %624 = load i64, i64* %x2.i, align 8, !dbg !604
  %625 = load i32*, i32** %p.i, align 8, !dbg !605
  %incdec.ptr737.i = getelementptr inbounds i32, i32* %625, i32 1, !dbg !605
  store i32* %incdec.ptr737.i, i32** %p.i, align 8, !dbg !605
  %626 = load i32, i32* %625, align 4, !dbg !606
  %conv738.i = zext i32 %626 to i64, !dbg !606
  %add739.i = add i64 %624, %conv738.i, !dbg !607
  store i64 %add739.i, i64* %t1.i, align 8, !dbg !608
  %627 = load i64, i64* %x4.i, align 8, !dbg !609
  %and740.i = and i64 %627, 65535, !dbg !609
  store i64 %and740.i, i64* %x4.i, align 8, !dbg !609
  %628 = load i64, i64* %x4.i, align 8, !dbg !610
  %629 = load i32*, i32** %p.i, align 8, !dbg !610
  %630 = load i32, i32* %629, align 4, !dbg !610
  %conv741.i = zext i32 %630 to i64, !dbg !610
  %mul742.i = mul i64 %628, %conv741.i, !dbg !610
  store i64 %mul742.i, i64* %ul.i, align 8, !dbg !610
  %631 = load i64, i64* %ul.i, align 8, !dbg !611
  %cmp743.i = icmp ne i64 %631, 0, !dbg !611
  br i1 %cmp743.i, label %if.then745.i, label %if.else751.i, !dbg !610

if.then745.i:                                     ; preds = %if.end732.i
  %632 = load i64, i64* %ul.i, align 8, !dbg !613
  %and746.i = and i64 %632, 65535, !dbg !613
  %633 = load i64, i64* %ul.i, align 8, !dbg !613
  %shr747.i = lshr i64 %633, 16, !dbg !613
  %sub748.i = sub i64 %and746.i, %shr747.i, !dbg !613
  store i64 %sub748.i, i64* %x4.i, align 8, !dbg !613
  %634 = load i64, i64* %x4.i, align 8, !dbg !613
  %shr749.i = lshr i64 %634, 16, !dbg !613
  %635 = load i64, i64* %x4.i, align 8, !dbg !613
  %sub750.i = sub i64 %635, %shr749.i, !dbg !613
  store i64 %sub750.i, i64* %x4.i, align 8, !dbg !613
  br label %IDEA_encrypt.exit, !dbg !613

if.else751.i:                                     ; preds = %if.end732.i
  %636 = load i64, i64* %x4.i, align 8, !dbg !611
  %conv752.i = trunc i64 %636 to i32, !dbg !611
  %sub753.i = sub nsw i32 0, %conv752.i, !dbg !611
  %637 = load i32*, i32** %p.i, align 8, !dbg !611
  %638 = load i32, i32* %637, align 4, !dbg !611
  %sub754.i = sub i32 %sub753.i, %638, !dbg !611
  %add755.i = add i32 %sub754.i, 1, !dbg !611
  %conv756.i = zext i32 %add755.i to i64, !dbg !611
  store i64 %conv756.i, i64* %x4.i, align 8, !dbg !611
  br label %IDEA_encrypt.exit

IDEA_encrypt.exit:                                ; preds = %if.then745.i, %if.else751.i
  %639 = load i64, i64* %t0.i, align 8, !dbg !615
  %and758.i = and i64 %639, 65535, !dbg !616
  %640 = load i64, i64* %x1.i, align 8, !dbg !617
  %and759.i = and i64 %640, 65535, !dbg !618
  %shl.i = shl i64 %and759.i, 16, !dbg !619
  %or.i = or i64 %and758.i, %shl.i, !dbg !620
  %641 = load i64*, i64** %d.addr.i, align 8, !dbg !621
  store i64 %or.i, i64* %641, align 8, !dbg !622
  %642 = load i64, i64* %x4.i, align 8, !dbg !623
  %and761.i = and i64 %642, 65535, !dbg !624
  %643 = load i64, i64* %t1.i, align 8, !dbg !625
  %and762.i = and i64 %643, 65535, !dbg !626
  %shl763.i = shl i64 %and762.i, 16, !dbg !627
  %or764.i = or i64 %and761.i, %shl763.i, !dbg !628
  %644 = load i64*, i64** %d.addr.i, align 8, !dbg !629
  %arrayidx765.i = getelementptr inbounds i64, i64* %644, i64 1, !dbg !629
  store i64 %or764.i, i64* %arrayidx765.i, align 8, !dbg !630
  %arrayidx26 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 0, !dbg !631
  %645 = load i64, i64* %arrayidx26, align 16, !dbg !631
  store i64 %645, i64* %l0, align 8, !dbg !632
  %646 = load i64, i64* %l0, align 8, !dbg !633
  %shr = lshr i64 %646, 24, !dbg !633
  %and = and i64 %shr, 255, !dbg !633
  %conv27 = trunc i64 %and to i8, !dbg !633
  %647 = load i8*, i8** %out.addr, align 8, !dbg !633
  %incdec.ptr28 = getelementptr inbounds i8, i8* %647, i32 1, !dbg !633
  store i8* %incdec.ptr28, i8** %out.addr, align 8, !dbg !633
  store i8 %conv27, i8* %647, align 1, !dbg !633
  %648 = load i64, i64* %l0, align 8, !dbg !633
  %shr29 = lshr i64 %648, 16, !dbg !633
  %and30 = and i64 %shr29, 255, !dbg !633
  %conv31 = trunc i64 %and30 to i8, !dbg !633
  %649 = load i8*, i8** %out.addr, align 8, !dbg !633
  %incdec.ptr32 = getelementptr inbounds i8, i8* %649, i32 1, !dbg !633
  store i8* %incdec.ptr32, i8** %out.addr, align 8, !dbg !633
  store i8 %conv31, i8* %649, align 1, !dbg !633
  %650 = load i64, i64* %l0, align 8, !dbg !633
  %shr33 = lshr i64 %650, 8, !dbg !633
  %and34 = and i64 %shr33, 255, !dbg !633
  %conv35 = trunc i64 %and34 to i8, !dbg !633
  %651 = load i8*, i8** %out.addr, align 8, !dbg !633
  %incdec.ptr36 = getelementptr inbounds i8, i8* %651, i32 1, !dbg !633
  store i8* %incdec.ptr36, i8** %out.addr, align 8, !dbg !633
  store i8 %conv35, i8* %651, align 1, !dbg !633
  %652 = load i64, i64* %l0, align 8, !dbg !633
  %and37 = and i64 %652, 255, !dbg !633
  %conv38 = trunc i64 %and37 to i8, !dbg !633
  %653 = load i8*, i8** %out.addr, align 8, !dbg !633
  %incdec.ptr39 = getelementptr inbounds i8, i8* %653, i32 1, !dbg !633
  store i8* %incdec.ptr39, i8** %out.addr, align 8, !dbg !633
  store i8 %conv38, i8* %653, align 1, !dbg !633
  %arrayidx40 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 1, !dbg !634
  %654 = load i64, i64* %arrayidx40, align 8, !dbg !634
  store i64 %654, i64* %l1, align 8, !dbg !635
  %655 = load i64, i64* %l1, align 8, !dbg !636
  %shr41 = lshr i64 %655, 24, !dbg !636
  %and42 = and i64 %shr41, 255, !dbg !636
  %conv43 = trunc i64 %and42 to i8, !dbg !636
  %656 = load i8*, i8** %out.addr, align 8, !dbg !636
  %incdec.ptr44 = getelementptr inbounds i8, i8* %656, i32 1, !dbg !636
  store i8* %incdec.ptr44, i8** %out.addr, align 8, !dbg !636
  store i8 %conv43, i8* %656, align 1, !dbg !636
  %657 = load i64, i64* %l1, align 8, !dbg !636
  %shr45 = lshr i64 %657, 16, !dbg !636
  %and46 = and i64 %shr45, 255, !dbg !636
  %conv47 = trunc i64 %and46 to i8, !dbg !636
  %658 = load i8*, i8** %out.addr, align 8, !dbg !636
  %incdec.ptr48 = getelementptr inbounds i8, i8* %658, i32 1, !dbg !636
  store i8* %incdec.ptr48, i8** %out.addr, align 8, !dbg !636
  store i8 %conv47, i8* %658, align 1, !dbg !636
  %659 = load i64, i64* %l1, align 8, !dbg !636
  %shr49 = lshr i64 %659, 8, !dbg !636
  %and50 = and i64 %shr49, 255, !dbg !636
  %conv51 = trunc i64 %and50 to i8, !dbg !636
  %660 = load i8*, i8** %out.addr, align 8, !dbg !636
  %incdec.ptr52 = getelementptr inbounds i8, i8* %660, i32 1, !dbg !636
  store i8* %incdec.ptr52, i8** %out.addr, align 8, !dbg !636
  store i8 %conv51, i8* %660, align 1, !dbg !636
  %661 = load i64, i64* %l1, align 8, !dbg !636
  %and53 = and i64 %661, 255, !dbg !636
  %conv54 = trunc i64 %and53 to i8, !dbg !636
  %662 = load i8*, i8** %out.addr, align 8, !dbg !636
  %incdec.ptr55 = getelementptr inbounds i8, i8* %662, i32 1, !dbg !636
  store i8* %incdec.ptr55, i8** %out.addr, align 8, !dbg !636
  store i8 %conv54, i8* %662, align 1, !dbg !636
  %arrayidx56 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 1, !dbg !637
  store i64 0, i64* %arrayidx56, align 8, !dbg !638
  %arrayidx57 = getelementptr inbounds [2 x i64], [2 x i64]* %d, i64 0, i64 0, !dbg !639
  store i64 0, i64* %arrayidx57, align 16, !dbg !640
  store i64 0, i64* %l1, align 8, !dbg !641
  store i64 0, i64* %l0, align 8, !dbg !642
  ret void, !dbg !643
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @IDEA_encrypt(i64* %d, %struct.idea_key_st* %key) #0 !dbg !394 {
entry:
  %d.addr = alloca i64*, align 8
  %key.addr = alloca %struct.idea_key_st*, align 8
  %p = alloca i32*, align 8
  %x1 = alloca i64, align 8
  %x2 = alloca i64, align 8
  %x3 = alloca i64, align 8
  %x4 = alloca i64, align 8
  %t0 = alloca i64, align 8
  %t1 = alloca i64, align 8
  %ul = alloca i64, align 8
  store i64* %d, i64** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %d.addr, metadata !393, metadata !DIExpression()), !dbg !644
  store %struct.idea_key_st* %key, %struct.idea_key_st** %key.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %key.addr, metadata !400, metadata !DIExpression()), !dbg !645
  %key.addr1 = bitcast %struct.idea_key_st** %key.addr to i8*
  call void @llvm.var.annotation(i8* %key.addr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 133)
  call void @llvm.dbg.declare(metadata i32** %p, metadata !402, metadata !DIExpression()), !dbg !646
  call void @llvm.dbg.declare(metadata i64* %x1, metadata !404, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.declare(metadata i64* %x2, metadata !406, metadata !DIExpression()), !dbg !648
  call void @llvm.dbg.declare(metadata i64* %x3, metadata !408, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata i64* %x4, metadata !410, metadata !DIExpression()), !dbg !650
  call void @llvm.dbg.declare(metadata i64* %t0, metadata !412, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !414, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.declare(metadata i64* %ul, metadata !416, metadata !DIExpression()), !dbg !653
  %0 = load i64*, i64** %d.addr, align 8, !dbg !654
  %arrayidx = getelementptr inbounds i64, i64* %0, i64 0, !dbg !654
  %1 = load i64, i64* %arrayidx, align 8, !dbg !654
  store i64 %1, i64* %x2, align 8, !dbg !655
  %2 = load i64, i64* %x2, align 8, !dbg !656
  %shr = lshr i64 %2, 16, !dbg !657
  store i64 %shr, i64* %x1, align 8, !dbg !658
  %3 = load i64*, i64** %d.addr, align 8, !dbg !659
  %arrayidx2 = getelementptr inbounds i64, i64* %3, i64 1, !dbg !659
  %4 = load i64, i64* %arrayidx2, align 8, !dbg !659
  store i64 %4, i64* %x4, align 8, !dbg !660
  %5 = load i64, i64* %x4, align 8, !dbg !661
  %shr3 = lshr i64 %5, 16, !dbg !662
  store i64 %shr3, i64* %x3, align 8, !dbg !663
  %6 = load %struct.idea_key_st*, %struct.idea_key_st** %key.addr, align 8, !dbg !664
  %data = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %6, i32 0, i32 0, !dbg !665
  %arrayidx4 = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data, i64 0, i64 0, !dbg !664
  %arrayidx5 = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx4, i64 0, i64 0, !dbg !664
  store i32* %arrayidx5, i32** %p, align 8, !dbg !666
  %7 = load i64, i64* %x1, align 8, !dbg !667
  %and = and i64 %7, 65535, !dbg !667
  store i64 %and, i64* %x1, align 8, !dbg !667
  %8 = load i64, i64* %x1, align 8, !dbg !667
  %9 = load i32*, i32** %p, align 8, !dbg !667
  %10 = load i32, i32* %9, align 4, !dbg !667
  %conv = zext i32 %10 to i64, !dbg !667
  %mul = mul i64 %8, %conv, !dbg !667
  store i64 %mul, i64* %ul, align 8, !dbg !667
  %11 = load i64, i64* %ul, align 8, !dbg !668
  %cmp = icmp ne i64 %11, 0, !dbg !668
  br i1 %cmp, label %if.then, label %if.else, !dbg !667

if.then:                                          ; preds = %entry
  %12 = load i64, i64* %ul, align 8, !dbg !669
  %and7 = and i64 %12, 65535, !dbg !669
  %13 = load i64, i64* %ul, align 8, !dbg !669
  %shr8 = lshr i64 %13, 16, !dbg !669
  %sub = sub i64 %and7, %shr8, !dbg !669
  store i64 %sub, i64* %x1, align 8, !dbg !669
  %14 = load i64, i64* %x1, align 8, !dbg !669
  %shr9 = lshr i64 %14, 16, !dbg !669
  %15 = load i64, i64* %x1, align 8, !dbg !669
  %sub10 = sub i64 %15, %shr9, !dbg !669
  store i64 %sub10, i64* %x1, align 8, !dbg !669
  br label %if.end, !dbg !669

if.else:                                          ; preds = %entry
  %16 = load i64, i64* %x1, align 8, !dbg !668
  %conv11 = trunc i64 %16 to i32, !dbg !668
  %sub12 = sub nsw i32 0, %conv11, !dbg !668
  %17 = load i32*, i32** %p, align 8, !dbg !668
  %18 = load i32, i32* %17, align 4, !dbg !668
  %sub13 = sub i32 %sub12, %18, !dbg !668
  %add = add i32 %sub13, 1, !dbg !668
  %conv14 = zext i32 %add to i64, !dbg !668
  store i64 %conv14, i64* %x1, align 8, !dbg !668
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %19 = load i32*, i32** %p, align 8, !dbg !667
  %incdec.ptr = getelementptr inbounds i32, i32* %19, i32 1, !dbg !667
  store i32* %incdec.ptr, i32** %p, align 8, !dbg !667
  %20 = load i32*, i32** %p, align 8, !dbg !667
  %incdec.ptr15 = getelementptr inbounds i32, i32* %20, i32 1, !dbg !667
  store i32* %incdec.ptr15, i32** %p, align 8, !dbg !667
  %21 = load i32, i32* %20, align 4, !dbg !667
  %conv16 = zext i32 %21 to i64, !dbg !667
  %22 = load i64, i64* %x2, align 8, !dbg !667
  %add17 = add i64 %22, %conv16, !dbg !667
  store i64 %add17, i64* %x2, align 8, !dbg !667
  %23 = load i32*, i32** %p, align 8, !dbg !667
  %incdec.ptr18 = getelementptr inbounds i32, i32* %23, i32 1, !dbg !667
  store i32* %incdec.ptr18, i32** %p, align 8, !dbg !667
  %24 = load i32, i32* %23, align 4, !dbg !667
  %conv19 = zext i32 %24 to i64, !dbg !667
  %25 = load i64, i64* %x3, align 8, !dbg !667
  %add20 = add i64 %25, %conv19, !dbg !667
  store i64 %add20, i64* %x3, align 8, !dbg !667
  %26 = load i64, i64* %x4, align 8, !dbg !667
  %and21 = and i64 %26, 65535, !dbg !667
  store i64 %and21, i64* %x4, align 8, !dbg !667
  %27 = load i64, i64* %x4, align 8, !dbg !667
  %28 = load i32*, i32** %p, align 8, !dbg !667
  %29 = load i32, i32* %28, align 4, !dbg !667
  %conv22 = zext i32 %29 to i64, !dbg !667
  %mul23 = mul i64 %27, %conv22, !dbg !667
  store i64 %mul23, i64* %ul, align 8, !dbg !667
  %30 = load i64, i64* %ul, align 8, !dbg !670
  %cmp24 = icmp ne i64 %30, 0, !dbg !670
  br i1 %cmp24, label %if.then26, label %if.else32, !dbg !667

if.then26:                                        ; preds = %if.end
  %31 = load i64, i64* %ul, align 8, !dbg !671
  %and27 = and i64 %31, 65535, !dbg !671
  %32 = load i64, i64* %ul, align 8, !dbg !671
  %shr28 = lshr i64 %32, 16, !dbg !671
  %sub29 = sub i64 %and27, %shr28, !dbg !671
  store i64 %sub29, i64* %x4, align 8, !dbg !671
  %33 = load i64, i64* %x4, align 8, !dbg !671
  %shr30 = lshr i64 %33, 16, !dbg !671
  %34 = load i64, i64* %x4, align 8, !dbg !671
  %sub31 = sub i64 %34, %shr30, !dbg !671
  store i64 %sub31, i64* %x4, align 8, !dbg !671
  br label %if.end38, !dbg !671

if.else32:                                        ; preds = %if.end
  %35 = load i64, i64* %x4, align 8, !dbg !670
  %conv33 = trunc i64 %35 to i32, !dbg !670
  %sub34 = sub nsw i32 0, %conv33, !dbg !670
  %36 = load i32*, i32** %p, align 8, !dbg !670
  %37 = load i32, i32* %36, align 4, !dbg !670
  %sub35 = sub i32 %sub34, %37, !dbg !670
  %add36 = add i32 %sub35, 1, !dbg !670
  %conv37 = zext i32 %add36 to i64, !dbg !670
  store i64 %conv37, i64* %x4, align 8, !dbg !670
  br label %if.end38

if.end38:                                         ; preds = %if.else32, %if.then26
  %38 = load i32*, i32** %p, align 8, !dbg !667
  %incdec.ptr39 = getelementptr inbounds i32, i32* %38, i32 1, !dbg !667
  store i32* %incdec.ptr39, i32** %p, align 8, !dbg !667
  %39 = load i64, i64* %x1, align 8, !dbg !667
  %40 = load i64, i64* %x3, align 8, !dbg !667
  %xor = xor i64 %39, %40, !dbg !667
  %and40 = and i64 %xor, 65535, !dbg !667
  store i64 %and40, i64* %t0, align 8, !dbg !667
  %41 = load i64, i64* %t0, align 8, !dbg !667
  %42 = load i32*, i32** %p, align 8, !dbg !667
  %43 = load i32, i32* %42, align 4, !dbg !667
  %conv41 = zext i32 %43 to i64, !dbg !667
  %mul42 = mul i64 %41, %conv41, !dbg !667
  store i64 %mul42, i64* %ul, align 8, !dbg !667
  %44 = load i64, i64* %ul, align 8, !dbg !672
  %cmp43 = icmp ne i64 %44, 0, !dbg !672
  br i1 %cmp43, label %if.then45, label %if.else51, !dbg !667

if.then45:                                        ; preds = %if.end38
  %45 = load i64, i64* %ul, align 8, !dbg !673
  %and46 = and i64 %45, 65535, !dbg !673
  %46 = load i64, i64* %ul, align 8, !dbg !673
  %shr47 = lshr i64 %46, 16, !dbg !673
  %sub48 = sub i64 %and46, %shr47, !dbg !673
  store i64 %sub48, i64* %t0, align 8, !dbg !673
  %47 = load i64, i64* %t0, align 8, !dbg !673
  %shr49 = lshr i64 %47, 16, !dbg !673
  %48 = load i64, i64* %t0, align 8, !dbg !673
  %sub50 = sub i64 %48, %shr49, !dbg !673
  store i64 %sub50, i64* %t0, align 8, !dbg !673
  br label %if.end57, !dbg !673

if.else51:                                        ; preds = %if.end38
  %49 = load i64, i64* %t0, align 8, !dbg !672
  %conv52 = trunc i64 %49 to i32, !dbg !672
  %sub53 = sub nsw i32 0, %conv52, !dbg !672
  %50 = load i32*, i32** %p, align 8, !dbg !672
  %51 = load i32, i32* %50, align 4, !dbg !672
  %sub54 = sub i32 %sub53, %51, !dbg !672
  %add55 = add i32 %sub54, 1, !dbg !672
  %conv56 = zext i32 %add55 to i64, !dbg !672
  store i64 %conv56, i64* %t0, align 8, !dbg !672
  br label %if.end57

if.end57:                                         ; preds = %if.else51, %if.then45
  %52 = load i32*, i32** %p, align 8, !dbg !667
  %incdec.ptr58 = getelementptr inbounds i32, i32* %52, i32 1, !dbg !667
  store i32* %incdec.ptr58, i32** %p, align 8, !dbg !667
  %53 = load i64, i64* %t0, align 8, !dbg !667
  %54 = load i64, i64* %x2, align 8, !dbg !667
  %55 = load i64, i64* %x4, align 8, !dbg !667
  %xor59 = xor i64 %54, %55, !dbg !667
  %add60 = add i64 %53, %xor59, !dbg !667
  %and61 = and i64 %add60, 65535, !dbg !667
  store i64 %and61, i64* %t1, align 8, !dbg !667
  %56 = load i64, i64* %t1, align 8, !dbg !667
  %57 = load i32*, i32** %p, align 8, !dbg !667
  %58 = load i32, i32* %57, align 4, !dbg !667
  %conv62 = zext i32 %58 to i64, !dbg !667
  %mul63 = mul i64 %56, %conv62, !dbg !667
  store i64 %mul63, i64* %ul, align 8, !dbg !667
  %59 = load i64, i64* %ul, align 8, !dbg !674
  %cmp64 = icmp ne i64 %59, 0, !dbg !674
  br i1 %cmp64, label %if.then66, label %if.else72, !dbg !667

if.then66:                                        ; preds = %if.end57
  %60 = load i64, i64* %ul, align 8, !dbg !675
  %and67 = and i64 %60, 65535, !dbg !675
  %61 = load i64, i64* %ul, align 8, !dbg !675
  %shr68 = lshr i64 %61, 16, !dbg !675
  %sub69 = sub i64 %and67, %shr68, !dbg !675
  store i64 %sub69, i64* %t1, align 8, !dbg !675
  %62 = load i64, i64* %t1, align 8, !dbg !675
  %shr70 = lshr i64 %62, 16, !dbg !675
  %63 = load i64, i64* %t1, align 8, !dbg !675
  %sub71 = sub i64 %63, %shr70, !dbg !675
  store i64 %sub71, i64* %t1, align 8, !dbg !675
  br label %if.end78, !dbg !675

if.else72:                                        ; preds = %if.end57
  %64 = load i64, i64* %t1, align 8, !dbg !674
  %conv73 = trunc i64 %64 to i32, !dbg !674
  %sub74 = sub nsw i32 0, %conv73, !dbg !674
  %65 = load i32*, i32** %p, align 8, !dbg !674
  %66 = load i32, i32* %65, align 4, !dbg !674
  %sub75 = sub i32 %sub74, %66, !dbg !674
  %add76 = add i32 %sub75, 1, !dbg !674
  %conv77 = zext i32 %add76 to i64, !dbg !674
  store i64 %conv77, i64* %t1, align 8, !dbg !674
  br label %if.end78

if.end78:                                         ; preds = %if.else72, %if.then66
  %67 = load i32*, i32** %p, align 8, !dbg !667
  %incdec.ptr79 = getelementptr inbounds i32, i32* %67, i32 1, !dbg !667
  store i32* %incdec.ptr79, i32** %p, align 8, !dbg !667
  %68 = load i64, i64* %t1, align 8, !dbg !667
  %69 = load i64, i64* %t0, align 8, !dbg !667
  %add80 = add i64 %69, %68, !dbg !667
  store i64 %add80, i64* %t0, align 8, !dbg !667
  %70 = load i64, i64* %t1, align 8, !dbg !667
  %71 = load i64, i64* %x1, align 8, !dbg !667
  %xor81 = xor i64 %71, %70, !dbg !667
  store i64 %xor81, i64* %x1, align 8, !dbg !667
  %72 = load i64, i64* %t0, align 8, !dbg !667
  %73 = load i64, i64* %x4, align 8, !dbg !667
  %xor82 = xor i64 %73, %72, !dbg !667
  store i64 %xor82, i64* %x4, align 8, !dbg !667
  %74 = load i64, i64* %x2, align 8, !dbg !667
  %75 = load i64, i64* %t0, align 8, !dbg !667
  %xor83 = xor i64 %74, %75, !dbg !667
  store i64 %xor83, i64* %ul, align 8, !dbg !667
  %76 = load i64, i64* %x3, align 8, !dbg !667
  %77 = load i64, i64* %t1, align 8, !dbg !667
  %xor84 = xor i64 %76, %77, !dbg !667
  store i64 %xor84, i64* %x2, align 8, !dbg !667
  %78 = load i64, i64* %ul, align 8, !dbg !667
  store i64 %78, i64* %x3, align 8, !dbg !667
  %79 = load i64, i64* %x1, align 8, !dbg !676
  %and85 = and i64 %79, 65535, !dbg !676
  store i64 %and85, i64* %x1, align 8, !dbg !676
  %80 = load i64, i64* %x1, align 8, !dbg !676
  %81 = load i32*, i32** %p, align 8, !dbg !676
  %82 = load i32, i32* %81, align 4, !dbg !676
  %conv86 = zext i32 %82 to i64, !dbg !676
  %mul87 = mul i64 %80, %conv86, !dbg !676
  store i64 %mul87, i64* %ul, align 8, !dbg !676
  %83 = load i64, i64* %ul, align 8, !dbg !677
  %cmp88 = icmp ne i64 %83, 0, !dbg !677
  br i1 %cmp88, label %if.then90, label %if.else96, !dbg !676

if.then90:                                        ; preds = %if.end78
  %84 = load i64, i64* %ul, align 8, !dbg !678
  %and91 = and i64 %84, 65535, !dbg !678
  %85 = load i64, i64* %ul, align 8, !dbg !678
  %shr92 = lshr i64 %85, 16, !dbg !678
  %sub93 = sub i64 %and91, %shr92, !dbg !678
  store i64 %sub93, i64* %x1, align 8, !dbg !678
  %86 = load i64, i64* %x1, align 8, !dbg !678
  %shr94 = lshr i64 %86, 16, !dbg !678
  %87 = load i64, i64* %x1, align 8, !dbg !678
  %sub95 = sub i64 %87, %shr94, !dbg !678
  store i64 %sub95, i64* %x1, align 8, !dbg !678
  br label %if.end102, !dbg !678

if.else96:                                        ; preds = %if.end78
  %88 = load i64, i64* %x1, align 8, !dbg !677
  %conv97 = trunc i64 %88 to i32, !dbg !677
  %sub98 = sub nsw i32 0, %conv97, !dbg !677
  %89 = load i32*, i32** %p, align 8, !dbg !677
  %90 = load i32, i32* %89, align 4, !dbg !677
  %sub99 = sub i32 %sub98, %90, !dbg !677
  %add100 = add i32 %sub99, 1, !dbg !677
  %conv101 = zext i32 %add100 to i64, !dbg !677
  store i64 %conv101, i64* %x1, align 8, !dbg !677
  br label %if.end102

if.end102:                                        ; preds = %if.else96, %if.then90
  %91 = load i32*, i32** %p, align 8, !dbg !676
  %incdec.ptr103 = getelementptr inbounds i32, i32* %91, i32 1, !dbg !676
  store i32* %incdec.ptr103, i32** %p, align 8, !dbg !676
  %92 = load i32*, i32** %p, align 8, !dbg !676
  %incdec.ptr104 = getelementptr inbounds i32, i32* %92, i32 1, !dbg !676
  store i32* %incdec.ptr104, i32** %p, align 8, !dbg !676
  %93 = load i32, i32* %92, align 4, !dbg !676
  %conv105 = zext i32 %93 to i64, !dbg !676
  %94 = load i64, i64* %x2, align 8, !dbg !676
  %add106 = add i64 %94, %conv105, !dbg !676
  store i64 %add106, i64* %x2, align 8, !dbg !676
  %95 = load i32*, i32** %p, align 8, !dbg !676
  %incdec.ptr107 = getelementptr inbounds i32, i32* %95, i32 1, !dbg !676
  store i32* %incdec.ptr107, i32** %p, align 8, !dbg !676
  %96 = load i32, i32* %95, align 4, !dbg !676
  %conv108 = zext i32 %96 to i64, !dbg !676
  %97 = load i64, i64* %x3, align 8, !dbg !676
  %add109 = add i64 %97, %conv108, !dbg !676
  store i64 %add109, i64* %x3, align 8, !dbg !676
  %98 = load i64, i64* %x4, align 8, !dbg !676
  %and110 = and i64 %98, 65535, !dbg !676
  store i64 %and110, i64* %x4, align 8, !dbg !676
  %99 = load i64, i64* %x4, align 8, !dbg !676
  %100 = load i32*, i32** %p, align 8, !dbg !676
  %101 = load i32, i32* %100, align 4, !dbg !676
  %conv111 = zext i32 %101 to i64, !dbg !676
  %mul112 = mul i64 %99, %conv111, !dbg !676
  store i64 %mul112, i64* %ul, align 8, !dbg !676
  %102 = load i64, i64* %ul, align 8, !dbg !679
  %cmp113 = icmp ne i64 %102, 0, !dbg !679
  br i1 %cmp113, label %if.then115, label %if.else121, !dbg !676

if.then115:                                       ; preds = %if.end102
  %103 = load i64, i64* %ul, align 8, !dbg !680
  %and116 = and i64 %103, 65535, !dbg !680
  %104 = load i64, i64* %ul, align 8, !dbg !680
  %shr117 = lshr i64 %104, 16, !dbg !680
  %sub118 = sub i64 %and116, %shr117, !dbg !680
  store i64 %sub118, i64* %x4, align 8, !dbg !680
  %105 = load i64, i64* %x4, align 8, !dbg !680
  %shr119 = lshr i64 %105, 16, !dbg !680
  %106 = load i64, i64* %x4, align 8, !dbg !680
  %sub120 = sub i64 %106, %shr119, !dbg !680
  store i64 %sub120, i64* %x4, align 8, !dbg !680
  br label %if.end127, !dbg !680

if.else121:                                       ; preds = %if.end102
  %107 = load i64, i64* %x4, align 8, !dbg !679
  %conv122 = trunc i64 %107 to i32, !dbg !679
  %sub123 = sub nsw i32 0, %conv122, !dbg !679
  %108 = load i32*, i32** %p, align 8, !dbg !679
  %109 = load i32, i32* %108, align 4, !dbg !679
  %sub124 = sub i32 %sub123, %109, !dbg !679
  %add125 = add i32 %sub124, 1, !dbg !679
  %conv126 = zext i32 %add125 to i64, !dbg !679
  store i64 %conv126, i64* %x4, align 8, !dbg !679
  br label %if.end127

if.end127:                                        ; preds = %if.else121, %if.then115
  %110 = load i32*, i32** %p, align 8, !dbg !676
  %incdec.ptr128 = getelementptr inbounds i32, i32* %110, i32 1, !dbg !676
  store i32* %incdec.ptr128, i32** %p, align 8, !dbg !676
  %111 = load i64, i64* %x1, align 8, !dbg !676
  %112 = load i64, i64* %x3, align 8, !dbg !676
  %xor129 = xor i64 %111, %112, !dbg !676
  %and130 = and i64 %xor129, 65535, !dbg !676
  store i64 %and130, i64* %t0, align 8, !dbg !676
  %113 = load i64, i64* %t0, align 8, !dbg !676
  %114 = load i32*, i32** %p, align 8, !dbg !676
  %115 = load i32, i32* %114, align 4, !dbg !676
  %conv131 = zext i32 %115 to i64, !dbg !676
  %mul132 = mul i64 %113, %conv131, !dbg !676
  store i64 %mul132, i64* %ul, align 8, !dbg !676
  %116 = load i64, i64* %ul, align 8, !dbg !681
  %cmp133 = icmp ne i64 %116, 0, !dbg !681
  br i1 %cmp133, label %if.then135, label %if.else141, !dbg !676

if.then135:                                       ; preds = %if.end127
  %117 = load i64, i64* %ul, align 8, !dbg !682
  %and136 = and i64 %117, 65535, !dbg !682
  %118 = load i64, i64* %ul, align 8, !dbg !682
  %shr137 = lshr i64 %118, 16, !dbg !682
  %sub138 = sub i64 %and136, %shr137, !dbg !682
  store i64 %sub138, i64* %t0, align 8, !dbg !682
  %119 = load i64, i64* %t0, align 8, !dbg !682
  %shr139 = lshr i64 %119, 16, !dbg !682
  %120 = load i64, i64* %t0, align 8, !dbg !682
  %sub140 = sub i64 %120, %shr139, !dbg !682
  store i64 %sub140, i64* %t0, align 8, !dbg !682
  br label %if.end147, !dbg !682

if.else141:                                       ; preds = %if.end127
  %121 = load i64, i64* %t0, align 8, !dbg !681
  %conv142 = trunc i64 %121 to i32, !dbg !681
  %sub143 = sub nsw i32 0, %conv142, !dbg !681
  %122 = load i32*, i32** %p, align 8, !dbg !681
  %123 = load i32, i32* %122, align 4, !dbg !681
  %sub144 = sub i32 %sub143, %123, !dbg !681
  %add145 = add i32 %sub144, 1, !dbg !681
  %conv146 = zext i32 %add145 to i64, !dbg !681
  store i64 %conv146, i64* %t0, align 8, !dbg !681
  br label %if.end147

if.end147:                                        ; preds = %if.else141, %if.then135
  %124 = load i32*, i32** %p, align 8, !dbg !676
  %incdec.ptr148 = getelementptr inbounds i32, i32* %124, i32 1, !dbg !676
  store i32* %incdec.ptr148, i32** %p, align 8, !dbg !676
  %125 = load i64, i64* %t0, align 8, !dbg !676
  %126 = load i64, i64* %x2, align 8, !dbg !676
  %127 = load i64, i64* %x4, align 8, !dbg !676
  %xor149 = xor i64 %126, %127, !dbg !676
  %add150 = add i64 %125, %xor149, !dbg !676
  %and151 = and i64 %add150, 65535, !dbg !676
  store i64 %and151, i64* %t1, align 8, !dbg !676
  %128 = load i64, i64* %t1, align 8, !dbg !676
  %129 = load i32*, i32** %p, align 8, !dbg !676
  %130 = load i32, i32* %129, align 4, !dbg !676
  %conv152 = zext i32 %130 to i64, !dbg !676
  %mul153 = mul i64 %128, %conv152, !dbg !676
  store i64 %mul153, i64* %ul, align 8, !dbg !676
  %131 = load i64, i64* %ul, align 8, !dbg !683
  %cmp154 = icmp ne i64 %131, 0, !dbg !683
  br i1 %cmp154, label %if.then156, label %if.else162, !dbg !676

if.then156:                                       ; preds = %if.end147
  %132 = load i64, i64* %ul, align 8, !dbg !684
  %and157 = and i64 %132, 65535, !dbg !684
  %133 = load i64, i64* %ul, align 8, !dbg !684
  %shr158 = lshr i64 %133, 16, !dbg !684
  %sub159 = sub i64 %and157, %shr158, !dbg !684
  store i64 %sub159, i64* %t1, align 8, !dbg !684
  %134 = load i64, i64* %t1, align 8, !dbg !684
  %shr160 = lshr i64 %134, 16, !dbg !684
  %135 = load i64, i64* %t1, align 8, !dbg !684
  %sub161 = sub i64 %135, %shr160, !dbg !684
  store i64 %sub161, i64* %t1, align 8, !dbg !684
  br label %if.end168, !dbg !684

if.else162:                                       ; preds = %if.end147
  %136 = load i64, i64* %t1, align 8, !dbg !683
  %conv163 = trunc i64 %136 to i32, !dbg !683
  %sub164 = sub nsw i32 0, %conv163, !dbg !683
  %137 = load i32*, i32** %p, align 8, !dbg !683
  %138 = load i32, i32* %137, align 4, !dbg !683
  %sub165 = sub i32 %sub164, %138, !dbg !683
  %add166 = add i32 %sub165, 1, !dbg !683
  %conv167 = zext i32 %add166 to i64, !dbg !683
  store i64 %conv167, i64* %t1, align 8, !dbg !683
  br label %if.end168

if.end168:                                        ; preds = %if.else162, %if.then156
  %139 = load i32*, i32** %p, align 8, !dbg !676
  %incdec.ptr169 = getelementptr inbounds i32, i32* %139, i32 1, !dbg !676
  store i32* %incdec.ptr169, i32** %p, align 8, !dbg !676
  %140 = load i64, i64* %t1, align 8, !dbg !676
  %141 = load i64, i64* %t0, align 8, !dbg !676
  %add170 = add i64 %141, %140, !dbg !676
  store i64 %add170, i64* %t0, align 8, !dbg !676
  %142 = load i64, i64* %t1, align 8, !dbg !676
  %143 = load i64, i64* %x1, align 8, !dbg !676
  %xor171 = xor i64 %143, %142, !dbg !676
  store i64 %xor171, i64* %x1, align 8, !dbg !676
  %144 = load i64, i64* %t0, align 8, !dbg !676
  %145 = load i64, i64* %x4, align 8, !dbg !676
  %xor172 = xor i64 %145, %144, !dbg !676
  store i64 %xor172, i64* %x4, align 8, !dbg !676
  %146 = load i64, i64* %x2, align 8, !dbg !676
  %147 = load i64, i64* %t0, align 8, !dbg !676
  %xor173 = xor i64 %146, %147, !dbg !676
  store i64 %xor173, i64* %ul, align 8, !dbg !676
  %148 = load i64, i64* %x3, align 8, !dbg !676
  %149 = load i64, i64* %t1, align 8, !dbg !676
  %xor174 = xor i64 %148, %149, !dbg !676
  store i64 %xor174, i64* %x2, align 8, !dbg !676
  %150 = load i64, i64* %ul, align 8, !dbg !676
  store i64 %150, i64* %x3, align 8, !dbg !676
  %151 = load i64, i64* %x1, align 8, !dbg !685
  %and175 = and i64 %151, 65535, !dbg !685
  store i64 %and175, i64* %x1, align 8, !dbg !685
  %152 = load i64, i64* %x1, align 8, !dbg !685
  %153 = load i32*, i32** %p, align 8, !dbg !685
  %154 = load i32, i32* %153, align 4, !dbg !685
  %conv176 = zext i32 %154 to i64, !dbg !685
  %mul177 = mul i64 %152, %conv176, !dbg !685
  store i64 %mul177, i64* %ul, align 8, !dbg !685
  %155 = load i64, i64* %ul, align 8, !dbg !686
  %cmp178 = icmp ne i64 %155, 0, !dbg !686
  br i1 %cmp178, label %if.then180, label %if.else186, !dbg !685

if.then180:                                       ; preds = %if.end168
  %156 = load i64, i64* %ul, align 8, !dbg !687
  %and181 = and i64 %156, 65535, !dbg !687
  %157 = load i64, i64* %ul, align 8, !dbg !687
  %shr182 = lshr i64 %157, 16, !dbg !687
  %sub183 = sub i64 %and181, %shr182, !dbg !687
  store i64 %sub183, i64* %x1, align 8, !dbg !687
  %158 = load i64, i64* %x1, align 8, !dbg !687
  %shr184 = lshr i64 %158, 16, !dbg !687
  %159 = load i64, i64* %x1, align 8, !dbg !687
  %sub185 = sub i64 %159, %shr184, !dbg !687
  store i64 %sub185, i64* %x1, align 8, !dbg !687
  br label %if.end192, !dbg !687

if.else186:                                       ; preds = %if.end168
  %160 = load i64, i64* %x1, align 8, !dbg !686
  %conv187 = trunc i64 %160 to i32, !dbg !686
  %sub188 = sub nsw i32 0, %conv187, !dbg !686
  %161 = load i32*, i32** %p, align 8, !dbg !686
  %162 = load i32, i32* %161, align 4, !dbg !686
  %sub189 = sub i32 %sub188, %162, !dbg !686
  %add190 = add i32 %sub189, 1, !dbg !686
  %conv191 = zext i32 %add190 to i64, !dbg !686
  store i64 %conv191, i64* %x1, align 8, !dbg !686
  br label %if.end192

if.end192:                                        ; preds = %if.else186, %if.then180
  %163 = load i32*, i32** %p, align 8, !dbg !685
  %incdec.ptr193 = getelementptr inbounds i32, i32* %163, i32 1, !dbg !685
  store i32* %incdec.ptr193, i32** %p, align 8, !dbg !685
  %164 = load i32*, i32** %p, align 8, !dbg !685
  %incdec.ptr194 = getelementptr inbounds i32, i32* %164, i32 1, !dbg !685
  store i32* %incdec.ptr194, i32** %p, align 8, !dbg !685
  %165 = load i32, i32* %164, align 4, !dbg !685
  %conv195 = zext i32 %165 to i64, !dbg !685
  %166 = load i64, i64* %x2, align 8, !dbg !685
  %add196 = add i64 %166, %conv195, !dbg !685
  store i64 %add196, i64* %x2, align 8, !dbg !685
  %167 = load i32*, i32** %p, align 8, !dbg !685
  %incdec.ptr197 = getelementptr inbounds i32, i32* %167, i32 1, !dbg !685
  store i32* %incdec.ptr197, i32** %p, align 8, !dbg !685
  %168 = load i32, i32* %167, align 4, !dbg !685
  %conv198 = zext i32 %168 to i64, !dbg !685
  %169 = load i64, i64* %x3, align 8, !dbg !685
  %add199 = add i64 %169, %conv198, !dbg !685
  store i64 %add199, i64* %x3, align 8, !dbg !685
  %170 = load i64, i64* %x4, align 8, !dbg !685
  %and200 = and i64 %170, 65535, !dbg !685
  store i64 %and200, i64* %x4, align 8, !dbg !685
  %171 = load i64, i64* %x4, align 8, !dbg !685
  %172 = load i32*, i32** %p, align 8, !dbg !685
  %173 = load i32, i32* %172, align 4, !dbg !685
  %conv201 = zext i32 %173 to i64, !dbg !685
  %mul202 = mul i64 %171, %conv201, !dbg !685
  store i64 %mul202, i64* %ul, align 8, !dbg !685
  %174 = load i64, i64* %ul, align 8, !dbg !688
  %cmp203 = icmp ne i64 %174, 0, !dbg !688
  br i1 %cmp203, label %if.then205, label %if.else211, !dbg !685

if.then205:                                       ; preds = %if.end192
  %175 = load i64, i64* %ul, align 8, !dbg !689
  %and206 = and i64 %175, 65535, !dbg !689
  %176 = load i64, i64* %ul, align 8, !dbg !689
  %shr207 = lshr i64 %176, 16, !dbg !689
  %sub208 = sub i64 %and206, %shr207, !dbg !689
  store i64 %sub208, i64* %x4, align 8, !dbg !689
  %177 = load i64, i64* %x4, align 8, !dbg !689
  %shr209 = lshr i64 %177, 16, !dbg !689
  %178 = load i64, i64* %x4, align 8, !dbg !689
  %sub210 = sub i64 %178, %shr209, !dbg !689
  store i64 %sub210, i64* %x4, align 8, !dbg !689
  br label %if.end217, !dbg !689

if.else211:                                       ; preds = %if.end192
  %179 = load i64, i64* %x4, align 8, !dbg !688
  %conv212 = trunc i64 %179 to i32, !dbg !688
  %sub213 = sub nsw i32 0, %conv212, !dbg !688
  %180 = load i32*, i32** %p, align 8, !dbg !688
  %181 = load i32, i32* %180, align 4, !dbg !688
  %sub214 = sub i32 %sub213, %181, !dbg !688
  %add215 = add i32 %sub214, 1, !dbg !688
  %conv216 = zext i32 %add215 to i64, !dbg !688
  store i64 %conv216, i64* %x4, align 8, !dbg !688
  br label %if.end217

if.end217:                                        ; preds = %if.else211, %if.then205
  %182 = load i32*, i32** %p, align 8, !dbg !685
  %incdec.ptr218 = getelementptr inbounds i32, i32* %182, i32 1, !dbg !685
  store i32* %incdec.ptr218, i32** %p, align 8, !dbg !685
  %183 = load i64, i64* %x1, align 8, !dbg !685
  %184 = load i64, i64* %x3, align 8, !dbg !685
  %xor219 = xor i64 %183, %184, !dbg !685
  %and220 = and i64 %xor219, 65535, !dbg !685
  store i64 %and220, i64* %t0, align 8, !dbg !685
  %185 = load i64, i64* %t0, align 8, !dbg !685
  %186 = load i32*, i32** %p, align 8, !dbg !685
  %187 = load i32, i32* %186, align 4, !dbg !685
  %conv221 = zext i32 %187 to i64, !dbg !685
  %mul222 = mul i64 %185, %conv221, !dbg !685
  store i64 %mul222, i64* %ul, align 8, !dbg !685
  %188 = load i64, i64* %ul, align 8, !dbg !690
  %cmp223 = icmp ne i64 %188, 0, !dbg !690
  br i1 %cmp223, label %if.then225, label %if.else231, !dbg !685

if.then225:                                       ; preds = %if.end217
  %189 = load i64, i64* %ul, align 8, !dbg !691
  %and226 = and i64 %189, 65535, !dbg !691
  %190 = load i64, i64* %ul, align 8, !dbg !691
  %shr227 = lshr i64 %190, 16, !dbg !691
  %sub228 = sub i64 %and226, %shr227, !dbg !691
  store i64 %sub228, i64* %t0, align 8, !dbg !691
  %191 = load i64, i64* %t0, align 8, !dbg !691
  %shr229 = lshr i64 %191, 16, !dbg !691
  %192 = load i64, i64* %t0, align 8, !dbg !691
  %sub230 = sub i64 %192, %shr229, !dbg !691
  store i64 %sub230, i64* %t0, align 8, !dbg !691
  br label %if.end237, !dbg !691

if.else231:                                       ; preds = %if.end217
  %193 = load i64, i64* %t0, align 8, !dbg !690
  %conv232 = trunc i64 %193 to i32, !dbg !690
  %sub233 = sub nsw i32 0, %conv232, !dbg !690
  %194 = load i32*, i32** %p, align 8, !dbg !690
  %195 = load i32, i32* %194, align 4, !dbg !690
  %sub234 = sub i32 %sub233, %195, !dbg !690
  %add235 = add i32 %sub234, 1, !dbg !690
  %conv236 = zext i32 %add235 to i64, !dbg !690
  store i64 %conv236, i64* %t0, align 8, !dbg !690
  br label %if.end237

if.end237:                                        ; preds = %if.else231, %if.then225
  %196 = load i32*, i32** %p, align 8, !dbg !685
  %incdec.ptr238 = getelementptr inbounds i32, i32* %196, i32 1, !dbg !685
  store i32* %incdec.ptr238, i32** %p, align 8, !dbg !685
  %197 = load i64, i64* %t0, align 8, !dbg !685
  %198 = load i64, i64* %x2, align 8, !dbg !685
  %199 = load i64, i64* %x4, align 8, !dbg !685
  %xor239 = xor i64 %198, %199, !dbg !685
  %add240 = add i64 %197, %xor239, !dbg !685
  %and241 = and i64 %add240, 65535, !dbg !685
  store i64 %and241, i64* %t1, align 8, !dbg !685
  %200 = load i64, i64* %t1, align 8, !dbg !685
  %201 = load i32*, i32** %p, align 8, !dbg !685
  %202 = load i32, i32* %201, align 4, !dbg !685
  %conv242 = zext i32 %202 to i64, !dbg !685
  %mul243 = mul i64 %200, %conv242, !dbg !685
  store i64 %mul243, i64* %ul, align 8, !dbg !685
  %203 = load i64, i64* %ul, align 8, !dbg !692
  %cmp244 = icmp ne i64 %203, 0, !dbg !692
  br i1 %cmp244, label %if.then246, label %if.else252, !dbg !685

if.then246:                                       ; preds = %if.end237
  %204 = load i64, i64* %ul, align 8, !dbg !693
  %and247 = and i64 %204, 65535, !dbg !693
  %205 = load i64, i64* %ul, align 8, !dbg !693
  %shr248 = lshr i64 %205, 16, !dbg !693
  %sub249 = sub i64 %and247, %shr248, !dbg !693
  store i64 %sub249, i64* %t1, align 8, !dbg !693
  %206 = load i64, i64* %t1, align 8, !dbg !693
  %shr250 = lshr i64 %206, 16, !dbg !693
  %207 = load i64, i64* %t1, align 8, !dbg !693
  %sub251 = sub i64 %207, %shr250, !dbg !693
  store i64 %sub251, i64* %t1, align 8, !dbg !693
  br label %if.end258, !dbg !693

if.else252:                                       ; preds = %if.end237
  %208 = load i64, i64* %t1, align 8, !dbg !692
  %conv253 = trunc i64 %208 to i32, !dbg !692
  %sub254 = sub nsw i32 0, %conv253, !dbg !692
  %209 = load i32*, i32** %p, align 8, !dbg !692
  %210 = load i32, i32* %209, align 4, !dbg !692
  %sub255 = sub i32 %sub254, %210, !dbg !692
  %add256 = add i32 %sub255, 1, !dbg !692
  %conv257 = zext i32 %add256 to i64, !dbg !692
  store i64 %conv257, i64* %t1, align 8, !dbg !692
  br label %if.end258

if.end258:                                        ; preds = %if.else252, %if.then246
  %211 = load i32*, i32** %p, align 8, !dbg !685
  %incdec.ptr259 = getelementptr inbounds i32, i32* %211, i32 1, !dbg !685
  store i32* %incdec.ptr259, i32** %p, align 8, !dbg !685
  %212 = load i64, i64* %t1, align 8, !dbg !685
  %213 = load i64, i64* %t0, align 8, !dbg !685
  %add260 = add i64 %213, %212, !dbg !685
  store i64 %add260, i64* %t0, align 8, !dbg !685
  %214 = load i64, i64* %t1, align 8, !dbg !685
  %215 = load i64, i64* %x1, align 8, !dbg !685
  %xor261 = xor i64 %215, %214, !dbg !685
  store i64 %xor261, i64* %x1, align 8, !dbg !685
  %216 = load i64, i64* %t0, align 8, !dbg !685
  %217 = load i64, i64* %x4, align 8, !dbg !685
  %xor262 = xor i64 %217, %216, !dbg !685
  store i64 %xor262, i64* %x4, align 8, !dbg !685
  %218 = load i64, i64* %x2, align 8, !dbg !685
  %219 = load i64, i64* %t0, align 8, !dbg !685
  %xor263 = xor i64 %218, %219, !dbg !685
  store i64 %xor263, i64* %ul, align 8, !dbg !685
  %220 = load i64, i64* %x3, align 8, !dbg !685
  %221 = load i64, i64* %t1, align 8, !dbg !685
  %xor264 = xor i64 %220, %221, !dbg !685
  store i64 %xor264, i64* %x2, align 8, !dbg !685
  %222 = load i64, i64* %ul, align 8, !dbg !685
  store i64 %222, i64* %x3, align 8, !dbg !685
  %223 = load i64, i64* %x1, align 8, !dbg !694
  %and265 = and i64 %223, 65535, !dbg !694
  store i64 %and265, i64* %x1, align 8, !dbg !694
  %224 = load i64, i64* %x1, align 8, !dbg !694
  %225 = load i32*, i32** %p, align 8, !dbg !694
  %226 = load i32, i32* %225, align 4, !dbg !694
  %conv266 = zext i32 %226 to i64, !dbg !694
  %mul267 = mul i64 %224, %conv266, !dbg !694
  store i64 %mul267, i64* %ul, align 8, !dbg !694
  %227 = load i64, i64* %ul, align 8, !dbg !695
  %cmp268 = icmp ne i64 %227, 0, !dbg !695
  br i1 %cmp268, label %if.then270, label %if.else276, !dbg !694

if.then270:                                       ; preds = %if.end258
  %228 = load i64, i64* %ul, align 8, !dbg !696
  %and271 = and i64 %228, 65535, !dbg !696
  %229 = load i64, i64* %ul, align 8, !dbg !696
  %shr272 = lshr i64 %229, 16, !dbg !696
  %sub273 = sub i64 %and271, %shr272, !dbg !696
  store i64 %sub273, i64* %x1, align 8, !dbg !696
  %230 = load i64, i64* %x1, align 8, !dbg !696
  %shr274 = lshr i64 %230, 16, !dbg !696
  %231 = load i64, i64* %x1, align 8, !dbg !696
  %sub275 = sub i64 %231, %shr274, !dbg !696
  store i64 %sub275, i64* %x1, align 8, !dbg !696
  br label %if.end282, !dbg !696

if.else276:                                       ; preds = %if.end258
  %232 = load i64, i64* %x1, align 8, !dbg !695
  %conv277 = trunc i64 %232 to i32, !dbg !695
  %sub278 = sub nsw i32 0, %conv277, !dbg !695
  %233 = load i32*, i32** %p, align 8, !dbg !695
  %234 = load i32, i32* %233, align 4, !dbg !695
  %sub279 = sub i32 %sub278, %234, !dbg !695
  %add280 = add i32 %sub279, 1, !dbg !695
  %conv281 = zext i32 %add280 to i64, !dbg !695
  store i64 %conv281, i64* %x1, align 8, !dbg !695
  br label %if.end282

if.end282:                                        ; preds = %if.else276, %if.then270
  %235 = load i32*, i32** %p, align 8, !dbg !694
  %incdec.ptr283 = getelementptr inbounds i32, i32* %235, i32 1, !dbg !694
  store i32* %incdec.ptr283, i32** %p, align 8, !dbg !694
  %236 = load i32*, i32** %p, align 8, !dbg !694
  %incdec.ptr284 = getelementptr inbounds i32, i32* %236, i32 1, !dbg !694
  store i32* %incdec.ptr284, i32** %p, align 8, !dbg !694
  %237 = load i32, i32* %236, align 4, !dbg !694
  %conv285 = zext i32 %237 to i64, !dbg !694
  %238 = load i64, i64* %x2, align 8, !dbg !694
  %add286 = add i64 %238, %conv285, !dbg !694
  store i64 %add286, i64* %x2, align 8, !dbg !694
  %239 = load i32*, i32** %p, align 8, !dbg !694
  %incdec.ptr287 = getelementptr inbounds i32, i32* %239, i32 1, !dbg !694
  store i32* %incdec.ptr287, i32** %p, align 8, !dbg !694
  %240 = load i32, i32* %239, align 4, !dbg !694
  %conv288 = zext i32 %240 to i64, !dbg !694
  %241 = load i64, i64* %x3, align 8, !dbg !694
  %add289 = add i64 %241, %conv288, !dbg !694
  store i64 %add289, i64* %x3, align 8, !dbg !694
  %242 = load i64, i64* %x4, align 8, !dbg !694
  %and290 = and i64 %242, 65535, !dbg !694
  store i64 %and290, i64* %x4, align 8, !dbg !694
  %243 = load i64, i64* %x4, align 8, !dbg !694
  %244 = load i32*, i32** %p, align 8, !dbg !694
  %245 = load i32, i32* %244, align 4, !dbg !694
  %conv291 = zext i32 %245 to i64, !dbg !694
  %mul292 = mul i64 %243, %conv291, !dbg !694
  store i64 %mul292, i64* %ul, align 8, !dbg !694
  %246 = load i64, i64* %ul, align 8, !dbg !697
  %cmp293 = icmp ne i64 %246, 0, !dbg !697
  br i1 %cmp293, label %if.then295, label %if.else301, !dbg !694

if.then295:                                       ; preds = %if.end282
  %247 = load i64, i64* %ul, align 8, !dbg !698
  %and296 = and i64 %247, 65535, !dbg !698
  %248 = load i64, i64* %ul, align 8, !dbg !698
  %shr297 = lshr i64 %248, 16, !dbg !698
  %sub298 = sub i64 %and296, %shr297, !dbg !698
  store i64 %sub298, i64* %x4, align 8, !dbg !698
  %249 = load i64, i64* %x4, align 8, !dbg !698
  %shr299 = lshr i64 %249, 16, !dbg !698
  %250 = load i64, i64* %x4, align 8, !dbg !698
  %sub300 = sub i64 %250, %shr299, !dbg !698
  store i64 %sub300, i64* %x4, align 8, !dbg !698
  br label %if.end307, !dbg !698

if.else301:                                       ; preds = %if.end282
  %251 = load i64, i64* %x4, align 8, !dbg !697
  %conv302 = trunc i64 %251 to i32, !dbg !697
  %sub303 = sub nsw i32 0, %conv302, !dbg !697
  %252 = load i32*, i32** %p, align 8, !dbg !697
  %253 = load i32, i32* %252, align 4, !dbg !697
  %sub304 = sub i32 %sub303, %253, !dbg !697
  %add305 = add i32 %sub304, 1, !dbg !697
  %conv306 = zext i32 %add305 to i64, !dbg !697
  store i64 %conv306, i64* %x4, align 8, !dbg !697
  br label %if.end307

if.end307:                                        ; preds = %if.else301, %if.then295
  %254 = load i32*, i32** %p, align 8, !dbg !694
  %incdec.ptr308 = getelementptr inbounds i32, i32* %254, i32 1, !dbg !694
  store i32* %incdec.ptr308, i32** %p, align 8, !dbg !694
  %255 = load i64, i64* %x1, align 8, !dbg !694
  %256 = load i64, i64* %x3, align 8, !dbg !694
  %xor309 = xor i64 %255, %256, !dbg !694
  %and310 = and i64 %xor309, 65535, !dbg !694
  store i64 %and310, i64* %t0, align 8, !dbg !694
  %257 = load i64, i64* %t0, align 8, !dbg !694
  %258 = load i32*, i32** %p, align 8, !dbg !694
  %259 = load i32, i32* %258, align 4, !dbg !694
  %conv311 = zext i32 %259 to i64, !dbg !694
  %mul312 = mul i64 %257, %conv311, !dbg !694
  store i64 %mul312, i64* %ul, align 8, !dbg !694
  %260 = load i64, i64* %ul, align 8, !dbg !699
  %cmp313 = icmp ne i64 %260, 0, !dbg !699
  br i1 %cmp313, label %if.then315, label %if.else321, !dbg !694

if.then315:                                       ; preds = %if.end307
  %261 = load i64, i64* %ul, align 8, !dbg !700
  %and316 = and i64 %261, 65535, !dbg !700
  %262 = load i64, i64* %ul, align 8, !dbg !700
  %shr317 = lshr i64 %262, 16, !dbg !700
  %sub318 = sub i64 %and316, %shr317, !dbg !700
  store i64 %sub318, i64* %t0, align 8, !dbg !700
  %263 = load i64, i64* %t0, align 8, !dbg !700
  %shr319 = lshr i64 %263, 16, !dbg !700
  %264 = load i64, i64* %t0, align 8, !dbg !700
  %sub320 = sub i64 %264, %shr319, !dbg !700
  store i64 %sub320, i64* %t0, align 8, !dbg !700
  br label %if.end327, !dbg !700

if.else321:                                       ; preds = %if.end307
  %265 = load i64, i64* %t0, align 8, !dbg !699
  %conv322 = trunc i64 %265 to i32, !dbg !699
  %sub323 = sub nsw i32 0, %conv322, !dbg !699
  %266 = load i32*, i32** %p, align 8, !dbg !699
  %267 = load i32, i32* %266, align 4, !dbg !699
  %sub324 = sub i32 %sub323, %267, !dbg !699
  %add325 = add i32 %sub324, 1, !dbg !699
  %conv326 = zext i32 %add325 to i64, !dbg !699
  store i64 %conv326, i64* %t0, align 8, !dbg !699
  br label %if.end327

if.end327:                                        ; preds = %if.else321, %if.then315
  %268 = load i32*, i32** %p, align 8, !dbg !694
  %incdec.ptr328 = getelementptr inbounds i32, i32* %268, i32 1, !dbg !694
  store i32* %incdec.ptr328, i32** %p, align 8, !dbg !694
  %269 = load i64, i64* %t0, align 8, !dbg !694
  %270 = load i64, i64* %x2, align 8, !dbg !694
  %271 = load i64, i64* %x4, align 8, !dbg !694
  %xor329 = xor i64 %270, %271, !dbg !694
  %add330 = add i64 %269, %xor329, !dbg !694
  %and331 = and i64 %add330, 65535, !dbg !694
  store i64 %and331, i64* %t1, align 8, !dbg !694
  %272 = load i64, i64* %t1, align 8, !dbg !694
  %273 = load i32*, i32** %p, align 8, !dbg !694
  %274 = load i32, i32* %273, align 4, !dbg !694
  %conv332 = zext i32 %274 to i64, !dbg !694
  %mul333 = mul i64 %272, %conv332, !dbg !694
  store i64 %mul333, i64* %ul, align 8, !dbg !694
  %275 = load i64, i64* %ul, align 8, !dbg !701
  %cmp334 = icmp ne i64 %275, 0, !dbg !701
  br i1 %cmp334, label %if.then336, label %if.else342, !dbg !694

if.then336:                                       ; preds = %if.end327
  %276 = load i64, i64* %ul, align 8, !dbg !702
  %and337 = and i64 %276, 65535, !dbg !702
  %277 = load i64, i64* %ul, align 8, !dbg !702
  %shr338 = lshr i64 %277, 16, !dbg !702
  %sub339 = sub i64 %and337, %shr338, !dbg !702
  store i64 %sub339, i64* %t1, align 8, !dbg !702
  %278 = load i64, i64* %t1, align 8, !dbg !702
  %shr340 = lshr i64 %278, 16, !dbg !702
  %279 = load i64, i64* %t1, align 8, !dbg !702
  %sub341 = sub i64 %279, %shr340, !dbg !702
  store i64 %sub341, i64* %t1, align 8, !dbg !702
  br label %if.end348, !dbg !702

if.else342:                                       ; preds = %if.end327
  %280 = load i64, i64* %t1, align 8, !dbg !701
  %conv343 = trunc i64 %280 to i32, !dbg !701
  %sub344 = sub nsw i32 0, %conv343, !dbg !701
  %281 = load i32*, i32** %p, align 8, !dbg !701
  %282 = load i32, i32* %281, align 4, !dbg !701
  %sub345 = sub i32 %sub344, %282, !dbg !701
  %add346 = add i32 %sub345, 1, !dbg !701
  %conv347 = zext i32 %add346 to i64, !dbg !701
  store i64 %conv347, i64* %t1, align 8, !dbg !701
  br label %if.end348

if.end348:                                        ; preds = %if.else342, %if.then336
  %283 = load i32*, i32** %p, align 8, !dbg !694
  %incdec.ptr349 = getelementptr inbounds i32, i32* %283, i32 1, !dbg !694
  store i32* %incdec.ptr349, i32** %p, align 8, !dbg !694
  %284 = load i64, i64* %t1, align 8, !dbg !694
  %285 = load i64, i64* %t0, align 8, !dbg !694
  %add350 = add i64 %285, %284, !dbg !694
  store i64 %add350, i64* %t0, align 8, !dbg !694
  %286 = load i64, i64* %t1, align 8, !dbg !694
  %287 = load i64, i64* %x1, align 8, !dbg !694
  %xor351 = xor i64 %287, %286, !dbg !694
  store i64 %xor351, i64* %x1, align 8, !dbg !694
  %288 = load i64, i64* %t0, align 8, !dbg !694
  %289 = load i64, i64* %x4, align 8, !dbg !694
  %xor352 = xor i64 %289, %288, !dbg !694
  store i64 %xor352, i64* %x4, align 8, !dbg !694
  %290 = load i64, i64* %x2, align 8, !dbg !694
  %291 = load i64, i64* %t0, align 8, !dbg !694
  %xor353 = xor i64 %290, %291, !dbg !694
  store i64 %xor353, i64* %ul, align 8, !dbg !694
  %292 = load i64, i64* %x3, align 8, !dbg !694
  %293 = load i64, i64* %t1, align 8, !dbg !694
  %xor354 = xor i64 %292, %293, !dbg !694
  store i64 %xor354, i64* %x2, align 8, !dbg !694
  %294 = load i64, i64* %ul, align 8, !dbg !694
  store i64 %294, i64* %x3, align 8, !dbg !694
  %295 = load i64, i64* %x1, align 8, !dbg !703
  %and355 = and i64 %295, 65535, !dbg !703
  store i64 %and355, i64* %x1, align 8, !dbg !703
  %296 = load i64, i64* %x1, align 8, !dbg !703
  %297 = load i32*, i32** %p, align 8, !dbg !703
  %298 = load i32, i32* %297, align 4, !dbg !703
  %conv356 = zext i32 %298 to i64, !dbg !703
  %mul357 = mul i64 %296, %conv356, !dbg !703
  store i64 %mul357, i64* %ul, align 8, !dbg !703
  %299 = load i64, i64* %ul, align 8, !dbg !704
  %cmp358 = icmp ne i64 %299, 0, !dbg !704
  br i1 %cmp358, label %if.then360, label %if.else366, !dbg !703

if.then360:                                       ; preds = %if.end348
  %300 = load i64, i64* %ul, align 8, !dbg !705
  %and361 = and i64 %300, 65535, !dbg !705
  %301 = load i64, i64* %ul, align 8, !dbg !705
  %shr362 = lshr i64 %301, 16, !dbg !705
  %sub363 = sub i64 %and361, %shr362, !dbg !705
  store i64 %sub363, i64* %x1, align 8, !dbg !705
  %302 = load i64, i64* %x1, align 8, !dbg !705
  %shr364 = lshr i64 %302, 16, !dbg !705
  %303 = load i64, i64* %x1, align 8, !dbg !705
  %sub365 = sub i64 %303, %shr364, !dbg !705
  store i64 %sub365, i64* %x1, align 8, !dbg !705
  br label %if.end372, !dbg !705

if.else366:                                       ; preds = %if.end348
  %304 = load i64, i64* %x1, align 8, !dbg !704
  %conv367 = trunc i64 %304 to i32, !dbg !704
  %sub368 = sub nsw i32 0, %conv367, !dbg !704
  %305 = load i32*, i32** %p, align 8, !dbg !704
  %306 = load i32, i32* %305, align 4, !dbg !704
  %sub369 = sub i32 %sub368, %306, !dbg !704
  %add370 = add i32 %sub369, 1, !dbg !704
  %conv371 = zext i32 %add370 to i64, !dbg !704
  store i64 %conv371, i64* %x1, align 8, !dbg !704
  br label %if.end372

if.end372:                                        ; preds = %if.else366, %if.then360
  %307 = load i32*, i32** %p, align 8, !dbg !703
  %incdec.ptr373 = getelementptr inbounds i32, i32* %307, i32 1, !dbg !703
  store i32* %incdec.ptr373, i32** %p, align 8, !dbg !703
  %308 = load i32*, i32** %p, align 8, !dbg !703
  %incdec.ptr374 = getelementptr inbounds i32, i32* %308, i32 1, !dbg !703
  store i32* %incdec.ptr374, i32** %p, align 8, !dbg !703
  %309 = load i32, i32* %308, align 4, !dbg !703
  %conv375 = zext i32 %309 to i64, !dbg !703
  %310 = load i64, i64* %x2, align 8, !dbg !703
  %add376 = add i64 %310, %conv375, !dbg !703
  store i64 %add376, i64* %x2, align 8, !dbg !703
  %311 = load i32*, i32** %p, align 8, !dbg !703
  %incdec.ptr377 = getelementptr inbounds i32, i32* %311, i32 1, !dbg !703
  store i32* %incdec.ptr377, i32** %p, align 8, !dbg !703
  %312 = load i32, i32* %311, align 4, !dbg !703
  %conv378 = zext i32 %312 to i64, !dbg !703
  %313 = load i64, i64* %x3, align 8, !dbg !703
  %add379 = add i64 %313, %conv378, !dbg !703
  store i64 %add379, i64* %x3, align 8, !dbg !703
  %314 = load i64, i64* %x4, align 8, !dbg !703
  %and380 = and i64 %314, 65535, !dbg !703
  store i64 %and380, i64* %x4, align 8, !dbg !703
  %315 = load i64, i64* %x4, align 8, !dbg !703
  %316 = load i32*, i32** %p, align 8, !dbg !703
  %317 = load i32, i32* %316, align 4, !dbg !703
  %conv381 = zext i32 %317 to i64, !dbg !703
  %mul382 = mul i64 %315, %conv381, !dbg !703
  store i64 %mul382, i64* %ul, align 8, !dbg !703
  %318 = load i64, i64* %ul, align 8, !dbg !706
  %cmp383 = icmp ne i64 %318, 0, !dbg !706
  br i1 %cmp383, label %if.then385, label %if.else391, !dbg !703

if.then385:                                       ; preds = %if.end372
  %319 = load i64, i64* %ul, align 8, !dbg !707
  %and386 = and i64 %319, 65535, !dbg !707
  %320 = load i64, i64* %ul, align 8, !dbg !707
  %shr387 = lshr i64 %320, 16, !dbg !707
  %sub388 = sub i64 %and386, %shr387, !dbg !707
  store i64 %sub388, i64* %x4, align 8, !dbg !707
  %321 = load i64, i64* %x4, align 8, !dbg !707
  %shr389 = lshr i64 %321, 16, !dbg !707
  %322 = load i64, i64* %x4, align 8, !dbg !707
  %sub390 = sub i64 %322, %shr389, !dbg !707
  store i64 %sub390, i64* %x4, align 8, !dbg !707
  br label %if.end397, !dbg !707

if.else391:                                       ; preds = %if.end372
  %323 = load i64, i64* %x4, align 8, !dbg !706
  %conv392 = trunc i64 %323 to i32, !dbg !706
  %sub393 = sub nsw i32 0, %conv392, !dbg !706
  %324 = load i32*, i32** %p, align 8, !dbg !706
  %325 = load i32, i32* %324, align 4, !dbg !706
  %sub394 = sub i32 %sub393, %325, !dbg !706
  %add395 = add i32 %sub394, 1, !dbg !706
  %conv396 = zext i32 %add395 to i64, !dbg !706
  store i64 %conv396, i64* %x4, align 8, !dbg !706
  br label %if.end397

if.end397:                                        ; preds = %if.else391, %if.then385
  %326 = load i32*, i32** %p, align 8, !dbg !703
  %incdec.ptr398 = getelementptr inbounds i32, i32* %326, i32 1, !dbg !703
  store i32* %incdec.ptr398, i32** %p, align 8, !dbg !703
  %327 = load i64, i64* %x1, align 8, !dbg !703
  %328 = load i64, i64* %x3, align 8, !dbg !703
  %xor399 = xor i64 %327, %328, !dbg !703
  %and400 = and i64 %xor399, 65535, !dbg !703
  store i64 %and400, i64* %t0, align 8, !dbg !703
  %329 = load i64, i64* %t0, align 8, !dbg !703
  %330 = load i32*, i32** %p, align 8, !dbg !703
  %331 = load i32, i32* %330, align 4, !dbg !703
  %conv401 = zext i32 %331 to i64, !dbg !703
  %mul402 = mul i64 %329, %conv401, !dbg !703
  store i64 %mul402, i64* %ul, align 8, !dbg !703
  %332 = load i64, i64* %ul, align 8, !dbg !708
  %cmp403 = icmp ne i64 %332, 0, !dbg !708
  br i1 %cmp403, label %if.then405, label %if.else411, !dbg !703

if.then405:                                       ; preds = %if.end397
  %333 = load i64, i64* %ul, align 8, !dbg !709
  %and406 = and i64 %333, 65535, !dbg !709
  %334 = load i64, i64* %ul, align 8, !dbg !709
  %shr407 = lshr i64 %334, 16, !dbg !709
  %sub408 = sub i64 %and406, %shr407, !dbg !709
  store i64 %sub408, i64* %t0, align 8, !dbg !709
  %335 = load i64, i64* %t0, align 8, !dbg !709
  %shr409 = lshr i64 %335, 16, !dbg !709
  %336 = load i64, i64* %t0, align 8, !dbg !709
  %sub410 = sub i64 %336, %shr409, !dbg !709
  store i64 %sub410, i64* %t0, align 8, !dbg !709
  br label %if.end417, !dbg !709

if.else411:                                       ; preds = %if.end397
  %337 = load i64, i64* %t0, align 8, !dbg !708
  %conv412 = trunc i64 %337 to i32, !dbg !708
  %sub413 = sub nsw i32 0, %conv412, !dbg !708
  %338 = load i32*, i32** %p, align 8, !dbg !708
  %339 = load i32, i32* %338, align 4, !dbg !708
  %sub414 = sub i32 %sub413, %339, !dbg !708
  %add415 = add i32 %sub414, 1, !dbg !708
  %conv416 = zext i32 %add415 to i64, !dbg !708
  store i64 %conv416, i64* %t0, align 8, !dbg !708
  br label %if.end417

if.end417:                                        ; preds = %if.else411, %if.then405
  %340 = load i32*, i32** %p, align 8, !dbg !703
  %incdec.ptr418 = getelementptr inbounds i32, i32* %340, i32 1, !dbg !703
  store i32* %incdec.ptr418, i32** %p, align 8, !dbg !703
  %341 = load i64, i64* %t0, align 8, !dbg !703
  %342 = load i64, i64* %x2, align 8, !dbg !703
  %343 = load i64, i64* %x4, align 8, !dbg !703
  %xor419 = xor i64 %342, %343, !dbg !703
  %add420 = add i64 %341, %xor419, !dbg !703
  %and421 = and i64 %add420, 65535, !dbg !703
  store i64 %and421, i64* %t1, align 8, !dbg !703
  %344 = load i64, i64* %t1, align 8, !dbg !703
  %345 = load i32*, i32** %p, align 8, !dbg !703
  %346 = load i32, i32* %345, align 4, !dbg !703
  %conv422 = zext i32 %346 to i64, !dbg !703
  %mul423 = mul i64 %344, %conv422, !dbg !703
  store i64 %mul423, i64* %ul, align 8, !dbg !703
  %347 = load i64, i64* %ul, align 8, !dbg !710
  %cmp424 = icmp ne i64 %347, 0, !dbg !710
  br i1 %cmp424, label %if.then426, label %if.else432, !dbg !703

if.then426:                                       ; preds = %if.end417
  %348 = load i64, i64* %ul, align 8, !dbg !711
  %and427 = and i64 %348, 65535, !dbg !711
  %349 = load i64, i64* %ul, align 8, !dbg !711
  %shr428 = lshr i64 %349, 16, !dbg !711
  %sub429 = sub i64 %and427, %shr428, !dbg !711
  store i64 %sub429, i64* %t1, align 8, !dbg !711
  %350 = load i64, i64* %t1, align 8, !dbg !711
  %shr430 = lshr i64 %350, 16, !dbg !711
  %351 = load i64, i64* %t1, align 8, !dbg !711
  %sub431 = sub i64 %351, %shr430, !dbg !711
  store i64 %sub431, i64* %t1, align 8, !dbg !711
  br label %if.end438, !dbg !711

if.else432:                                       ; preds = %if.end417
  %352 = load i64, i64* %t1, align 8, !dbg !710
  %conv433 = trunc i64 %352 to i32, !dbg !710
  %sub434 = sub nsw i32 0, %conv433, !dbg !710
  %353 = load i32*, i32** %p, align 8, !dbg !710
  %354 = load i32, i32* %353, align 4, !dbg !710
  %sub435 = sub i32 %sub434, %354, !dbg !710
  %add436 = add i32 %sub435, 1, !dbg !710
  %conv437 = zext i32 %add436 to i64, !dbg !710
  store i64 %conv437, i64* %t1, align 8, !dbg !710
  br label %if.end438

if.end438:                                        ; preds = %if.else432, %if.then426
  %355 = load i32*, i32** %p, align 8, !dbg !703
  %incdec.ptr439 = getelementptr inbounds i32, i32* %355, i32 1, !dbg !703
  store i32* %incdec.ptr439, i32** %p, align 8, !dbg !703
  %356 = load i64, i64* %t1, align 8, !dbg !703
  %357 = load i64, i64* %t0, align 8, !dbg !703
  %add440 = add i64 %357, %356, !dbg !703
  store i64 %add440, i64* %t0, align 8, !dbg !703
  %358 = load i64, i64* %t1, align 8, !dbg !703
  %359 = load i64, i64* %x1, align 8, !dbg !703
  %xor441 = xor i64 %359, %358, !dbg !703
  store i64 %xor441, i64* %x1, align 8, !dbg !703
  %360 = load i64, i64* %t0, align 8, !dbg !703
  %361 = load i64, i64* %x4, align 8, !dbg !703
  %xor442 = xor i64 %361, %360, !dbg !703
  store i64 %xor442, i64* %x4, align 8, !dbg !703
  %362 = load i64, i64* %x2, align 8, !dbg !703
  %363 = load i64, i64* %t0, align 8, !dbg !703
  %xor443 = xor i64 %362, %363, !dbg !703
  store i64 %xor443, i64* %ul, align 8, !dbg !703
  %364 = load i64, i64* %x3, align 8, !dbg !703
  %365 = load i64, i64* %t1, align 8, !dbg !703
  %xor444 = xor i64 %364, %365, !dbg !703
  store i64 %xor444, i64* %x2, align 8, !dbg !703
  %366 = load i64, i64* %ul, align 8, !dbg !703
  store i64 %366, i64* %x3, align 8, !dbg !703
  %367 = load i64, i64* %x1, align 8, !dbg !712
  %and445 = and i64 %367, 65535, !dbg !712
  store i64 %and445, i64* %x1, align 8, !dbg !712
  %368 = load i64, i64* %x1, align 8, !dbg !712
  %369 = load i32*, i32** %p, align 8, !dbg !712
  %370 = load i32, i32* %369, align 4, !dbg !712
  %conv446 = zext i32 %370 to i64, !dbg !712
  %mul447 = mul i64 %368, %conv446, !dbg !712
  store i64 %mul447, i64* %ul, align 8, !dbg !712
  %371 = load i64, i64* %ul, align 8, !dbg !713
  %cmp448 = icmp ne i64 %371, 0, !dbg !713
  br i1 %cmp448, label %if.then450, label %if.else456, !dbg !712

if.then450:                                       ; preds = %if.end438
  %372 = load i64, i64* %ul, align 8, !dbg !714
  %and451 = and i64 %372, 65535, !dbg !714
  %373 = load i64, i64* %ul, align 8, !dbg !714
  %shr452 = lshr i64 %373, 16, !dbg !714
  %sub453 = sub i64 %and451, %shr452, !dbg !714
  store i64 %sub453, i64* %x1, align 8, !dbg !714
  %374 = load i64, i64* %x1, align 8, !dbg !714
  %shr454 = lshr i64 %374, 16, !dbg !714
  %375 = load i64, i64* %x1, align 8, !dbg !714
  %sub455 = sub i64 %375, %shr454, !dbg !714
  store i64 %sub455, i64* %x1, align 8, !dbg !714
  br label %if.end462, !dbg !714

if.else456:                                       ; preds = %if.end438
  %376 = load i64, i64* %x1, align 8, !dbg !713
  %conv457 = trunc i64 %376 to i32, !dbg !713
  %sub458 = sub nsw i32 0, %conv457, !dbg !713
  %377 = load i32*, i32** %p, align 8, !dbg !713
  %378 = load i32, i32* %377, align 4, !dbg !713
  %sub459 = sub i32 %sub458, %378, !dbg !713
  %add460 = add i32 %sub459, 1, !dbg !713
  %conv461 = zext i32 %add460 to i64, !dbg !713
  store i64 %conv461, i64* %x1, align 8, !dbg !713
  br label %if.end462

if.end462:                                        ; preds = %if.else456, %if.then450
  %379 = load i32*, i32** %p, align 8, !dbg !712
  %incdec.ptr463 = getelementptr inbounds i32, i32* %379, i32 1, !dbg !712
  store i32* %incdec.ptr463, i32** %p, align 8, !dbg !712
  %380 = load i32*, i32** %p, align 8, !dbg !712
  %incdec.ptr464 = getelementptr inbounds i32, i32* %380, i32 1, !dbg !712
  store i32* %incdec.ptr464, i32** %p, align 8, !dbg !712
  %381 = load i32, i32* %380, align 4, !dbg !712
  %conv465 = zext i32 %381 to i64, !dbg !712
  %382 = load i64, i64* %x2, align 8, !dbg !712
  %add466 = add i64 %382, %conv465, !dbg !712
  store i64 %add466, i64* %x2, align 8, !dbg !712
  %383 = load i32*, i32** %p, align 8, !dbg !712
  %incdec.ptr467 = getelementptr inbounds i32, i32* %383, i32 1, !dbg !712
  store i32* %incdec.ptr467, i32** %p, align 8, !dbg !712
  %384 = load i32, i32* %383, align 4, !dbg !712
  %conv468 = zext i32 %384 to i64, !dbg !712
  %385 = load i64, i64* %x3, align 8, !dbg !712
  %add469 = add i64 %385, %conv468, !dbg !712
  store i64 %add469, i64* %x3, align 8, !dbg !712
  %386 = load i64, i64* %x4, align 8, !dbg !712
  %and470 = and i64 %386, 65535, !dbg !712
  store i64 %and470, i64* %x4, align 8, !dbg !712
  %387 = load i64, i64* %x4, align 8, !dbg !712
  %388 = load i32*, i32** %p, align 8, !dbg !712
  %389 = load i32, i32* %388, align 4, !dbg !712
  %conv471 = zext i32 %389 to i64, !dbg !712
  %mul472 = mul i64 %387, %conv471, !dbg !712
  store i64 %mul472, i64* %ul, align 8, !dbg !712
  %390 = load i64, i64* %ul, align 8, !dbg !715
  %cmp473 = icmp ne i64 %390, 0, !dbg !715
  br i1 %cmp473, label %if.then475, label %if.else481, !dbg !712

if.then475:                                       ; preds = %if.end462
  %391 = load i64, i64* %ul, align 8, !dbg !716
  %and476 = and i64 %391, 65535, !dbg !716
  %392 = load i64, i64* %ul, align 8, !dbg !716
  %shr477 = lshr i64 %392, 16, !dbg !716
  %sub478 = sub i64 %and476, %shr477, !dbg !716
  store i64 %sub478, i64* %x4, align 8, !dbg !716
  %393 = load i64, i64* %x4, align 8, !dbg !716
  %shr479 = lshr i64 %393, 16, !dbg !716
  %394 = load i64, i64* %x4, align 8, !dbg !716
  %sub480 = sub i64 %394, %shr479, !dbg !716
  store i64 %sub480, i64* %x4, align 8, !dbg !716
  br label %if.end487, !dbg !716

if.else481:                                       ; preds = %if.end462
  %395 = load i64, i64* %x4, align 8, !dbg !715
  %conv482 = trunc i64 %395 to i32, !dbg !715
  %sub483 = sub nsw i32 0, %conv482, !dbg !715
  %396 = load i32*, i32** %p, align 8, !dbg !715
  %397 = load i32, i32* %396, align 4, !dbg !715
  %sub484 = sub i32 %sub483, %397, !dbg !715
  %add485 = add i32 %sub484, 1, !dbg !715
  %conv486 = zext i32 %add485 to i64, !dbg !715
  store i64 %conv486, i64* %x4, align 8, !dbg !715
  br label %if.end487

if.end487:                                        ; preds = %if.else481, %if.then475
  %398 = load i32*, i32** %p, align 8, !dbg !712
  %incdec.ptr488 = getelementptr inbounds i32, i32* %398, i32 1, !dbg !712
  store i32* %incdec.ptr488, i32** %p, align 8, !dbg !712
  %399 = load i64, i64* %x1, align 8, !dbg !712
  %400 = load i64, i64* %x3, align 8, !dbg !712
  %xor489 = xor i64 %399, %400, !dbg !712
  %and490 = and i64 %xor489, 65535, !dbg !712
  store i64 %and490, i64* %t0, align 8, !dbg !712
  %401 = load i64, i64* %t0, align 8, !dbg !712
  %402 = load i32*, i32** %p, align 8, !dbg !712
  %403 = load i32, i32* %402, align 4, !dbg !712
  %conv491 = zext i32 %403 to i64, !dbg !712
  %mul492 = mul i64 %401, %conv491, !dbg !712
  store i64 %mul492, i64* %ul, align 8, !dbg !712
  %404 = load i64, i64* %ul, align 8, !dbg !717
  %cmp493 = icmp ne i64 %404, 0, !dbg !717
  br i1 %cmp493, label %if.then495, label %if.else501, !dbg !712

if.then495:                                       ; preds = %if.end487
  %405 = load i64, i64* %ul, align 8, !dbg !718
  %and496 = and i64 %405, 65535, !dbg !718
  %406 = load i64, i64* %ul, align 8, !dbg !718
  %shr497 = lshr i64 %406, 16, !dbg !718
  %sub498 = sub i64 %and496, %shr497, !dbg !718
  store i64 %sub498, i64* %t0, align 8, !dbg !718
  %407 = load i64, i64* %t0, align 8, !dbg !718
  %shr499 = lshr i64 %407, 16, !dbg !718
  %408 = load i64, i64* %t0, align 8, !dbg !718
  %sub500 = sub i64 %408, %shr499, !dbg !718
  store i64 %sub500, i64* %t0, align 8, !dbg !718
  br label %if.end507, !dbg !718

if.else501:                                       ; preds = %if.end487
  %409 = load i64, i64* %t0, align 8, !dbg !717
  %conv502 = trunc i64 %409 to i32, !dbg !717
  %sub503 = sub nsw i32 0, %conv502, !dbg !717
  %410 = load i32*, i32** %p, align 8, !dbg !717
  %411 = load i32, i32* %410, align 4, !dbg !717
  %sub504 = sub i32 %sub503, %411, !dbg !717
  %add505 = add i32 %sub504, 1, !dbg !717
  %conv506 = zext i32 %add505 to i64, !dbg !717
  store i64 %conv506, i64* %t0, align 8, !dbg !717
  br label %if.end507

if.end507:                                        ; preds = %if.else501, %if.then495
  %412 = load i32*, i32** %p, align 8, !dbg !712
  %incdec.ptr508 = getelementptr inbounds i32, i32* %412, i32 1, !dbg !712
  store i32* %incdec.ptr508, i32** %p, align 8, !dbg !712
  %413 = load i64, i64* %t0, align 8, !dbg !712
  %414 = load i64, i64* %x2, align 8, !dbg !712
  %415 = load i64, i64* %x4, align 8, !dbg !712
  %xor509 = xor i64 %414, %415, !dbg !712
  %add510 = add i64 %413, %xor509, !dbg !712
  %and511 = and i64 %add510, 65535, !dbg !712
  store i64 %and511, i64* %t1, align 8, !dbg !712
  %416 = load i64, i64* %t1, align 8, !dbg !712
  %417 = load i32*, i32** %p, align 8, !dbg !712
  %418 = load i32, i32* %417, align 4, !dbg !712
  %conv512 = zext i32 %418 to i64, !dbg !712
  %mul513 = mul i64 %416, %conv512, !dbg !712
  store i64 %mul513, i64* %ul, align 8, !dbg !712
  %419 = load i64, i64* %ul, align 8, !dbg !719
  %cmp514 = icmp ne i64 %419, 0, !dbg !719
  br i1 %cmp514, label %if.then516, label %if.else522, !dbg !712

if.then516:                                       ; preds = %if.end507
  %420 = load i64, i64* %ul, align 8, !dbg !720
  %and517 = and i64 %420, 65535, !dbg !720
  %421 = load i64, i64* %ul, align 8, !dbg !720
  %shr518 = lshr i64 %421, 16, !dbg !720
  %sub519 = sub i64 %and517, %shr518, !dbg !720
  store i64 %sub519, i64* %t1, align 8, !dbg !720
  %422 = load i64, i64* %t1, align 8, !dbg !720
  %shr520 = lshr i64 %422, 16, !dbg !720
  %423 = load i64, i64* %t1, align 8, !dbg !720
  %sub521 = sub i64 %423, %shr520, !dbg !720
  store i64 %sub521, i64* %t1, align 8, !dbg !720
  br label %if.end528, !dbg !720

if.else522:                                       ; preds = %if.end507
  %424 = load i64, i64* %t1, align 8, !dbg !719
  %conv523 = trunc i64 %424 to i32, !dbg !719
  %sub524 = sub nsw i32 0, %conv523, !dbg !719
  %425 = load i32*, i32** %p, align 8, !dbg !719
  %426 = load i32, i32* %425, align 4, !dbg !719
  %sub525 = sub i32 %sub524, %426, !dbg !719
  %add526 = add i32 %sub525, 1, !dbg !719
  %conv527 = zext i32 %add526 to i64, !dbg !719
  store i64 %conv527, i64* %t1, align 8, !dbg !719
  br label %if.end528

if.end528:                                        ; preds = %if.else522, %if.then516
  %427 = load i32*, i32** %p, align 8, !dbg !712
  %incdec.ptr529 = getelementptr inbounds i32, i32* %427, i32 1, !dbg !712
  store i32* %incdec.ptr529, i32** %p, align 8, !dbg !712
  %428 = load i64, i64* %t1, align 8, !dbg !712
  %429 = load i64, i64* %t0, align 8, !dbg !712
  %add530 = add i64 %429, %428, !dbg !712
  store i64 %add530, i64* %t0, align 8, !dbg !712
  %430 = load i64, i64* %t1, align 8, !dbg !712
  %431 = load i64, i64* %x1, align 8, !dbg !712
  %xor531 = xor i64 %431, %430, !dbg !712
  store i64 %xor531, i64* %x1, align 8, !dbg !712
  %432 = load i64, i64* %t0, align 8, !dbg !712
  %433 = load i64, i64* %x4, align 8, !dbg !712
  %xor532 = xor i64 %433, %432, !dbg !712
  store i64 %xor532, i64* %x4, align 8, !dbg !712
  %434 = load i64, i64* %x2, align 8, !dbg !712
  %435 = load i64, i64* %t0, align 8, !dbg !712
  %xor533 = xor i64 %434, %435, !dbg !712
  store i64 %xor533, i64* %ul, align 8, !dbg !712
  %436 = load i64, i64* %x3, align 8, !dbg !712
  %437 = load i64, i64* %t1, align 8, !dbg !712
  %xor534 = xor i64 %436, %437, !dbg !712
  store i64 %xor534, i64* %x2, align 8, !dbg !712
  %438 = load i64, i64* %ul, align 8, !dbg !712
  store i64 %438, i64* %x3, align 8, !dbg !712
  %439 = load i64, i64* %x1, align 8, !dbg !721
  %and535 = and i64 %439, 65535, !dbg !721
  store i64 %and535, i64* %x1, align 8, !dbg !721
  %440 = load i64, i64* %x1, align 8, !dbg !721
  %441 = load i32*, i32** %p, align 8, !dbg !721
  %442 = load i32, i32* %441, align 4, !dbg !721
  %conv536 = zext i32 %442 to i64, !dbg !721
  %mul537 = mul i64 %440, %conv536, !dbg !721
  store i64 %mul537, i64* %ul, align 8, !dbg !721
  %443 = load i64, i64* %ul, align 8, !dbg !722
  %cmp538 = icmp ne i64 %443, 0, !dbg !722
  br i1 %cmp538, label %if.then540, label %if.else546, !dbg !721

if.then540:                                       ; preds = %if.end528
  %444 = load i64, i64* %ul, align 8, !dbg !723
  %and541 = and i64 %444, 65535, !dbg !723
  %445 = load i64, i64* %ul, align 8, !dbg !723
  %shr542 = lshr i64 %445, 16, !dbg !723
  %sub543 = sub i64 %and541, %shr542, !dbg !723
  store i64 %sub543, i64* %x1, align 8, !dbg !723
  %446 = load i64, i64* %x1, align 8, !dbg !723
  %shr544 = lshr i64 %446, 16, !dbg !723
  %447 = load i64, i64* %x1, align 8, !dbg !723
  %sub545 = sub i64 %447, %shr544, !dbg !723
  store i64 %sub545, i64* %x1, align 8, !dbg !723
  br label %if.end552, !dbg !723

if.else546:                                       ; preds = %if.end528
  %448 = load i64, i64* %x1, align 8, !dbg !722
  %conv547 = trunc i64 %448 to i32, !dbg !722
  %sub548 = sub nsw i32 0, %conv547, !dbg !722
  %449 = load i32*, i32** %p, align 8, !dbg !722
  %450 = load i32, i32* %449, align 4, !dbg !722
  %sub549 = sub i32 %sub548, %450, !dbg !722
  %add550 = add i32 %sub549, 1, !dbg !722
  %conv551 = zext i32 %add550 to i64, !dbg !722
  store i64 %conv551, i64* %x1, align 8, !dbg !722
  br label %if.end552

if.end552:                                        ; preds = %if.else546, %if.then540
  %451 = load i32*, i32** %p, align 8, !dbg !721
  %incdec.ptr553 = getelementptr inbounds i32, i32* %451, i32 1, !dbg !721
  store i32* %incdec.ptr553, i32** %p, align 8, !dbg !721
  %452 = load i32*, i32** %p, align 8, !dbg !721
  %incdec.ptr554 = getelementptr inbounds i32, i32* %452, i32 1, !dbg !721
  store i32* %incdec.ptr554, i32** %p, align 8, !dbg !721
  %453 = load i32, i32* %452, align 4, !dbg !721
  %conv555 = zext i32 %453 to i64, !dbg !721
  %454 = load i64, i64* %x2, align 8, !dbg !721
  %add556 = add i64 %454, %conv555, !dbg !721
  store i64 %add556, i64* %x2, align 8, !dbg !721
  %455 = load i32*, i32** %p, align 8, !dbg !721
  %incdec.ptr557 = getelementptr inbounds i32, i32* %455, i32 1, !dbg !721
  store i32* %incdec.ptr557, i32** %p, align 8, !dbg !721
  %456 = load i32, i32* %455, align 4, !dbg !721
  %conv558 = zext i32 %456 to i64, !dbg !721
  %457 = load i64, i64* %x3, align 8, !dbg !721
  %add559 = add i64 %457, %conv558, !dbg !721
  store i64 %add559, i64* %x3, align 8, !dbg !721
  %458 = load i64, i64* %x4, align 8, !dbg !721
  %and560 = and i64 %458, 65535, !dbg !721
  store i64 %and560, i64* %x4, align 8, !dbg !721
  %459 = load i64, i64* %x4, align 8, !dbg !721
  %460 = load i32*, i32** %p, align 8, !dbg !721
  %461 = load i32, i32* %460, align 4, !dbg !721
  %conv561 = zext i32 %461 to i64, !dbg !721
  %mul562 = mul i64 %459, %conv561, !dbg !721
  store i64 %mul562, i64* %ul, align 8, !dbg !721
  %462 = load i64, i64* %ul, align 8, !dbg !724
  %cmp563 = icmp ne i64 %462, 0, !dbg !724
  br i1 %cmp563, label %if.then565, label %if.else571, !dbg !721

if.then565:                                       ; preds = %if.end552
  %463 = load i64, i64* %ul, align 8, !dbg !725
  %and566 = and i64 %463, 65535, !dbg !725
  %464 = load i64, i64* %ul, align 8, !dbg !725
  %shr567 = lshr i64 %464, 16, !dbg !725
  %sub568 = sub i64 %and566, %shr567, !dbg !725
  store i64 %sub568, i64* %x4, align 8, !dbg !725
  %465 = load i64, i64* %x4, align 8, !dbg !725
  %shr569 = lshr i64 %465, 16, !dbg !725
  %466 = load i64, i64* %x4, align 8, !dbg !725
  %sub570 = sub i64 %466, %shr569, !dbg !725
  store i64 %sub570, i64* %x4, align 8, !dbg !725
  br label %if.end577, !dbg !725

if.else571:                                       ; preds = %if.end552
  %467 = load i64, i64* %x4, align 8, !dbg !724
  %conv572 = trunc i64 %467 to i32, !dbg !724
  %sub573 = sub nsw i32 0, %conv572, !dbg !724
  %468 = load i32*, i32** %p, align 8, !dbg !724
  %469 = load i32, i32* %468, align 4, !dbg !724
  %sub574 = sub i32 %sub573, %469, !dbg !724
  %add575 = add i32 %sub574, 1, !dbg !724
  %conv576 = zext i32 %add575 to i64, !dbg !724
  store i64 %conv576, i64* %x4, align 8, !dbg !724
  br label %if.end577

if.end577:                                        ; preds = %if.else571, %if.then565
  %470 = load i32*, i32** %p, align 8, !dbg !721
  %incdec.ptr578 = getelementptr inbounds i32, i32* %470, i32 1, !dbg !721
  store i32* %incdec.ptr578, i32** %p, align 8, !dbg !721
  %471 = load i64, i64* %x1, align 8, !dbg !721
  %472 = load i64, i64* %x3, align 8, !dbg !721
  %xor579 = xor i64 %471, %472, !dbg !721
  %and580 = and i64 %xor579, 65535, !dbg !721
  store i64 %and580, i64* %t0, align 8, !dbg !721
  %473 = load i64, i64* %t0, align 8, !dbg !721
  %474 = load i32*, i32** %p, align 8, !dbg !721
  %475 = load i32, i32* %474, align 4, !dbg !721
  %conv581 = zext i32 %475 to i64, !dbg !721
  %mul582 = mul i64 %473, %conv581, !dbg !721
  store i64 %mul582, i64* %ul, align 8, !dbg !721
  %476 = load i64, i64* %ul, align 8, !dbg !726
  %cmp583 = icmp ne i64 %476, 0, !dbg !726
  br i1 %cmp583, label %if.then585, label %if.else591, !dbg !721

if.then585:                                       ; preds = %if.end577
  %477 = load i64, i64* %ul, align 8, !dbg !727
  %and586 = and i64 %477, 65535, !dbg !727
  %478 = load i64, i64* %ul, align 8, !dbg !727
  %shr587 = lshr i64 %478, 16, !dbg !727
  %sub588 = sub i64 %and586, %shr587, !dbg !727
  store i64 %sub588, i64* %t0, align 8, !dbg !727
  %479 = load i64, i64* %t0, align 8, !dbg !727
  %shr589 = lshr i64 %479, 16, !dbg !727
  %480 = load i64, i64* %t0, align 8, !dbg !727
  %sub590 = sub i64 %480, %shr589, !dbg !727
  store i64 %sub590, i64* %t0, align 8, !dbg !727
  br label %if.end597, !dbg !727

if.else591:                                       ; preds = %if.end577
  %481 = load i64, i64* %t0, align 8, !dbg !726
  %conv592 = trunc i64 %481 to i32, !dbg !726
  %sub593 = sub nsw i32 0, %conv592, !dbg !726
  %482 = load i32*, i32** %p, align 8, !dbg !726
  %483 = load i32, i32* %482, align 4, !dbg !726
  %sub594 = sub i32 %sub593, %483, !dbg !726
  %add595 = add i32 %sub594, 1, !dbg !726
  %conv596 = zext i32 %add595 to i64, !dbg !726
  store i64 %conv596, i64* %t0, align 8, !dbg !726
  br label %if.end597

if.end597:                                        ; preds = %if.else591, %if.then585
  %484 = load i32*, i32** %p, align 8, !dbg !721
  %incdec.ptr598 = getelementptr inbounds i32, i32* %484, i32 1, !dbg !721
  store i32* %incdec.ptr598, i32** %p, align 8, !dbg !721
  %485 = load i64, i64* %t0, align 8, !dbg !721
  %486 = load i64, i64* %x2, align 8, !dbg !721
  %487 = load i64, i64* %x4, align 8, !dbg !721
  %xor599 = xor i64 %486, %487, !dbg !721
  %add600 = add i64 %485, %xor599, !dbg !721
  %and601 = and i64 %add600, 65535, !dbg !721
  store i64 %and601, i64* %t1, align 8, !dbg !721
  %488 = load i64, i64* %t1, align 8, !dbg !721
  %489 = load i32*, i32** %p, align 8, !dbg !721
  %490 = load i32, i32* %489, align 4, !dbg !721
  %conv602 = zext i32 %490 to i64, !dbg !721
  %mul603 = mul i64 %488, %conv602, !dbg !721
  store i64 %mul603, i64* %ul, align 8, !dbg !721
  %491 = load i64, i64* %ul, align 8, !dbg !728
  %cmp604 = icmp ne i64 %491, 0, !dbg !728
  br i1 %cmp604, label %if.then606, label %if.else612, !dbg !721

if.then606:                                       ; preds = %if.end597
  %492 = load i64, i64* %ul, align 8, !dbg !729
  %and607 = and i64 %492, 65535, !dbg !729
  %493 = load i64, i64* %ul, align 8, !dbg !729
  %shr608 = lshr i64 %493, 16, !dbg !729
  %sub609 = sub i64 %and607, %shr608, !dbg !729
  store i64 %sub609, i64* %t1, align 8, !dbg !729
  %494 = load i64, i64* %t1, align 8, !dbg !729
  %shr610 = lshr i64 %494, 16, !dbg !729
  %495 = load i64, i64* %t1, align 8, !dbg !729
  %sub611 = sub i64 %495, %shr610, !dbg !729
  store i64 %sub611, i64* %t1, align 8, !dbg !729
  br label %if.end618, !dbg !729

if.else612:                                       ; preds = %if.end597
  %496 = load i64, i64* %t1, align 8, !dbg !728
  %conv613 = trunc i64 %496 to i32, !dbg !728
  %sub614 = sub nsw i32 0, %conv613, !dbg !728
  %497 = load i32*, i32** %p, align 8, !dbg !728
  %498 = load i32, i32* %497, align 4, !dbg !728
  %sub615 = sub i32 %sub614, %498, !dbg !728
  %add616 = add i32 %sub615, 1, !dbg !728
  %conv617 = zext i32 %add616 to i64, !dbg !728
  store i64 %conv617, i64* %t1, align 8, !dbg !728
  br label %if.end618

if.end618:                                        ; preds = %if.else612, %if.then606
  %499 = load i32*, i32** %p, align 8, !dbg !721
  %incdec.ptr619 = getelementptr inbounds i32, i32* %499, i32 1, !dbg !721
  store i32* %incdec.ptr619, i32** %p, align 8, !dbg !721
  %500 = load i64, i64* %t1, align 8, !dbg !721
  %501 = load i64, i64* %t0, align 8, !dbg !721
  %add620 = add i64 %501, %500, !dbg !721
  store i64 %add620, i64* %t0, align 8, !dbg !721
  %502 = load i64, i64* %t1, align 8, !dbg !721
  %503 = load i64, i64* %x1, align 8, !dbg !721
  %xor621 = xor i64 %503, %502, !dbg !721
  store i64 %xor621, i64* %x1, align 8, !dbg !721
  %504 = load i64, i64* %t0, align 8, !dbg !721
  %505 = load i64, i64* %x4, align 8, !dbg !721
  %xor622 = xor i64 %505, %504, !dbg !721
  store i64 %xor622, i64* %x4, align 8, !dbg !721
  %506 = load i64, i64* %x2, align 8, !dbg !721
  %507 = load i64, i64* %t0, align 8, !dbg !721
  %xor623 = xor i64 %506, %507, !dbg !721
  store i64 %xor623, i64* %ul, align 8, !dbg !721
  %508 = load i64, i64* %x3, align 8, !dbg !721
  %509 = load i64, i64* %t1, align 8, !dbg !721
  %xor624 = xor i64 %508, %509, !dbg !721
  store i64 %xor624, i64* %x2, align 8, !dbg !721
  %510 = load i64, i64* %ul, align 8, !dbg !721
  store i64 %510, i64* %x3, align 8, !dbg !721
  %511 = load i64, i64* %x1, align 8, !dbg !730
  %and625 = and i64 %511, 65535, !dbg !730
  store i64 %and625, i64* %x1, align 8, !dbg !730
  %512 = load i64, i64* %x1, align 8, !dbg !730
  %513 = load i32*, i32** %p, align 8, !dbg !730
  %514 = load i32, i32* %513, align 4, !dbg !730
  %conv626 = zext i32 %514 to i64, !dbg !730
  %mul627 = mul i64 %512, %conv626, !dbg !730
  store i64 %mul627, i64* %ul, align 8, !dbg !730
  %515 = load i64, i64* %ul, align 8, !dbg !731
  %cmp628 = icmp ne i64 %515, 0, !dbg !731
  br i1 %cmp628, label %if.then630, label %if.else636, !dbg !730

if.then630:                                       ; preds = %if.end618
  %516 = load i64, i64* %ul, align 8, !dbg !732
  %and631 = and i64 %516, 65535, !dbg !732
  %517 = load i64, i64* %ul, align 8, !dbg !732
  %shr632 = lshr i64 %517, 16, !dbg !732
  %sub633 = sub i64 %and631, %shr632, !dbg !732
  store i64 %sub633, i64* %x1, align 8, !dbg !732
  %518 = load i64, i64* %x1, align 8, !dbg !732
  %shr634 = lshr i64 %518, 16, !dbg !732
  %519 = load i64, i64* %x1, align 8, !dbg !732
  %sub635 = sub i64 %519, %shr634, !dbg !732
  store i64 %sub635, i64* %x1, align 8, !dbg !732
  br label %if.end642, !dbg !732

if.else636:                                       ; preds = %if.end618
  %520 = load i64, i64* %x1, align 8, !dbg !731
  %conv637 = trunc i64 %520 to i32, !dbg !731
  %sub638 = sub nsw i32 0, %conv637, !dbg !731
  %521 = load i32*, i32** %p, align 8, !dbg !731
  %522 = load i32, i32* %521, align 4, !dbg !731
  %sub639 = sub i32 %sub638, %522, !dbg !731
  %add640 = add i32 %sub639, 1, !dbg !731
  %conv641 = zext i32 %add640 to i64, !dbg !731
  store i64 %conv641, i64* %x1, align 8, !dbg !731
  br label %if.end642

if.end642:                                        ; preds = %if.else636, %if.then630
  %523 = load i32*, i32** %p, align 8, !dbg !730
  %incdec.ptr643 = getelementptr inbounds i32, i32* %523, i32 1, !dbg !730
  store i32* %incdec.ptr643, i32** %p, align 8, !dbg !730
  %524 = load i32*, i32** %p, align 8, !dbg !730
  %incdec.ptr644 = getelementptr inbounds i32, i32* %524, i32 1, !dbg !730
  store i32* %incdec.ptr644, i32** %p, align 8, !dbg !730
  %525 = load i32, i32* %524, align 4, !dbg !730
  %conv645 = zext i32 %525 to i64, !dbg !730
  %526 = load i64, i64* %x2, align 8, !dbg !730
  %add646 = add i64 %526, %conv645, !dbg !730
  store i64 %add646, i64* %x2, align 8, !dbg !730
  %527 = load i32*, i32** %p, align 8, !dbg !730
  %incdec.ptr647 = getelementptr inbounds i32, i32* %527, i32 1, !dbg !730
  store i32* %incdec.ptr647, i32** %p, align 8, !dbg !730
  %528 = load i32, i32* %527, align 4, !dbg !730
  %conv648 = zext i32 %528 to i64, !dbg !730
  %529 = load i64, i64* %x3, align 8, !dbg !730
  %add649 = add i64 %529, %conv648, !dbg !730
  store i64 %add649, i64* %x3, align 8, !dbg !730
  %530 = load i64, i64* %x4, align 8, !dbg !730
  %and650 = and i64 %530, 65535, !dbg !730
  store i64 %and650, i64* %x4, align 8, !dbg !730
  %531 = load i64, i64* %x4, align 8, !dbg !730
  %532 = load i32*, i32** %p, align 8, !dbg !730
  %533 = load i32, i32* %532, align 4, !dbg !730
  %conv651 = zext i32 %533 to i64, !dbg !730
  %mul652 = mul i64 %531, %conv651, !dbg !730
  store i64 %mul652, i64* %ul, align 8, !dbg !730
  %534 = load i64, i64* %ul, align 8, !dbg !733
  %cmp653 = icmp ne i64 %534, 0, !dbg !733
  br i1 %cmp653, label %if.then655, label %if.else661, !dbg !730

if.then655:                                       ; preds = %if.end642
  %535 = load i64, i64* %ul, align 8, !dbg !734
  %and656 = and i64 %535, 65535, !dbg !734
  %536 = load i64, i64* %ul, align 8, !dbg !734
  %shr657 = lshr i64 %536, 16, !dbg !734
  %sub658 = sub i64 %and656, %shr657, !dbg !734
  store i64 %sub658, i64* %x4, align 8, !dbg !734
  %537 = load i64, i64* %x4, align 8, !dbg !734
  %shr659 = lshr i64 %537, 16, !dbg !734
  %538 = load i64, i64* %x4, align 8, !dbg !734
  %sub660 = sub i64 %538, %shr659, !dbg !734
  store i64 %sub660, i64* %x4, align 8, !dbg !734
  br label %if.end667, !dbg !734

if.else661:                                       ; preds = %if.end642
  %539 = load i64, i64* %x4, align 8, !dbg !733
  %conv662 = trunc i64 %539 to i32, !dbg !733
  %sub663 = sub nsw i32 0, %conv662, !dbg !733
  %540 = load i32*, i32** %p, align 8, !dbg !733
  %541 = load i32, i32* %540, align 4, !dbg !733
  %sub664 = sub i32 %sub663, %541, !dbg !733
  %add665 = add i32 %sub664, 1, !dbg !733
  %conv666 = zext i32 %add665 to i64, !dbg !733
  store i64 %conv666, i64* %x4, align 8, !dbg !733
  br label %if.end667

if.end667:                                        ; preds = %if.else661, %if.then655
  %542 = load i32*, i32** %p, align 8, !dbg !730
  %incdec.ptr668 = getelementptr inbounds i32, i32* %542, i32 1, !dbg !730
  store i32* %incdec.ptr668, i32** %p, align 8, !dbg !730
  %543 = load i64, i64* %x1, align 8, !dbg !730
  %544 = load i64, i64* %x3, align 8, !dbg !730
  %xor669 = xor i64 %543, %544, !dbg !730
  %and670 = and i64 %xor669, 65535, !dbg !730
  store i64 %and670, i64* %t0, align 8, !dbg !730
  %545 = load i64, i64* %t0, align 8, !dbg !730
  %546 = load i32*, i32** %p, align 8, !dbg !730
  %547 = load i32, i32* %546, align 4, !dbg !730
  %conv671 = zext i32 %547 to i64, !dbg !730
  %mul672 = mul i64 %545, %conv671, !dbg !730
  store i64 %mul672, i64* %ul, align 8, !dbg !730
  %548 = load i64, i64* %ul, align 8, !dbg !735
  %cmp673 = icmp ne i64 %548, 0, !dbg !735
  br i1 %cmp673, label %if.then675, label %if.else681, !dbg !730

if.then675:                                       ; preds = %if.end667
  %549 = load i64, i64* %ul, align 8, !dbg !736
  %and676 = and i64 %549, 65535, !dbg !736
  %550 = load i64, i64* %ul, align 8, !dbg !736
  %shr677 = lshr i64 %550, 16, !dbg !736
  %sub678 = sub i64 %and676, %shr677, !dbg !736
  store i64 %sub678, i64* %t0, align 8, !dbg !736
  %551 = load i64, i64* %t0, align 8, !dbg !736
  %shr679 = lshr i64 %551, 16, !dbg !736
  %552 = load i64, i64* %t0, align 8, !dbg !736
  %sub680 = sub i64 %552, %shr679, !dbg !736
  store i64 %sub680, i64* %t0, align 8, !dbg !736
  br label %if.end687, !dbg !736

if.else681:                                       ; preds = %if.end667
  %553 = load i64, i64* %t0, align 8, !dbg !735
  %conv682 = trunc i64 %553 to i32, !dbg !735
  %sub683 = sub nsw i32 0, %conv682, !dbg !735
  %554 = load i32*, i32** %p, align 8, !dbg !735
  %555 = load i32, i32* %554, align 4, !dbg !735
  %sub684 = sub i32 %sub683, %555, !dbg !735
  %add685 = add i32 %sub684, 1, !dbg !735
  %conv686 = zext i32 %add685 to i64, !dbg !735
  store i64 %conv686, i64* %t0, align 8, !dbg !735
  br label %if.end687

if.end687:                                        ; preds = %if.else681, %if.then675
  %556 = load i32*, i32** %p, align 8, !dbg !730
  %incdec.ptr688 = getelementptr inbounds i32, i32* %556, i32 1, !dbg !730
  store i32* %incdec.ptr688, i32** %p, align 8, !dbg !730
  %557 = load i64, i64* %t0, align 8, !dbg !730
  %558 = load i64, i64* %x2, align 8, !dbg !730
  %559 = load i64, i64* %x4, align 8, !dbg !730
  %xor689 = xor i64 %558, %559, !dbg !730
  %add690 = add i64 %557, %xor689, !dbg !730
  %and691 = and i64 %add690, 65535, !dbg !730
  store i64 %and691, i64* %t1, align 8, !dbg !730
  %560 = load i64, i64* %t1, align 8, !dbg !730
  %561 = load i32*, i32** %p, align 8, !dbg !730
  %562 = load i32, i32* %561, align 4, !dbg !730
  %conv692 = zext i32 %562 to i64, !dbg !730
  %mul693 = mul i64 %560, %conv692, !dbg !730
  store i64 %mul693, i64* %ul, align 8, !dbg !730
  %563 = load i64, i64* %ul, align 8, !dbg !737
  %cmp694 = icmp ne i64 %563, 0, !dbg !737
  br i1 %cmp694, label %if.then696, label %if.else702, !dbg !730

if.then696:                                       ; preds = %if.end687
  %564 = load i64, i64* %ul, align 8, !dbg !738
  %and697 = and i64 %564, 65535, !dbg !738
  %565 = load i64, i64* %ul, align 8, !dbg !738
  %shr698 = lshr i64 %565, 16, !dbg !738
  %sub699 = sub i64 %and697, %shr698, !dbg !738
  store i64 %sub699, i64* %t1, align 8, !dbg !738
  %566 = load i64, i64* %t1, align 8, !dbg !738
  %shr700 = lshr i64 %566, 16, !dbg !738
  %567 = load i64, i64* %t1, align 8, !dbg !738
  %sub701 = sub i64 %567, %shr700, !dbg !738
  store i64 %sub701, i64* %t1, align 8, !dbg !738
  br label %if.end708, !dbg !738

if.else702:                                       ; preds = %if.end687
  %568 = load i64, i64* %t1, align 8, !dbg !737
  %conv703 = trunc i64 %568 to i32, !dbg !737
  %sub704 = sub nsw i32 0, %conv703, !dbg !737
  %569 = load i32*, i32** %p, align 8, !dbg !737
  %570 = load i32, i32* %569, align 4, !dbg !737
  %sub705 = sub i32 %sub704, %570, !dbg !737
  %add706 = add i32 %sub705, 1, !dbg !737
  %conv707 = zext i32 %add706 to i64, !dbg !737
  store i64 %conv707, i64* %t1, align 8, !dbg !737
  br label %if.end708

if.end708:                                        ; preds = %if.else702, %if.then696
  %571 = load i32*, i32** %p, align 8, !dbg !730
  %incdec.ptr709 = getelementptr inbounds i32, i32* %571, i32 1, !dbg !730
  store i32* %incdec.ptr709, i32** %p, align 8, !dbg !730
  %572 = load i64, i64* %t1, align 8, !dbg !730
  %573 = load i64, i64* %t0, align 8, !dbg !730
  %add710 = add i64 %573, %572, !dbg !730
  store i64 %add710, i64* %t0, align 8, !dbg !730
  %574 = load i64, i64* %t1, align 8, !dbg !730
  %575 = load i64, i64* %x1, align 8, !dbg !730
  %xor711 = xor i64 %575, %574, !dbg !730
  store i64 %xor711, i64* %x1, align 8, !dbg !730
  %576 = load i64, i64* %t0, align 8, !dbg !730
  %577 = load i64, i64* %x4, align 8, !dbg !730
  %xor712 = xor i64 %577, %576, !dbg !730
  store i64 %xor712, i64* %x4, align 8, !dbg !730
  %578 = load i64, i64* %x2, align 8, !dbg !730
  %579 = load i64, i64* %t0, align 8, !dbg !730
  %xor713 = xor i64 %578, %579, !dbg !730
  store i64 %xor713, i64* %ul, align 8, !dbg !730
  %580 = load i64, i64* %x3, align 8, !dbg !730
  %581 = load i64, i64* %t1, align 8, !dbg !730
  %xor714 = xor i64 %580, %581, !dbg !730
  store i64 %xor714, i64* %x2, align 8, !dbg !730
  %582 = load i64, i64* %ul, align 8, !dbg !730
  store i64 %582, i64* %x3, align 8, !dbg !730
  %583 = load i64, i64* %x1, align 8, !dbg !739
  %and715 = and i64 %583, 65535, !dbg !739
  store i64 %and715, i64* %x1, align 8, !dbg !739
  %584 = load i64, i64* %x1, align 8, !dbg !740
  %585 = load i32*, i32** %p, align 8, !dbg !740
  %586 = load i32, i32* %585, align 4, !dbg !740
  %conv716 = zext i32 %586 to i64, !dbg !740
  %mul717 = mul i64 %584, %conv716, !dbg !740
  store i64 %mul717, i64* %ul, align 8, !dbg !740
  %587 = load i64, i64* %ul, align 8, !dbg !741
  %cmp718 = icmp ne i64 %587, 0, !dbg !741
  br i1 %cmp718, label %if.then720, label %if.else726, !dbg !740

if.then720:                                       ; preds = %if.end708
  %588 = load i64, i64* %ul, align 8, !dbg !742
  %and721 = and i64 %588, 65535, !dbg !742
  %589 = load i64, i64* %ul, align 8, !dbg !742
  %shr722 = lshr i64 %589, 16, !dbg !742
  %sub723 = sub i64 %and721, %shr722, !dbg !742
  store i64 %sub723, i64* %x1, align 8, !dbg !742
  %590 = load i64, i64* %x1, align 8, !dbg !742
  %shr724 = lshr i64 %590, 16, !dbg !742
  %591 = load i64, i64* %x1, align 8, !dbg !742
  %sub725 = sub i64 %591, %shr724, !dbg !742
  store i64 %sub725, i64* %x1, align 8, !dbg !742
  br label %if.end732, !dbg !742

if.else726:                                       ; preds = %if.end708
  %592 = load i64, i64* %x1, align 8, !dbg !741
  %conv727 = trunc i64 %592 to i32, !dbg !741
  %sub728 = sub nsw i32 0, %conv727, !dbg !741
  %593 = load i32*, i32** %p, align 8, !dbg !741
  %594 = load i32, i32* %593, align 4, !dbg !741
  %sub729 = sub i32 %sub728, %594, !dbg !741
  %add730 = add i32 %sub729, 1, !dbg !741
  %conv731 = zext i32 %add730 to i64, !dbg !741
  store i64 %conv731, i64* %x1, align 8, !dbg !741
  br label %if.end732

if.end732:                                        ; preds = %if.else726, %if.then720
  %595 = load i32*, i32** %p, align 8, !dbg !743
  %incdec.ptr733 = getelementptr inbounds i32, i32* %595, i32 1, !dbg !743
  store i32* %incdec.ptr733, i32** %p, align 8, !dbg !743
  %596 = load i64, i64* %x3, align 8, !dbg !744
  %597 = load i32*, i32** %p, align 8, !dbg !745
  %incdec.ptr734 = getelementptr inbounds i32, i32* %597, i32 1, !dbg !745
  store i32* %incdec.ptr734, i32** %p, align 8, !dbg !745
  %598 = load i32, i32* %597, align 4, !dbg !746
  %conv735 = zext i32 %598 to i64, !dbg !746
  %add736 = add i64 %596, %conv735, !dbg !747
  store i64 %add736, i64* %t0, align 8, !dbg !748
  %599 = load i64, i64* %x2, align 8, !dbg !749
  %600 = load i32*, i32** %p, align 8, !dbg !750
  %incdec.ptr737 = getelementptr inbounds i32, i32* %600, i32 1, !dbg !750
  store i32* %incdec.ptr737, i32** %p, align 8, !dbg !750
  %601 = load i32, i32* %600, align 4, !dbg !751
  %conv738 = zext i32 %601 to i64, !dbg !751
  %add739 = add i64 %599, %conv738, !dbg !752
  store i64 %add739, i64* %t1, align 8, !dbg !753
  %602 = load i64, i64* %x4, align 8, !dbg !754
  %and740 = and i64 %602, 65535, !dbg !754
  store i64 %and740, i64* %x4, align 8, !dbg !754
  %603 = load i64, i64* %x4, align 8, !dbg !755
  %604 = load i32*, i32** %p, align 8, !dbg !755
  %605 = load i32, i32* %604, align 4, !dbg !755
  %conv741 = zext i32 %605 to i64, !dbg !755
  %mul742 = mul i64 %603, %conv741, !dbg !755
  store i64 %mul742, i64* %ul, align 8, !dbg !755
  %606 = load i64, i64* %ul, align 8, !dbg !756
  %cmp743 = icmp ne i64 %606, 0, !dbg !756
  br i1 %cmp743, label %if.then745, label %if.else751, !dbg !755

if.then745:                                       ; preds = %if.end732
  %607 = load i64, i64* %ul, align 8, !dbg !757
  %and746 = and i64 %607, 65535, !dbg !757
  %608 = load i64, i64* %ul, align 8, !dbg !757
  %shr747 = lshr i64 %608, 16, !dbg !757
  %sub748 = sub i64 %and746, %shr747, !dbg !757
  store i64 %sub748, i64* %x4, align 8, !dbg !757
  %609 = load i64, i64* %x4, align 8, !dbg !757
  %shr749 = lshr i64 %609, 16, !dbg !757
  %610 = load i64, i64* %x4, align 8, !dbg !757
  %sub750 = sub i64 %610, %shr749, !dbg !757
  store i64 %sub750, i64* %x4, align 8, !dbg !757
  br label %if.end757, !dbg !757

if.else751:                                       ; preds = %if.end732
  %611 = load i64, i64* %x4, align 8, !dbg !756
  %conv752 = trunc i64 %611 to i32, !dbg !756
  %sub753 = sub nsw i32 0, %conv752, !dbg !756
  %612 = load i32*, i32** %p, align 8, !dbg !756
  %613 = load i32, i32* %612, align 4, !dbg !756
  %sub754 = sub i32 %sub753, %613, !dbg !756
  %add755 = add i32 %sub754, 1, !dbg !756
  %conv756 = zext i32 %add755 to i64, !dbg !756
  store i64 %conv756, i64* %x4, align 8, !dbg !756
  br label %if.end757

if.end757:                                        ; preds = %if.else751, %if.then745
  %614 = load i64, i64* %t0, align 8, !dbg !758
  %and758 = and i64 %614, 65535, !dbg !759
  %615 = load i64, i64* %x1, align 8, !dbg !760
  %and759 = and i64 %615, 65535, !dbg !761
  %shl = shl i64 %and759, 16, !dbg !762
  %or = or i64 %and758, %shl, !dbg !763
  %616 = load i64*, i64** %d.addr, align 8, !dbg !764
  %arrayidx760 = getelementptr inbounds i64, i64* %616, i64 0, !dbg !764
  store i64 %or, i64* %arrayidx760, align 8, !dbg !765
  %617 = load i64, i64* %x4, align 8, !dbg !766
  %and761 = and i64 %617, 65535, !dbg !767
  %618 = load i64, i64* %t1, align 8, !dbg !768
  %and762 = and i64 %618, 65535, !dbg !769
  %shl763 = shl i64 %and762, 16, !dbg !770
  %or764 = or i64 %and761, %shl763, !dbg !771
  %619 = load i64*, i64** %d.addr, align 8, !dbg !772
  %arrayidx765 = getelementptr inbounds i64, i64* %619, i64 1, !dbg !772
  store i64 %or764, i64* %arrayidx765, align 8, !dbg !773
  ret void, !dbg !774
}

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 !dbg !775 {
entry:
  %d.addr.i.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %d.addr.i.i, metadata !393, metadata !DIExpression()), !dbg !778
  %key.addr.i.i = alloca %struct.idea_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %key.addr.i.i, metadata !400, metadata !DIExpression()), !dbg !781
  %p.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.i.i, metadata !402, metadata !DIExpression()), !dbg !782
  %x1.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x1.i.i, metadata !404, metadata !DIExpression()), !dbg !783
  %x2.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x2.i.i, metadata !406, metadata !DIExpression()), !dbg !784
  %x3.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x3.i.i, metadata !408, metadata !DIExpression()), !dbg !785
  %x4.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x4.i.i, metadata !410, metadata !DIExpression()), !dbg !786
  %t0.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t0.i.i, metadata !412, metadata !DIExpression()), !dbg !787
  %t1.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %t1.i.i, metadata !414, metadata !DIExpression()), !dbg !788
  %ul.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %ul.i.i, metadata !416, metadata !DIExpression()), !dbg !789
  %in.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr.i, metadata !418, metadata !DIExpression()), !dbg !790
  %out.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr.i, metadata !420, metadata !DIExpression()), !dbg !791
  %ks.addr.i11 = alloca %struct.idea_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %ks.addr.i11, metadata !422, metadata !DIExpression()), !dbg !792
  %l0.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %l0.i, metadata !424, metadata !DIExpression()), !dbg !793
  %l1.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %l1.i, metadata !426, metadata !DIExpression()), !dbg !794
  %d.i = alloca [2 x i64], align 16
  call void @llvm.dbg.declare(metadata [2 x i64]* %d.i, metadata !428, metadata !DIExpression()), !dbg !795
  %key.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %key.addr.i, metadata !32, metadata !DIExpression()), !dbg !796
  %ks.addr.i = alloca %struct.idea_key_st*, align 8
  call void @llvm.dbg.declare(metadata %struct.idea_key_st** %ks.addr.i, metadata !34, metadata !DIExpression()), !dbg !798
  %i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.i, metadata !36, metadata !DIExpression()), !dbg !799
  %kt.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %kt.i, metadata !38, metadata !DIExpression()), !dbg !800
  %kf.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %kf.i, metadata !41, metadata !DIExpression()), !dbg !801
  %r0.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r0.i, metadata !43, metadata !DIExpression()), !dbg !802
  %r1.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r1.i, metadata !45, metadata !DIExpression()), !dbg !803
  %r2.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r2.i, metadata !47, metadata !DIExpression()), !dbg !804
  %retval = alloca i32, align 4
  %eks = alloca %struct.idea_key_st, align 4
  %dks = alloca %struct.idea_key_st, align 4
  %text = alloca i8*, align 8
  %enc_out = alloca [256 x i8], align 16
  %charset = alloca [94 x i8], align 16
  %length = alloca i64, align 8
  %size = alloca i32, align 4
  %round = alloca i64, align 8
  %i = alloca i32, align 4
  %buff = alloca i8*, align 8
  %key = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.idea_key_st* %eks, metadata !805, metadata !DIExpression()), !dbg !806
  call void @llvm.dbg.declare(metadata %struct.idea_key_st* %dks, metadata !807, metadata !DIExpression()), !dbg !808
  call void @llvm.dbg.declare(metadata i8** %text, metadata !809, metadata !DIExpression()), !dbg !810
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %text, align 8, !dbg !810
  call void @llvm.dbg.declare(metadata [256 x i8]* %enc_out, metadata !811, metadata !DIExpression()), !dbg !815
  %0 = load i8*, i8** @key, align 8, !dbg !816
  store i8* %0, i8** %key.addr.i, align 8
  store %struct.idea_key_st* %eks, %struct.idea_key_st** %ks.addr.i, align 8
  %1 = load %struct.idea_key_st*, %struct.idea_key_st** %ks.addr.i, align 8, !dbg !817
  %data.i = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %1, i32 0, i32 0, !dbg !818
  %arrayidx.i = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data.i, i64 0, i64 0, !dbg !817
  %arrayidx1.i = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx.i, i64 0, i64 0, !dbg !817
  store i32* %arrayidx1.i, i32** %kt.i, align 8, !dbg !819
  %2 = load i8*, i8** %key.addr.i, align 8, !dbg !820
  %incdec.ptr.i = getelementptr inbounds i8, i8* %2, i32 1, !dbg !820
  store i8* %incdec.ptr.i, i8** %key.addr.i, align 8, !dbg !820
  %3 = load i8, i8* %2, align 1, !dbg !820
  %conv.i = zext i8 %3 to i32, !dbg !820
  %shl.i = shl i32 %conv.i, 8, !dbg !820
  %4 = load i32*, i32** %kt.i, align 8, !dbg !820
  store i32 %shl.i, i32* %4, align 4, !dbg !820
  %5 = load i8*, i8** %key.addr.i, align 8, !dbg !820
  %incdec.ptr3.i = getelementptr inbounds i8, i8* %5, i32 1, !dbg !820
  store i8* %incdec.ptr3.i, i8** %key.addr.i, align 8, !dbg !820
  %6 = load i8, i8* %5, align 1, !dbg !820
  %conv4.i = zext i8 %6 to i32, !dbg !820
  %7 = load i32*, i32** %kt.i, align 8, !dbg !820
  %8 = load i32, i32* %7, align 4, !dbg !820
  %or.i = or i32 %8, %conv4.i, !dbg !820
  store i32 %or.i, i32* %7, align 4, !dbg !820
  %9 = load i8*, i8** %key.addr.i, align 8, !dbg !821
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %9, i32 1, !dbg !821
  store i8* %incdec.ptr6.i, i8** %key.addr.i, align 8, !dbg !821
  %10 = load i8, i8* %9, align 1, !dbg !821
  %conv7.i = zext i8 %10 to i32, !dbg !821
  %shl8.i = shl i32 %conv7.i, 8, !dbg !821
  %11 = load i32*, i32** %kt.i, align 8, !dbg !821
  %arrayidx9.i = getelementptr inbounds i32, i32* %11, i64 1, !dbg !821
  store i32 %shl8.i, i32* %arrayidx9.i, align 4, !dbg !821
  %12 = load i8*, i8** %key.addr.i, align 8, !dbg !821
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %12, i32 1, !dbg !821
  store i8* %incdec.ptr10.i, i8** %key.addr.i, align 8, !dbg !821
  %13 = load i8, i8* %12, align 1, !dbg !821
  %conv11.i = zext i8 %13 to i32, !dbg !821
  %14 = load i32*, i32** %kt.i, align 8, !dbg !821
  %arrayidx12.i = getelementptr inbounds i32, i32* %14, i64 1, !dbg !821
  %15 = load i32, i32* %arrayidx12.i, align 4, !dbg !821
  %or13.i = or i32 %15, %conv11.i, !dbg !821
  store i32 %or13.i, i32* %arrayidx12.i, align 4, !dbg !821
  %16 = load i8*, i8** %key.addr.i, align 8, !dbg !822
  %incdec.ptr14.i = getelementptr inbounds i8, i8* %16, i32 1, !dbg !822
  store i8* %incdec.ptr14.i, i8** %key.addr.i, align 8, !dbg !822
  %17 = load i8, i8* %16, align 1, !dbg !822
  %conv15.i = zext i8 %17 to i32, !dbg !822
  %shl16.i = shl i32 %conv15.i, 8, !dbg !822
  %18 = load i32*, i32** %kt.i, align 8, !dbg !822
  %arrayidx17.i = getelementptr inbounds i32, i32* %18, i64 2, !dbg !822
  store i32 %shl16.i, i32* %arrayidx17.i, align 4, !dbg !822
  %19 = load i8*, i8** %key.addr.i, align 8, !dbg !822
  %incdec.ptr18.i = getelementptr inbounds i8, i8* %19, i32 1, !dbg !822
  store i8* %incdec.ptr18.i, i8** %key.addr.i, align 8, !dbg !822
  %20 = load i8, i8* %19, align 1, !dbg !822
  %conv19.i = zext i8 %20 to i32, !dbg !822
  %21 = load i32*, i32** %kt.i, align 8, !dbg !822
  %arrayidx20.i = getelementptr inbounds i32, i32* %21, i64 2, !dbg !822
  %22 = load i32, i32* %arrayidx20.i, align 4, !dbg !822
  %or21.i = or i32 %22, %conv19.i, !dbg !822
  store i32 %or21.i, i32* %arrayidx20.i, align 4, !dbg !822
  %23 = load i8*, i8** %key.addr.i, align 8, !dbg !823
  %incdec.ptr22.i = getelementptr inbounds i8, i8* %23, i32 1, !dbg !823
  store i8* %incdec.ptr22.i, i8** %key.addr.i, align 8, !dbg !823
  %24 = load i8, i8* %23, align 1, !dbg !823
  %conv23.i = zext i8 %24 to i32, !dbg !823
  %shl24.i = shl i32 %conv23.i, 8, !dbg !823
  %25 = load i32*, i32** %kt.i, align 8, !dbg !823
  %arrayidx25.i = getelementptr inbounds i32, i32* %25, i64 3, !dbg !823
  store i32 %shl24.i, i32* %arrayidx25.i, align 4, !dbg !823
  %26 = load i8*, i8** %key.addr.i, align 8, !dbg !823
  %incdec.ptr26.i = getelementptr inbounds i8, i8* %26, i32 1, !dbg !823
  store i8* %incdec.ptr26.i, i8** %key.addr.i, align 8, !dbg !823
  %27 = load i8, i8* %26, align 1, !dbg !823
  %conv27.i = zext i8 %27 to i32, !dbg !823
  %28 = load i32*, i32** %kt.i, align 8, !dbg !823
  %arrayidx28.i = getelementptr inbounds i32, i32* %28, i64 3, !dbg !823
  %29 = load i32, i32* %arrayidx28.i, align 4, !dbg !823
  %or29.i = or i32 %29, %conv27.i, !dbg !823
  store i32 %or29.i, i32* %arrayidx28.i, align 4, !dbg !823
  %30 = load i8*, i8** %key.addr.i, align 8, !dbg !824
  %incdec.ptr30.i = getelementptr inbounds i8, i8* %30, i32 1, !dbg !824
  store i8* %incdec.ptr30.i, i8** %key.addr.i, align 8, !dbg !824
  %31 = load i8, i8* %30, align 1, !dbg !824
  %conv31.i = zext i8 %31 to i32, !dbg !824
  %shl32.i = shl i32 %conv31.i, 8, !dbg !824
  %32 = load i32*, i32** %kt.i, align 8, !dbg !824
  %arrayidx33.i = getelementptr inbounds i32, i32* %32, i64 4, !dbg !824
  store i32 %shl32.i, i32* %arrayidx33.i, align 4, !dbg !824
  %33 = load i8*, i8** %key.addr.i, align 8, !dbg !824
  %incdec.ptr34.i = getelementptr inbounds i8, i8* %33, i32 1, !dbg !824
  store i8* %incdec.ptr34.i, i8** %key.addr.i, align 8, !dbg !824
  %34 = load i8, i8* %33, align 1, !dbg !824
  %conv35.i = zext i8 %34 to i32, !dbg !824
  %35 = load i32*, i32** %kt.i, align 8, !dbg !824
  %arrayidx36.i = getelementptr inbounds i32, i32* %35, i64 4, !dbg !824
  %36 = load i32, i32* %arrayidx36.i, align 4, !dbg !824
  %or37.i = or i32 %36, %conv35.i, !dbg !824
  store i32 %or37.i, i32* %arrayidx36.i, align 4, !dbg !824
  %37 = load i8*, i8** %key.addr.i, align 8, !dbg !825
  %incdec.ptr38.i = getelementptr inbounds i8, i8* %37, i32 1, !dbg !825
  store i8* %incdec.ptr38.i, i8** %key.addr.i, align 8, !dbg !825
  %38 = load i8, i8* %37, align 1, !dbg !825
  %conv39.i = zext i8 %38 to i32, !dbg !825
  %shl40.i = shl i32 %conv39.i, 8, !dbg !825
  %39 = load i32*, i32** %kt.i, align 8, !dbg !825
  %arrayidx41.i = getelementptr inbounds i32, i32* %39, i64 5, !dbg !825
  store i32 %shl40.i, i32* %arrayidx41.i, align 4, !dbg !825
  %40 = load i8*, i8** %key.addr.i, align 8, !dbg !825
  %incdec.ptr42.i = getelementptr inbounds i8, i8* %40, i32 1, !dbg !825
  store i8* %incdec.ptr42.i, i8** %key.addr.i, align 8, !dbg !825
  %41 = load i8, i8* %40, align 1, !dbg !825
  %conv43.i = zext i8 %41 to i32, !dbg !825
  %42 = load i32*, i32** %kt.i, align 8, !dbg !825
  %arrayidx44.i = getelementptr inbounds i32, i32* %42, i64 5, !dbg !825
  %43 = load i32, i32* %arrayidx44.i, align 4, !dbg !825
  %or45.i = or i32 %43, %conv43.i, !dbg !825
  store i32 %or45.i, i32* %arrayidx44.i, align 4, !dbg !825
  %44 = load i8*, i8** %key.addr.i, align 8, !dbg !826
  %incdec.ptr46.i = getelementptr inbounds i8, i8* %44, i32 1, !dbg !826
  store i8* %incdec.ptr46.i, i8** %key.addr.i, align 8, !dbg !826
  %45 = load i8, i8* %44, align 1, !dbg !826
  %conv47.i = zext i8 %45 to i32, !dbg !826
  %shl48.i = shl i32 %conv47.i, 8, !dbg !826
  %46 = load i32*, i32** %kt.i, align 8, !dbg !826
  %arrayidx49.i = getelementptr inbounds i32, i32* %46, i64 6, !dbg !826
  store i32 %shl48.i, i32* %arrayidx49.i, align 4, !dbg !826
  %47 = load i8*, i8** %key.addr.i, align 8, !dbg !826
  %incdec.ptr50.i = getelementptr inbounds i8, i8* %47, i32 1, !dbg !826
  store i8* %incdec.ptr50.i, i8** %key.addr.i, align 8, !dbg !826
  %48 = load i8, i8* %47, align 1, !dbg !826
  %conv51.i = zext i8 %48 to i32, !dbg !826
  %49 = load i32*, i32** %kt.i, align 8, !dbg !826
  %arrayidx52.i = getelementptr inbounds i32, i32* %49, i64 6, !dbg !826
  %50 = load i32, i32* %arrayidx52.i, align 4, !dbg !826
  %or53.i = or i32 %50, %conv51.i, !dbg !826
  store i32 %or53.i, i32* %arrayidx52.i, align 4, !dbg !826
  %51 = load i8*, i8** %key.addr.i, align 8, !dbg !827
  %incdec.ptr54.i = getelementptr inbounds i8, i8* %51, i32 1, !dbg !827
  store i8* %incdec.ptr54.i, i8** %key.addr.i, align 8, !dbg !827
  %52 = load i8, i8* %51, align 1, !dbg !827
  %conv55.i = zext i8 %52 to i32, !dbg !827
  %shl56.i = shl i32 %conv55.i, 8, !dbg !827
  %53 = load i32*, i32** %kt.i, align 8, !dbg !827
  %arrayidx57.i = getelementptr inbounds i32, i32* %53, i64 7, !dbg !827
  store i32 %shl56.i, i32* %arrayidx57.i, align 4, !dbg !827
  %54 = load i8*, i8** %key.addr.i, align 8, !dbg !827
  %incdec.ptr58.i = getelementptr inbounds i8, i8* %54, i32 1, !dbg !827
  store i8* %incdec.ptr58.i, i8** %key.addr.i, align 8, !dbg !827
  %55 = load i8, i8* %54, align 1, !dbg !827
  %conv59.i = zext i8 %55 to i32, !dbg !827
  %56 = load i32*, i32** %kt.i, align 8, !dbg !827
  %arrayidx60.i = getelementptr inbounds i32, i32* %56, i64 7, !dbg !827
  %57 = load i32, i32* %arrayidx60.i, align 4, !dbg !827
  %or61.i = or i32 %57, %conv59.i, !dbg !827
  store i32 %or61.i, i32* %arrayidx60.i, align 4, !dbg !827
  %58 = load i32*, i32** %kt.i, align 8, !dbg !828
  store i32* %58, i32** %kf.i, align 8, !dbg !829
  %59 = load i32*, i32** %kt.i, align 8, !dbg !830
  %add.ptr.i = getelementptr inbounds i32, i32* %59, i64 8, !dbg !830
  store i32* %add.ptr.i, i32** %kt.i, align 8, !dbg !830
  store i32 0, i32* %i.i, align 4, !dbg !831
  br label %for.cond.i, !dbg !832

for.cond.i:                                       ; preds = %if.end.i, %entry
  %60 = load i32, i32* %i.i, align 4, !dbg !833
  %cmp.i = icmp slt i32 %60, 6, !dbg !834
  br i1 %cmp.i, label %for.body.i, label %IDEA_set_encrypt_key.exit, !dbg !835

for.body.i:                                       ; preds = %for.cond.i
  %61 = load i32*, i32** %kf.i, align 8, !dbg !836
  %arrayidx63.i = getelementptr inbounds i32, i32* %61, i64 1, !dbg !836
  %62 = load i32, i32* %arrayidx63.i, align 4, !dbg !836
  store i32 %62, i32* %r2.i, align 4, !dbg !837
  %63 = load i32*, i32** %kf.i, align 8, !dbg !838
  %arrayidx64.i = getelementptr inbounds i32, i32* %63, i64 2, !dbg !838
  %64 = load i32, i32* %arrayidx64.i, align 4, !dbg !838
  store i32 %64, i32* %r1.i, align 4, !dbg !839
  %65 = load i32, i32* %r2.i, align 4, !dbg !840
  %shl65.i = shl i32 %65, 9, !dbg !841
  %66 = load i32, i32* %r1.i, align 4, !dbg !842
  %shr.i = lshr i32 %66, 7, !dbg !843
  %or66.i = or i32 %shl65.i, %shr.i, !dbg !844
  %and.i = and i32 %or66.i, 65535, !dbg !845
  %67 = load i32*, i32** %kt.i, align 8, !dbg !846
  %incdec.ptr67.i = getelementptr inbounds i32, i32* %67, i32 1, !dbg !846
  store i32* %incdec.ptr67.i, i32** %kt.i, align 8, !dbg !846
  store i32 %and.i, i32* %67, align 4, !dbg !847
  %68 = load i32*, i32** %kf.i, align 8, !dbg !848
  %arrayidx68.i = getelementptr inbounds i32, i32* %68, i64 3, !dbg !848
  %69 = load i32, i32* %arrayidx68.i, align 4, !dbg !848
  store i32 %69, i32* %r0.i, align 4, !dbg !849
  %70 = load i32, i32* %r1.i, align 4, !dbg !850
  %shl69.i = shl i32 %70, 9, !dbg !851
  %71 = load i32, i32* %r0.i, align 4, !dbg !852
  %shr70.i = lshr i32 %71, 7, !dbg !853
  %or71.i = or i32 %shl69.i, %shr70.i, !dbg !854
  %and72.i = and i32 %or71.i, 65535, !dbg !855
  %72 = load i32*, i32** %kt.i, align 8, !dbg !856
  %incdec.ptr73.i = getelementptr inbounds i32, i32* %72, i32 1, !dbg !856
  store i32* %incdec.ptr73.i, i32** %kt.i, align 8, !dbg !856
  store i32 %and72.i, i32* %72, align 4, !dbg !857
  %73 = load i32*, i32** %kf.i, align 8, !dbg !858
  %arrayidx74.i = getelementptr inbounds i32, i32* %73, i64 4, !dbg !858
  %74 = load i32, i32* %arrayidx74.i, align 4, !dbg !858
  store i32 %74, i32* %r1.i, align 4, !dbg !859
  %75 = load i32, i32* %r0.i, align 4, !dbg !860
  %shl75.i = shl i32 %75, 9, !dbg !861
  %76 = load i32, i32* %r1.i, align 4, !dbg !862
  %shr76.i = lshr i32 %76, 7, !dbg !863
  %or77.i = or i32 %shl75.i, %shr76.i, !dbg !864
  %and78.i = and i32 %or77.i, 65535, !dbg !865
  %77 = load i32*, i32** %kt.i, align 8, !dbg !866
  %incdec.ptr79.i = getelementptr inbounds i32, i32* %77, i32 1, !dbg !866
  store i32* %incdec.ptr79.i, i32** %kt.i, align 8, !dbg !866
  store i32 %and78.i, i32* %77, align 4, !dbg !867
  %78 = load i32*, i32** %kf.i, align 8, !dbg !868
  %arrayidx80.i = getelementptr inbounds i32, i32* %78, i64 5, !dbg !868
  %79 = load i32, i32* %arrayidx80.i, align 4, !dbg !868
  store i32 %79, i32* %r0.i, align 4, !dbg !869
  %80 = load i32, i32* %r1.i, align 4, !dbg !870
  %shl81.i = shl i32 %80, 9, !dbg !871
  %81 = load i32, i32* %r0.i, align 4, !dbg !872
  %shr82.i = lshr i32 %81, 7, !dbg !873
  %or83.i = or i32 %shl81.i, %shr82.i, !dbg !874
  %and84.i = and i32 %or83.i, 65535, !dbg !875
  %82 = load i32*, i32** %kt.i, align 8, !dbg !876
  %incdec.ptr85.i = getelementptr inbounds i32, i32* %82, i32 1, !dbg !876
  store i32* %incdec.ptr85.i, i32** %kt.i, align 8, !dbg !876
  store i32 %and84.i, i32* %82, align 4, !dbg !877
  %83 = load i32*, i32** %kf.i, align 8, !dbg !878
  %arrayidx86.i = getelementptr inbounds i32, i32* %83, i64 6, !dbg !878
  %84 = load i32, i32* %arrayidx86.i, align 4, !dbg !878
  store i32 %84, i32* %r1.i, align 4, !dbg !879
  %85 = load i32, i32* %r0.i, align 4, !dbg !880
  %shl87.i = shl i32 %85, 9, !dbg !881
  %86 = load i32, i32* %r1.i, align 4, !dbg !882
  %shr88.i = lshr i32 %86, 7, !dbg !883
  %or89.i = or i32 %shl87.i, %shr88.i, !dbg !884
  %and90.i = and i32 %or89.i, 65535, !dbg !885
  %87 = load i32*, i32** %kt.i, align 8, !dbg !886
  %incdec.ptr91.i = getelementptr inbounds i32, i32* %87, i32 1, !dbg !886
  store i32* %incdec.ptr91.i, i32** %kt.i, align 8, !dbg !886
  store i32 %and90.i, i32* %87, align 4, !dbg !887
  %88 = load i32*, i32** %kf.i, align 8, !dbg !888
  %arrayidx92.i = getelementptr inbounds i32, i32* %88, i64 7, !dbg !888
  %89 = load i32, i32* %arrayidx92.i, align 4, !dbg !888
  store i32 %89, i32* %r0.i, align 4, !dbg !889
  %90 = load i32, i32* %r1.i, align 4, !dbg !890
  %shl93.i = shl i32 %90, 9, !dbg !891
  %91 = load i32, i32* %r0.i, align 4, !dbg !892
  %shr94.i = lshr i32 %91, 7, !dbg !893
  %or95.i = or i32 %shl93.i, %shr94.i, !dbg !894
  %and96.i = and i32 %or95.i, 65535, !dbg !895
  %92 = load i32*, i32** %kt.i, align 8, !dbg !896
  %incdec.ptr97.i = getelementptr inbounds i32, i32* %92, i32 1, !dbg !896
  store i32* %incdec.ptr97.i, i32** %kt.i, align 8, !dbg !896
  store i32 %and96.i, i32* %92, align 4, !dbg !897
  %93 = load i32*, i32** %kf.i, align 8, !dbg !898
  %94 = load i32, i32* %93, align 4, !dbg !898
  store i32 %94, i32* %r1.i, align 4, !dbg !899
  %95 = load i32, i32* %i.i, align 4, !dbg !900
  %cmp99.i = icmp sge i32 %95, 5, !dbg !901
  br i1 %cmp99.i, label %if.then.i, label %if.end.i, !dbg !902

if.then.i:                                        ; preds = %for.body.i
  br label %IDEA_set_encrypt_key.exit, !dbg !903

if.end.i:                                         ; preds = %for.body.i
  %96 = load i32, i32* %r0.i, align 4, !dbg !904
  %shl101.i = shl i32 %96, 9, !dbg !905
  %97 = load i32, i32* %r1.i, align 4, !dbg !906
  %shr102.i = lshr i32 %97, 7, !dbg !907
  %or103.i = or i32 %shl101.i, %shr102.i, !dbg !908
  %and104.i = and i32 %or103.i, 65535, !dbg !909
  %98 = load i32*, i32** %kt.i, align 8, !dbg !910
  %incdec.ptr105.i = getelementptr inbounds i32, i32* %98, i32 1, !dbg !910
  store i32* %incdec.ptr105.i, i32** %kt.i, align 8, !dbg !910
  store i32 %and104.i, i32* %98, align 4, !dbg !911
  %99 = load i32, i32* %r1.i, align 4, !dbg !912
  %shl106.i = shl i32 %99, 9, !dbg !913
  %100 = load i32, i32* %r2.i, align 4, !dbg !914
  %shr107.i = lshr i32 %100, 7, !dbg !915
  %or108.i = or i32 %shl106.i, %shr107.i, !dbg !916
  %and109.i = and i32 %or108.i, 65535, !dbg !917
  %101 = load i32*, i32** %kt.i, align 8, !dbg !918
  %incdec.ptr110.i = getelementptr inbounds i32, i32* %101, i32 1, !dbg !918
  store i32* %incdec.ptr110.i, i32** %kt.i, align 8, !dbg !918
  store i32 %and109.i, i32* %101, align 4, !dbg !919
  %102 = load i32*, i32** %kf.i, align 8, !dbg !920
  %add.ptr111.i = getelementptr inbounds i32, i32* %102, i64 8, !dbg !920
  store i32* %add.ptr111.i, i32** %kf.i, align 8, !dbg !920
  %103 = load i32, i32* %i.i, align 4, !dbg !921
  %inc.i = add nsw i32 %103, 1, !dbg !921
  store i32 %inc.i, i32* %i.i, align 4, !dbg !921
  br label %for.cond.i, !dbg !922, !llvm.loop !923

IDEA_set_encrypt_key.exit:                        ; preds = %for.cond.i, %if.then.i
  call void @llvm.dbg.declare(metadata [94 x i8]* %charset, metadata !925, metadata !DIExpression()), !dbg !931
  %104 = bitcast [94 x i8]* %charset to i8*, !dbg !931
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %104, i8* align 16 getelementptr inbounds ([94 x i8], [94 x i8]* @__const.main.charset, i32 0, i32 0), i64 94, i1 false), !dbg !931
  call void @llvm.dbg.declare(metadata i64* %length, metadata !932, metadata !DIExpression()), !dbg !935
  store i64 94, i64* %length, align 8, !dbg !935
  call void @llvm.dbg.declare(metadata i32* %size, metadata !936, metadata !DIExpression()), !dbg !937
  store i32 1024, i32* %size, align 4, !dbg !937
  call void @llvm.dbg.declare(metadata i64* %round, metadata !938, metadata !DIExpression()), !dbg !939
  store i64 8, i64* %round, align 8, !dbg !939
  call void @llvm.dbg.declare(metadata i32* %i, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata i8** %buff, metadata !942, metadata !DIExpression()), !dbg !944
  %105 = load i32, i32* %size, align 4, !dbg !945
  %conv = sext i32 %105 to i64, !dbg !945
  %mul = mul i64 1, %conv, !dbg !946
  %106 = load i64, i64* %round, align 8, !dbg !947
  %mul1 = mul i64 %mul, %106, !dbg !948
  %call = call i8* @malloc(i64 %mul1), !dbg !949
  store i8* %call, i8** %buff, align 8, !dbg !944
  store i32 0, i32* %i, align 4, !dbg !950
  br label %for.cond, !dbg !952

for.cond:                                         ; preds = %for.inc, %IDEA_set_encrypt_key.exit
  %107 = load i32, i32* %i, align 4, !dbg !953
  %conv2 = sext i32 %107 to i64, !dbg !953
  %108 = load i32, i32* %size, align 4, !dbg !955
  %conv3 = sext i32 %108 to i64, !dbg !955
  %109 = load i64, i64* %round, align 8, !dbg !956
  %mul4 = mul i64 %conv3, %109, !dbg !957
  %cmp = icmp ult i64 %conv2, %mul4, !dbg !958
  br i1 %cmp, label %for.body, label %for.end, !dbg !959

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %key, metadata !960, metadata !DIExpression()), !dbg !962
  %call6 = call i32 (...) @rand(), !dbg !963
  %conv7 = sext i32 %call6 to i64, !dbg !963
  %110 = load i64, i64* %length, align 8, !dbg !964
  %rem = urem i64 %conv7, %110, !dbg !965
  %conv8 = trunc i64 %rem to i32, !dbg !963
  store i32 %conv8, i32* %key, align 4, !dbg !962
  %111 = load i32, i32* %key, align 4, !dbg !966
  %idxprom = sext i32 %111 to i64, !dbg !967
  %arrayidx = getelementptr inbounds [94 x i8], [94 x i8]* %charset, i64 0, i64 %idxprom, !dbg !967
  %112 = load i8, i8* %arrayidx, align 1, !dbg !967
  %113 = load i8*, i8** %buff, align 8, !dbg !968
  %114 = load i32, i32* %i, align 4, !dbg !969
  %idxprom9 = sext i32 %114 to i64, !dbg !968
  %arrayidx10 = getelementptr inbounds i8, i8* %113, i64 %idxprom9, !dbg !968
  store i8 %112, i8* %arrayidx10, align 1, !dbg !970
  br label %for.inc, !dbg !971

for.inc:                                          ; preds = %for.body
  %115 = load i32, i32* %i, align 4, !dbg !972
  %add = add nsw i32 %115, 64, !dbg !972
  store i32 %add, i32* %i, align 4, !dbg !972
  br label %for.cond, !dbg !973, !llvm.loop !974

for.end:                                          ; preds = %for.cond
  %116 = load i8*, i8** %text, align 8, !dbg !976
  %arraydecay = getelementptr inbounds [256 x i8], [256 x i8]* %enc_out, i64 0, i64 0, !dbg !977
  store i8* %116, i8** %in.addr.i, align 8
  store i8* %arraydecay, i8** %out.addr.i, align 8
  store %struct.idea_key_st* %eks, %struct.idea_key_st** %ks.addr.i11, align 8
  %117 = load i8*, i8** %in.addr.i, align 8, !dbg !978
  %incdec.ptr.i12 = getelementptr inbounds i8, i8* %117, i32 1, !dbg !978
  store i8* %incdec.ptr.i12, i8** %in.addr.i, align 8, !dbg !978
  %118 = load i8, i8* %117, align 1, !dbg !978
  %conv.i13 = zext i8 %118 to i64, !dbg !978
  %shl.i14 = shl i64 %conv.i13, 24, !dbg !978
  store i64 %shl.i14, i64* %l0.i, align 8, !dbg !978
  %119 = load i8*, i8** %in.addr.i, align 8, !dbg !978
  %incdec.ptr1.i = getelementptr inbounds i8, i8* %119, i32 1, !dbg !978
  store i8* %incdec.ptr1.i, i8** %in.addr.i, align 8, !dbg !978
  %120 = load i8, i8* %119, align 1, !dbg !978
  %conv2.i = zext i8 %120 to i64, !dbg !978
  %shl3.i = shl i64 %conv2.i, 16, !dbg !978
  %121 = load i64, i64* %l0.i, align 8, !dbg !978
  %or.i15 = or i64 %121, %shl3.i, !dbg !978
  store i64 %or.i15, i64* %l0.i, align 8, !dbg !978
  %122 = load i8*, i8** %in.addr.i, align 8, !dbg !978
  %incdec.ptr4.i = getelementptr inbounds i8, i8* %122, i32 1, !dbg !978
  store i8* %incdec.ptr4.i, i8** %in.addr.i, align 8, !dbg !978
  %123 = load i8, i8* %122, align 1, !dbg !978
  %conv5.i = zext i8 %123 to i64, !dbg !978
  %shl6.i = shl i64 %conv5.i, 8, !dbg !978
  %124 = load i64, i64* %l0.i, align 8, !dbg !978
  %or7.i = or i64 %124, %shl6.i, !dbg !978
  store i64 %or7.i, i64* %l0.i, align 8, !dbg !978
  %125 = load i8*, i8** %in.addr.i, align 8, !dbg !978
  %incdec.ptr8.i = getelementptr inbounds i8, i8* %125, i32 1, !dbg !978
  store i8* %incdec.ptr8.i, i8** %in.addr.i, align 8, !dbg !978
  %126 = load i8, i8* %125, align 1, !dbg !978
  %conv9.i = zext i8 %126 to i64, !dbg !978
  %127 = load i64, i64* %l0.i, align 8, !dbg !978
  %or10.i = or i64 %127, %conv9.i, !dbg !978
  store i64 %or10.i, i64* %l0.i, align 8, !dbg !978
  %128 = load i64, i64* %l0.i, align 8, !dbg !979
  %arrayidx.i16 = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 0, !dbg !980
  store i64 %128, i64* %arrayidx.i16, align 16, !dbg !981
  %129 = load i8*, i8** %in.addr.i, align 8, !dbg !982
  %incdec.ptr11.i = getelementptr inbounds i8, i8* %129, i32 1, !dbg !982
  store i8* %incdec.ptr11.i, i8** %in.addr.i, align 8, !dbg !982
  %130 = load i8, i8* %129, align 1, !dbg !982
  %conv12.i = zext i8 %130 to i64, !dbg !982
  %shl13.i = shl i64 %conv12.i, 24, !dbg !982
  store i64 %shl13.i, i64* %l1.i, align 8, !dbg !982
  %131 = load i8*, i8** %in.addr.i, align 8, !dbg !982
  %incdec.ptr14.i17 = getelementptr inbounds i8, i8* %131, i32 1, !dbg !982
  store i8* %incdec.ptr14.i17, i8** %in.addr.i, align 8, !dbg !982
  %132 = load i8, i8* %131, align 1, !dbg !982
  %conv15.i18 = zext i8 %132 to i64, !dbg !982
  %shl16.i19 = shl i64 %conv15.i18, 16, !dbg !982
  %133 = load i64, i64* %l1.i, align 8, !dbg !982
  %or17.i = or i64 %133, %shl16.i19, !dbg !982
  store i64 %or17.i, i64* %l1.i, align 8, !dbg !982
  %134 = load i8*, i8** %in.addr.i, align 8, !dbg !982
  %incdec.ptr18.i20 = getelementptr inbounds i8, i8* %134, i32 1, !dbg !982
  store i8* %incdec.ptr18.i20, i8** %in.addr.i, align 8, !dbg !982
  %135 = load i8, i8* %134, align 1, !dbg !982
  %conv19.i21 = zext i8 %135 to i64, !dbg !982
  %shl20.i = shl i64 %conv19.i21, 8, !dbg !982
  %136 = load i64, i64* %l1.i, align 8, !dbg !982
  %or21.i22 = or i64 %136, %shl20.i, !dbg !982
  store i64 %or21.i22, i64* %l1.i, align 8, !dbg !982
  %137 = load i8*, i8** %in.addr.i, align 8, !dbg !982
  %incdec.ptr22.i23 = getelementptr inbounds i8, i8* %137, i32 1, !dbg !982
  store i8* %incdec.ptr22.i23, i8** %in.addr.i, align 8, !dbg !982
  %138 = load i8, i8* %137, align 1, !dbg !982
  %conv23.i24 = zext i8 %138 to i64, !dbg !982
  %139 = load i64, i64* %l1.i, align 8, !dbg !982
  %or24.i = or i64 %139, %conv23.i24, !dbg !982
  store i64 %or24.i, i64* %l1.i, align 8, !dbg !982
  %140 = load i64, i64* %l1.i, align 8, !dbg !983
  %arrayidx25.i25 = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 1, !dbg !984
  store i64 %140, i64* %arrayidx25.i25, align 8, !dbg !985
  %arraydecay.i = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 0, !dbg !986
  %141 = load %struct.idea_key_st*, %struct.idea_key_st** %ks.addr.i11, align 8, !dbg !987
  store i64* %arraydecay.i, i64** %d.addr.i.i, align 8
  store %struct.idea_key_st* %141, %struct.idea_key_st** %key.addr.i.i, align 8
  %key.addr1.i.i = bitcast %struct.idea_key_st** %key.addr.i.i to i8*
  call void @llvm.var.annotation(i8* %key.addr1.i.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i32 133) #6
  %142 = load i64*, i64** %d.addr.i.i, align 8, !dbg !988
  %143 = load i64, i64* %142, align 8, !dbg !988
  store i64 %143, i64* %x2.i.i, align 8, !dbg !989
  %144 = load i64, i64* %x2.i.i, align 8, !dbg !990
  %shr.i.i = lshr i64 %144, 16, !dbg !991
  store i64 %shr.i.i, i64* %x1.i.i, align 8, !dbg !992
  %145 = load i64*, i64** %d.addr.i.i, align 8, !dbg !993
  %arrayidx2.i.i = getelementptr inbounds i64, i64* %145, i64 1, !dbg !993
  %146 = load i64, i64* %arrayidx2.i.i, align 8, !dbg !993
  store i64 %146, i64* %x4.i.i, align 8, !dbg !994
  %147 = load i64, i64* %x4.i.i, align 8, !dbg !995
  %shr3.i.i = lshr i64 %147, 16, !dbg !996
  store i64 %shr3.i.i, i64* %x3.i.i, align 8, !dbg !997
  %148 = load %struct.idea_key_st*, %struct.idea_key_st** %key.addr.i.i, align 8, !dbg !998
  %data.i.i = getelementptr inbounds %struct.idea_key_st, %struct.idea_key_st* %148, i32 0, i32 0, !dbg !999
  %arrayidx4.i.i = getelementptr inbounds [9 x [6 x i32]], [9 x [6 x i32]]* %data.i.i, i64 0, i64 0, !dbg !998
  %arrayidx5.i.i = getelementptr inbounds [6 x i32], [6 x i32]* %arrayidx4.i.i, i64 0, i64 0, !dbg !998
  store i32* %arrayidx5.i.i, i32** %p.i.i, align 8, !dbg !1000
  %149 = load i64, i64* %x1.i.i, align 8, !dbg !1001
  %and.i.i = and i64 %149, 65535, !dbg !1001
  store i64 %and.i.i, i64* %x1.i.i, align 8, !dbg !1001
  %150 = load i64, i64* %x1.i.i, align 8, !dbg !1001
  %151 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %152 = load i32, i32* %151, align 4, !dbg !1001
  %conv.i.i = zext i32 %152 to i64, !dbg !1001
  %mul.i.i = mul i64 %150, %conv.i.i, !dbg !1001
  store i64 %mul.i.i, i64* %ul.i.i, align 8, !dbg !1001
  %153 = load i64, i64* %ul.i.i, align 8, !dbg !1002
  %cmp.i.i = icmp ne i64 %153, 0, !dbg !1002
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !1001

if.then.i.i:                                      ; preds = %for.end
  %154 = load i64, i64* %ul.i.i, align 8, !dbg !1003
  %and7.i.i = and i64 %154, 65535, !dbg !1003
  %155 = load i64, i64* %ul.i.i, align 8, !dbg !1003
  %shr8.i.i = lshr i64 %155, 16, !dbg !1003
  %sub.i.i = sub i64 %and7.i.i, %shr8.i.i, !dbg !1003
  store i64 %sub.i.i, i64* %x1.i.i, align 8, !dbg !1003
  %156 = load i64, i64* %x1.i.i, align 8, !dbg !1003
  %shr9.i.i = lshr i64 %156, 16, !dbg !1003
  %157 = load i64, i64* %x1.i.i, align 8, !dbg !1003
  %sub10.i.i = sub i64 %157, %shr9.i.i, !dbg !1003
  store i64 %sub10.i.i, i64* %x1.i.i, align 8, !dbg !1003
  br label %if.end.i.i, !dbg !1003

if.else.i.i:                                      ; preds = %for.end
  %158 = load i64, i64* %x1.i.i, align 8, !dbg !1002
  %conv11.i.i = trunc i64 %158 to i32, !dbg !1002
  %sub12.i.i = sub nsw i32 0, %conv11.i.i, !dbg !1002
  %159 = load i32*, i32** %p.i.i, align 8, !dbg !1002
  %160 = load i32, i32* %159, align 4, !dbg !1002
  %sub13.i.i = sub i32 %sub12.i.i, %160, !dbg !1002
  %add.i.i = add i32 %sub13.i.i, 1, !dbg !1002
  %conv14.i.i = zext i32 %add.i.i to i64, !dbg !1002
  store i64 %conv14.i.i, i64* %x1.i.i, align 8, !dbg !1002
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %161 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %incdec.ptr.i.i = getelementptr inbounds i32, i32* %161, i32 1, !dbg !1001
  store i32* %incdec.ptr.i.i, i32** %p.i.i, align 8, !dbg !1001
  %162 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %incdec.ptr15.i.i = getelementptr inbounds i32, i32* %162, i32 1, !dbg !1001
  store i32* %incdec.ptr15.i.i, i32** %p.i.i, align 8, !dbg !1001
  %163 = load i32, i32* %162, align 4, !dbg !1001
  %conv16.i.i = zext i32 %163 to i64, !dbg !1001
  %164 = load i64, i64* %x2.i.i, align 8, !dbg !1001
  %add17.i.i = add i64 %164, %conv16.i.i, !dbg !1001
  store i64 %add17.i.i, i64* %x2.i.i, align 8, !dbg !1001
  %165 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %incdec.ptr18.i.i = getelementptr inbounds i32, i32* %165, i32 1, !dbg !1001
  store i32* %incdec.ptr18.i.i, i32** %p.i.i, align 8, !dbg !1001
  %166 = load i32, i32* %165, align 4, !dbg !1001
  %conv19.i.i = zext i32 %166 to i64, !dbg !1001
  %167 = load i64, i64* %x3.i.i, align 8, !dbg !1001
  %add20.i.i = add i64 %167, %conv19.i.i, !dbg !1001
  store i64 %add20.i.i, i64* %x3.i.i, align 8, !dbg !1001
  %168 = load i64, i64* %x4.i.i, align 8, !dbg !1001
  %and21.i.i = and i64 %168, 65535, !dbg !1001
  store i64 %and21.i.i, i64* %x4.i.i, align 8, !dbg !1001
  %169 = load i64, i64* %x4.i.i, align 8, !dbg !1001
  %170 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %171 = load i32, i32* %170, align 4, !dbg !1001
  %conv22.i.i = zext i32 %171 to i64, !dbg !1001
  %mul23.i.i = mul i64 %169, %conv22.i.i, !dbg !1001
  store i64 %mul23.i.i, i64* %ul.i.i, align 8, !dbg !1001
  %172 = load i64, i64* %ul.i.i, align 8, !dbg !1004
  %cmp24.i.i = icmp ne i64 %172, 0, !dbg !1004
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.else32.i.i, !dbg !1001

if.then26.i.i:                                    ; preds = %if.end.i.i
  %173 = load i64, i64* %ul.i.i, align 8, !dbg !1005
  %and27.i.i = and i64 %173, 65535, !dbg !1005
  %174 = load i64, i64* %ul.i.i, align 8, !dbg !1005
  %shr28.i.i = lshr i64 %174, 16, !dbg !1005
  %sub29.i.i = sub i64 %and27.i.i, %shr28.i.i, !dbg !1005
  store i64 %sub29.i.i, i64* %x4.i.i, align 8, !dbg !1005
  %175 = load i64, i64* %x4.i.i, align 8, !dbg !1005
  %shr30.i.i = lshr i64 %175, 16, !dbg !1005
  %176 = load i64, i64* %x4.i.i, align 8, !dbg !1005
  %sub31.i.i = sub i64 %176, %shr30.i.i, !dbg !1005
  store i64 %sub31.i.i, i64* %x4.i.i, align 8, !dbg !1005
  br label %if.end38.i.i, !dbg !1005

if.else32.i.i:                                    ; preds = %if.end.i.i
  %177 = load i64, i64* %x4.i.i, align 8, !dbg !1004
  %conv33.i.i = trunc i64 %177 to i32, !dbg !1004
  %sub34.i.i = sub nsw i32 0, %conv33.i.i, !dbg !1004
  %178 = load i32*, i32** %p.i.i, align 8, !dbg !1004
  %179 = load i32, i32* %178, align 4, !dbg !1004
  %sub35.i.i = sub i32 %sub34.i.i, %179, !dbg !1004
  %add36.i.i = add i32 %sub35.i.i, 1, !dbg !1004
  %conv37.i.i = zext i32 %add36.i.i to i64, !dbg !1004
  store i64 %conv37.i.i, i64* %x4.i.i, align 8, !dbg !1004
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else32.i.i, %if.then26.i.i
  %180 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %incdec.ptr39.i.i = getelementptr inbounds i32, i32* %180, i32 1, !dbg !1001
  store i32* %incdec.ptr39.i.i, i32** %p.i.i, align 8, !dbg !1001
  %181 = load i64, i64* %x1.i.i, align 8, !dbg !1001
  %182 = load i64, i64* %x3.i.i, align 8, !dbg !1001
  %xor.i.i = xor i64 %181, %182, !dbg !1001
  %and40.i.i = and i64 %xor.i.i, 65535, !dbg !1001
  store i64 %and40.i.i, i64* %t0.i.i, align 8, !dbg !1001
  %183 = load i64, i64* %t0.i.i, align 8, !dbg !1001
  %184 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %185 = load i32, i32* %184, align 4, !dbg !1001
  %conv41.i.i = zext i32 %185 to i64, !dbg !1001
  %mul42.i.i = mul i64 %183, %conv41.i.i, !dbg !1001
  store i64 %mul42.i.i, i64* %ul.i.i, align 8, !dbg !1001
  %186 = load i64, i64* %ul.i.i, align 8, !dbg !1006
  %cmp43.i.i = icmp ne i64 %186, 0, !dbg !1006
  br i1 %cmp43.i.i, label %if.then45.i.i, label %if.else51.i.i, !dbg !1001

if.then45.i.i:                                    ; preds = %if.end38.i.i
  %187 = load i64, i64* %ul.i.i, align 8, !dbg !1007
  %and46.i.i = and i64 %187, 65535, !dbg !1007
  %188 = load i64, i64* %ul.i.i, align 8, !dbg !1007
  %shr47.i.i = lshr i64 %188, 16, !dbg !1007
  %sub48.i.i = sub i64 %and46.i.i, %shr47.i.i, !dbg !1007
  store i64 %sub48.i.i, i64* %t0.i.i, align 8, !dbg !1007
  %189 = load i64, i64* %t0.i.i, align 8, !dbg !1007
  %shr49.i.i = lshr i64 %189, 16, !dbg !1007
  %190 = load i64, i64* %t0.i.i, align 8, !dbg !1007
  %sub50.i.i = sub i64 %190, %shr49.i.i, !dbg !1007
  store i64 %sub50.i.i, i64* %t0.i.i, align 8, !dbg !1007
  br label %if.end57.i.i, !dbg !1007

if.else51.i.i:                                    ; preds = %if.end38.i.i
  %191 = load i64, i64* %t0.i.i, align 8, !dbg !1006
  %conv52.i.i = trunc i64 %191 to i32, !dbg !1006
  %sub53.i.i = sub nsw i32 0, %conv52.i.i, !dbg !1006
  %192 = load i32*, i32** %p.i.i, align 8, !dbg !1006
  %193 = load i32, i32* %192, align 4, !dbg !1006
  %sub54.i.i = sub i32 %sub53.i.i, %193, !dbg !1006
  %add55.i.i = add i32 %sub54.i.i, 1, !dbg !1006
  %conv56.i.i = zext i32 %add55.i.i to i64, !dbg !1006
  store i64 %conv56.i.i, i64* %t0.i.i, align 8, !dbg !1006
  br label %if.end57.i.i

if.end57.i.i:                                     ; preds = %if.else51.i.i, %if.then45.i.i
  %194 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %incdec.ptr58.i.i = getelementptr inbounds i32, i32* %194, i32 1, !dbg !1001
  store i32* %incdec.ptr58.i.i, i32** %p.i.i, align 8, !dbg !1001
  %195 = load i64, i64* %t0.i.i, align 8, !dbg !1001
  %196 = load i64, i64* %x2.i.i, align 8, !dbg !1001
  %197 = load i64, i64* %x4.i.i, align 8, !dbg !1001
  %xor59.i.i = xor i64 %196, %197, !dbg !1001
  %add60.i.i = add i64 %195, %xor59.i.i, !dbg !1001
  %and61.i.i = and i64 %add60.i.i, 65535, !dbg !1001
  store i64 %and61.i.i, i64* %t1.i.i, align 8, !dbg !1001
  %198 = load i64, i64* %t1.i.i, align 8, !dbg !1001
  %199 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %200 = load i32, i32* %199, align 4, !dbg !1001
  %conv62.i.i = zext i32 %200 to i64, !dbg !1001
  %mul63.i.i = mul i64 %198, %conv62.i.i, !dbg !1001
  store i64 %mul63.i.i, i64* %ul.i.i, align 8, !dbg !1001
  %201 = load i64, i64* %ul.i.i, align 8, !dbg !1008
  %cmp64.i.i = icmp ne i64 %201, 0, !dbg !1008
  br i1 %cmp64.i.i, label %if.then66.i.i, label %if.else72.i.i, !dbg !1001

if.then66.i.i:                                    ; preds = %if.end57.i.i
  %202 = load i64, i64* %ul.i.i, align 8, !dbg !1009
  %and67.i.i = and i64 %202, 65535, !dbg !1009
  %203 = load i64, i64* %ul.i.i, align 8, !dbg !1009
  %shr68.i.i = lshr i64 %203, 16, !dbg !1009
  %sub69.i.i = sub i64 %and67.i.i, %shr68.i.i, !dbg !1009
  store i64 %sub69.i.i, i64* %t1.i.i, align 8, !dbg !1009
  %204 = load i64, i64* %t1.i.i, align 8, !dbg !1009
  %shr70.i.i = lshr i64 %204, 16, !dbg !1009
  %205 = load i64, i64* %t1.i.i, align 8, !dbg !1009
  %sub71.i.i = sub i64 %205, %shr70.i.i, !dbg !1009
  store i64 %sub71.i.i, i64* %t1.i.i, align 8, !dbg !1009
  br label %if.end78.i.i, !dbg !1009

if.else72.i.i:                                    ; preds = %if.end57.i.i
  %206 = load i64, i64* %t1.i.i, align 8, !dbg !1008
  %conv73.i.i = trunc i64 %206 to i32, !dbg !1008
  %sub74.i.i = sub nsw i32 0, %conv73.i.i, !dbg !1008
  %207 = load i32*, i32** %p.i.i, align 8, !dbg !1008
  %208 = load i32, i32* %207, align 4, !dbg !1008
  %sub75.i.i = sub i32 %sub74.i.i, %208, !dbg !1008
  %add76.i.i = add i32 %sub75.i.i, 1, !dbg !1008
  %conv77.i.i = zext i32 %add76.i.i to i64, !dbg !1008
  store i64 %conv77.i.i, i64* %t1.i.i, align 8, !dbg !1008
  br label %if.end78.i.i

if.end78.i.i:                                     ; preds = %if.else72.i.i, %if.then66.i.i
  %209 = load i32*, i32** %p.i.i, align 8, !dbg !1001
  %incdec.ptr79.i.i = getelementptr inbounds i32, i32* %209, i32 1, !dbg !1001
  store i32* %incdec.ptr79.i.i, i32** %p.i.i, align 8, !dbg !1001
  %210 = load i64, i64* %t1.i.i, align 8, !dbg !1001
  %211 = load i64, i64* %t0.i.i, align 8, !dbg !1001
  %add80.i.i = add i64 %211, %210, !dbg !1001
  store i64 %add80.i.i, i64* %t0.i.i, align 8, !dbg !1001
  %212 = load i64, i64* %t1.i.i, align 8, !dbg !1001
  %213 = load i64, i64* %x1.i.i, align 8, !dbg !1001
  %xor81.i.i = xor i64 %213, %212, !dbg !1001
  store i64 %xor81.i.i, i64* %x1.i.i, align 8, !dbg !1001
  %214 = load i64, i64* %t0.i.i, align 8, !dbg !1001
  %215 = load i64, i64* %x4.i.i, align 8, !dbg !1001
  %xor82.i.i = xor i64 %215, %214, !dbg !1001
  store i64 %xor82.i.i, i64* %x4.i.i, align 8, !dbg !1001
  %216 = load i64, i64* %x2.i.i, align 8, !dbg !1001
  %217 = load i64, i64* %t0.i.i, align 8, !dbg !1001
  %xor83.i.i = xor i64 %216, %217, !dbg !1001
  store i64 %xor83.i.i, i64* %ul.i.i, align 8, !dbg !1001
  %218 = load i64, i64* %x3.i.i, align 8, !dbg !1001
  %219 = load i64, i64* %t1.i.i, align 8, !dbg !1001
  %xor84.i.i = xor i64 %218, %219, !dbg !1001
  store i64 %xor84.i.i, i64* %x2.i.i, align 8, !dbg !1001
  %220 = load i64, i64* %ul.i.i, align 8, !dbg !1001
  store i64 %220, i64* %x3.i.i, align 8, !dbg !1001
  %221 = load i64, i64* %x1.i.i, align 8, !dbg !1010
  %and85.i.i = and i64 %221, 65535, !dbg !1010
  store i64 %and85.i.i, i64* %x1.i.i, align 8, !dbg !1010
  %222 = load i64, i64* %x1.i.i, align 8, !dbg !1010
  %223 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %224 = load i32, i32* %223, align 4, !dbg !1010
  %conv86.i.i = zext i32 %224 to i64, !dbg !1010
  %mul87.i.i = mul i64 %222, %conv86.i.i, !dbg !1010
  store i64 %mul87.i.i, i64* %ul.i.i, align 8, !dbg !1010
  %225 = load i64, i64* %ul.i.i, align 8, !dbg !1011
  %cmp88.i.i = icmp ne i64 %225, 0, !dbg !1011
  br i1 %cmp88.i.i, label %if.then90.i.i, label %if.else96.i.i, !dbg !1010

if.then90.i.i:                                    ; preds = %if.end78.i.i
  %226 = load i64, i64* %ul.i.i, align 8, !dbg !1012
  %and91.i.i = and i64 %226, 65535, !dbg !1012
  %227 = load i64, i64* %ul.i.i, align 8, !dbg !1012
  %shr92.i.i = lshr i64 %227, 16, !dbg !1012
  %sub93.i.i = sub i64 %and91.i.i, %shr92.i.i, !dbg !1012
  store i64 %sub93.i.i, i64* %x1.i.i, align 8, !dbg !1012
  %228 = load i64, i64* %x1.i.i, align 8, !dbg !1012
  %shr94.i.i = lshr i64 %228, 16, !dbg !1012
  %229 = load i64, i64* %x1.i.i, align 8, !dbg !1012
  %sub95.i.i = sub i64 %229, %shr94.i.i, !dbg !1012
  store i64 %sub95.i.i, i64* %x1.i.i, align 8, !dbg !1012
  br label %if.end102.i.i, !dbg !1012

if.else96.i.i:                                    ; preds = %if.end78.i.i
  %230 = load i64, i64* %x1.i.i, align 8, !dbg !1011
  %conv97.i.i = trunc i64 %230 to i32, !dbg !1011
  %sub98.i.i = sub nsw i32 0, %conv97.i.i, !dbg !1011
  %231 = load i32*, i32** %p.i.i, align 8, !dbg !1011
  %232 = load i32, i32* %231, align 4, !dbg !1011
  %sub99.i.i = sub i32 %sub98.i.i, %232, !dbg !1011
  %add100.i.i = add i32 %sub99.i.i, 1, !dbg !1011
  %conv101.i.i = zext i32 %add100.i.i to i64, !dbg !1011
  store i64 %conv101.i.i, i64* %x1.i.i, align 8, !dbg !1011
  br label %if.end102.i.i

if.end102.i.i:                                    ; preds = %if.else96.i.i, %if.then90.i.i
  %233 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %incdec.ptr103.i.i = getelementptr inbounds i32, i32* %233, i32 1, !dbg !1010
  store i32* %incdec.ptr103.i.i, i32** %p.i.i, align 8, !dbg !1010
  %234 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %incdec.ptr104.i.i = getelementptr inbounds i32, i32* %234, i32 1, !dbg !1010
  store i32* %incdec.ptr104.i.i, i32** %p.i.i, align 8, !dbg !1010
  %235 = load i32, i32* %234, align 4, !dbg !1010
  %conv105.i.i = zext i32 %235 to i64, !dbg !1010
  %236 = load i64, i64* %x2.i.i, align 8, !dbg !1010
  %add106.i.i = add i64 %236, %conv105.i.i, !dbg !1010
  store i64 %add106.i.i, i64* %x2.i.i, align 8, !dbg !1010
  %237 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %incdec.ptr107.i.i = getelementptr inbounds i32, i32* %237, i32 1, !dbg !1010
  store i32* %incdec.ptr107.i.i, i32** %p.i.i, align 8, !dbg !1010
  %238 = load i32, i32* %237, align 4, !dbg !1010
  %conv108.i.i = zext i32 %238 to i64, !dbg !1010
  %239 = load i64, i64* %x3.i.i, align 8, !dbg !1010
  %add109.i.i = add i64 %239, %conv108.i.i, !dbg !1010
  store i64 %add109.i.i, i64* %x3.i.i, align 8, !dbg !1010
  %240 = load i64, i64* %x4.i.i, align 8, !dbg !1010
  %and110.i.i = and i64 %240, 65535, !dbg !1010
  store i64 %and110.i.i, i64* %x4.i.i, align 8, !dbg !1010
  %241 = load i64, i64* %x4.i.i, align 8, !dbg !1010
  %242 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %243 = load i32, i32* %242, align 4, !dbg !1010
  %conv111.i.i = zext i32 %243 to i64, !dbg !1010
  %mul112.i.i = mul i64 %241, %conv111.i.i, !dbg !1010
  store i64 %mul112.i.i, i64* %ul.i.i, align 8, !dbg !1010
  %244 = load i64, i64* %ul.i.i, align 8, !dbg !1013
  %cmp113.i.i = icmp ne i64 %244, 0, !dbg !1013
  br i1 %cmp113.i.i, label %if.then115.i.i, label %if.else121.i.i, !dbg !1010

if.then115.i.i:                                   ; preds = %if.end102.i.i
  %245 = load i64, i64* %ul.i.i, align 8, !dbg !1014
  %and116.i.i = and i64 %245, 65535, !dbg !1014
  %246 = load i64, i64* %ul.i.i, align 8, !dbg !1014
  %shr117.i.i = lshr i64 %246, 16, !dbg !1014
  %sub118.i.i = sub i64 %and116.i.i, %shr117.i.i, !dbg !1014
  store i64 %sub118.i.i, i64* %x4.i.i, align 8, !dbg !1014
  %247 = load i64, i64* %x4.i.i, align 8, !dbg !1014
  %shr119.i.i = lshr i64 %247, 16, !dbg !1014
  %248 = load i64, i64* %x4.i.i, align 8, !dbg !1014
  %sub120.i.i = sub i64 %248, %shr119.i.i, !dbg !1014
  store i64 %sub120.i.i, i64* %x4.i.i, align 8, !dbg !1014
  br label %if.end127.i.i, !dbg !1014

if.else121.i.i:                                   ; preds = %if.end102.i.i
  %249 = load i64, i64* %x4.i.i, align 8, !dbg !1013
  %conv122.i.i = trunc i64 %249 to i32, !dbg !1013
  %sub123.i.i = sub nsw i32 0, %conv122.i.i, !dbg !1013
  %250 = load i32*, i32** %p.i.i, align 8, !dbg !1013
  %251 = load i32, i32* %250, align 4, !dbg !1013
  %sub124.i.i = sub i32 %sub123.i.i, %251, !dbg !1013
  %add125.i.i = add i32 %sub124.i.i, 1, !dbg !1013
  %conv126.i.i = zext i32 %add125.i.i to i64, !dbg !1013
  store i64 %conv126.i.i, i64* %x4.i.i, align 8, !dbg !1013
  br label %if.end127.i.i

if.end127.i.i:                                    ; preds = %if.else121.i.i, %if.then115.i.i
  %252 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %incdec.ptr128.i.i = getelementptr inbounds i32, i32* %252, i32 1, !dbg !1010
  store i32* %incdec.ptr128.i.i, i32** %p.i.i, align 8, !dbg !1010
  %253 = load i64, i64* %x1.i.i, align 8, !dbg !1010
  %254 = load i64, i64* %x3.i.i, align 8, !dbg !1010
  %xor129.i.i = xor i64 %253, %254, !dbg !1010
  %and130.i.i = and i64 %xor129.i.i, 65535, !dbg !1010
  store i64 %and130.i.i, i64* %t0.i.i, align 8, !dbg !1010
  %255 = load i64, i64* %t0.i.i, align 8, !dbg !1010
  %256 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %257 = load i32, i32* %256, align 4, !dbg !1010
  %conv131.i.i = zext i32 %257 to i64, !dbg !1010
  %mul132.i.i = mul i64 %255, %conv131.i.i, !dbg !1010
  store i64 %mul132.i.i, i64* %ul.i.i, align 8, !dbg !1010
  %258 = load i64, i64* %ul.i.i, align 8, !dbg !1015
  %cmp133.i.i = icmp ne i64 %258, 0, !dbg !1015
  br i1 %cmp133.i.i, label %if.then135.i.i, label %if.else141.i.i, !dbg !1010

if.then135.i.i:                                   ; preds = %if.end127.i.i
  %259 = load i64, i64* %ul.i.i, align 8, !dbg !1016
  %and136.i.i = and i64 %259, 65535, !dbg !1016
  %260 = load i64, i64* %ul.i.i, align 8, !dbg !1016
  %shr137.i.i = lshr i64 %260, 16, !dbg !1016
  %sub138.i.i = sub i64 %and136.i.i, %shr137.i.i, !dbg !1016
  store i64 %sub138.i.i, i64* %t0.i.i, align 8, !dbg !1016
  %261 = load i64, i64* %t0.i.i, align 8, !dbg !1016
  %shr139.i.i = lshr i64 %261, 16, !dbg !1016
  %262 = load i64, i64* %t0.i.i, align 8, !dbg !1016
  %sub140.i.i = sub i64 %262, %shr139.i.i, !dbg !1016
  store i64 %sub140.i.i, i64* %t0.i.i, align 8, !dbg !1016
  br label %if.end147.i.i, !dbg !1016

if.else141.i.i:                                   ; preds = %if.end127.i.i
  %263 = load i64, i64* %t0.i.i, align 8, !dbg !1015
  %conv142.i.i = trunc i64 %263 to i32, !dbg !1015
  %sub143.i.i = sub nsw i32 0, %conv142.i.i, !dbg !1015
  %264 = load i32*, i32** %p.i.i, align 8, !dbg !1015
  %265 = load i32, i32* %264, align 4, !dbg !1015
  %sub144.i.i = sub i32 %sub143.i.i, %265, !dbg !1015
  %add145.i.i = add i32 %sub144.i.i, 1, !dbg !1015
  %conv146.i.i = zext i32 %add145.i.i to i64, !dbg !1015
  store i64 %conv146.i.i, i64* %t0.i.i, align 8, !dbg !1015
  br label %if.end147.i.i

if.end147.i.i:                                    ; preds = %if.else141.i.i, %if.then135.i.i
  %266 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %incdec.ptr148.i.i = getelementptr inbounds i32, i32* %266, i32 1, !dbg !1010
  store i32* %incdec.ptr148.i.i, i32** %p.i.i, align 8, !dbg !1010
  %267 = load i64, i64* %t0.i.i, align 8, !dbg !1010
  %268 = load i64, i64* %x2.i.i, align 8, !dbg !1010
  %269 = load i64, i64* %x4.i.i, align 8, !dbg !1010
  %xor149.i.i = xor i64 %268, %269, !dbg !1010
  %add150.i.i = add i64 %267, %xor149.i.i, !dbg !1010
  %and151.i.i = and i64 %add150.i.i, 65535, !dbg !1010
  store i64 %and151.i.i, i64* %t1.i.i, align 8, !dbg !1010
  %270 = load i64, i64* %t1.i.i, align 8, !dbg !1010
  %271 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %272 = load i32, i32* %271, align 4, !dbg !1010
  %conv152.i.i = zext i32 %272 to i64, !dbg !1010
  %mul153.i.i = mul i64 %270, %conv152.i.i, !dbg !1010
  store i64 %mul153.i.i, i64* %ul.i.i, align 8, !dbg !1010
  %273 = load i64, i64* %ul.i.i, align 8, !dbg !1017
  %cmp154.i.i = icmp ne i64 %273, 0, !dbg !1017
  br i1 %cmp154.i.i, label %if.then156.i.i, label %if.else162.i.i, !dbg !1010

if.then156.i.i:                                   ; preds = %if.end147.i.i
  %274 = load i64, i64* %ul.i.i, align 8, !dbg !1018
  %and157.i.i = and i64 %274, 65535, !dbg !1018
  %275 = load i64, i64* %ul.i.i, align 8, !dbg !1018
  %shr158.i.i = lshr i64 %275, 16, !dbg !1018
  %sub159.i.i = sub i64 %and157.i.i, %shr158.i.i, !dbg !1018
  store i64 %sub159.i.i, i64* %t1.i.i, align 8, !dbg !1018
  %276 = load i64, i64* %t1.i.i, align 8, !dbg !1018
  %shr160.i.i = lshr i64 %276, 16, !dbg !1018
  %277 = load i64, i64* %t1.i.i, align 8, !dbg !1018
  %sub161.i.i = sub i64 %277, %shr160.i.i, !dbg !1018
  store i64 %sub161.i.i, i64* %t1.i.i, align 8, !dbg !1018
  br label %if.end168.i.i, !dbg !1018

if.else162.i.i:                                   ; preds = %if.end147.i.i
  %278 = load i64, i64* %t1.i.i, align 8, !dbg !1017
  %conv163.i.i = trunc i64 %278 to i32, !dbg !1017
  %sub164.i.i = sub nsw i32 0, %conv163.i.i, !dbg !1017
  %279 = load i32*, i32** %p.i.i, align 8, !dbg !1017
  %280 = load i32, i32* %279, align 4, !dbg !1017
  %sub165.i.i = sub i32 %sub164.i.i, %280, !dbg !1017
  %add166.i.i = add i32 %sub165.i.i, 1, !dbg !1017
  %conv167.i.i = zext i32 %add166.i.i to i64, !dbg !1017
  store i64 %conv167.i.i, i64* %t1.i.i, align 8, !dbg !1017
  br label %if.end168.i.i

if.end168.i.i:                                    ; preds = %if.else162.i.i, %if.then156.i.i
  %281 = load i32*, i32** %p.i.i, align 8, !dbg !1010
  %incdec.ptr169.i.i = getelementptr inbounds i32, i32* %281, i32 1, !dbg !1010
  store i32* %incdec.ptr169.i.i, i32** %p.i.i, align 8, !dbg !1010
  %282 = load i64, i64* %t1.i.i, align 8, !dbg !1010
  %283 = load i64, i64* %t0.i.i, align 8, !dbg !1010
  %add170.i.i = add i64 %283, %282, !dbg !1010
  store i64 %add170.i.i, i64* %t0.i.i, align 8, !dbg !1010
  %284 = load i64, i64* %t1.i.i, align 8, !dbg !1010
  %285 = load i64, i64* %x1.i.i, align 8, !dbg !1010
  %xor171.i.i = xor i64 %285, %284, !dbg !1010
  store i64 %xor171.i.i, i64* %x1.i.i, align 8, !dbg !1010
  %286 = load i64, i64* %t0.i.i, align 8, !dbg !1010
  %287 = load i64, i64* %x4.i.i, align 8, !dbg !1010
  %xor172.i.i = xor i64 %287, %286, !dbg !1010
  store i64 %xor172.i.i, i64* %x4.i.i, align 8, !dbg !1010
  %288 = load i64, i64* %x2.i.i, align 8, !dbg !1010
  %289 = load i64, i64* %t0.i.i, align 8, !dbg !1010
  %xor173.i.i = xor i64 %288, %289, !dbg !1010
  store i64 %xor173.i.i, i64* %ul.i.i, align 8, !dbg !1010
  %290 = load i64, i64* %x3.i.i, align 8, !dbg !1010
  %291 = load i64, i64* %t1.i.i, align 8, !dbg !1010
  %xor174.i.i = xor i64 %290, %291, !dbg !1010
  store i64 %xor174.i.i, i64* %x2.i.i, align 8, !dbg !1010
  %292 = load i64, i64* %ul.i.i, align 8, !dbg !1010
  store i64 %292, i64* %x3.i.i, align 8, !dbg !1010
  %293 = load i64, i64* %x1.i.i, align 8, !dbg !1019
  %and175.i.i = and i64 %293, 65535, !dbg !1019
  store i64 %and175.i.i, i64* %x1.i.i, align 8, !dbg !1019
  %294 = load i64, i64* %x1.i.i, align 8, !dbg !1019
  %295 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %296 = load i32, i32* %295, align 4, !dbg !1019
  %conv176.i.i = zext i32 %296 to i64, !dbg !1019
  %mul177.i.i = mul i64 %294, %conv176.i.i, !dbg !1019
  store i64 %mul177.i.i, i64* %ul.i.i, align 8, !dbg !1019
  %297 = load i64, i64* %ul.i.i, align 8, !dbg !1020
  %cmp178.i.i = icmp ne i64 %297, 0, !dbg !1020
  br i1 %cmp178.i.i, label %if.then180.i.i, label %if.else186.i.i, !dbg !1019

if.then180.i.i:                                   ; preds = %if.end168.i.i
  %298 = load i64, i64* %ul.i.i, align 8, !dbg !1021
  %and181.i.i = and i64 %298, 65535, !dbg !1021
  %299 = load i64, i64* %ul.i.i, align 8, !dbg !1021
  %shr182.i.i = lshr i64 %299, 16, !dbg !1021
  %sub183.i.i = sub i64 %and181.i.i, %shr182.i.i, !dbg !1021
  store i64 %sub183.i.i, i64* %x1.i.i, align 8, !dbg !1021
  %300 = load i64, i64* %x1.i.i, align 8, !dbg !1021
  %shr184.i.i = lshr i64 %300, 16, !dbg !1021
  %301 = load i64, i64* %x1.i.i, align 8, !dbg !1021
  %sub185.i.i = sub i64 %301, %shr184.i.i, !dbg !1021
  store i64 %sub185.i.i, i64* %x1.i.i, align 8, !dbg !1021
  br label %if.end192.i.i, !dbg !1021

if.else186.i.i:                                   ; preds = %if.end168.i.i
  %302 = load i64, i64* %x1.i.i, align 8, !dbg !1020
  %conv187.i.i = trunc i64 %302 to i32, !dbg !1020
  %sub188.i.i = sub nsw i32 0, %conv187.i.i, !dbg !1020
  %303 = load i32*, i32** %p.i.i, align 8, !dbg !1020
  %304 = load i32, i32* %303, align 4, !dbg !1020
  %sub189.i.i = sub i32 %sub188.i.i, %304, !dbg !1020
  %add190.i.i = add i32 %sub189.i.i, 1, !dbg !1020
  %conv191.i.i = zext i32 %add190.i.i to i64, !dbg !1020
  store i64 %conv191.i.i, i64* %x1.i.i, align 8, !dbg !1020
  br label %if.end192.i.i

if.end192.i.i:                                    ; preds = %if.else186.i.i, %if.then180.i.i
  %305 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %incdec.ptr193.i.i = getelementptr inbounds i32, i32* %305, i32 1, !dbg !1019
  store i32* %incdec.ptr193.i.i, i32** %p.i.i, align 8, !dbg !1019
  %306 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %incdec.ptr194.i.i = getelementptr inbounds i32, i32* %306, i32 1, !dbg !1019
  store i32* %incdec.ptr194.i.i, i32** %p.i.i, align 8, !dbg !1019
  %307 = load i32, i32* %306, align 4, !dbg !1019
  %conv195.i.i = zext i32 %307 to i64, !dbg !1019
  %308 = load i64, i64* %x2.i.i, align 8, !dbg !1019
  %add196.i.i = add i64 %308, %conv195.i.i, !dbg !1019
  store i64 %add196.i.i, i64* %x2.i.i, align 8, !dbg !1019
  %309 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %incdec.ptr197.i.i = getelementptr inbounds i32, i32* %309, i32 1, !dbg !1019
  store i32* %incdec.ptr197.i.i, i32** %p.i.i, align 8, !dbg !1019
  %310 = load i32, i32* %309, align 4, !dbg !1019
  %conv198.i.i = zext i32 %310 to i64, !dbg !1019
  %311 = load i64, i64* %x3.i.i, align 8, !dbg !1019
  %add199.i.i = add i64 %311, %conv198.i.i, !dbg !1019
  store i64 %add199.i.i, i64* %x3.i.i, align 8, !dbg !1019
  %312 = load i64, i64* %x4.i.i, align 8, !dbg !1019
  %and200.i.i = and i64 %312, 65535, !dbg !1019
  store i64 %and200.i.i, i64* %x4.i.i, align 8, !dbg !1019
  %313 = load i64, i64* %x4.i.i, align 8, !dbg !1019
  %314 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %315 = load i32, i32* %314, align 4, !dbg !1019
  %conv201.i.i = zext i32 %315 to i64, !dbg !1019
  %mul202.i.i = mul i64 %313, %conv201.i.i, !dbg !1019
  store i64 %mul202.i.i, i64* %ul.i.i, align 8, !dbg !1019
  %316 = load i64, i64* %ul.i.i, align 8, !dbg !1022
  %cmp203.i.i = icmp ne i64 %316, 0, !dbg !1022
  br i1 %cmp203.i.i, label %if.then205.i.i, label %if.else211.i.i, !dbg !1019

if.then205.i.i:                                   ; preds = %if.end192.i.i
  %317 = load i64, i64* %ul.i.i, align 8, !dbg !1023
  %and206.i.i = and i64 %317, 65535, !dbg !1023
  %318 = load i64, i64* %ul.i.i, align 8, !dbg !1023
  %shr207.i.i = lshr i64 %318, 16, !dbg !1023
  %sub208.i.i = sub i64 %and206.i.i, %shr207.i.i, !dbg !1023
  store i64 %sub208.i.i, i64* %x4.i.i, align 8, !dbg !1023
  %319 = load i64, i64* %x4.i.i, align 8, !dbg !1023
  %shr209.i.i = lshr i64 %319, 16, !dbg !1023
  %320 = load i64, i64* %x4.i.i, align 8, !dbg !1023
  %sub210.i.i = sub i64 %320, %shr209.i.i, !dbg !1023
  store i64 %sub210.i.i, i64* %x4.i.i, align 8, !dbg !1023
  br label %if.end217.i.i, !dbg !1023

if.else211.i.i:                                   ; preds = %if.end192.i.i
  %321 = load i64, i64* %x4.i.i, align 8, !dbg !1022
  %conv212.i.i = trunc i64 %321 to i32, !dbg !1022
  %sub213.i.i = sub nsw i32 0, %conv212.i.i, !dbg !1022
  %322 = load i32*, i32** %p.i.i, align 8, !dbg !1022
  %323 = load i32, i32* %322, align 4, !dbg !1022
  %sub214.i.i = sub i32 %sub213.i.i, %323, !dbg !1022
  %add215.i.i = add i32 %sub214.i.i, 1, !dbg !1022
  %conv216.i.i = zext i32 %add215.i.i to i64, !dbg !1022
  store i64 %conv216.i.i, i64* %x4.i.i, align 8, !dbg !1022
  br label %if.end217.i.i

if.end217.i.i:                                    ; preds = %if.else211.i.i, %if.then205.i.i
  %324 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %incdec.ptr218.i.i = getelementptr inbounds i32, i32* %324, i32 1, !dbg !1019
  store i32* %incdec.ptr218.i.i, i32** %p.i.i, align 8, !dbg !1019
  %325 = load i64, i64* %x1.i.i, align 8, !dbg !1019
  %326 = load i64, i64* %x3.i.i, align 8, !dbg !1019
  %xor219.i.i = xor i64 %325, %326, !dbg !1019
  %and220.i.i = and i64 %xor219.i.i, 65535, !dbg !1019
  store i64 %and220.i.i, i64* %t0.i.i, align 8, !dbg !1019
  %327 = load i64, i64* %t0.i.i, align 8, !dbg !1019
  %328 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %329 = load i32, i32* %328, align 4, !dbg !1019
  %conv221.i.i = zext i32 %329 to i64, !dbg !1019
  %mul222.i.i = mul i64 %327, %conv221.i.i, !dbg !1019
  store i64 %mul222.i.i, i64* %ul.i.i, align 8, !dbg !1019
  %330 = load i64, i64* %ul.i.i, align 8, !dbg !1024
  %cmp223.i.i = icmp ne i64 %330, 0, !dbg !1024
  br i1 %cmp223.i.i, label %if.then225.i.i, label %if.else231.i.i, !dbg !1019

if.then225.i.i:                                   ; preds = %if.end217.i.i
  %331 = load i64, i64* %ul.i.i, align 8, !dbg !1025
  %and226.i.i = and i64 %331, 65535, !dbg !1025
  %332 = load i64, i64* %ul.i.i, align 8, !dbg !1025
  %shr227.i.i = lshr i64 %332, 16, !dbg !1025
  %sub228.i.i = sub i64 %and226.i.i, %shr227.i.i, !dbg !1025
  store i64 %sub228.i.i, i64* %t0.i.i, align 8, !dbg !1025
  %333 = load i64, i64* %t0.i.i, align 8, !dbg !1025
  %shr229.i.i = lshr i64 %333, 16, !dbg !1025
  %334 = load i64, i64* %t0.i.i, align 8, !dbg !1025
  %sub230.i.i = sub i64 %334, %shr229.i.i, !dbg !1025
  store i64 %sub230.i.i, i64* %t0.i.i, align 8, !dbg !1025
  br label %if.end237.i.i, !dbg !1025

if.else231.i.i:                                   ; preds = %if.end217.i.i
  %335 = load i64, i64* %t0.i.i, align 8, !dbg !1024
  %conv232.i.i = trunc i64 %335 to i32, !dbg !1024
  %sub233.i.i = sub nsw i32 0, %conv232.i.i, !dbg !1024
  %336 = load i32*, i32** %p.i.i, align 8, !dbg !1024
  %337 = load i32, i32* %336, align 4, !dbg !1024
  %sub234.i.i = sub i32 %sub233.i.i, %337, !dbg !1024
  %add235.i.i = add i32 %sub234.i.i, 1, !dbg !1024
  %conv236.i.i = zext i32 %add235.i.i to i64, !dbg !1024
  store i64 %conv236.i.i, i64* %t0.i.i, align 8, !dbg !1024
  br label %if.end237.i.i

if.end237.i.i:                                    ; preds = %if.else231.i.i, %if.then225.i.i
  %338 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %incdec.ptr238.i.i = getelementptr inbounds i32, i32* %338, i32 1, !dbg !1019
  store i32* %incdec.ptr238.i.i, i32** %p.i.i, align 8, !dbg !1019
  %339 = load i64, i64* %t0.i.i, align 8, !dbg !1019
  %340 = load i64, i64* %x2.i.i, align 8, !dbg !1019
  %341 = load i64, i64* %x4.i.i, align 8, !dbg !1019
  %xor239.i.i = xor i64 %340, %341, !dbg !1019
  %add240.i.i = add i64 %339, %xor239.i.i, !dbg !1019
  %and241.i.i = and i64 %add240.i.i, 65535, !dbg !1019
  store i64 %and241.i.i, i64* %t1.i.i, align 8, !dbg !1019
  %342 = load i64, i64* %t1.i.i, align 8, !dbg !1019
  %343 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %344 = load i32, i32* %343, align 4, !dbg !1019
  %conv242.i.i = zext i32 %344 to i64, !dbg !1019
  %mul243.i.i = mul i64 %342, %conv242.i.i, !dbg !1019
  store i64 %mul243.i.i, i64* %ul.i.i, align 8, !dbg !1019
  %345 = load i64, i64* %ul.i.i, align 8, !dbg !1026
  %cmp244.i.i = icmp ne i64 %345, 0, !dbg !1026
  br i1 %cmp244.i.i, label %if.then246.i.i, label %if.else252.i.i, !dbg !1019

if.then246.i.i:                                   ; preds = %if.end237.i.i
  %346 = load i64, i64* %ul.i.i, align 8, !dbg !1027
  %and247.i.i = and i64 %346, 65535, !dbg !1027
  %347 = load i64, i64* %ul.i.i, align 8, !dbg !1027
  %shr248.i.i = lshr i64 %347, 16, !dbg !1027
  %sub249.i.i = sub i64 %and247.i.i, %shr248.i.i, !dbg !1027
  store i64 %sub249.i.i, i64* %t1.i.i, align 8, !dbg !1027
  %348 = load i64, i64* %t1.i.i, align 8, !dbg !1027
  %shr250.i.i = lshr i64 %348, 16, !dbg !1027
  %349 = load i64, i64* %t1.i.i, align 8, !dbg !1027
  %sub251.i.i = sub i64 %349, %shr250.i.i, !dbg !1027
  store i64 %sub251.i.i, i64* %t1.i.i, align 8, !dbg !1027
  br label %if.end258.i.i, !dbg !1027

if.else252.i.i:                                   ; preds = %if.end237.i.i
  %350 = load i64, i64* %t1.i.i, align 8, !dbg !1026
  %conv253.i.i = trunc i64 %350 to i32, !dbg !1026
  %sub254.i.i = sub nsw i32 0, %conv253.i.i, !dbg !1026
  %351 = load i32*, i32** %p.i.i, align 8, !dbg !1026
  %352 = load i32, i32* %351, align 4, !dbg !1026
  %sub255.i.i = sub i32 %sub254.i.i, %352, !dbg !1026
  %add256.i.i = add i32 %sub255.i.i, 1, !dbg !1026
  %conv257.i.i = zext i32 %add256.i.i to i64, !dbg !1026
  store i64 %conv257.i.i, i64* %t1.i.i, align 8, !dbg !1026
  br label %if.end258.i.i

if.end258.i.i:                                    ; preds = %if.else252.i.i, %if.then246.i.i
  %353 = load i32*, i32** %p.i.i, align 8, !dbg !1019
  %incdec.ptr259.i.i = getelementptr inbounds i32, i32* %353, i32 1, !dbg !1019
  store i32* %incdec.ptr259.i.i, i32** %p.i.i, align 8, !dbg !1019
  %354 = load i64, i64* %t1.i.i, align 8, !dbg !1019
  %355 = load i64, i64* %t0.i.i, align 8, !dbg !1019
  %add260.i.i = add i64 %355, %354, !dbg !1019
  store i64 %add260.i.i, i64* %t0.i.i, align 8, !dbg !1019
  %356 = load i64, i64* %t1.i.i, align 8, !dbg !1019
  %357 = load i64, i64* %x1.i.i, align 8, !dbg !1019
  %xor261.i.i = xor i64 %357, %356, !dbg !1019
  store i64 %xor261.i.i, i64* %x1.i.i, align 8, !dbg !1019
  %358 = load i64, i64* %t0.i.i, align 8, !dbg !1019
  %359 = load i64, i64* %x4.i.i, align 8, !dbg !1019
  %xor262.i.i = xor i64 %359, %358, !dbg !1019
  store i64 %xor262.i.i, i64* %x4.i.i, align 8, !dbg !1019
  %360 = load i64, i64* %x2.i.i, align 8, !dbg !1019
  %361 = load i64, i64* %t0.i.i, align 8, !dbg !1019
  %xor263.i.i = xor i64 %360, %361, !dbg !1019
  store i64 %xor263.i.i, i64* %ul.i.i, align 8, !dbg !1019
  %362 = load i64, i64* %x3.i.i, align 8, !dbg !1019
  %363 = load i64, i64* %t1.i.i, align 8, !dbg !1019
  %xor264.i.i = xor i64 %362, %363, !dbg !1019
  store i64 %xor264.i.i, i64* %x2.i.i, align 8, !dbg !1019
  %364 = load i64, i64* %ul.i.i, align 8, !dbg !1019
  store i64 %364, i64* %x3.i.i, align 8, !dbg !1019
  %365 = load i64, i64* %x1.i.i, align 8, !dbg !1028
  %and265.i.i = and i64 %365, 65535, !dbg !1028
  store i64 %and265.i.i, i64* %x1.i.i, align 8, !dbg !1028
  %366 = load i64, i64* %x1.i.i, align 8, !dbg !1028
  %367 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %368 = load i32, i32* %367, align 4, !dbg !1028
  %conv266.i.i = zext i32 %368 to i64, !dbg !1028
  %mul267.i.i = mul i64 %366, %conv266.i.i, !dbg !1028
  store i64 %mul267.i.i, i64* %ul.i.i, align 8, !dbg !1028
  %369 = load i64, i64* %ul.i.i, align 8, !dbg !1029
  %cmp268.i.i = icmp ne i64 %369, 0, !dbg !1029
  br i1 %cmp268.i.i, label %if.then270.i.i, label %if.else276.i.i, !dbg !1028

if.then270.i.i:                                   ; preds = %if.end258.i.i
  %370 = load i64, i64* %ul.i.i, align 8, !dbg !1030
  %and271.i.i = and i64 %370, 65535, !dbg !1030
  %371 = load i64, i64* %ul.i.i, align 8, !dbg !1030
  %shr272.i.i = lshr i64 %371, 16, !dbg !1030
  %sub273.i.i = sub i64 %and271.i.i, %shr272.i.i, !dbg !1030
  store i64 %sub273.i.i, i64* %x1.i.i, align 8, !dbg !1030
  %372 = load i64, i64* %x1.i.i, align 8, !dbg !1030
  %shr274.i.i = lshr i64 %372, 16, !dbg !1030
  %373 = load i64, i64* %x1.i.i, align 8, !dbg !1030
  %sub275.i.i = sub i64 %373, %shr274.i.i, !dbg !1030
  store i64 %sub275.i.i, i64* %x1.i.i, align 8, !dbg !1030
  br label %if.end282.i.i, !dbg !1030

if.else276.i.i:                                   ; preds = %if.end258.i.i
  %374 = load i64, i64* %x1.i.i, align 8, !dbg !1029
  %conv277.i.i = trunc i64 %374 to i32, !dbg !1029
  %sub278.i.i = sub nsw i32 0, %conv277.i.i, !dbg !1029
  %375 = load i32*, i32** %p.i.i, align 8, !dbg !1029
  %376 = load i32, i32* %375, align 4, !dbg !1029
  %sub279.i.i = sub i32 %sub278.i.i, %376, !dbg !1029
  %add280.i.i = add i32 %sub279.i.i, 1, !dbg !1029
  %conv281.i.i = zext i32 %add280.i.i to i64, !dbg !1029
  store i64 %conv281.i.i, i64* %x1.i.i, align 8, !dbg !1029
  br label %if.end282.i.i

if.end282.i.i:                                    ; preds = %if.else276.i.i, %if.then270.i.i
  %377 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %incdec.ptr283.i.i = getelementptr inbounds i32, i32* %377, i32 1, !dbg !1028
  store i32* %incdec.ptr283.i.i, i32** %p.i.i, align 8, !dbg !1028
  %378 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %incdec.ptr284.i.i = getelementptr inbounds i32, i32* %378, i32 1, !dbg !1028
  store i32* %incdec.ptr284.i.i, i32** %p.i.i, align 8, !dbg !1028
  %379 = load i32, i32* %378, align 4, !dbg !1028
  %conv285.i.i = zext i32 %379 to i64, !dbg !1028
  %380 = load i64, i64* %x2.i.i, align 8, !dbg !1028
  %add286.i.i = add i64 %380, %conv285.i.i, !dbg !1028
  store i64 %add286.i.i, i64* %x2.i.i, align 8, !dbg !1028
  %381 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %incdec.ptr287.i.i = getelementptr inbounds i32, i32* %381, i32 1, !dbg !1028
  store i32* %incdec.ptr287.i.i, i32** %p.i.i, align 8, !dbg !1028
  %382 = load i32, i32* %381, align 4, !dbg !1028
  %conv288.i.i = zext i32 %382 to i64, !dbg !1028
  %383 = load i64, i64* %x3.i.i, align 8, !dbg !1028
  %add289.i.i = add i64 %383, %conv288.i.i, !dbg !1028
  store i64 %add289.i.i, i64* %x3.i.i, align 8, !dbg !1028
  %384 = load i64, i64* %x4.i.i, align 8, !dbg !1028
  %and290.i.i = and i64 %384, 65535, !dbg !1028
  store i64 %and290.i.i, i64* %x4.i.i, align 8, !dbg !1028
  %385 = load i64, i64* %x4.i.i, align 8, !dbg !1028
  %386 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %387 = load i32, i32* %386, align 4, !dbg !1028
  %conv291.i.i = zext i32 %387 to i64, !dbg !1028
  %mul292.i.i = mul i64 %385, %conv291.i.i, !dbg !1028
  store i64 %mul292.i.i, i64* %ul.i.i, align 8, !dbg !1028
  %388 = load i64, i64* %ul.i.i, align 8, !dbg !1031
  %cmp293.i.i = icmp ne i64 %388, 0, !dbg !1031
  br i1 %cmp293.i.i, label %if.then295.i.i, label %if.else301.i.i, !dbg !1028

if.then295.i.i:                                   ; preds = %if.end282.i.i
  %389 = load i64, i64* %ul.i.i, align 8, !dbg !1032
  %and296.i.i = and i64 %389, 65535, !dbg !1032
  %390 = load i64, i64* %ul.i.i, align 8, !dbg !1032
  %shr297.i.i = lshr i64 %390, 16, !dbg !1032
  %sub298.i.i = sub i64 %and296.i.i, %shr297.i.i, !dbg !1032
  store i64 %sub298.i.i, i64* %x4.i.i, align 8, !dbg !1032
  %391 = load i64, i64* %x4.i.i, align 8, !dbg !1032
  %shr299.i.i = lshr i64 %391, 16, !dbg !1032
  %392 = load i64, i64* %x4.i.i, align 8, !dbg !1032
  %sub300.i.i = sub i64 %392, %shr299.i.i, !dbg !1032
  store i64 %sub300.i.i, i64* %x4.i.i, align 8, !dbg !1032
  br label %if.end307.i.i, !dbg !1032

if.else301.i.i:                                   ; preds = %if.end282.i.i
  %393 = load i64, i64* %x4.i.i, align 8, !dbg !1031
  %conv302.i.i = trunc i64 %393 to i32, !dbg !1031
  %sub303.i.i = sub nsw i32 0, %conv302.i.i, !dbg !1031
  %394 = load i32*, i32** %p.i.i, align 8, !dbg !1031
  %395 = load i32, i32* %394, align 4, !dbg !1031
  %sub304.i.i = sub i32 %sub303.i.i, %395, !dbg !1031
  %add305.i.i = add i32 %sub304.i.i, 1, !dbg !1031
  %conv306.i.i = zext i32 %add305.i.i to i64, !dbg !1031
  store i64 %conv306.i.i, i64* %x4.i.i, align 8, !dbg !1031
  br label %if.end307.i.i

if.end307.i.i:                                    ; preds = %if.else301.i.i, %if.then295.i.i
  %396 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %incdec.ptr308.i.i = getelementptr inbounds i32, i32* %396, i32 1, !dbg !1028
  store i32* %incdec.ptr308.i.i, i32** %p.i.i, align 8, !dbg !1028
  %397 = load i64, i64* %x1.i.i, align 8, !dbg !1028
  %398 = load i64, i64* %x3.i.i, align 8, !dbg !1028
  %xor309.i.i = xor i64 %397, %398, !dbg !1028
  %and310.i.i = and i64 %xor309.i.i, 65535, !dbg !1028
  store i64 %and310.i.i, i64* %t0.i.i, align 8, !dbg !1028
  %399 = load i64, i64* %t0.i.i, align 8, !dbg !1028
  %400 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %401 = load i32, i32* %400, align 4, !dbg !1028
  %conv311.i.i = zext i32 %401 to i64, !dbg !1028
  %mul312.i.i = mul i64 %399, %conv311.i.i, !dbg !1028
  store i64 %mul312.i.i, i64* %ul.i.i, align 8, !dbg !1028
  %402 = load i64, i64* %ul.i.i, align 8, !dbg !1033
  %cmp313.i.i = icmp ne i64 %402, 0, !dbg !1033
  br i1 %cmp313.i.i, label %if.then315.i.i, label %if.else321.i.i, !dbg !1028

if.then315.i.i:                                   ; preds = %if.end307.i.i
  %403 = load i64, i64* %ul.i.i, align 8, !dbg !1034
  %and316.i.i = and i64 %403, 65535, !dbg !1034
  %404 = load i64, i64* %ul.i.i, align 8, !dbg !1034
  %shr317.i.i = lshr i64 %404, 16, !dbg !1034
  %sub318.i.i = sub i64 %and316.i.i, %shr317.i.i, !dbg !1034
  store i64 %sub318.i.i, i64* %t0.i.i, align 8, !dbg !1034
  %405 = load i64, i64* %t0.i.i, align 8, !dbg !1034
  %shr319.i.i = lshr i64 %405, 16, !dbg !1034
  %406 = load i64, i64* %t0.i.i, align 8, !dbg !1034
  %sub320.i.i = sub i64 %406, %shr319.i.i, !dbg !1034
  store i64 %sub320.i.i, i64* %t0.i.i, align 8, !dbg !1034
  br label %if.end327.i.i, !dbg !1034

if.else321.i.i:                                   ; preds = %if.end307.i.i
  %407 = load i64, i64* %t0.i.i, align 8, !dbg !1033
  %conv322.i.i = trunc i64 %407 to i32, !dbg !1033
  %sub323.i.i = sub nsw i32 0, %conv322.i.i, !dbg !1033
  %408 = load i32*, i32** %p.i.i, align 8, !dbg !1033
  %409 = load i32, i32* %408, align 4, !dbg !1033
  %sub324.i.i = sub i32 %sub323.i.i, %409, !dbg !1033
  %add325.i.i = add i32 %sub324.i.i, 1, !dbg !1033
  %conv326.i.i = zext i32 %add325.i.i to i64, !dbg !1033
  store i64 %conv326.i.i, i64* %t0.i.i, align 8, !dbg !1033
  br label %if.end327.i.i

if.end327.i.i:                                    ; preds = %if.else321.i.i, %if.then315.i.i
  %410 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %incdec.ptr328.i.i = getelementptr inbounds i32, i32* %410, i32 1, !dbg !1028
  store i32* %incdec.ptr328.i.i, i32** %p.i.i, align 8, !dbg !1028
  %411 = load i64, i64* %t0.i.i, align 8, !dbg !1028
  %412 = load i64, i64* %x2.i.i, align 8, !dbg !1028
  %413 = load i64, i64* %x4.i.i, align 8, !dbg !1028
  %xor329.i.i = xor i64 %412, %413, !dbg !1028
  %add330.i.i = add i64 %411, %xor329.i.i, !dbg !1028
  %and331.i.i = and i64 %add330.i.i, 65535, !dbg !1028
  store i64 %and331.i.i, i64* %t1.i.i, align 8, !dbg !1028
  %414 = load i64, i64* %t1.i.i, align 8, !dbg !1028
  %415 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %416 = load i32, i32* %415, align 4, !dbg !1028
  %conv332.i.i = zext i32 %416 to i64, !dbg !1028
  %mul333.i.i = mul i64 %414, %conv332.i.i, !dbg !1028
  store i64 %mul333.i.i, i64* %ul.i.i, align 8, !dbg !1028
  %417 = load i64, i64* %ul.i.i, align 8, !dbg !1035
  %cmp334.i.i = icmp ne i64 %417, 0, !dbg !1035
  br i1 %cmp334.i.i, label %if.then336.i.i, label %if.else342.i.i, !dbg !1028

if.then336.i.i:                                   ; preds = %if.end327.i.i
  %418 = load i64, i64* %ul.i.i, align 8, !dbg !1036
  %and337.i.i = and i64 %418, 65535, !dbg !1036
  %419 = load i64, i64* %ul.i.i, align 8, !dbg !1036
  %shr338.i.i = lshr i64 %419, 16, !dbg !1036
  %sub339.i.i = sub i64 %and337.i.i, %shr338.i.i, !dbg !1036
  store i64 %sub339.i.i, i64* %t1.i.i, align 8, !dbg !1036
  %420 = load i64, i64* %t1.i.i, align 8, !dbg !1036
  %shr340.i.i = lshr i64 %420, 16, !dbg !1036
  %421 = load i64, i64* %t1.i.i, align 8, !dbg !1036
  %sub341.i.i = sub i64 %421, %shr340.i.i, !dbg !1036
  store i64 %sub341.i.i, i64* %t1.i.i, align 8, !dbg !1036
  br label %if.end348.i.i, !dbg !1036

if.else342.i.i:                                   ; preds = %if.end327.i.i
  %422 = load i64, i64* %t1.i.i, align 8, !dbg !1035
  %conv343.i.i = trunc i64 %422 to i32, !dbg !1035
  %sub344.i.i = sub nsw i32 0, %conv343.i.i, !dbg !1035
  %423 = load i32*, i32** %p.i.i, align 8, !dbg !1035
  %424 = load i32, i32* %423, align 4, !dbg !1035
  %sub345.i.i = sub i32 %sub344.i.i, %424, !dbg !1035
  %add346.i.i = add i32 %sub345.i.i, 1, !dbg !1035
  %conv347.i.i = zext i32 %add346.i.i to i64, !dbg !1035
  store i64 %conv347.i.i, i64* %t1.i.i, align 8, !dbg !1035
  br label %if.end348.i.i

if.end348.i.i:                                    ; preds = %if.else342.i.i, %if.then336.i.i
  %425 = load i32*, i32** %p.i.i, align 8, !dbg !1028
  %incdec.ptr349.i.i = getelementptr inbounds i32, i32* %425, i32 1, !dbg !1028
  store i32* %incdec.ptr349.i.i, i32** %p.i.i, align 8, !dbg !1028
  %426 = load i64, i64* %t1.i.i, align 8, !dbg !1028
  %427 = load i64, i64* %t0.i.i, align 8, !dbg !1028
  %add350.i.i = add i64 %427, %426, !dbg !1028
  store i64 %add350.i.i, i64* %t0.i.i, align 8, !dbg !1028
  %428 = load i64, i64* %t1.i.i, align 8, !dbg !1028
  %429 = load i64, i64* %x1.i.i, align 8, !dbg !1028
  %xor351.i.i = xor i64 %429, %428, !dbg !1028
  store i64 %xor351.i.i, i64* %x1.i.i, align 8, !dbg !1028
  %430 = load i64, i64* %t0.i.i, align 8, !dbg !1028
  %431 = load i64, i64* %x4.i.i, align 8, !dbg !1028
  %xor352.i.i = xor i64 %431, %430, !dbg !1028
  store i64 %xor352.i.i, i64* %x4.i.i, align 8, !dbg !1028
  %432 = load i64, i64* %x2.i.i, align 8, !dbg !1028
  %433 = load i64, i64* %t0.i.i, align 8, !dbg !1028
  %xor353.i.i = xor i64 %432, %433, !dbg !1028
  store i64 %xor353.i.i, i64* %ul.i.i, align 8, !dbg !1028
  %434 = load i64, i64* %x3.i.i, align 8, !dbg !1028
  %435 = load i64, i64* %t1.i.i, align 8, !dbg !1028
  %xor354.i.i = xor i64 %434, %435, !dbg !1028
  store i64 %xor354.i.i, i64* %x2.i.i, align 8, !dbg !1028
  %436 = load i64, i64* %ul.i.i, align 8, !dbg !1028
  store i64 %436, i64* %x3.i.i, align 8, !dbg !1028
  %437 = load i64, i64* %x1.i.i, align 8, !dbg !1037
  %and355.i.i = and i64 %437, 65535, !dbg !1037
  store i64 %and355.i.i, i64* %x1.i.i, align 8, !dbg !1037
  %438 = load i64, i64* %x1.i.i, align 8, !dbg !1037
  %439 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %440 = load i32, i32* %439, align 4, !dbg !1037
  %conv356.i.i = zext i32 %440 to i64, !dbg !1037
  %mul357.i.i = mul i64 %438, %conv356.i.i, !dbg !1037
  store i64 %mul357.i.i, i64* %ul.i.i, align 8, !dbg !1037
  %441 = load i64, i64* %ul.i.i, align 8, !dbg !1038
  %cmp358.i.i = icmp ne i64 %441, 0, !dbg !1038
  br i1 %cmp358.i.i, label %if.then360.i.i, label %if.else366.i.i, !dbg !1037

if.then360.i.i:                                   ; preds = %if.end348.i.i
  %442 = load i64, i64* %ul.i.i, align 8, !dbg !1039
  %and361.i.i = and i64 %442, 65535, !dbg !1039
  %443 = load i64, i64* %ul.i.i, align 8, !dbg !1039
  %shr362.i.i = lshr i64 %443, 16, !dbg !1039
  %sub363.i.i = sub i64 %and361.i.i, %shr362.i.i, !dbg !1039
  store i64 %sub363.i.i, i64* %x1.i.i, align 8, !dbg !1039
  %444 = load i64, i64* %x1.i.i, align 8, !dbg !1039
  %shr364.i.i = lshr i64 %444, 16, !dbg !1039
  %445 = load i64, i64* %x1.i.i, align 8, !dbg !1039
  %sub365.i.i = sub i64 %445, %shr364.i.i, !dbg !1039
  store i64 %sub365.i.i, i64* %x1.i.i, align 8, !dbg !1039
  br label %if.end372.i.i, !dbg !1039

if.else366.i.i:                                   ; preds = %if.end348.i.i
  %446 = load i64, i64* %x1.i.i, align 8, !dbg !1038
  %conv367.i.i = trunc i64 %446 to i32, !dbg !1038
  %sub368.i.i = sub nsw i32 0, %conv367.i.i, !dbg !1038
  %447 = load i32*, i32** %p.i.i, align 8, !dbg !1038
  %448 = load i32, i32* %447, align 4, !dbg !1038
  %sub369.i.i = sub i32 %sub368.i.i, %448, !dbg !1038
  %add370.i.i = add i32 %sub369.i.i, 1, !dbg !1038
  %conv371.i.i = zext i32 %add370.i.i to i64, !dbg !1038
  store i64 %conv371.i.i, i64* %x1.i.i, align 8, !dbg !1038
  br label %if.end372.i.i

if.end372.i.i:                                    ; preds = %if.else366.i.i, %if.then360.i.i
  %449 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %incdec.ptr373.i.i = getelementptr inbounds i32, i32* %449, i32 1, !dbg !1037
  store i32* %incdec.ptr373.i.i, i32** %p.i.i, align 8, !dbg !1037
  %450 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %incdec.ptr374.i.i = getelementptr inbounds i32, i32* %450, i32 1, !dbg !1037
  store i32* %incdec.ptr374.i.i, i32** %p.i.i, align 8, !dbg !1037
  %451 = load i32, i32* %450, align 4, !dbg !1037
  %conv375.i.i = zext i32 %451 to i64, !dbg !1037
  %452 = load i64, i64* %x2.i.i, align 8, !dbg !1037
  %add376.i.i = add i64 %452, %conv375.i.i, !dbg !1037
  store i64 %add376.i.i, i64* %x2.i.i, align 8, !dbg !1037
  %453 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %incdec.ptr377.i.i = getelementptr inbounds i32, i32* %453, i32 1, !dbg !1037
  store i32* %incdec.ptr377.i.i, i32** %p.i.i, align 8, !dbg !1037
  %454 = load i32, i32* %453, align 4, !dbg !1037
  %conv378.i.i = zext i32 %454 to i64, !dbg !1037
  %455 = load i64, i64* %x3.i.i, align 8, !dbg !1037
  %add379.i.i = add i64 %455, %conv378.i.i, !dbg !1037
  store i64 %add379.i.i, i64* %x3.i.i, align 8, !dbg !1037
  %456 = load i64, i64* %x4.i.i, align 8, !dbg !1037
  %and380.i.i = and i64 %456, 65535, !dbg !1037
  store i64 %and380.i.i, i64* %x4.i.i, align 8, !dbg !1037
  %457 = load i64, i64* %x4.i.i, align 8, !dbg !1037
  %458 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %459 = load i32, i32* %458, align 4, !dbg !1037
  %conv381.i.i = zext i32 %459 to i64, !dbg !1037
  %mul382.i.i = mul i64 %457, %conv381.i.i, !dbg !1037
  store i64 %mul382.i.i, i64* %ul.i.i, align 8, !dbg !1037
  %460 = load i64, i64* %ul.i.i, align 8, !dbg !1040
  %cmp383.i.i = icmp ne i64 %460, 0, !dbg !1040
  br i1 %cmp383.i.i, label %if.then385.i.i, label %if.else391.i.i, !dbg !1037

if.then385.i.i:                                   ; preds = %if.end372.i.i
  %461 = load i64, i64* %ul.i.i, align 8, !dbg !1041
  %and386.i.i = and i64 %461, 65535, !dbg !1041
  %462 = load i64, i64* %ul.i.i, align 8, !dbg !1041
  %shr387.i.i = lshr i64 %462, 16, !dbg !1041
  %sub388.i.i = sub i64 %and386.i.i, %shr387.i.i, !dbg !1041
  store i64 %sub388.i.i, i64* %x4.i.i, align 8, !dbg !1041
  %463 = load i64, i64* %x4.i.i, align 8, !dbg !1041
  %shr389.i.i = lshr i64 %463, 16, !dbg !1041
  %464 = load i64, i64* %x4.i.i, align 8, !dbg !1041
  %sub390.i.i = sub i64 %464, %shr389.i.i, !dbg !1041
  store i64 %sub390.i.i, i64* %x4.i.i, align 8, !dbg !1041
  br label %if.end397.i.i, !dbg !1041

if.else391.i.i:                                   ; preds = %if.end372.i.i
  %465 = load i64, i64* %x4.i.i, align 8, !dbg !1040
  %conv392.i.i = trunc i64 %465 to i32, !dbg !1040
  %sub393.i.i = sub nsw i32 0, %conv392.i.i, !dbg !1040
  %466 = load i32*, i32** %p.i.i, align 8, !dbg !1040
  %467 = load i32, i32* %466, align 4, !dbg !1040
  %sub394.i.i = sub i32 %sub393.i.i, %467, !dbg !1040
  %add395.i.i = add i32 %sub394.i.i, 1, !dbg !1040
  %conv396.i.i = zext i32 %add395.i.i to i64, !dbg !1040
  store i64 %conv396.i.i, i64* %x4.i.i, align 8, !dbg !1040
  br label %if.end397.i.i

if.end397.i.i:                                    ; preds = %if.else391.i.i, %if.then385.i.i
  %468 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %incdec.ptr398.i.i = getelementptr inbounds i32, i32* %468, i32 1, !dbg !1037
  store i32* %incdec.ptr398.i.i, i32** %p.i.i, align 8, !dbg !1037
  %469 = load i64, i64* %x1.i.i, align 8, !dbg !1037
  %470 = load i64, i64* %x3.i.i, align 8, !dbg !1037
  %xor399.i.i = xor i64 %469, %470, !dbg !1037
  %and400.i.i = and i64 %xor399.i.i, 65535, !dbg !1037
  store i64 %and400.i.i, i64* %t0.i.i, align 8, !dbg !1037
  %471 = load i64, i64* %t0.i.i, align 8, !dbg !1037
  %472 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %473 = load i32, i32* %472, align 4, !dbg !1037
  %conv401.i.i = zext i32 %473 to i64, !dbg !1037
  %mul402.i.i = mul i64 %471, %conv401.i.i, !dbg !1037
  store i64 %mul402.i.i, i64* %ul.i.i, align 8, !dbg !1037
  %474 = load i64, i64* %ul.i.i, align 8, !dbg !1042
  %cmp403.i.i = icmp ne i64 %474, 0, !dbg !1042
  br i1 %cmp403.i.i, label %if.then405.i.i, label %if.else411.i.i, !dbg !1037

if.then405.i.i:                                   ; preds = %if.end397.i.i
  %475 = load i64, i64* %ul.i.i, align 8, !dbg !1043
  %and406.i.i = and i64 %475, 65535, !dbg !1043
  %476 = load i64, i64* %ul.i.i, align 8, !dbg !1043
  %shr407.i.i = lshr i64 %476, 16, !dbg !1043
  %sub408.i.i = sub i64 %and406.i.i, %shr407.i.i, !dbg !1043
  store i64 %sub408.i.i, i64* %t0.i.i, align 8, !dbg !1043
  %477 = load i64, i64* %t0.i.i, align 8, !dbg !1043
  %shr409.i.i = lshr i64 %477, 16, !dbg !1043
  %478 = load i64, i64* %t0.i.i, align 8, !dbg !1043
  %sub410.i.i = sub i64 %478, %shr409.i.i, !dbg !1043
  store i64 %sub410.i.i, i64* %t0.i.i, align 8, !dbg !1043
  br label %if.end417.i.i, !dbg !1043

if.else411.i.i:                                   ; preds = %if.end397.i.i
  %479 = load i64, i64* %t0.i.i, align 8, !dbg !1042
  %conv412.i.i = trunc i64 %479 to i32, !dbg !1042
  %sub413.i.i = sub nsw i32 0, %conv412.i.i, !dbg !1042
  %480 = load i32*, i32** %p.i.i, align 8, !dbg !1042
  %481 = load i32, i32* %480, align 4, !dbg !1042
  %sub414.i.i = sub i32 %sub413.i.i, %481, !dbg !1042
  %add415.i.i = add i32 %sub414.i.i, 1, !dbg !1042
  %conv416.i.i = zext i32 %add415.i.i to i64, !dbg !1042
  store i64 %conv416.i.i, i64* %t0.i.i, align 8, !dbg !1042
  br label %if.end417.i.i

if.end417.i.i:                                    ; preds = %if.else411.i.i, %if.then405.i.i
  %482 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %incdec.ptr418.i.i = getelementptr inbounds i32, i32* %482, i32 1, !dbg !1037
  store i32* %incdec.ptr418.i.i, i32** %p.i.i, align 8, !dbg !1037
  %483 = load i64, i64* %t0.i.i, align 8, !dbg !1037
  %484 = load i64, i64* %x2.i.i, align 8, !dbg !1037
  %485 = load i64, i64* %x4.i.i, align 8, !dbg !1037
  %xor419.i.i = xor i64 %484, %485, !dbg !1037
  %add420.i.i = add i64 %483, %xor419.i.i, !dbg !1037
  %and421.i.i = and i64 %add420.i.i, 65535, !dbg !1037
  store i64 %and421.i.i, i64* %t1.i.i, align 8, !dbg !1037
  %486 = load i64, i64* %t1.i.i, align 8, !dbg !1037
  %487 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %488 = load i32, i32* %487, align 4, !dbg !1037
  %conv422.i.i = zext i32 %488 to i64, !dbg !1037
  %mul423.i.i = mul i64 %486, %conv422.i.i, !dbg !1037
  store i64 %mul423.i.i, i64* %ul.i.i, align 8, !dbg !1037
  %489 = load i64, i64* %ul.i.i, align 8, !dbg !1044
  %cmp424.i.i = icmp ne i64 %489, 0, !dbg !1044
  br i1 %cmp424.i.i, label %if.then426.i.i, label %if.else432.i.i, !dbg !1037

if.then426.i.i:                                   ; preds = %if.end417.i.i
  %490 = load i64, i64* %ul.i.i, align 8, !dbg !1045
  %and427.i.i = and i64 %490, 65535, !dbg !1045
  %491 = load i64, i64* %ul.i.i, align 8, !dbg !1045
  %shr428.i.i = lshr i64 %491, 16, !dbg !1045
  %sub429.i.i = sub i64 %and427.i.i, %shr428.i.i, !dbg !1045
  store i64 %sub429.i.i, i64* %t1.i.i, align 8, !dbg !1045
  %492 = load i64, i64* %t1.i.i, align 8, !dbg !1045
  %shr430.i.i = lshr i64 %492, 16, !dbg !1045
  %493 = load i64, i64* %t1.i.i, align 8, !dbg !1045
  %sub431.i.i = sub i64 %493, %shr430.i.i, !dbg !1045
  store i64 %sub431.i.i, i64* %t1.i.i, align 8, !dbg !1045
  br label %if.end438.i.i, !dbg !1045

if.else432.i.i:                                   ; preds = %if.end417.i.i
  %494 = load i64, i64* %t1.i.i, align 8, !dbg !1044
  %conv433.i.i = trunc i64 %494 to i32, !dbg !1044
  %sub434.i.i = sub nsw i32 0, %conv433.i.i, !dbg !1044
  %495 = load i32*, i32** %p.i.i, align 8, !dbg !1044
  %496 = load i32, i32* %495, align 4, !dbg !1044
  %sub435.i.i = sub i32 %sub434.i.i, %496, !dbg !1044
  %add436.i.i = add i32 %sub435.i.i, 1, !dbg !1044
  %conv437.i.i = zext i32 %add436.i.i to i64, !dbg !1044
  store i64 %conv437.i.i, i64* %t1.i.i, align 8, !dbg !1044
  br label %if.end438.i.i

if.end438.i.i:                                    ; preds = %if.else432.i.i, %if.then426.i.i
  %497 = load i32*, i32** %p.i.i, align 8, !dbg !1037
  %incdec.ptr439.i.i = getelementptr inbounds i32, i32* %497, i32 1, !dbg !1037
  store i32* %incdec.ptr439.i.i, i32** %p.i.i, align 8, !dbg !1037
  %498 = load i64, i64* %t1.i.i, align 8, !dbg !1037
  %499 = load i64, i64* %t0.i.i, align 8, !dbg !1037
  %add440.i.i = add i64 %499, %498, !dbg !1037
  store i64 %add440.i.i, i64* %t0.i.i, align 8, !dbg !1037
  %500 = load i64, i64* %t1.i.i, align 8, !dbg !1037
  %501 = load i64, i64* %x1.i.i, align 8, !dbg !1037
  %xor441.i.i = xor i64 %501, %500, !dbg !1037
  store i64 %xor441.i.i, i64* %x1.i.i, align 8, !dbg !1037
  %502 = load i64, i64* %t0.i.i, align 8, !dbg !1037
  %503 = load i64, i64* %x4.i.i, align 8, !dbg !1037
  %xor442.i.i = xor i64 %503, %502, !dbg !1037
  store i64 %xor442.i.i, i64* %x4.i.i, align 8, !dbg !1037
  %504 = load i64, i64* %x2.i.i, align 8, !dbg !1037
  %505 = load i64, i64* %t0.i.i, align 8, !dbg !1037
  %xor443.i.i = xor i64 %504, %505, !dbg !1037
  store i64 %xor443.i.i, i64* %ul.i.i, align 8, !dbg !1037
  %506 = load i64, i64* %x3.i.i, align 8, !dbg !1037
  %507 = load i64, i64* %t1.i.i, align 8, !dbg !1037
  %xor444.i.i = xor i64 %506, %507, !dbg !1037
  store i64 %xor444.i.i, i64* %x2.i.i, align 8, !dbg !1037
  %508 = load i64, i64* %ul.i.i, align 8, !dbg !1037
  store i64 %508, i64* %x3.i.i, align 8, !dbg !1037
  %509 = load i64, i64* %x1.i.i, align 8, !dbg !1046
  %and445.i.i = and i64 %509, 65535, !dbg !1046
  store i64 %and445.i.i, i64* %x1.i.i, align 8, !dbg !1046
  %510 = load i64, i64* %x1.i.i, align 8, !dbg !1046
  %511 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %512 = load i32, i32* %511, align 4, !dbg !1046
  %conv446.i.i = zext i32 %512 to i64, !dbg !1046
  %mul447.i.i = mul i64 %510, %conv446.i.i, !dbg !1046
  store i64 %mul447.i.i, i64* %ul.i.i, align 8, !dbg !1046
  %513 = load i64, i64* %ul.i.i, align 8, !dbg !1047
  %cmp448.i.i = icmp ne i64 %513, 0, !dbg !1047
  br i1 %cmp448.i.i, label %if.then450.i.i, label %if.else456.i.i, !dbg !1046

if.then450.i.i:                                   ; preds = %if.end438.i.i
  %514 = load i64, i64* %ul.i.i, align 8, !dbg !1048
  %and451.i.i = and i64 %514, 65535, !dbg !1048
  %515 = load i64, i64* %ul.i.i, align 8, !dbg !1048
  %shr452.i.i = lshr i64 %515, 16, !dbg !1048
  %sub453.i.i = sub i64 %and451.i.i, %shr452.i.i, !dbg !1048
  store i64 %sub453.i.i, i64* %x1.i.i, align 8, !dbg !1048
  %516 = load i64, i64* %x1.i.i, align 8, !dbg !1048
  %shr454.i.i = lshr i64 %516, 16, !dbg !1048
  %517 = load i64, i64* %x1.i.i, align 8, !dbg !1048
  %sub455.i.i = sub i64 %517, %shr454.i.i, !dbg !1048
  store i64 %sub455.i.i, i64* %x1.i.i, align 8, !dbg !1048
  br label %if.end462.i.i, !dbg !1048

if.else456.i.i:                                   ; preds = %if.end438.i.i
  %518 = load i64, i64* %x1.i.i, align 8, !dbg !1047
  %conv457.i.i = trunc i64 %518 to i32, !dbg !1047
  %sub458.i.i = sub nsw i32 0, %conv457.i.i, !dbg !1047
  %519 = load i32*, i32** %p.i.i, align 8, !dbg !1047
  %520 = load i32, i32* %519, align 4, !dbg !1047
  %sub459.i.i = sub i32 %sub458.i.i, %520, !dbg !1047
  %add460.i.i = add i32 %sub459.i.i, 1, !dbg !1047
  %conv461.i.i = zext i32 %add460.i.i to i64, !dbg !1047
  store i64 %conv461.i.i, i64* %x1.i.i, align 8, !dbg !1047
  br label %if.end462.i.i

if.end462.i.i:                                    ; preds = %if.else456.i.i, %if.then450.i.i
  %521 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %incdec.ptr463.i.i = getelementptr inbounds i32, i32* %521, i32 1, !dbg !1046
  store i32* %incdec.ptr463.i.i, i32** %p.i.i, align 8, !dbg !1046
  %522 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %incdec.ptr464.i.i = getelementptr inbounds i32, i32* %522, i32 1, !dbg !1046
  store i32* %incdec.ptr464.i.i, i32** %p.i.i, align 8, !dbg !1046
  %523 = load i32, i32* %522, align 4, !dbg !1046
  %conv465.i.i = zext i32 %523 to i64, !dbg !1046
  %524 = load i64, i64* %x2.i.i, align 8, !dbg !1046
  %add466.i.i = add i64 %524, %conv465.i.i, !dbg !1046
  store i64 %add466.i.i, i64* %x2.i.i, align 8, !dbg !1046
  %525 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %incdec.ptr467.i.i = getelementptr inbounds i32, i32* %525, i32 1, !dbg !1046
  store i32* %incdec.ptr467.i.i, i32** %p.i.i, align 8, !dbg !1046
  %526 = load i32, i32* %525, align 4, !dbg !1046
  %conv468.i.i = zext i32 %526 to i64, !dbg !1046
  %527 = load i64, i64* %x3.i.i, align 8, !dbg !1046
  %add469.i.i = add i64 %527, %conv468.i.i, !dbg !1046
  store i64 %add469.i.i, i64* %x3.i.i, align 8, !dbg !1046
  %528 = load i64, i64* %x4.i.i, align 8, !dbg !1046
  %and470.i.i = and i64 %528, 65535, !dbg !1046
  store i64 %and470.i.i, i64* %x4.i.i, align 8, !dbg !1046
  %529 = load i64, i64* %x4.i.i, align 8, !dbg !1046
  %530 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %531 = load i32, i32* %530, align 4, !dbg !1046
  %conv471.i.i = zext i32 %531 to i64, !dbg !1046
  %mul472.i.i = mul i64 %529, %conv471.i.i, !dbg !1046
  store i64 %mul472.i.i, i64* %ul.i.i, align 8, !dbg !1046
  %532 = load i64, i64* %ul.i.i, align 8, !dbg !1049
  %cmp473.i.i = icmp ne i64 %532, 0, !dbg !1049
  br i1 %cmp473.i.i, label %if.then475.i.i, label %if.else481.i.i, !dbg !1046

if.then475.i.i:                                   ; preds = %if.end462.i.i
  %533 = load i64, i64* %ul.i.i, align 8, !dbg !1050
  %and476.i.i = and i64 %533, 65535, !dbg !1050
  %534 = load i64, i64* %ul.i.i, align 8, !dbg !1050
  %shr477.i.i = lshr i64 %534, 16, !dbg !1050
  %sub478.i.i = sub i64 %and476.i.i, %shr477.i.i, !dbg !1050
  store i64 %sub478.i.i, i64* %x4.i.i, align 8, !dbg !1050
  %535 = load i64, i64* %x4.i.i, align 8, !dbg !1050
  %shr479.i.i = lshr i64 %535, 16, !dbg !1050
  %536 = load i64, i64* %x4.i.i, align 8, !dbg !1050
  %sub480.i.i = sub i64 %536, %shr479.i.i, !dbg !1050
  store i64 %sub480.i.i, i64* %x4.i.i, align 8, !dbg !1050
  br label %if.end487.i.i, !dbg !1050

if.else481.i.i:                                   ; preds = %if.end462.i.i
  %537 = load i64, i64* %x4.i.i, align 8, !dbg !1049
  %conv482.i.i = trunc i64 %537 to i32, !dbg !1049
  %sub483.i.i = sub nsw i32 0, %conv482.i.i, !dbg !1049
  %538 = load i32*, i32** %p.i.i, align 8, !dbg !1049
  %539 = load i32, i32* %538, align 4, !dbg !1049
  %sub484.i.i = sub i32 %sub483.i.i, %539, !dbg !1049
  %add485.i.i = add i32 %sub484.i.i, 1, !dbg !1049
  %conv486.i.i = zext i32 %add485.i.i to i64, !dbg !1049
  store i64 %conv486.i.i, i64* %x4.i.i, align 8, !dbg !1049
  br label %if.end487.i.i

if.end487.i.i:                                    ; preds = %if.else481.i.i, %if.then475.i.i
  %540 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %incdec.ptr488.i.i = getelementptr inbounds i32, i32* %540, i32 1, !dbg !1046
  store i32* %incdec.ptr488.i.i, i32** %p.i.i, align 8, !dbg !1046
  %541 = load i64, i64* %x1.i.i, align 8, !dbg !1046
  %542 = load i64, i64* %x3.i.i, align 8, !dbg !1046
  %xor489.i.i = xor i64 %541, %542, !dbg !1046
  %and490.i.i = and i64 %xor489.i.i, 65535, !dbg !1046
  store i64 %and490.i.i, i64* %t0.i.i, align 8, !dbg !1046
  %543 = load i64, i64* %t0.i.i, align 8, !dbg !1046
  %544 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %545 = load i32, i32* %544, align 4, !dbg !1046
  %conv491.i.i = zext i32 %545 to i64, !dbg !1046
  %mul492.i.i = mul i64 %543, %conv491.i.i, !dbg !1046
  store i64 %mul492.i.i, i64* %ul.i.i, align 8, !dbg !1046
  %546 = load i64, i64* %ul.i.i, align 8, !dbg !1051
  %cmp493.i.i = icmp ne i64 %546, 0, !dbg !1051
  br i1 %cmp493.i.i, label %if.then495.i.i, label %if.else501.i.i, !dbg !1046

if.then495.i.i:                                   ; preds = %if.end487.i.i
  %547 = load i64, i64* %ul.i.i, align 8, !dbg !1052
  %and496.i.i = and i64 %547, 65535, !dbg !1052
  %548 = load i64, i64* %ul.i.i, align 8, !dbg !1052
  %shr497.i.i = lshr i64 %548, 16, !dbg !1052
  %sub498.i.i = sub i64 %and496.i.i, %shr497.i.i, !dbg !1052
  store i64 %sub498.i.i, i64* %t0.i.i, align 8, !dbg !1052
  %549 = load i64, i64* %t0.i.i, align 8, !dbg !1052
  %shr499.i.i = lshr i64 %549, 16, !dbg !1052
  %550 = load i64, i64* %t0.i.i, align 8, !dbg !1052
  %sub500.i.i = sub i64 %550, %shr499.i.i, !dbg !1052
  store i64 %sub500.i.i, i64* %t0.i.i, align 8, !dbg !1052
  br label %if.end507.i.i, !dbg !1052

if.else501.i.i:                                   ; preds = %if.end487.i.i
  %551 = load i64, i64* %t0.i.i, align 8, !dbg !1051
  %conv502.i.i = trunc i64 %551 to i32, !dbg !1051
  %sub503.i.i = sub nsw i32 0, %conv502.i.i, !dbg !1051
  %552 = load i32*, i32** %p.i.i, align 8, !dbg !1051
  %553 = load i32, i32* %552, align 4, !dbg !1051
  %sub504.i.i = sub i32 %sub503.i.i, %553, !dbg !1051
  %add505.i.i = add i32 %sub504.i.i, 1, !dbg !1051
  %conv506.i.i = zext i32 %add505.i.i to i64, !dbg !1051
  store i64 %conv506.i.i, i64* %t0.i.i, align 8, !dbg !1051
  br label %if.end507.i.i

if.end507.i.i:                                    ; preds = %if.else501.i.i, %if.then495.i.i
  %554 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %incdec.ptr508.i.i = getelementptr inbounds i32, i32* %554, i32 1, !dbg !1046
  store i32* %incdec.ptr508.i.i, i32** %p.i.i, align 8, !dbg !1046
  %555 = load i64, i64* %t0.i.i, align 8, !dbg !1046
  %556 = load i64, i64* %x2.i.i, align 8, !dbg !1046
  %557 = load i64, i64* %x4.i.i, align 8, !dbg !1046
  %xor509.i.i = xor i64 %556, %557, !dbg !1046
  %add510.i.i = add i64 %555, %xor509.i.i, !dbg !1046
  %and511.i.i = and i64 %add510.i.i, 65535, !dbg !1046
  store i64 %and511.i.i, i64* %t1.i.i, align 8, !dbg !1046
  %558 = load i64, i64* %t1.i.i, align 8, !dbg !1046
  %559 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %560 = load i32, i32* %559, align 4, !dbg !1046
  %conv512.i.i = zext i32 %560 to i64, !dbg !1046
  %mul513.i.i = mul i64 %558, %conv512.i.i, !dbg !1046
  store i64 %mul513.i.i, i64* %ul.i.i, align 8, !dbg !1046
  %561 = load i64, i64* %ul.i.i, align 8, !dbg !1053
  %cmp514.i.i = icmp ne i64 %561, 0, !dbg !1053
  br i1 %cmp514.i.i, label %if.then516.i.i, label %if.else522.i.i, !dbg !1046

if.then516.i.i:                                   ; preds = %if.end507.i.i
  %562 = load i64, i64* %ul.i.i, align 8, !dbg !1054
  %and517.i.i = and i64 %562, 65535, !dbg !1054
  %563 = load i64, i64* %ul.i.i, align 8, !dbg !1054
  %shr518.i.i = lshr i64 %563, 16, !dbg !1054
  %sub519.i.i = sub i64 %and517.i.i, %shr518.i.i, !dbg !1054
  store i64 %sub519.i.i, i64* %t1.i.i, align 8, !dbg !1054
  %564 = load i64, i64* %t1.i.i, align 8, !dbg !1054
  %shr520.i.i = lshr i64 %564, 16, !dbg !1054
  %565 = load i64, i64* %t1.i.i, align 8, !dbg !1054
  %sub521.i.i = sub i64 %565, %shr520.i.i, !dbg !1054
  store i64 %sub521.i.i, i64* %t1.i.i, align 8, !dbg !1054
  br label %if.end528.i.i, !dbg !1054

if.else522.i.i:                                   ; preds = %if.end507.i.i
  %566 = load i64, i64* %t1.i.i, align 8, !dbg !1053
  %conv523.i.i = trunc i64 %566 to i32, !dbg !1053
  %sub524.i.i = sub nsw i32 0, %conv523.i.i, !dbg !1053
  %567 = load i32*, i32** %p.i.i, align 8, !dbg !1053
  %568 = load i32, i32* %567, align 4, !dbg !1053
  %sub525.i.i = sub i32 %sub524.i.i, %568, !dbg !1053
  %add526.i.i = add i32 %sub525.i.i, 1, !dbg !1053
  %conv527.i.i = zext i32 %add526.i.i to i64, !dbg !1053
  store i64 %conv527.i.i, i64* %t1.i.i, align 8, !dbg !1053
  br label %if.end528.i.i

if.end528.i.i:                                    ; preds = %if.else522.i.i, %if.then516.i.i
  %569 = load i32*, i32** %p.i.i, align 8, !dbg !1046
  %incdec.ptr529.i.i = getelementptr inbounds i32, i32* %569, i32 1, !dbg !1046
  store i32* %incdec.ptr529.i.i, i32** %p.i.i, align 8, !dbg !1046
  %570 = load i64, i64* %t1.i.i, align 8, !dbg !1046
  %571 = load i64, i64* %t0.i.i, align 8, !dbg !1046
  %add530.i.i = add i64 %571, %570, !dbg !1046
  store i64 %add530.i.i, i64* %t0.i.i, align 8, !dbg !1046
  %572 = load i64, i64* %t1.i.i, align 8, !dbg !1046
  %573 = load i64, i64* %x1.i.i, align 8, !dbg !1046
  %xor531.i.i = xor i64 %573, %572, !dbg !1046
  store i64 %xor531.i.i, i64* %x1.i.i, align 8, !dbg !1046
  %574 = load i64, i64* %t0.i.i, align 8, !dbg !1046
  %575 = load i64, i64* %x4.i.i, align 8, !dbg !1046
  %xor532.i.i = xor i64 %575, %574, !dbg !1046
  store i64 %xor532.i.i, i64* %x4.i.i, align 8, !dbg !1046
  %576 = load i64, i64* %x2.i.i, align 8, !dbg !1046
  %577 = load i64, i64* %t0.i.i, align 8, !dbg !1046
  %xor533.i.i = xor i64 %576, %577, !dbg !1046
  store i64 %xor533.i.i, i64* %ul.i.i, align 8, !dbg !1046
  %578 = load i64, i64* %x3.i.i, align 8, !dbg !1046
  %579 = load i64, i64* %t1.i.i, align 8, !dbg !1046
  %xor534.i.i = xor i64 %578, %579, !dbg !1046
  store i64 %xor534.i.i, i64* %x2.i.i, align 8, !dbg !1046
  %580 = load i64, i64* %ul.i.i, align 8, !dbg !1046
  store i64 %580, i64* %x3.i.i, align 8, !dbg !1046
  %581 = load i64, i64* %x1.i.i, align 8, !dbg !1055
  %and535.i.i = and i64 %581, 65535, !dbg !1055
  store i64 %and535.i.i, i64* %x1.i.i, align 8, !dbg !1055
  %582 = load i64, i64* %x1.i.i, align 8, !dbg !1055
  %583 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %584 = load i32, i32* %583, align 4, !dbg !1055
  %conv536.i.i = zext i32 %584 to i64, !dbg !1055
  %mul537.i.i = mul i64 %582, %conv536.i.i, !dbg !1055
  store i64 %mul537.i.i, i64* %ul.i.i, align 8, !dbg !1055
  %585 = load i64, i64* %ul.i.i, align 8, !dbg !1056
  %cmp538.i.i = icmp ne i64 %585, 0, !dbg !1056
  br i1 %cmp538.i.i, label %if.then540.i.i, label %if.else546.i.i, !dbg !1055

if.then540.i.i:                                   ; preds = %if.end528.i.i
  %586 = load i64, i64* %ul.i.i, align 8, !dbg !1057
  %and541.i.i = and i64 %586, 65535, !dbg !1057
  %587 = load i64, i64* %ul.i.i, align 8, !dbg !1057
  %shr542.i.i = lshr i64 %587, 16, !dbg !1057
  %sub543.i.i = sub i64 %and541.i.i, %shr542.i.i, !dbg !1057
  store i64 %sub543.i.i, i64* %x1.i.i, align 8, !dbg !1057
  %588 = load i64, i64* %x1.i.i, align 8, !dbg !1057
  %shr544.i.i = lshr i64 %588, 16, !dbg !1057
  %589 = load i64, i64* %x1.i.i, align 8, !dbg !1057
  %sub545.i.i = sub i64 %589, %shr544.i.i, !dbg !1057
  store i64 %sub545.i.i, i64* %x1.i.i, align 8, !dbg !1057
  br label %if.end552.i.i, !dbg !1057

if.else546.i.i:                                   ; preds = %if.end528.i.i
  %590 = load i64, i64* %x1.i.i, align 8, !dbg !1056
  %conv547.i.i = trunc i64 %590 to i32, !dbg !1056
  %sub548.i.i = sub nsw i32 0, %conv547.i.i, !dbg !1056
  %591 = load i32*, i32** %p.i.i, align 8, !dbg !1056
  %592 = load i32, i32* %591, align 4, !dbg !1056
  %sub549.i.i = sub i32 %sub548.i.i, %592, !dbg !1056
  %add550.i.i = add i32 %sub549.i.i, 1, !dbg !1056
  %conv551.i.i = zext i32 %add550.i.i to i64, !dbg !1056
  store i64 %conv551.i.i, i64* %x1.i.i, align 8, !dbg !1056
  br label %if.end552.i.i

if.end552.i.i:                                    ; preds = %if.else546.i.i, %if.then540.i.i
  %593 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %incdec.ptr553.i.i = getelementptr inbounds i32, i32* %593, i32 1, !dbg !1055
  store i32* %incdec.ptr553.i.i, i32** %p.i.i, align 8, !dbg !1055
  %594 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %incdec.ptr554.i.i = getelementptr inbounds i32, i32* %594, i32 1, !dbg !1055
  store i32* %incdec.ptr554.i.i, i32** %p.i.i, align 8, !dbg !1055
  %595 = load i32, i32* %594, align 4, !dbg !1055
  %conv555.i.i = zext i32 %595 to i64, !dbg !1055
  %596 = load i64, i64* %x2.i.i, align 8, !dbg !1055
  %add556.i.i = add i64 %596, %conv555.i.i, !dbg !1055
  store i64 %add556.i.i, i64* %x2.i.i, align 8, !dbg !1055
  %597 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %incdec.ptr557.i.i = getelementptr inbounds i32, i32* %597, i32 1, !dbg !1055
  store i32* %incdec.ptr557.i.i, i32** %p.i.i, align 8, !dbg !1055
  %598 = load i32, i32* %597, align 4, !dbg !1055
  %conv558.i.i = zext i32 %598 to i64, !dbg !1055
  %599 = load i64, i64* %x3.i.i, align 8, !dbg !1055
  %add559.i.i = add i64 %599, %conv558.i.i, !dbg !1055
  store i64 %add559.i.i, i64* %x3.i.i, align 8, !dbg !1055
  %600 = load i64, i64* %x4.i.i, align 8, !dbg !1055
  %and560.i.i = and i64 %600, 65535, !dbg !1055
  store i64 %and560.i.i, i64* %x4.i.i, align 8, !dbg !1055
  %601 = load i64, i64* %x4.i.i, align 8, !dbg !1055
  %602 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %603 = load i32, i32* %602, align 4, !dbg !1055
  %conv561.i.i = zext i32 %603 to i64, !dbg !1055
  %mul562.i.i = mul i64 %601, %conv561.i.i, !dbg !1055
  store i64 %mul562.i.i, i64* %ul.i.i, align 8, !dbg !1055
  %604 = load i64, i64* %ul.i.i, align 8, !dbg !1058
  %cmp563.i.i = icmp ne i64 %604, 0, !dbg !1058
  br i1 %cmp563.i.i, label %if.then565.i.i, label %if.else571.i.i, !dbg !1055

if.then565.i.i:                                   ; preds = %if.end552.i.i
  %605 = load i64, i64* %ul.i.i, align 8, !dbg !1059
  %and566.i.i = and i64 %605, 65535, !dbg !1059
  %606 = load i64, i64* %ul.i.i, align 8, !dbg !1059
  %shr567.i.i = lshr i64 %606, 16, !dbg !1059
  %sub568.i.i = sub i64 %and566.i.i, %shr567.i.i, !dbg !1059
  store i64 %sub568.i.i, i64* %x4.i.i, align 8, !dbg !1059
  %607 = load i64, i64* %x4.i.i, align 8, !dbg !1059
  %shr569.i.i = lshr i64 %607, 16, !dbg !1059
  %608 = load i64, i64* %x4.i.i, align 8, !dbg !1059
  %sub570.i.i = sub i64 %608, %shr569.i.i, !dbg !1059
  store i64 %sub570.i.i, i64* %x4.i.i, align 8, !dbg !1059
  br label %if.end577.i.i, !dbg !1059

if.else571.i.i:                                   ; preds = %if.end552.i.i
  %609 = load i64, i64* %x4.i.i, align 8, !dbg !1058
  %conv572.i.i = trunc i64 %609 to i32, !dbg !1058
  %sub573.i.i = sub nsw i32 0, %conv572.i.i, !dbg !1058
  %610 = load i32*, i32** %p.i.i, align 8, !dbg !1058
  %611 = load i32, i32* %610, align 4, !dbg !1058
  %sub574.i.i = sub i32 %sub573.i.i, %611, !dbg !1058
  %add575.i.i = add i32 %sub574.i.i, 1, !dbg !1058
  %conv576.i.i = zext i32 %add575.i.i to i64, !dbg !1058
  store i64 %conv576.i.i, i64* %x4.i.i, align 8, !dbg !1058
  br label %if.end577.i.i

if.end577.i.i:                                    ; preds = %if.else571.i.i, %if.then565.i.i
  %612 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %incdec.ptr578.i.i = getelementptr inbounds i32, i32* %612, i32 1, !dbg !1055
  store i32* %incdec.ptr578.i.i, i32** %p.i.i, align 8, !dbg !1055
  %613 = load i64, i64* %x1.i.i, align 8, !dbg !1055
  %614 = load i64, i64* %x3.i.i, align 8, !dbg !1055
  %xor579.i.i = xor i64 %613, %614, !dbg !1055
  %and580.i.i = and i64 %xor579.i.i, 65535, !dbg !1055
  store i64 %and580.i.i, i64* %t0.i.i, align 8, !dbg !1055
  %615 = load i64, i64* %t0.i.i, align 8, !dbg !1055
  %616 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %617 = load i32, i32* %616, align 4, !dbg !1055
  %conv581.i.i = zext i32 %617 to i64, !dbg !1055
  %mul582.i.i = mul i64 %615, %conv581.i.i, !dbg !1055
  store i64 %mul582.i.i, i64* %ul.i.i, align 8, !dbg !1055
  %618 = load i64, i64* %ul.i.i, align 8, !dbg !1060
  %cmp583.i.i = icmp ne i64 %618, 0, !dbg !1060
  br i1 %cmp583.i.i, label %if.then585.i.i, label %if.else591.i.i, !dbg !1055

if.then585.i.i:                                   ; preds = %if.end577.i.i
  %619 = load i64, i64* %ul.i.i, align 8, !dbg !1061
  %and586.i.i = and i64 %619, 65535, !dbg !1061
  %620 = load i64, i64* %ul.i.i, align 8, !dbg !1061
  %shr587.i.i = lshr i64 %620, 16, !dbg !1061
  %sub588.i.i = sub i64 %and586.i.i, %shr587.i.i, !dbg !1061
  store i64 %sub588.i.i, i64* %t0.i.i, align 8, !dbg !1061
  %621 = load i64, i64* %t0.i.i, align 8, !dbg !1061
  %shr589.i.i = lshr i64 %621, 16, !dbg !1061
  %622 = load i64, i64* %t0.i.i, align 8, !dbg !1061
  %sub590.i.i = sub i64 %622, %shr589.i.i, !dbg !1061
  store i64 %sub590.i.i, i64* %t0.i.i, align 8, !dbg !1061
  br label %if.end597.i.i, !dbg !1061

if.else591.i.i:                                   ; preds = %if.end577.i.i
  %623 = load i64, i64* %t0.i.i, align 8, !dbg !1060
  %conv592.i.i = trunc i64 %623 to i32, !dbg !1060
  %sub593.i.i = sub nsw i32 0, %conv592.i.i, !dbg !1060
  %624 = load i32*, i32** %p.i.i, align 8, !dbg !1060
  %625 = load i32, i32* %624, align 4, !dbg !1060
  %sub594.i.i = sub i32 %sub593.i.i, %625, !dbg !1060
  %add595.i.i = add i32 %sub594.i.i, 1, !dbg !1060
  %conv596.i.i = zext i32 %add595.i.i to i64, !dbg !1060
  store i64 %conv596.i.i, i64* %t0.i.i, align 8, !dbg !1060
  br label %if.end597.i.i

if.end597.i.i:                                    ; preds = %if.else591.i.i, %if.then585.i.i
  %626 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %incdec.ptr598.i.i = getelementptr inbounds i32, i32* %626, i32 1, !dbg !1055
  store i32* %incdec.ptr598.i.i, i32** %p.i.i, align 8, !dbg !1055
  %627 = load i64, i64* %t0.i.i, align 8, !dbg !1055
  %628 = load i64, i64* %x2.i.i, align 8, !dbg !1055
  %629 = load i64, i64* %x4.i.i, align 8, !dbg !1055
  %xor599.i.i = xor i64 %628, %629, !dbg !1055
  %add600.i.i = add i64 %627, %xor599.i.i, !dbg !1055
  %and601.i.i = and i64 %add600.i.i, 65535, !dbg !1055
  store i64 %and601.i.i, i64* %t1.i.i, align 8, !dbg !1055
  %630 = load i64, i64* %t1.i.i, align 8, !dbg !1055
  %631 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %632 = load i32, i32* %631, align 4, !dbg !1055
  %conv602.i.i = zext i32 %632 to i64, !dbg !1055
  %mul603.i.i = mul i64 %630, %conv602.i.i, !dbg !1055
  store i64 %mul603.i.i, i64* %ul.i.i, align 8, !dbg !1055
  %633 = load i64, i64* %ul.i.i, align 8, !dbg !1062
  %cmp604.i.i = icmp ne i64 %633, 0, !dbg !1062
  br i1 %cmp604.i.i, label %if.then606.i.i, label %if.else612.i.i, !dbg !1055

if.then606.i.i:                                   ; preds = %if.end597.i.i
  %634 = load i64, i64* %ul.i.i, align 8, !dbg !1063
  %and607.i.i = and i64 %634, 65535, !dbg !1063
  %635 = load i64, i64* %ul.i.i, align 8, !dbg !1063
  %shr608.i.i = lshr i64 %635, 16, !dbg !1063
  %sub609.i.i = sub i64 %and607.i.i, %shr608.i.i, !dbg !1063
  store i64 %sub609.i.i, i64* %t1.i.i, align 8, !dbg !1063
  %636 = load i64, i64* %t1.i.i, align 8, !dbg !1063
  %shr610.i.i = lshr i64 %636, 16, !dbg !1063
  %637 = load i64, i64* %t1.i.i, align 8, !dbg !1063
  %sub611.i.i = sub i64 %637, %shr610.i.i, !dbg !1063
  store i64 %sub611.i.i, i64* %t1.i.i, align 8, !dbg !1063
  br label %if.end618.i.i, !dbg !1063

if.else612.i.i:                                   ; preds = %if.end597.i.i
  %638 = load i64, i64* %t1.i.i, align 8, !dbg !1062
  %conv613.i.i = trunc i64 %638 to i32, !dbg !1062
  %sub614.i.i = sub nsw i32 0, %conv613.i.i, !dbg !1062
  %639 = load i32*, i32** %p.i.i, align 8, !dbg !1062
  %640 = load i32, i32* %639, align 4, !dbg !1062
  %sub615.i.i = sub i32 %sub614.i.i, %640, !dbg !1062
  %add616.i.i = add i32 %sub615.i.i, 1, !dbg !1062
  %conv617.i.i = zext i32 %add616.i.i to i64, !dbg !1062
  store i64 %conv617.i.i, i64* %t1.i.i, align 8, !dbg !1062
  br label %if.end618.i.i

if.end618.i.i:                                    ; preds = %if.else612.i.i, %if.then606.i.i
  %641 = load i32*, i32** %p.i.i, align 8, !dbg !1055
  %incdec.ptr619.i.i = getelementptr inbounds i32, i32* %641, i32 1, !dbg !1055
  store i32* %incdec.ptr619.i.i, i32** %p.i.i, align 8, !dbg !1055
  %642 = load i64, i64* %t1.i.i, align 8, !dbg !1055
  %643 = load i64, i64* %t0.i.i, align 8, !dbg !1055
  %add620.i.i = add i64 %643, %642, !dbg !1055
  store i64 %add620.i.i, i64* %t0.i.i, align 8, !dbg !1055
  %644 = load i64, i64* %t1.i.i, align 8, !dbg !1055
  %645 = load i64, i64* %x1.i.i, align 8, !dbg !1055
  %xor621.i.i = xor i64 %645, %644, !dbg !1055
  store i64 %xor621.i.i, i64* %x1.i.i, align 8, !dbg !1055
  %646 = load i64, i64* %t0.i.i, align 8, !dbg !1055
  %647 = load i64, i64* %x4.i.i, align 8, !dbg !1055
  %xor622.i.i = xor i64 %647, %646, !dbg !1055
  store i64 %xor622.i.i, i64* %x4.i.i, align 8, !dbg !1055
  %648 = load i64, i64* %x2.i.i, align 8, !dbg !1055
  %649 = load i64, i64* %t0.i.i, align 8, !dbg !1055
  %xor623.i.i = xor i64 %648, %649, !dbg !1055
  store i64 %xor623.i.i, i64* %ul.i.i, align 8, !dbg !1055
  %650 = load i64, i64* %x3.i.i, align 8, !dbg !1055
  %651 = load i64, i64* %t1.i.i, align 8, !dbg !1055
  %xor624.i.i = xor i64 %650, %651, !dbg !1055
  store i64 %xor624.i.i, i64* %x2.i.i, align 8, !dbg !1055
  %652 = load i64, i64* %ul.i.i, align 8, !dbg !1055
  store i64 %652, i64* %x3.i.i, align 8, !dbg !1055
  %653 = load i64, i64* %x1.i.i, align 8, !dbg !1064
  %and625.i.i = and i64 %653, 65535, !dbg !1064
  store i64 %and625.i.i, i64* %x1.i.i, align 8, !dbg !1064
  %654 = load i64, i64* %x1.i.i, align 8, !dbg !1064
  %655 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %656 = load i32, i32* %655, align 4, !dbg !1064
  %conv626.i.i = zext i32 %656 to i64, !dbg !1064
  %mul627.i.i = mul i64 %654, %conv626.i.i, !dbg !1064
  store i64 %mul627.i.i, i64* %ul.i.i, align 8, !dbg !1064
  %657 = load i64, i64* %ul.i.i, align 8, !dbg !1065
  %cmp628.i.i = icmp ne i64 %657, 0, !dbg !1065
  br i1 %cmp628.i.i, label %if.then630.i.i, label %if.else636.i.i, !dbg !1064

if.then630.i.i:                                   ; preds = %if.end618.i.i
  %658 = load i64, i64* %ul.i.i, align 8, !dbg !1066
  %and631.i.i = and i64 %658, 65535, !dbg !1066
  %659 = load i64, i64* %ul.i.i, align 8, !dbg !1066
  %shr632.i.i = lshr i64 %659, 16, !dbg !1066
  %sub633.i.i = sub i64 %and631.i.i, %shr632.i.i, !dbg !1066
  store i64 %sub633.i.i, i64* %x1.i.i, align 8, !dbg !1066
  %660 = load i64, i64* %x1.i.i, align 8, !dbg !1066
  %shr634.i.i = lshr i64 %660, 16, !dbg !1066
  %661 = load i64, i64* %x1.i.i, align 8, !dbg !1066
  %sub635.i.i = sub i64 %661, %shr634.i.i, !dbg !1066
  store i64 %sub635.i.i, i64* %x1.i.i, align 8, !dbg !1066
  br label %if.end642.i.i, !dbg !1066

if.else636.i.i:                                   ; preds = %if.end618.i.i
  %662 = load i64, i64* %x1.i.i, align 8, !dbg !1065
  %conv637.i.i = trunc i64 %662 to i32, !dbg !1065
  %sub638.i.i = sub nsw i32 0, %conv637.i.i, !dbg !1065
  %663 = load i32*, i32** %p.i.i, align 8, !dbg !1065
  %664 = load i32, i32* %663, align 4, !dbg !1065
  %sub639.i.i = sub i32 %sub638.i.i, %664, !dbg !1065
  %add640.i.i = add i32 %sub639.i.i, 1, !dbg !1065
  %conv641.i.i = zext i32 %add640.i.i to i64, !dbg !1065
  store i64 %conv641.i.i, i64* %x1.i.i, align 8, !dbg !1065
  br label %if.end642.i.i

if.end642.i.i:                                    ; preds = %if.else636.i.i, %if.then630.i.i
  %665 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %incdec.ptr643.i.i = getelementptr inbounds i32, i32* %665, i32 1, !dbg !1064
  store i32* %incdec.ptr643.i.i, i32** %p.i.i, align 8, !dbg !1064
  %666 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %incdec.ptr644.i.i = getelementptr inbounds i32, i32* %666, i32 1, !dbg !1064
  store i32* %incdec.ptr644.i.i, i32** %p.i.i, align 8, !dbg !1064
  %667 = load i32, i32* %666, align 4, !dbg !1064
  %conv645.i.i = zext i32 %667 to i64, !dbg !1064
  %668 = load i64, i64* %x2.i.i, align 8, !dbg !1064
  %add646.i.i = add i64 %668, %conv645.i.i, !dbg !1064
  store i64 %add646.i.i, i64* %x2.i.i, align 8, !dbg !1064
  %669 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %incdec.ptr647.i.i = getelementptr inbounds i32, i32* %669, i32 1, !dbg !1064
  store i32* %incdec.ptr647.i.i, i32** %p.i.i, align 8, !dbg !1064
  %670 = load i32, i32* %669, align 4, !dbg !1064
  %conv648.i.i = zext i32 %670 to i64, !dbg !1064
  %671 = load i64, i64* %x3.i.i, align 8, !dbg !1064
  %add649.i.i = add i64 %671, %conv648.i.i, !dbg !1064
  store i64 %add649.i.i, i64* %x3.i.i, align 8, !dbg !1064
  %672 = load i64, i64* %x4.i.i, align 8, !dbg !1064
  %and650.i.i = and i64 %672, 65535, !dbg !1064
  store i64 %and650.i.i, i64* %x4.i.i, align 8, !dbg !1064
  %673 = load i64, i64* %x4.i.i, align 8, !dbg !1064
  %674 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %675 = load i32, i32* %674, align 4, !dbg !1064
  %conv651.i.i = zext i32 %675 to i64, !dbg !1064
  %mul652.i.i = mul i64 %673, %conv651.i.i, !dbg !1064
  store i64 %mul652.i.i, i64* %ul.i.i, align 8, !dbg !1064
  %676 = load i64, i64* %ul.i.i, align 8, !dbg !1067
  %cmp653.i.i = icmp ne i64 %676, 0, !dbg !1067
  br i1 %cmp653.i.i, label %if.then655.i.i, label %if.else661.i.i, !dbg !1064

if.then655.i.i:                                   ; preds = %if.end642.i.i
  %677 = load i64, i64* %ul.i.i, align 8, !dbg !1068
  %and656.i.i = and i64 %677, 65535, !dbg !1068
  %678 = load i64, i64* %ul.i.i, align 8, !dbg !1068
  %shr657.i.i = lshr i64 %678, 16, !dbg !1068
  %sub658.i.i = sub i64 %and656.i.i, %shr657.i.i, !dbg !1068
  store i64 %sub658.i.i, i64* %x4.i.i, align 8, !dbg !1068
  %679 = load i64, i64* %x4.i.i, align 8, !dbg !1068
  %shr659.i.i = lshr i64 %679, 16, !dbg !1068
  %680 = load i64, i64* %x4.i.i, align 8, !dbg !1068
  %sub660.i.i = sub i64 %680, %shr659.i.i, !dbg !1068
  store i64 %sub660.i.i, i64* %x4.i.i, align 8, !dbg !1068
  br label %if.end667.i.i, !dbg !1068

if.else661.i.i:                                   ; preds = %if.end642.i.i
  %681 = load i64, i64* %x4.i.i, align 8, !dbg !1067
  %conv662.i.i = trunc i64 %681 to i32, !dbg !1067
  %sub663.i.i = sub nsw i32 0, %conv662.i.i, !dbg !1067
  %682 = load i32*, i32** %p.i.i, align 8, !dbg !1067
  %683 = load i32, i32* %682, align 4, !dbg !1067
  %sub664.i.i = sub i32 %sub663.i.i, %683, !dbg !1067
  %add665.i.i = add i32 %sub664.i.i, 1, !dbg !1067
  %conv666.i.i = zext i32 %add665.i.i to i64, !dbg !1067
  store i64 %conv666.i.i, i64* %x4.i.i, align 8, !dbg !1067
  br label %if.end667.i.i

if.end667.i.i:                                    ; preds = %if.else661.i.i, %if.then655.i.i
  %684 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %incdec.ptr668.i.i = getelementptr inbounds i32, i32* %684, i32 1, !dbg !1064
  store i32* %incdec.ptr668.i.i, i32** %p.i.i, align 8, !dbg !1064
  %685 = load i64, i64* %x1.i.i, align 8, !dbg !1064
  %686 = load i64, i64* %x3.i.i, align 8, !dbg !1064
  %xor669.i.i = xor i64 %685, %686, !dbg !1064
  %and670.i.i = and i64 %xor669.i.i, 65535, !dbg !1064
  store i64 %and670.i.i, i64* %t0.i.i, align 8, !dbg !1064
  %687 = load i64, i64* %t0.i.i, align 8, !dbg !1064
  %688 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %689 = load i32, i32* %688, align 4, !dbg !1064
  %conv671.i.i = zext i32 %689 to i64, !dbg !1064
  %mul672.i.i = mul i64 %687, %conv671.i.i, !dbg !1064
  store i64 %mul672.i.i, i64* %ul.i.i, align 8, !dbg !1064
  %690 = load i64, i64* %ul.i.i, align 8, !dbg !1069
  %cmp673.i.i = icmp ne i64 %690, 0, !dbg !1069
  br i1 %cmp673.i.i, label %if.then675.i.i, label %if.else681.i.i, !dbg !1064

if.then675.i.i:                                   ; preds = %if.end667.i.i
  %691 = load i64, i64* %ul.i.i, align 8, !dbg !1070
  %and676.i.i = and i64 %691, 65535, !dbg !1070
  %692 = load i64, i64* %ul.i.i, align 8, !dbg !1070
  %shr677.i.i = lshr i64 %692, 16, !dbg !1070
  %sub678.i.i = sub i64 %and676.i.i, %shr677.i.i, !dbg !1070
  store i64 %sub678.i.i, i64* %t0.i.i, align 8, !dbg !1070
  %693 = load i64, i64* %t0.i.i, align 8, !dbg !1070
  %shr679.i.i = lshr i64 %693, 16, !dbg !1070
  %694 = load i64, i64* %t0.i.i, align 8, !dbg !1070
  %sub680.i.i = sub i64 %694, %shr679.i.i, !dbg !1070
  store i64 %sub680.i.i, i64* %t0.i.i, align 8, !dbg !1070
  br label %if.end687.i.i, !dbg !1070

if.else681.i.i:                                   ; preds = %if.end667.i.i
  %695 = load i64, i64* %t0.i.i, align 8, !dbg !1069
  %conv682.i.i = trunc i64 %695 to i32, !dbg !1069
  %sub683.i.i = sub nsw i32 0, %conv682.i.i, !dbg !1069
  %696 = load i32*, i32** %p.i.i, align 8, !dbg !1069
  %697 = load i32, i32* %696, align 4, !dbg !1069
  %sub684.i.i = sub i32 %sub683.i.i, %697, !dbg !1069
  %add685.i.i = add i32 %sub684.i.i, 1, !dbg !1069
  %conv686.i.i = zext i32 %add685.i.i to i64, !dbg !1069
  store i64 %conv686.i.i, i64* %t0.i.i, align 8, !dbg !1069
  br label %if.end687.i.i

if.end687.i.i:                                    ; preds = %if.else681.i.i, %if.then675.i.i
  %698 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %incdec.ptr688.i.i = getelementptr inbounds i32, i32* %698, i32 1, !dbg !1064
  store i32* %incdec.ptr688.i.i, i32** %p.i.i, align 8, !dbg !1064
  %699 = load i64, i64* %t0.i.i, align 8, !dbg !1064
  %700 = load i64, i64* %x2.i.i, align 8, !dbg !1064
  %701 = load i64, i64* %x4.i.i, align 8, !dbg !1064
  %xor689.i.i = xor i64 %700, %701, !dbg !1064
  %add690.i.i = add i64 %699, %xor689.i.i, !dbg !1064
  %and691.i.i = and i64 %add690.i.i, 65535, !dbg !1064
  store i64 %and691.i.i, i64* %t1.i.i, align 8, !dbg !1064
  %702 = load i64, i64* %t1.i.i, align 8, !dbg !1064
  %703 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %704 = load i32, i32* %703, align 4, !dbg !1064
  %conv692.i.i = zext i32 %704 to i64, !dbg !1064
  %mul693.i.i = mul i64 %702, %conv692.i.i, !dbg !1064
  store i64 %mul693.i.i, i64* %ul.i.i, align 8, !dbg !1064
  %705 = load i64, i64* %ul.i.i, align 8, !dbg !1071
  %cmp694.i.i = icmp ne i64 %705, 0, !dbg !1071
  br i1 %cmp694.i.i, label %if.then696.i.i, label %if.else702.i.i, !dbg !1064

if.then696.i.i:                                   ; preds = %if.end687.i.i
  %706 = load i64, i64* %ul.i.i, align 8, !dbg !1072
  %and697.i.i = and i64 %706, 65535, !dbg !1072
  %707 = load i64, i64* %ul.i.i, align 8, !dbg !1072
  %shr698.i.i = lshr i64 %707, 16, !dbg !1072
  %sub699.i.i = sub i64 %and697.i.i, %shr698.i.i, !dbg !1072
  store i64 %sub699.i.i, i64* %t1.i.i, align 8, !dbg !1072
  %708 = load i64, i64* %t1.i.i, align 8, !dbg !1072
  %shr700.i.i = lshr i64 %708, 16, !dbg !1072
  %709 = load i64, i64* %t1.i.i, align 8, !dbg !1072
  %sub701.i.i = sub i64 %709, %shr700.i.i, !dbg !1072
  store i64 %sub701.i.i, i64* %t1.i.i, align 8, !dbg !1072
  br label %if.end708.i.i, !dbg !1072

if.else702.i.i:                                   ; preds = %if.end687.i.i
  %710 = load i64, i64* %t1.i.i, align 8, !dbg !1071
  %conv703.i.i = trunc i64 %710 to i32, !dbg !1071
  %sub704.i.i = sub nsw i32 0, %conv703.i.i, !dbg !1071
  %711 = load i32*, i32** %p.i.i, align 8, !dbg !1071
  %712 = load i32, i32* %711, align 4, !dbg !1071
  %sub705.i.i = sub i32 %sub704.i.i, %712, !dbg !1071
  %add706.i.i = add i32 %sub705.i.i, 1, !dbg !1071
  %conv707.i.i = zext i32 %add706.i.i to i64, !dbg !1071
  store i64 %conv707.i.i, i64* %t1.i.i, align 8, !dbg !1071
  br label %if.end708.i.i

if.end708.i.i:                                    ; preds = %if.else702.i.i, %if.then696.i.i
  %713 = load i32*, i32** %p.i.i, align 8, !dbg !1064
  %incdec.ptr709.i.i = getelementptr inbounds i32, i32* %713, i32 1, !dbg !1064
  store i32* %incdec.ptr709.i.i, i32** %p.i.i, align 8, !dbg !1064
  %714 = load i64, i64* %t1.i.i, align 8, !dbg !1064
  %715 = load i64, i64* %t0.i.i, align 8, !dbg !1064
  %add710.i.i = add i64 %715, %714, !dbg !1064
  store i64 %add710.i.i, i64* %t0.i.i, align 8, !dbg !1064
  %716 = load i64, i64* %t1.i.i, align 8, !dbg !1064
  %717 = load i64, i64* %x1.i.i, align 8, !dbg !1064
  %xor711.i.i = xor i64 %717, %716, !dbg !1064
  store i64 %xor711.i.i, i64* %x1.i.i, align 8, !dbg !1064
  %718 = load i64, i64* %t0.i.i, align 8, !dbg !1064
  %719 = load i64, i64* %x4.i.i, align 8, !dbg !1064
  %xor712.i.i = xor i64 %719, %718, !dbg !1064
  store i64 %xor712.i.i, i64* %x4.i.i, align 8, !dbg !1064
  %720 = load i64, i64* %x2.i.i, align 8, !dbg !1064
  %721 = load i64, i64* %t0.i.i, align 8, !dbg !1064
  %xor713.i.i = xor i64 %720, %721, !dbg !1064
  store i64 %xor713.i.i, i64* %ul.i.i, align 8, !dbg !1064
  %722 = load i64, i64* %x3.i.i, align 8, !dbg !1064
  %723 = load i64, i64* %t1.i.i, align 8, !dbg !1064
  %xor714.i.i = xor i64 %722, %723, !dbg !1064
  store i64 %xor714.i.i, i64* %x2.i.i, align 8, !dbg !1064
  %724 = load i64, i64* %ul.i.i, align 8, !dbg !1064
  store i64 %724, i64* %x3.i.i, align 8, !dbg !1064
  %725 = load i64, i64* %x1.i.i, align 8, !dbg !1073
  %and715.i.i = and i64 %725, 65535, !dbg !1073
  store i64 %and715.i.i, i64* %x1.i.i, align 8, !dbg !1073
  %726 = load i64, i64* %x1.i.i, align 8, !dbg !1074
  %727 = load i32*, i32** %p.i.i, align 8, !dbg !1074
  %728 = load i32, i32* %727, align 4, !dbg !1074
  %conv716.i.i = zext i32 %728 to i64, !dbg !1074
  %mul717.i.i = mul i64 %726, %conv716.i.i, !dbg !1074
  store i64 %mul717.i.i, i64* %ul.i.i, align 8, !dbg !1074
  %729 = load i64, i64* %ul.i.i, align 8, !dbg !1075
  %cmp718.i.i = icmp ne i64 %729, 0, !dbg !1075
  br i1 %cmp718.i.i, label %if.then720.i.i, label %if.else726.i.i, !dbg !1074

if.then720.i.i:                                   ; preds = %if.end708.i.i
  %730 = load i64, i64* %ul.i.i, align 8, !dbg !1076
  %and721.i.i = and i64 %730, 65535, !dbg !1076
  %731 = load i64, i64* %ul.i.i, align 8, !dbg !1076
  %shr722.i.i = lshr i64 %731, 16, !dbg !1076
  %sub723.i.i = sub i64 %and721.i.i, %shr722.i.i, !dbg !1076
  store i64 %sub723.i.i, i64* %x1.i.i, align 8, !dbg !1076
  %732 = load i64, i64* %x1.i.i, align 8, !dbg !1076
  %shr724.i.i = lshr i64 %732, 16, !dbg !1076
  %733 = load i64, i64* %x1.i.i, align 8, !dbg !1076
  %sub725.i.i = sub i64 %733, %shr724.i.i, !dbg !1076
  store i64 %sub725.i.i, i64* %x1.i.i, align 8, !dbg !1076
  br label %if.end732.i.i, !dbg !1076

if.else726.i.i:                                   ; preds = %if.end708.i.i
  %734 = load i64, i64* %x1.i.i, align 8, !dbg !1075
  %conv727.i.i = trunc i64 %734 to i32, !dbg !1075
  %sub728.i.i = sub nsw i32 0, %conv727.i.i, !dbg !1075
  %735 = load i32*, i32** %p.i.i, align 8, !dbg !1075
  %736 = load i32, i32* %735, align 4, !dbg !1075
  %sub729.i.i = sub i32 %sub728.i.i, %736, !dbg !1075
  %add730.i.i = add i32 %sub729.i.i, 1, !dbg !1075
  %conv731.i.i = zext i32 %add730.i.i to i64, !dbg !1075
  store i64 %conv731.i.i, i64* %x1.i.i, align 8, !dbg !1075
  br label %if.end732.i.i

if.end732.i.i:                                    ; preds = %if.else726.i.i, %if.then720.i.i
  %737 = load i32*, i32** %p.i.i, align 8, !dbg !1077
  %incdec.ptr733.i.i = getelementptr inbounds i32, i32* %737, i32 1, !dbg !1077
  store i32* %incdec.ptr733.i.i, i32** %p.i.i, align 8, !dbg !1077
  %738 = load i64, i64* %x3.i.i, align 8, !dbg !1078
  %739 = load i32*, i32** %p.i.i, align 8, !dbg !1079
  %incdec.ptr734.i.i = getelementptr inbounds i32, i32* %739, i32 1, !dbg !1079
  store i32* %incdec.ptr734.i.i, i32** %p.i.i, align 8, !dbg !1079
  %740 = load i32, i32* %739, align 4, !dbg !1080
  %conv735.i.i = zext i32 %740 to i64, !dbg !1080
  %add736.i.i = add i64 %738, %conv735.i.i, !dbg !1081
  store i64 %add736.i.i, i64* %t0.i.i, align 8, !dbg !1082
  %741 = load i64, i64* %x2.i.i, align 8, !dbg !1083
  %742 = load i32*, i32** %p.i.i, align 8, !dbg !1084
  %incdec.ptr737.i.i = getelementptr inbounds i32, i32* %742, i32 1, !dbg !1084
  store i32* %incdec.ptr737.i.i, i32** %p.i.i, align 8, !dbg !1084
  %743 = load i32, i32* %742, align 4, !dbg !1085
  %conv738.i.i = zext i32 %743 to i64, !dbg !1085
  %add739.i.i = add i64 %741, %conv738.i.i, !dbg !1086
  store i64 %add739.i.i, i64* %t1.i.i, align 8, !dbg !1087
  %744 = load i64, i64* %x4.i.i, align 8, !dbg !1088
  %and740.i.i = and i64 %744, 65535, !dbg !1088
  store i64 %and740.i.i, i64* %x4.i.i, align 8, !dbg !1088
  %745 = load i64, i64* %x4.i.i, align 8, !dbg !1089
  %746 = load i32*, i32** %p.i.i, align 8, !dbg !1089
  %747 = load i32, i32* %746, align 4, !dbg !1089
  %conv741.i.i = zext i32 %747 to i64, !dbg !1089
  %mul742.i.i = mul i64 %745, %conv741.i.i, !dbg !1089
  store i64 %mul742.i.i, i64* %ul.i.i, align 8, !dbg !1089
  %748 = load i64, i64* %ul.i.i, align 8, !dbg !1090
  %cmp743.i.i = icmp ne i64 %748, 0, !dbg !1090
  br i1 %cmp743.i.i, label %if.then745.i.i, label %if.else751.i.i, !dbg !1089

if.then745.i.i:                                   ; preds = %if.end732.i.i
  %749 = load i64, i64* %ul.i.i, align 8, !dbg !1091
  %and746.i.i = and i64 %749, 65535, !dbg !1091
  %750 = load i64, i64* %ul.i.i, align 8, !dbg !1091
  %shr747.i.i = lshr i64 %750, 16, !dbg !1091
  %sub748.i.i = sub i64 %and746.i.i, %shr747.i.i, !dbg !1091
  store i64 %sub748.i.i, i64* %x4.i.i, align 8, !dbg !1091
  %751 = load i64, i64* %x4.i.i, align 8, !dbg !1091
  %shr749.i.i = lshr i64 %751, 16, !dbg !1091
  %752 = load i64, i64* %x4.i.i, align 8, !dbg !1091
  %sub750.i.i = sub i64 %752, %shr749.i.i, !dbg !1091
  store i64 %sub750.i.i, i64* %x4.i.i, align 8, !dbg !1091
  br label %IDEA_ecb_encrypt.exit, !dbg !1091

if.else751.i.i:                                   ; preds = %if.end732.i.i
  %753 = load i64, i64* %x4.i.i, align 8, !dbg !1090
  %conv752.i.i = trunc i64 %753 to i32, !dbg !1090
  %sub753.i.i = sub nsw i32 0, %conv752.i.i, !dbg !1090
  %754 = load i32*, i32** %p.i.i, align 8, !dbg !1090
  %755 = load i32, i32* %754, align 4, !dbg !1090
  %sub754.i.i = sub i32 %sub753.i.i, %755, !dbg !1090
  %add755.i.i = add i32 %sub754.i.i, 1, !dbg !1090
  %conv756.i.i = zext i32 %add755.i.i to i64, !dbg !1090
  store i64 %conv756.i.i, i64* %x4.i.i, align 8, !dbg !1090
  br label %IDEA_ecb_encrypt.exit

IDEA_ecb_encrypt.exit:                            ; preds = %if.then745.i.i, %if.else751.i.i
  %756 = load i64, i64* %t0.i.i, align 8, !dbg !1092
  %and758.i.i = and i64 %756, 65535, !dbg !1093
  %757 = load i64, i64* %x1.i.i, align 8, !dbg !1094
  %and759.i.i = and i64 %757, 65535, !dbg !1095
  %shl.i.i = shl i64 %and759.i.i, 16, !dbg !1096
  %or.i.i = or i64 %and758.i.i, %shl.i.i, !dbg !1097
  %758 = load i64*, i64** %d.addr.i.i, align 8, !dbg !1098
  store i64 %or.i.i, i64* %758, align 8, !dbg !1099
  %759 = load i64, i64* %x4.i.i, align 8, !dbg !1100
  %and761.i.i = and i64 %759, 65535, !dbg !1101
  %760 = load i64, i64* %t1.i.i, align 8, !dbg !1102
  %and762.i.i = and i64 %760, 65535, !dbg !1103
  %shl763.i.i = shl i64 %and762.i.i, 16, !dbg !1104
  %or764.i.i = or i64 %and761.i.i, %shl763.i.i, !dbg !1105
  %761 = load i64*, i64** %d.addr.i.i, align 8, !dbg !1106
  %arrayidx765.i.i = getelementptr inbounds i64, i64* %761, i64 1, !dbg !1106
  store i64 %or764.i.i, i64* %arrayidx765.i.i, align 8, !dbg !1107
  %arrayidx26.i = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 0, !dbg !1108
  %762 = load i64, i64* %arrayidx26.i, align 16, !dbg !1108
  store i64 %762, i64* %l0.i, align 8, !dbg !1109
  %763 = load i64, i64* %l0.i, align 8, !dbg !1110
  %shr.i26 = lshr i64 %763, 24, !dbg !1110
  %and.i27 = and i64 %shr.i26, 255, !dbg !1110
  %conv27.i28 = trunc i64 %and.i27 to i8, !dbg !1110
  %764 = load i8*, i8** %out.addr.i, align 8, !dbg !1110
  %incdec.ptr28.i = getelementptr inbounds i8, i8* %764, i32 1, !dbg !1110
  store i8* %incdec.ptr28.i, i8** %out.addr.i, align 8, !dbg !1110
  store i8 %conv27.i28, i8* %764, align 1, !dbg !1110
  %765 = load i64, i64* %l0.i, align 8, !dbg !1110
  %shr29.i = lshr i64 %765, 16, !dbg !1110
  %and30.i = and i64 %shr29.i, 255, !dbg !1110
  %conv31.i29 = trunc i64 %and30.i to i8, !dbg !1110
  %766 = load i8*, i8** %out.addr.i, align 8, !dbg !1110
  %incdec.ptr32.i = getelementptr inbounds i8, i8* %766, i32 1, !dbg !1110
  store i8* %incdec.ptr32.i, i8** %out.addr.i, align 8, !dbg !1110
  store i8 %conv31.i29, i8* %766, align 1, !dbg !1110
  %767 = load i64, i64* %l0.i, align 8, !dbg !1110
  %shr33.i = lshr i64 %767, 8, !dbg !1110
  %and34.i = and i64 %shr33.i, 255, !dbg !1110
  %conv35.i30 = trunc i64 %and34.i to i8, !dbg !1110
  %768 = load i8*, i8** %out.addr.i, align 8, !dbg !1110
  %incdec.ptr36.i = getelementptr inbounds i8, i8* %768, i32 1, !dbg !1110
  store i8* %incdec.ptr36.i, i8** %out.addr.i, align 8, !dbg !1110
  store i8 %conv35.i30, i8* %768, align 1, !dbg !1110
  %769 = load i64, i64* %l0.i, align 8, !dbg !1110
  %and37.i = and i64 %769, 255, !dbg !1110
  %conv38.i = trunc i64 %and37.i to i8, !dbg !1110
  %770 = load i8*, i8** %out.addr.i, align 8, !dbg !1110
  %incdec.ptr39.i = getelementptr inbounds i8, i8* %770, i32 1, !dbg !1110
  store i8* %incdec.ptr39.i, i8** %out.addr.i, align 8, !dbg !1110
  store i8 %conv38.i, i8* %770, align 1, !dbg !1110
  %arrayidx40.i = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 1, !dbg !1111
  %771 = load i64, i64* %arrayidx40.i, align 8, !dbg !1111
  store i64 %771, i64* %l1.i, align 8, !dbg !1112
  %772 = load i64, i64* %l1.i, align 8, !dbg !1113
  %shr41.i = lshr i64 %772, 24, !dbg !1113
  %and42.i = and i64 %shr41.i, 255, !dbg !1113
  %conv43.i31 = trunc i64 %and42.i to i8, !dbg !1113
  %773 = load i8*, i8** %out.addr.i, align 8, !dbg !1113
  %incdec.ptr44.i = getelementptr inbounds i8, i8* %773, i32 1, !dbg !1113
  store i8* %incdec.ptr44.i, i8** %out.addr.i, align 8, !dbg !1113
  store i8 %conv43.i31, i8* %773, align 1, !dbg !1113
  %774 = load i64, i64* %l1.i, align 8, !dbg !1113
  %shr45.i = lshr i64 %774, 16, !dbg !1113
  %and46.i = and i64 %shr45.i, 255, !dbg !1113
  %conv47.i32 = trunc i64 %and46.i to i8, !dbg !1113
  %775 = load i8*, i8** %out.addr.i, align 8, !dbg !1113
  %incdec.ptr48.i = getelementptr inbounds i8, i8* %775, i32 1, !dbg !1113
  store i8* %incdec.ptr48.i, i8** %out.addr.i, align 8, !dbg !1113
  store i8 %conv47.i32, i8* %775, align 1, !dbg !1113
  %776 = load i64, i64* %l1.i, align 8, !dbg !1113
  %shr49.i = lshr i64 %776, 8, !dbg !1113
  %and50.i = and i64 %shr49.i, 255, !dbg !1113
  %conv51.i33 = trunc i64 %and50.i to i8, !dbg !1113
  %777 = load i8*, i8** %out.addr.i, align 8, !dbg !1113
  %incdec.ptr52.i = getelementptr inbounds i8, i8* %777, i32 1, !dbg !1113
  store i8* %incdec.ptr52.i, i8** %out.addr.i, align 8, !dbg !1113
  store i8 %conv51.i33, i8* %777, align 1, !dbg !1113
  %778 = load i64, i64* %l1.i, align 8, !dbg !1113
  %and53.i = and i64 %778, 255, !dbg !1113
  %conv54.i = trunc i64 %and53.i to i8, !dbg !1113
  %779 = load i8*, i8** %out.addr.i, align 8, !dbg !1113
  %incdec.ptr55.i = getelementptr inbounds i8, i8* %779, i32 1, !dbg !1113
  store i8* %incdec.ptr55.i, i8** %out.addr.i, align 8, !dbg !1113
  store i8 %conv54.i, i8* %779, align 1, !dbg !1113
  %arrayidx56.i = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 1, !dbg !1114
  store i64 0, i64* %arrayidx56.i, align 8, !dbg !1115
  %arrayidx57.i34 = getelementptr inbounds [2 x i64], [2 x i64]* %d.i, i64 0, i64 0, !dbg !1116
  store i64 0, i64* %arrayidx57.i34, align 16, !dbg !1117
  store i64 0, i64* %l1.i, align 8, !dbg !1118
  store i64 0, i64* %l0.i, align 8, !dbg !1119
  %780 = load i32, i32* %retval, align 4, !dbg !1120
  ret i32 %780, !dbg !1120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i8* @malloc(i64) #5

declare dso_local i32 @rand(...) #5

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "key", scope: !2, file: !3, line: 175, type: !12, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "Cipher/idea.c", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!4 = !{}
!5 = !{!6, !9, !10, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "IDEA_INT", file: !7, line: 20, baseType: !8)
!7 = !DIFile(filename: "/usr/local/include/openssl/idea.h", directory: "")
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!13 = !{!0}
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 10.0.0 "}
!18 = distinct !DISubprogram(name: "IDEA_set_encrypt_key", scope: !3, file: !3, line: 16, type: !19, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !23}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "IDEA_KEY_SCHEDULE", file: !7, line: 30, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idea_key_st", file: !7, line: 28, size: 1728, elements: !26)
!26 = !{!27}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !25, file: !7, line: 29, baseType: !28, size: 1728)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 1728, elements: !29)
!29 = !{!30, !31}
!30 = !DISubrange(count: 9)
!31 = !DISubrange(count: 6)
!32 = !DILocalVariable(name: "key", arg: 1, scope: !18, file: !3, line: 16, type: !21)
!33 = !DILocation(line: 16, column: 48, scope: !18)
!34 = !DILocalVariable(name: "ks", arg: 2, scope: !18, file: !3, line: 16, type: !23)
!35 = !DILocation(line: 16, column: 72, scope: !18)
!36 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 18, type: !9)
!37 = !DILocation(line: 18, column: 9, scope: !18)
!38 = !DILocalVariable(name: "kt", scope: !18, file: !3, line: 19, type: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!40 = !DILocation(line: 19, column: 24, scope: !18)
!41 = !DILocalVariable(name: "kf", scope: !18, file: !3, line: 19, type: !39)
!42 = !DILocation(line: 19, column: 29, scope: !18)
!43 = !DILocalVariable(name: "r0", scope: !18, file: !3, line: 19, type: !6)
!44 = !DILocation(line: 19, column: 33, scope: !18)
!45 = !DILocalVariable(name: "r1", scope: !18, file: !3, line: 19, type: !6)
!46 = !DILocation(line: 19, column: 37, scope: !18)
!47 = !DILocalVariable(name: "r2", scope: !18, file: !3, line: 19, type: !6)
!48 = !DILocation(line: 19, column: 41, scope: !18)
!49 = !DILocation(line: 21, column: 12, scope: !18)
!50 = !DILocation(line: 21, column: 16, scope: !18)
!51 = !DILocation(line: 21, column: 8, scope: !18)
!52 = !DILocation(line: 22, column: 5, scope: !18)
!53 = !DILocation(line: 23, column: 5, scope: !18)
!54 = !DILocation(line: 24, column: 5, scope: !18)
!55 = !DILocation(line: 25, column: 5, scope: !18)
!56 = !DILocation(line: 26, column: 5, scope: !18)
!57 = !DILocation(line: 27, column: 5, scope: !18)
!58 = !DILocation(line: 28, column: 5, scope: !18)
!59 = !DILocation(line: 29, column: 5, scope: !18)
!60 = !DILocation(line: 31, column: 10, scope: !18)
!61 = !DILocation(line: 31, column: 8, scope: !18)
!62 = !DILocation(line: 32, column: 8, scope: !18)
!63 = !DILocation(line: 33, column: 12, scope: !64)
!64 = distinct !DILexicalBlock(scope: !18, file: !3, line: 33, column: 5)
!65 = !DILocation(line: 33, column: 10, scope: !64)
!66 = !DILocation(line: 33, column: 17, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !3, line: 33, column: 5)
!68 = !DILocation(line: 33, column: 19, scope: !67)
!69 = !DILocation(line: 33, column: 5, scope: !64)
!70 = !DILocation(line: 34, column: 14, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !3, line: 33, column: 29)
!72 = !DILocation(line: 34, column: 12, scope: !71)
!73 = !DILocation(line: 35, column: 14, scope: !71)
!74 = !DILocation(line: 35, column: 12, scope: !71)
!75 = !DILocation(line: 36, column: 21, scope: !71)
!76 = !DILocation(line: 36, column: 24, scope: !71)
!77 = !DILocation(line: 36, column: 33, scope: !71)
!78 = !DILocation(line: 36, column: 36, scope: !71)
!79 = !DILocation(line: 36, column: 30, scope: !71)
!80 = !DILocation(line: 36, column: 43, scope: !71)
!81 = !DILocation(line: 36, column: 13, scope: !71)
!82 = !DILocation(line: 36, column: 17, scope: !71)
!83 = !DILocation(line: 37, column: 14, scope: !71)
!84 = !DILocation(line: 37, column: 12, scope: !71)
!85 = !DILocation(line: 38, column: 21, scope: !71)
!86 = !DILocation(line: 38, column: 24, scope: !71)
!87 = !DILocation(line: 38, column: 33, scope: !71)
!88 = !DILocation(line: 38, column: 36, scope: !71)
!89 = !DILocation(line: 38, column: 30, scope: !71)
!90 = !DILocation(line: 38, column: 43, scope: !71)
!91 = !DILocation(line: 38, column: 13, scope: !71)
!92 = !DILocation(line: 38, column: 17, scope: !71)
!93 = !DILocation(line: 39, column: 14, scope: !71)
!94 = !DILocation(line: 39, column: 12, scope: !71)
!95 = !DILocation(line: 40, column: 21, scope: !71)
!96 = !DILocation(line: 40, column: 24, scope: !71)
!97 = !DILocation(line: 40, column: 33, scope: !71)
!98 = !DILocation(line: 40, column: 36, scope: !71)
!99 = !DILocation(line: 40, column: 30, scope: !71)
!100 = !DILocation(line: 40, column: 43, scope: !71)
!101 = !DILocation(line: 40, column: 13, scope: !71)
!102 = !DILocation(line: 40, column: 17, scope: !71)
!103 = !DILocation(line: 41, column: 14, scope: !71)
!104 = !DILocation(line: 41, column: 12, scope: !71)
!105 = !DILocation(line: 42, column: 21, scope: !71)
!106 = !DILocation(line: 42, column: 24, scope: !71)
!107 = !DILocation(line: 42, column: 33, scope: !71)
!108 = !DILocation(line: 42, column: 36, scope: !71)
!109 = !DILocation(line: 42, column: 30, scope: !71)
!110 = !DILocation(line: 42, column: 43, scope: !71)
!111 = !DILocation(line: 42, column: 13, scope: !71)
!112 = !DILocation(line: 42, column: 17, scope: !71)
!113 = !DILocation(line: 43, column: 14, scope: !71)
!114 = !DILocation(line: 43, column: 12, scope: !71)
!115 = !DILocation(line: 44, column: 21, scope: !71)
!116 = !DILocation(line: 44, column: 24, scope: !71)
!117 = !DILocation(line: 44, column: 33, scope: !71)
!118 = !DILocation(line: 44, column: 36, scope: !71)
!119 = !DILocation(line: 44, column: 30, scope: !71)
!120 = !DILocation(line: 44, column: 43, scope: !71)
!121 = !DILocation(line: 44, column: 13, scope: !71)
!122 = !DILocation(line: 44, column: 17, scope: !71)
!123 = !DILocation(line: 45, column: 14, scope: !71)
!124 = !DILocation(line: 45, column: 12, scope: !71)
!125 = !DILocation(line: 46, column: 21, scope: !71)
!126 = !DILocation(line: 46, column: 24, scope: !71)
!127 = !DILocation(line: 46, column: 33, scope: !71)
!128 = !DILocation(line: 46, column: 36, scope: !71)
!129 = !DILocation(line: 46, column: 30, scope: !71)
!130 = !DILocation(line: 46, column: 43, scope: !71)
!131 = !DILocation(line: 46, column: 13, scope: !71)
!132 = !DILocation(line: 46, column: 17, scope: !71)
!133 = !DILocation(line: 47, column: 14, scope: !71)
!134 = !DILocation(line: 47, column: 12, scope: !71)
!135 = !DILocation(line: 48, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !71, file: !3, line: 48, column: 13)
!137 = !DILocation(line: 48, column: 15, scope: !136)
!138 = !DILocation(line: 48, column: 13, scope: !71)
!139 = !DILocation(line: 49, column: 13, scope: !136)
!140 = !DILocation(line: 50, column: 21, scope: !71)
!141 = !DILocation(line: 50, column: 24, scope: !71)
!142 = !DILocation(line: 50, column: 33, scope: !71)
!143 = !DILocation(line: 50, column: 36, scope: !71)
!144 = !DILocation(line: 50, column: 30, scope: !71)
!145 = !DILocation(line: 50, column: 43, scope: !71)
!146 = !DILocation(line: 50, column: 13, scope: !71)
!147 = !DILocation(line: 50, column: 17, scope: !71)
!148 = !DILocation(line: 51, column: 21, scope: !71)
!149 = !DILocation(line: 51, column: 24, scope: !71)
!150 = !DILocation(line: 51, column: 33, scope: !71)
!151 = !DILocation(line: 51, column: 36, scope: !71)
!152 = !DILocation(line: 51, column: 30, scope: !71)
!153 = !DILocation(line: 51, column: 43, scope: !71)
!154 = !DILocation(line: 51, column: 13, scope: !71)
!155 = !DILocation(line: 51, column: 17, scope: !71)
!156 = !DILocation(line: 52, column: 12, scope: !71)
!157 = !DILocation(line: 53, column: 5, scope: !71)
!158 = !DILocation(line: 33, column: 25, scope: !67)
!159 = !DILocation(line: 33, column: 5, scope: !67)
!160 = distinct !{!160, !69, !161}
!161 = !DILocation(line: 53, column: 5, scope: !64)
!162 = !DILocation(line: 54, column: 1, scope: !18)
!163 = distinct !DISubprogram(name: "IDEA_set_decrypt_key", scope: !3, file: !3, line: 56, type: !164, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !23, !23}
!166 = !DILocalVariable(name: "xin", arg: 1, scope: !167, file: !3, line: 86, type: !8)
!167 = distinct !DISubprogram(name: "inverse", scope: !3, file: !3, line: 86, type: !168, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!168 = !DISubroutineType(types: !169)
!169 = !{!6, !8}
!170 = !DILocation(line: 86, column: 38, scope: !167, inlinedAt: !171)
!171 = distinct !DILocation(line: 67, column: 19, scope: !172)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 63, column: 29)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 63, column: 5)
!174 = distinct !DILexicalBlock(scope: !163, file: !3, line: 63, column: 5)
!175 = !DILocalVariable(name: "n1", scope: !167, file: !3, line: 88, type: !176)
!176 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!177 = !DILocation(line: 88, column: 10, scope: !167, inlinedAt: !171)
!178 = !DILocalVariable(name: "n2", scope: !167, file: !3, line: 88, type: !176)
!179 = !DILocation(line: 88, column: 14, scope: !167, inlinedAt: !171)
!180 = !DILocalVariable(name: "q", scope: !167, file: !3, line: 88, type: !176)
!181 = !DILocation(line: 88, column: 18, scope: !167, inlinedAt: !171)
!182 = !DILocalVariable(name: "r", scope: !167, file: !3, line: 88, type: !176)
!183 = !DILocation(line: 88, column: 21, scope: !167, inlinedAt: !171)
!184 = !DILocalVariable(name: "b1", scope: !167, file: !3, line: 88, type: !176)
!185 = !DILocation(line: 88, column: 24, scope: !167, inlinedAt: !171)
!186 = !DILocalVariable(name: "b2", scope: !167, file: !3, line: 88, type: !176)
!187 = !DILocation(line: 88, column: 28, scope: !167, inlinedAt: !171)
!188 = !DILocalVariable(name: "t", scope: !167, file: !3, line: 88, type: !176)
!189 = !DILocation(line: 88, column: 32, scope: !167, inlinedAt: !171)
!190 = !DILocation(line: 86, column: 38, scope: !167, inlinedAt: !191)
!191 = distinct !DILocation(line: 64, column: 19, scope: !172)
!192 = !DILocation(line: 88, column: 10, scope: !167, inlinedAt: !191)
!193 = !DILocation(line: 88, column: 14, scope: !167, inlinedAt: !191)
!194 = !DILocation(line: 88, column: 18, scope: !167, inlinedAt: !191)
!195 = !DILocation(line: 88, column: 21, scope: !167, inlinedAt: !191)
!196 = !DILocation(line: 88, column: 24, scope: !167, inlinedAt: !191)
!197 = !DILocation(line: 88, column: 28, scope: !167, inlinedAt: !191)
!198 = !DILocation(line: 88, column: 32, scope: !167, inlinedAt: !191)
!199 = !DILocalVariable(name: "ek", arg: 1, scope: !163, file: !3, line: 56, type: !23)
!200 = !DILocation(line: 56, column: 46, scope: !163)
!201 = !DILocalVariable(name: "dk", arg: 2, scope: !163, file: !3, line: 56, type: !23)
!202 = !DILocation(line: 56, column: 69, scope: !163)
!203 = !DILocalVariable(name: "r", scope: !163, file: !3, line: 58, type: !9)
!204 = !DILocation(line: 58, column: 9, scope: !163)
!205 = !DILocalVariable(name: "fp", scope: !163, file: !3, line: 59, type: !39)
!206 = !DILocation(line: 59, column: 24, scope: !163)
!207 = !DILocalVariable(name: "tp", scope: !163, file: !3, line: 59, type: !39)
!208 = !DILocation(line: 59, column: 29, scope: !163)
!209 = !DILocalVariable(name: "t", scope: !163, file: !3, line: 59, type: !6)
!210 = !DILocation(line: 59, column: 33, scope: !163)
!211 = !DILocation(line: 61, column: 12, scope: !163)
!212 = !DILocation(line: 61, column: 16, scope: !163)
!213 = !DILocation(line: 61, column: 8, scope: !163)
!214 = !DILocation(line: 62, column: 12, scope: !163)
!215 = !DILocation(line: 62, column: 16, scope: !163)
!216 = !DILocation(line: 62, column: 8, scope: !163)
!217 = !DILocation(line: 63, column: 12, scope: !174)
!218 = !DILocation(line: 63, column: 10, scope: !174)
!219 = !DILocation(line: 63, column: 17, scope: !173)
!220 = !DILocation(line: 63, column: 19, scope: !173)
!221 = !DILocation(line: 63, column: 5, scope: !174)
!222 = !DILocation(line: 64, column: 27, scope: !172)
!223 = !DILocation(line: 90, column: 9, scope: !224, inlinedAt: !191)
!224 = distinct !DILexicalBlock(scope: !167, file: !3, line: 90, column: 9)
!225 = !DILocation(line: 90, column: 13, scope: !224, inlinedAt: !191)
!226 = !DILocation(line: 90, column: 9, scope: !167, inlinedAt: !191)
!227 = !DILocation(line: 91, column: 12, scope: !224, inlinedAt: !191)
!228 = !DILocation(line: 91, column: 9, scope: !224, inlinedAt: !191)
!229 = !DILocation(line: 93, column: 12, scope: !230, inlinedAt: !191)
!230 = distinct !DILexicalBlock(scope: !224, file: !3, line: 92, column: 10)
!231 = !DILocation(line: 94, column: 14, scope: !230, inlinedAt: !191)
!232 = !DILocation(line: 94, column: 12, scope: !230, inlinedAt: !191)
!233 = !DILocation(line: 95, column: 12, scope: !230, inlinedAt: !191)
!234 = !DILocation(line: 96, column: 12, scope: !230, inlinedAt: !191)
!235 = !DILocation(line: 98, column: 9, scope: !230, inlinedAt: !191)
!236 = !DILocation(line: 99, column: 18, scope: !237, inlinedAt: !191)
!237 = distinct !DILexicalBlock(scope: !230, file: !3, line: 98, column: 12)
!238 = !DILocation(line: 99, column: 23, scope: !237, inlinedAt: !191)
!239 = !DILocation(line: 99, column: 21, scope: !237, inlinedAt: !191)
!240 = !DILocation(line: 99, column: 15, scope: !237, inlinedAt: !191)
!241 = !DILocation(line: 100, column: 18, scope: !237, inlinedAt: !191)
!242 = !DILocation(line: 100, column: 23, scope: !237, inlinedAt: !191)
!243 = !DILocation(line: 100, column: 21, scope: !237, inlinedAt: !191)
!244 = !DILocation(line: 100, column: 28, scope: !237, inlinedAt: !191)
!245 = !DILocation(line: 100, column: 26, scope: !237, inlinedAt: !191)
!246 = !DILocation(line: 100, column: 15, scope: !237, inlinedAt: !191)
!247 = !DILocation(line: 101, column: 17, scope: !248, inlinedAt: !191)
!248 = distinct !DILexicalBlock(scope: !237, file: !3, line: 101, column: 17)
!249 = !DILocation(line: 101, column: 19, scope: !248, inlinedAt: !191)
!250 = !DILocation(line: 101, column: 17, scope: !237, inlinedAt: !191)
!251 = !DILocation(line: 102, column: 21, scope: !252, inlinedAt: !191)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 102, column: 21)
!253 = distinct !DILexicalBlock(scope: !248, file: !3, line: 101, column: 25)
!254 = !DILocation(line: 102, column: 24, scope: !252, inlinedAt: !191)
!255 = !DILocation(line: 102, column: 21, scope: !253, inlinedAt: !191)
!256 = !DILocation(line: 103, column: 36, scope: !252, inlinedAt: !191)
!257 = !DILocation(line: 103, column: 34, scope: !252, inlinedAt: !191)
!258 = !DILocation(line: 103, column: 24, scope: !252, inlinedAt: !191)
!259 = !DILocation(line: 103, column: 21, scope: !252, inlinedAt: !191)
!260 = !DILocation(line: 104, column: 13, scope: !253, inlinedAt: !191)
!261 = !DILocation(line: 105, column: 22, scope: !262, inlinedAt: !191)
!262 = distinct !DILexicalBlock(scope: !248, file: !3, line: 104, column: 20)
!263 = !DILocation(line: 105, column: 20, scope: !262, inlinedAt: !191)
!264 = !DILocation(line: 106, column: 22, scope: !262, inlinedAt: !191)
!265 = !DILocation(line: 106, column: 20, scope: !262, inlinedAt: !191)
!266 = !DILocation(line: 107, column: 21, scope: !262, inlinedAt: !191)
!267 = !DILocation(line: 107, column: 19, scope: !262, inlinedAt: !191)
!268 = !DILocation(line: 108, column: 22, scope: !262, inlinedAt: !191)
!269 = !DILocation(line: 108, column: 27, scope: !262, inlinedAt: !191)
!270 = !DILocation(line: 108, column: 31, scope: !262, inlinedAt: !191)
!271 = !DILocation(line: 108, column: 29, scope: !262, inlinedAt: !191)
!272 = !DILocation(line: 108, column: 25, scope: !262, inlinedAt: !191)
!273 = !DILocation(line: 108, column: 20, scope: !262, inlinedAt: !191)
!274 = !DILocation(line: 109, column: 22, scope: !262, inlinedAt: !191)
!275 = !DILocation(line: 109, column: 20, scope: !262, inlinedAt: !191)
!276 = !DILocation(line: 111, column: 18, scope: !230, inlinedAt: !191)
!277 = !DILocation(line: 111, column: 20, scope: !230, inlinedAt: !191)
!278 = !DILocation(line: 111, column: 9, scope: !237, inlinedAt: !191)
!279 = distinct !{!279, !235, !280}
!280 = !DILocation(line: 111, column: 24, scope: !230, inlinedAt: !191)
!281 = !DILocation(line: 113, column: 22, scope: !167, inlinedAt: !191)
!282 = !DILocation(line: 113, column: 12, scope: !167, inlinedAt: !191)
!283 = !DILocation(line: 64, column: 13, scope: !172)
!284 = !DILocation(line: 64, column: 17, scope: !172)
!285 = !DILocation(line: 65, column: 37, scope: !172)
!286 = !DILocation(line: 65, column: 35, scope: !172)
!287 = !DILocation(line: 65, column: 20, scope: !172)
!288 = !DILocation(line: 65, column: 44, scope: !172)
!289 = !DILocation(line: 65, column: 13, scope: !172)
!290 = !DILocation(line: 65, column: 17, scope: !172)
!291 = !DILocation(line: 66, column: 37, scope: !172)
!292 = !DILocation(line: 66, column: 35, scope: !172)
!293 = !DILocation(line: 66, column: 20, scope: !172)
!294 = !DILocation(line: 66, column: 44, scope: !172)
!295 = !DILocation(line: 66, column: 13, scope: !172)
!296 = !DILocation(line: 66, column: 17, scope: !172)
!297 = !DILocation(line: 67, column: 27, scope: !172)
!298 = !DILocation(line: 90, column: 9, scope: !224, inlinedAt: !171)
!299 = !DILocation(line: 90, column: 13, scope: !224, inlinedAt: !171)
!300 = !DILocation(line: 90, column: 9, scope: !167, inlinedAt: !171)
!301 = !DILocation(line: 91, column: 12, scope: !224, inlinedAt: !171)
!302 = !DILocation(line: 91, column: 9, scope: !224, inlinedAt: !171)
!303 = !DILocation(line: 93, column: 12, scope: !230, inlinedAt: !171)
!304 = !DILocation(line: 94, column: 14, scope: !230, inlinedAt: !171)
!305 = !DILocation(line: 94, column: 12, scope: !230, inlinedAt: !171)
!306 = !DILocation(line: 95, column: 12, scope: !230, inlinedAt: !171)
!307 = !DILocation(line: 96, column: 12, scope: !230, inlinedAt: !171)
!308 = !DILocation(line: 98, column: 9, scope: !230, inlinedAt: !171)
!309 = !DILocation(line: 99, column: 18, scope: !237, inlinedAt: !171)
!310 = !DILocation(line: 99, column: 23, scope: !237, inlinedAt: !171)
!311 = !DILocation(line: 99, column: 21, scope: !237, inlinedAt: !171)
!312 = !DILocation(line: 99, column: 15, scope: !237, inlinedAt: !171)
!313 = !DILocation(line: 100, column: 18, scope: !237, inlinedAt: !171)
!314 = !DILocation(line: 100, column: 23, scope: !237, inlinedAt: !171)
!315 = !DILocation(line: 100, column: 21, scope: !237, inlinedAt: !171)
!316 = !DILocation(line: 100, column: 28, scope: !237, inlinedAt: !171)
!317 = !DILocation(line: 100, column: 26, scope: !237, inlinedAt: !171)
!318 = !DILocation(line: 100, column: 15, scope: !237, inlinedAt: !171)
!319 = !DILocation(line: 101, column: 17, scope: !248, inlinedAt: !171)
!320 = !DILocation(line: 101, column: 19, scope: !248, inlinedAt: !171)
!321 = !DILocation(line: 101, column: 17, scope: !237, inlinedAt: !171)
!322 = !DILocation(line: 102, column: 21, scope: !252, inlinedAt: !171)
!323 = !DILocation(line: 102, column: 24, scope: !252, inlinedAt: !171)
!324 = !DILocation(line: 102, column: 21, scope: !253, inlinedAt: !171)
!325 = !DILocation(line: 103, column: 36, scope: !252, inlinedAt: !171)
!326 = !DILocation(line: 103, column: 34, scope: !252, inlinedAt: !171)
!327 = !DILocation(line: 103, column: 24, scope: !252, inlinedAt: !171)
!328 = !DILocation(line: 103, column: 21, scope: !252, inlinedAt: !171)
!329 = !DILocation(line: 104, column: 13, scope: !253, inlinedAt: !171)
!330 = !DILocation(line: 105, column: 22, scope: !262, inlinedAt: !171)
!331 = !DILocation(line: 105, column: 20, scope: !262, inlinedAt: !171)
!332 = !DILocation(line: 106, column: 22, scope: !262, inlinedAt: !171)
!333 = !DILocation(line: 106, column: 20, scope: !262, inlinedAt: !171)
!334 = !DILocation(line: 107, column: 21, scope: !262, inlinedAt: !171)
!335 = !DILocation(line: 107, column: 19, scope: !262, inlinedAt: !171)
!336 = !DILocation(line: 108, column: 22, scope: !262, inlinedAt: !171)
!337 = !DILocation(line: 108, column: 27, scope: !262, inlinedAt: !171)
!338 = !DILocation(line: 108, column: 31, scope: !262, inlinedAt: !171)
!339 = !DILocation(line: 108, column: 29, scope: !262, inlinedAt: !171)
!340 = !DILocation(line: 108, column: 25, scope: !262, inlinedAt: !171)
!341 = !DILocation(line: 108, column: 20, scope: !262, inlinedAt: !171)
!342 = !DILocation(line: 109, column: 22, scope: !262, inlinedAt: !171)
!343 = !DILocation(line: 109, column: 20, scope: !262, inlinedAt: !171)
!344 = !DILocation(line: 111, column: 18, scope: !230, inlinedAt: !171)
!345 = !DILocation(line: 111, column: 20, scope: !230, inlinedAt: !171)
!346 = !DILocation(line: 111, column: 9, scope: !237, inlinedAt: !171)
!347 = distinct !{!347, !308, !348}
!348 = !DILocation(line: 111, column: 24, scope: !230, inlinedAt: !171)
!349 = !DILocation(line: 113, column: 22, scope: !167, inlinedAt: !171)
!350 = !DILocation(line: 113, column: 12, scope: !167, inlinedAt: !171)
!351 = !DILocation(line: 67, column: 13, scope: !172)
!352 = !DILocation(line: 67, column: 17, scope: !172)
!353 = !DILocation(line: 68, column: 13, scope: !354)
!354 = distinct !DILexicalBlock(scope: !172, file: !3, line: 68, column: 13)
!355 = !DILocation(line: 68, column: 15, scope: !354)
!356 = !DILocation(line: 68, column: 13, scope: !172)
!357 = !DILocation(line: 69, column: 13, scope: !354)
!358 = !DILocation(line: 70, column: 12, scope: !172)
!359 = !DILocation(line: 71, column: 19, scope: !172)
!360 = !DILocation(line: 71, column: 13, scope: !172)
!361 = !DILocation(line: 71, column: 17, scope: !172)
!362 = !DILocation(line: 72, column: 19, scope: !172)
!363 = !DILocation(line: 72, column: 13, scope: !172)
!364 = !DILocation(line: 72, column: 17, scope: !172)
!365 = !DILocation(line: 73, column: 5, scope: !172)
!366 = !DILocation(line: 63, column: 25, scope: !173)
!367 = !DILocation(line: 63, column: 5, scope: !173)
!368 = distinct !{!368, !221, !369}
!369 = !DILocation(line: 73, column: 5, scope: !174)
!370 = !DILocation(line: 75, column: 12, scope: !163)
!371 = !DILocation(line: 75, column: 16, scope: !163)
!372 = !DILocation(line: 75, column: 8, scope: !163)
!373 = !DILocation(line: 76, column: 9, scope: !163)
!374 = !DILocation(line: 76, column: 7, scope: !163)
!375 = !DILocation(line: 77, column: 13, scope: !163)
!376 = !DILocation(line: 77, column: 5, scope: !163)
!377 = !DILocation(line: 77, column: 11, scope: !163)
!378 = !DILocation(line: 78, column: 13, scope: !163)
!379 = !DILocation(line: 78, column: 5, scope: !163)
!380 = !DILocation(line: 78, column: 11, scope: !163)
!381 = !DILocation(line: 80, column: 9, scope: !163)
!382 = !DILocation(line: 80, column: 7, scope: !163)
!383 = !DILocation(line: 81, column: 14, scope: !163)
!384 = !DILocation(line: 81, column: 5, scope: !163)
!385 = !DILocation(line: 81, column: 12, scope: !163)
!386 = !DILocation(line: 82, column: 14, scope: !163)
!387 = !DILocation(line: 82, column: 5, scope: !163)
!388 = !DILocation(line: 82, column: 12, scope: !163)
!389 = !DILocation(line: 83, column: 1, scope: !163)
!390 = distinct !DISubprogram(name: "IDEA_ecb_encrypt", scope: !3, file: !3, line: 116, type: !391, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !21, !12, !23}
!393 = !DILocalVariable(name: "d", arg: 1, scope: !394, file: !3, line: 133, type: !397)
!394 = distinct !DISubprogram(name: "IDEA_encrypt", scope: !3, file: !3, line: 133, type: !395, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!395 = !DISubroutineType(types: !396)
!396 = !{null, !397, !23}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!398 = !DILocation(line: 133, column: 34, scope: !394, inlinedAt: !399)
!399 = distinct !DILocation(line: 125, column: 5, scope: !390)
!400 = !DILocalVariable(name: "key", arg: 2, scope: !394, file: !3, line: 133, type: !23)
!401 = !DILocation(line: 133, column: 56, scope: !394, inlinedAt: !399)
!402 = !DILocalVariable(name: "p", scope: !394, file: !3, line: 135, type: !39)
!403 = !DILocation(line: 135, column: 24, scope: !394, inlinedAt: !399)
!404 = !DILocalVariable(name: "x1", scope: !394, file: !3, line: 136, type: !10)
!405 = !DILocation(line: 136, column: 28, scope: !394, inlinedAt: !399)
!406 = !DILocalVariable(name: "x2", scope: !394, file: !3, line: 136, type: !10)
!407 = !DILocation(line: 136, column: 32, scope: !394, inlinedAt: !399)
!408 = !DILocalVariable(name: "x3", scope: !394, file: !3, line: 136, type: !10)
!409 = !DILocation(line: 136, column: 36, scope: !394, inlinedAt: !399)
!410 = !DILocalVariable(name: "x4", scope: !394, file: !3, line: 136, type: !10)
!411 = !DILocation(line: 136, column: 40, scope: !394, inlinedAt: !399)
!412 = !DILocalVariable(name: "t0", scope: !394, file: !3, line: 136, type: !10)
!413 = !DILocation(line: 136, column: 44, scope: !394, inlinedAt: !399)
!414 = !DILocalVariable(name: "t1", scope: !394, file: !3, line: 136, type: !10)
!415 = !DILocation(line: 136, column: 48, scope: !394, inlinedAt: !399)
!416 = !DILocalVariable(name: "ul", scope: !394, file: !3, line: 136, type: !10)
!417 = !DILocation(line: 136, column: 52, scope: !394, inlinedAt: !399)
!418 = !DILocalVariable(name: "in", arg: 1, scope: !390, file: !3, line: 116, type: !21)
!419 = !DILocation(line: 116, column: 44, scope: !390)
!420 = !DILocalVariable(name: "out", arg: 2, scope: !390, file: !3, line: 116, type: !12)
!421 = !DILocation(line: 116, column: 63, scope: !390)
!422 = !DILocalVariable(name: "ks", arg: 3, scope: !390, file: !3, line: 117, type: !23)
!423 = !DILocation(line: 117, column: 42, scope: !390)
!424 = !DILocalVariable(name: "l0", scope: !390, file: !3, line: 119, type: !10)
!425 = !DILocation(line: 119, column: 19, scope: !390)
!426 = !DILocalVariable(name: "l1", scope: !390, file: !3, line: 119, type: !10)
!427 = !DILocation(line: 119, column: 23, scope: !390)
!428 = !DILocalVariable(name: "d", scope: !390, file: !3, line: 119, type: !429)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 2)
!432 = !DILocation(line: 119, column: 27, scope: !390)
!433 = !DILocation(line: 121, column: 5, scope: !390)
!434 = !DILocation(line: 122, column: 12, scope: !390)
!435 = !DILocation(line: 122, column: 5, scope: !390)
!436 = !DILocation(line: 122, column: 10, scope: !390)
!437 = !DILocation(line: 123, column: 5, scope: !390)
!438 = !DILocation(line: 124, column: 12, scope: !390)
!439 = !DILocation(line: 124, column: 5, scope: !390)
!440 = !DILocation(line: 124, column: 10, scope: !390)
!441 = !DILocation(line: 125, column: 18, scope: !390)
!442 = !DILocation(line: 125, column: 21, scope: !390)
!443 = !DILocation(line: 138, column: 10, scope: !394, inlinedAt: !399)
!444 = !DILocation(line: 138, column: 8, scope: !394, inlinedAt: !399)
!445 = !DILocation(line: 139, column: 11, scope: !394, inlinedAt: !399)
!446 = !DILocation(line: 139, column: 14, scope: !394, inlinedAt: !399)
!447 = !DILocation(line: 139, column: 8, scope: !394, inlinedAt: !399)
!448 = !DILocation(line: 140, column: 10, scope: !394, inlinedAt: !399)
!449 = !DILocation(line: 140, column: 8, scope: !394, inlinedAt: !399)
!450 = !DILocation(line: 141, column: 11, scope: !394, inlinedAt: !399)
!451 = !DILocation(line: 141, column: 14, scope: !394, inlinedAt: !399)
!452 = !DILocation(line: 141, column: 8, scope: !394, inlinedAt: !399)
!453 = !DILocation(line: 143, column: 11, scope: !394, inlinedAt: !399)
!454 = !DILocation(line: 143, column: 16, scope: !394, inlinedAt: !399)
!455 = !DILocation(line: 143, column: 7, scope: !394, inlinedAt: !399)
!456 = !DILocation(line: 145, column: 5, scope: !394, inlinedAt: !399)
!457 = !DILocation(line: 145, column: 5, scope: !458, inlinedAt: !399)
!458 = distinct !DILexicalBlock(scope: !394, file: !3, line: 145, column: 5)
!459 = !DILocation(line: 145, column: 5, scope: !460, inlinedAt: !399)
!460 = distinct !DILexicalBlock(scope: !458, file: !3, line: 145, column: 5)
!461 = !DILocation(line: 145, column: 5, scope: !462, inlinedAt: !399)
!462 = distinct !DILexicalBlock(scope: !394, file: !3, line: 145, column: 5)
!463 = !DILocation(line: 145, column: 5, scope: !464, inlinedAt: !399)
!464 = distinct !DILexicalBlock(scope: !462, file: !3, line: 145, column: 5)
!465 = !DILocation(line: 145, column: 5, scope: !466, inlinedAt: !399)
!466 = distinct !DILexicalBlock(scope: !394, file: !3, line: 145, column: 5)
!467 = !DILocation(line: 145, column: 5, scope: !468, inlinedAt: !399)
!468 = distinct !DILexicalBlock(scope: !466, file: !3, line: 145, column: 5)
!469 = !DILocation(line: 145, column: 5, scope: !470, inlinedAt: !399)
!470 = distinct !DILexicalBlock(scope: !394, file: !3, line: 145, column: 5)
!471 = !DILocation(line: 145, column: 5, scope: !472, inlinedAt: !399)
!472 = distinct !DILexicalBlock(scope: !470, file: !3, line: 145, column: 5)
!473 = !DILocation(line: 146, column: 5, scope: !394, inlinedAt: !399)
!474 = !DILocation(line: 146, column: 5, scope: !475, inlinedAt: !399)
!475 = distinct !DILexicalBlock(scope: !394, file: !3, line: 146, column: 5)
!476 = !DILocation(line: 146, column: 5, scope: !477, inlinedAt: !399)
!477 = distinct !DILexicalBlock(scope: !475, file: !3, line: 146, column: 5)
!478 = !DILocation(line: 146, column: 5, scope: !479, inlinedAt: !399)
!479 = distinct !DILexicalBlock(scope: !394, file: !3, line: 146, column: 5)
!480 = !DILocation(line: 146, column: 5, scope: !481, inlinedAt: !399)
!481 = distinct !DILexicalBlock(scope: !479, file: !3, line: 146, column: 5)
!482 = !DILocation(line: 146, column: 5, scope: !483, inlinedAt: !399)
!483 = distinct !DILexicalBlock(scope: !394, file: !3, line: 146, column: 5)
!484 = !DILocation(line: 146, column: 5, scope: !485, inlinedAt: !399)
!485 = distinct !DILexicalBlock(scope: !483, file: !3, line: 146, column: 5)
!486 = !DILocation(line: 146, column: 5, scope: !487, inlinedAt: !399)
!487 = distinct !DILexicalBlock(scope: !394, file: !3, line: 146, column: 5)
!488 = !DILocation(line: 146, column: 5, scope: !489, inlinedAt: !399)
!489 = distinct !DILexicalBlock(scope: !487, file: !3, line: 146, column: 5)
!490 = !DILocation(line: 147, column: 5, scope: !394, inlinedAt: !399)
!491 = !DILocation(line: 147, column: 5, scope: !492, inlinedAt: !399)
!492 = distinct !DILexicalBlock(scope: !394, file: !3, line: 147, column: 5)
!493 = !DILocation(line: 147, column: 5, scope: !494, inlinedAt: !399)
!494 = distinct !DILexicalBlock(scope: !492, file: !3, line: 147, column: 5)
!495 = !DILocation(line: 147, column: 5, scope: !496, inlinedAt: !399)
!496 = distinct !DILexicalBlock(scope: !394, file: !3, line: 147, column: 5)
!497 = !DILocation(line: 147, column: 5, scope: !498, inlinedAt: !399)
!498 = distinct !DILexicalBlock(scope: !496, file: !3, line: 147, column: 5)
!499 = !DILocation(line: 147, column: 5, scope: !500, inlinedAt: !399)
!500 = distinct !DILexicalBlock(scope: !394, file: !3, line: 147, column: 5)
!501 = !DILocation(line: 147, column: 5, scope: !502, inlinedAt: !399)
!502 = distinct !DILexicalBlock(scope: !500, file: !3, line: 147, column: 5)
!503 = !DILocation(line: 147, column: 5, scope: !504, inlinedAt: !399)
!504 = distinct !DILexicalBlock(scope: !394, file: !3, line: 147, column: 5)
!505 = !DILocation(line: 147, column: 5, scope: !506, inlinedAt: !399)
!506 = distinct !DILexicalBlock(scope: !504, file: !3, line: 147, column: 5)
!507 = !DILocation(line: 148, column: 5, scope: !394, inlinedAt: !399)
!508 = !DILocation(line: 148, column: 5, scope: !509, inlinedAt: !399)
!509 = distinct !DILexicalBlock(scope: !394, file: !3, line: 148, column: 5)
!510 = !DILocation(line: 148, column: 5, scope: !511, inlinedAt: !399)
!511 = distinct !DILexicalBlock(scope: !509, file: !3, line: 148, column: 5)
!512 = !DILocation(line: 148, column: 5, scope: !513, inlinedAt: !399)
!513 = distinct !DILexicalBlock(scope: !394, file: !3, line: 148, column: 5)
!514 = !DILocation(line: 148, column: 5, scope: !515, inlinedAt: !399)
!515 = distinct !DILexicalBlock(scope: !513, file: !3, line: 148, column: 5)
!516 = !DILocation(line: 148, column: 5, scope: !517, inlinedAt: !399)
!517 = distinct !DILexicalBlock(scope: !394, file: !3, line: 148, column: 5)
!518 = !DILocation(line: 148, column: 5, scope: !519, inlinedAt: !399)
!519 = distinct !DILexicalBlock(scope: !517, file: !3, line: 148, column: 5)
!520 = !DILocation(line: 148, column: 5, scope: !521, inlinedAt: !399)
!521 = distinct !DILexicalBlock(scope: !394, file: !3, line: 148, column: 5)
!522 = !DILocation(line: 148, column: 5, scope: !523, inlinedAt: !399)
!523 = distinct !DILexicalBlock(scope: !521, file: !3, line: 148, column: 5)
!524 = !DILocation(line: 149, column: 5, scope: !394, inlinedAt: !399)
!525 = !DILocation(line: 149, column: 5, scope: !526, inlinedAt: !399)
!526 = distinct !DILexicalBlock(scope: !394, file: !3, line: 149, column: 5)
!527 = !DILocation(line: 149, column: 5, scope: !528, inlinedAt: !399)
!528 = distinct !DILexicalBlock(scope: !526, file: !3, line: 149, column: 5)
!529 = !DILocation(line: 149, column: 5, scope: !530, inlinedAt: !399)
!530 = distinct !DILexicalBlock(scope: !394, file: !3, line: 149, column: 5)
!531 = !DILocation(line: 149, column: 5, scope: !532, inlinedAt: !399)
!532 = distinct !DILexicalBlock(scope: !530, file: !3, line: 149, column: 5)
!533 = !DILocation(line: 149, column: 5, scope: !534, inlinedAt: !399)
!534 = distinct !DILexicalBlock(scope: !394, file: !3, line: 149, column: 5)
!535 = !DILocation(line: 149, column: 5, scope: !536, inlinedAt: !399)
!536 = distinct !DILexicalBlock(scope: !534, file: !3, line: 149, column: 5)
!537 = !DILocation(line: 149, column: 5, scope: !538, inlinedAt: !399)
!538 = distinct !DILexicalBlock(scope: !394, file: !3, line: 149, column: 5)
!539 = !DILocation(line: 149, column: 5, scope: !540, inlinedAt: !399)
!540 = distinct !DILexicalBlock(scope: !538, file: !3, line: 149, column: 5)
!541 = !DILocation(line: 150, column: 5, scope: !394, inlinedAt: !399)
!542 = !DILocation(line: 150, column: 5, scope: !543, inlinedAt: !399)
!543 = distinct !DILexicalBlock(scope: !394, file: !3, line: 150, column: 5)
!544 = !DILocation(line: 150, column: 5, scope: !545, inlinedAt: !399)
!545 = distinct !DILexicalBlock(scope: !543, file: !3, line: 150, column: 5)
!546 = !DILocation(line: 150, column: 5, scope: !547, inlinedAt: !399)
!547 = distinct !DILexicalBlock(scope: !394, file: !3, line: 150, column: 5)
!548 = !DILocation(line: 150, column: 5, scope: !549, inlinedAt: !399)
!549 = distinct !DILexicalBlock(scope: !547, file: !3, line: 150, column: 5)
!550 = !DILocation(line: 150, column: 5, scope: !551, inlinedAt: !399)
!551 = distinct !DILexicalBlock(scope: !394, file: !3, line: 150, column: 5)
!552 = !DILocation(line: 150, column: 5, scope: !553, inlinedAt: !399)
!553 = distinct !DILexicalBlock(scope: !551, file: !3, line: 150, column: 5)
!554 = !DILocation(line: 150, column: 5, scope: !555, inlinedAt: !399)
!555 = distinct !DILexicalBlock(scope: !394, file: !3, line: 150, column: 5)
!556 = !DILocation(line: 150, column: 5, scope: !557, inlinedAt: !399)
!557 = distinct !DILexicalBlock(scope: !555, file: !3, line: 150, column: 5)
!558 = !DILocation(line: 151, column: 5, scope: !394, inlinedAt: !399)
!559 = !DILocation(line: 151, column: 5, scope: !560, inlinedAt: !399)
!560 = distinct !DILexicalBlock(scope: !394, file: !3, line: 151, column: 5)
!561 = !DILocation(line: 151, column: 5, scope: !562, inlinedAt: !399)
!562 = distinct !DILexicalBlock(scope: !560, file: !3, line: 151, column: 5)
!563 = !DILocation(line: 151, column: 5, scope: !564, inlinedAt: !399)
!564 = distinct !DILexicalBlock(scope: !394, file: !3, line: 151, column: 5)
!565 = !DILocation(line: 151, column: 5, scope: !566, inlinedAt: !399)
!566 = distinct !DILexicalBlock(scope: !564, file: !3, line: 151, column: 5)
!567 = !DILocation(line: 151, column: 5, scope: !568, inlinedAt: !399)
!568 = distinct !DILexicalBlock(scope: !394, file: !3, line: 151, column: 5)
!569 = !DILocation(line: 151, column: 5, scope: !570, inlinedAt: !399)
!570 = distinct !DILexicalBlock(scope: !568, file: !3, line: 151, column: 5)
!571 = !DILocation(line: 151, column: 5, scope: !572, inlinedAt: !399)
!572 = distinct !DILexicalBlock(scope: !394, file: !3, line: 151, column: 5)
!573 = !DILocation(line: 151, column: 5, scope: !574, inlinedAt: !399)
!574 = distinct !DILexicalBlock(scope: !572, file: !3, line: 151, column: 5)
!575 = !DILocation(line: 152, column: 5, scope: !394, inlinedAt: !399)
!576 = !DILocation(line: 152, column: 5, scope: !577, inlinedAt: !399)
!577 = distinct !DILexicalBlock(scope: !394, file: !3, line: 152, column: 5)
!578 = !DILocation(line: 152, column: 5, scope: !579, inlinedAt: !399)
!579 = distinct !DILexicalBlock(scope: !577, file: !3, line: 152, column: 5)
!580 = !DILocation(line: 152, column: 5, scope: !581, inlinedAt: !399)
!581 = distinct !DILexicalBlock(scope: !394, file: !3, line: 152, column: 5)
!582 = !DILocation(line: 152, column: 5, scope: !583, inlinedAt: !399)
!583 = distinct !DILexicalBlock(scope: !581, file: !3, line: 152, column: 5)
!584 = !DILocation(line: 152, column: 5, scope: !585, inlinedAt: !399)
!585 = distinct !DILexicalBlock(scope: !394, file: !3, line: 152, column: 5)
!586 = !DILocation(line: 152, column: 5, scope: !587, inlinedAt: !399)
!587 = distinct !DILexicalBlock(scope: !585, file: !3, line: 152, column: 5)
!588 = !DILocation(line: 152, column: 5, scope: !589, inlinedAt: !399)
!589 = distinct !DILexicalBlock(scope: !394, file: !3, line: 152, column: 5)
!590 = !DILocation(line: 152, column: 5, scope: !591, inlinedAt: !399)
!591 = distinct !DILexicalBlock(scope: !589, file: !3, line: 152, column: 5)
!592 = !DILocation(line: 154, column: 8, scope: !394, inlinedAt: !399)
!593 = !DILocation(line: 155, column: 5, scope: !394, inlinedAt: !399)
!594 = !DILocation(line: 155, column: 5, scope: !595, inlinedAt: !399)
!595 = distinct !DILexicalBlock(scope: !394, file: !3, line: 155, column: 5)
!596 = !DILocation(line: 155, column: 5, scope: !597, inlinedAt: !399)
!597 = distinct !DILexicalBlock(scope: !595, file: !3, line: 155, column: 5)
!598 = !DILocation(line: 156, column: 6, scope: !394, inlinedAt: !399)
!599 = !DILocation(line: 158, column: 10, scope: !394, inlinedAt: !399)
!600 = !DILocation(line: 158, column: 18, scope: !394, inlinedAt: !399)
!601 = !DILocation(line: 158, column: 15, scope: !394, inlinedAt: !399)
!602 = !DILocation(line: 158, column: 13, scope: !394, inlinedAt: !399)
!603 = !DILocation(line: 158, column: 8, scope: !394, inlinedAt: !399)
!604 = !DILocation(line: 159, column: 10, scope: !394, inlinedAt: !399)
!605 = !DILocation(line: 159, column: 18, scope: !394, inlinedAt: !399)
!606 = !DILocation(line: 159, column: 15, scope: !394, inlinedAt: !399)
!607 = !DILocation(line: 159, column: 13, scope: !394, inlinedAt: !399)
!608 = !DILocation(line: 159, column: 8, scope: !394, inlinedAt: !399)
!609 = !DILocation(line: 161, column: 8, scope: !394, inlinedAt: !399)
!610 = !DILocation(line: 162, column: 5, scope: !394, inlinedAt: !399)
!611 = !DILocation(line: 162, column: 5, scope: !612, inlinedAt: !399)
!612 = distinct !DILexicalBlock(scope: !394, file: !3, line: 162, column: 5)
!613 = !DILocation(line: 162, column: 5, scope: !614, inlinedAt: !399)
!614 = distinct !DILexicalBlock(scope: !612, file: !3, line: 162, column: 5)
!615 = !DILocation(line: 164, column: 13, scope: !394, inlinedAt: !399)
!616 = !DILocation(line: 164, column: 16, scope: !394, inlinedAt: !399)
!617 = !DILocation(line: 164, column: 30, scope: !394, inlinedAt: !399)
!618 = !DILocation(line: 164, column: 33, scope: !394, inlinedAt: !399)
!619 = !DILocation(line: 164, column: 43, scope: !394, inlinedAt: !399)
!620 = !DILocation(line: 164, column: 26, scope: !394, inlinedAt: !399)
!621 = !DILocation(line: 164, column: 5, scope: !394, inlinedAt: !399)
!622 = !DILocation(line: 164, column: 10, scope: !394, inlinedAt: !399)
!623 = !DILocation(line: 165, column: 13, scope: !394, inlinedAt: !399)
!624 = !DILocation(line: 165, column: 16, scope: !394, inlinedAt: !399)
!625 = !DILocation(line: 165, column: 30, scope: !394, inlinedAt: !399)
!626 = !DILocation(line: 165, column: 33, scope: !394, inlinedAt: !399)
!627 = !DILocation(line: 165, column: 43, scope: !394, inlinedAt: !399)
!628 = !DILocation(line: 165, column: 26, scope: !394, inlinedAt: !399)
!629 = !DILocation(line: 165, column: 5, scope: !394, inlinedAt: !399)
!630 = !DILocation(line: 165, column: 10, scope: !394, inlinedAt: !399)
!631 = !DILocation(line: 126, column: 10, scope: !390)
!632 = !DILocation(line: 126, column: 8, scope: !390)
!633 = !DILocation(line: 127, column: 5, scope: !390)
!634 = !DILocation(line: 128, column: 10, scope: !390)
!635 = !DILocation(line: 128, column: 8, scope: !390)
!636 = !DILocation(line: 129, column: 5, scope: !390)
!637 = !DILocation(line: 130, column: 22, scope: !390)
!638 = !DILocation(line: 130, column: 27, scope: !390)
!639 = !DILocation(line: 130, column: 15, scope: !390)
!640 = !DILocation(line: 130, column: 20, scope: !390)
!641 = !DILocation(line: 130, column: 13, scope: !390)
!642 = !DILocation(line: 130, column: 8, scope: !390)
!643 = !DILocation(line: 131, column: 1, scope: !390)
!644 = !DILocation(line: 133, column: 34, scope: !394)
!645 = !DILocation(line: 133, column: 56, scope: !394)
!646 = !DILocation(line: 135, column: 24, scope: !394)
!647 = !DILocation(line: 136, column: 28, scope: !394)
!648 = !DILocation(line: 136, column: 32, scope: !394)
!649 = !DILocation(line: 136, column: 36, scope: !394)
!650 = !DILocation(line: 136, column: 40, scope: !394)
!651 = !DILocation(line: 136, column: 44, scope: !394)
!652 = !DILocation(line: 136, column: 48, scope: !394)
!653 = !DILocation(line: 136, column: 52, scope: !394)
!654 = !DILocation(line: 138, column: 10, scope: !394)
!655 = !DILocation(line: 138, column: 8, scope: !394)
!656 = !DILocation(line: 139, column: 11, scope: !394)
!657 = !DILocation(line: 139, column: 14, scope: !394)
!658 = !DILocation(line: 139, column: 8, scope: !394)
!659 = !DILocation(line: 140, column: 10, scope: !394)
!660 = !DILocation(line: 140, column: 8, scope: !394)
!661 = !DILocation(line: 141, column: 11, scope: !394)
!662 = !DILocation(line: 141, column: 14, scope: !394)
!663 = !DILocation(line: 141, column: 8, scope: !394)
!664 = !DILocation(line: 143, column: 11, scope: !394)
!665 = !DILocation(line: 143, column: 16, scope: !394)
!666 = !DILocation(line: 143, column: 7, scope: !394)
!667 = !DILocation(line: 145, column: 5, scope: !394)
!668 = !DILocation(line: 145, column: 5, scope: !458)
!669 = !DILocation(line: 145, column: 5, scope: !460)
!670 = !DILocation(line: 145, column: 5, scope: !462)
!671 = !DILocation(line: 145, column: 5, scope: !464)
!672 = !DILocation(line: 145, column: 5, scope: !466)
!673 = !DILocation(line: 145, column: 5, scope: !468)
!674 = !DILocation(line: 145, column: 5, scope: !470)
!675 = !DILocation(line: 145, column: 5, scope: !472)
!676 = !DILocation(line: 146, column: 5, scope: !394)
!677 = !DILocation(line: 146, column: 5, scope: !475)
!678 = !DILocation(line: 146, column: 5, scope: !477)
!679 = !DILocation(line: 146, column: 5, scope: !479)
!680 = !DILocation(line: 146, column: 5, scope: !481)
!681 = !DILocation(line: 146, column: 5, scope: !483)
!682 = !DILocation(line: 146, column: 5, scope: !485)
!683 = !DILocation(line: 146, column: 5, scope: !487)
!684 = !DILocation(line: 146, column: 5, scope: !489)
!685 = !DILocation(line: 147, column: 5, scope: !394)
!686 = !DILocation(line: 147, column: 5, scope: !492)
!687 = !DILocation(line: 147, column: 5, scope: !494)
!688 = !DILocation(line: 147, column: 5, scope: !496)
!689 = !DILocation(line: 147, column: 5, scope: !498)
!690 = !DILocation(line: 147, column: 5, scope: !500)
!691 = !DILocation(line: 147, column: 5, scope: !502)
!692 = !DILocation(line: 147, column: 5, scope: !504)
!693 = !DILocation(line: 147, column: 5, scope: !506)
!694 = !DILocation(line: 148, column: 5, scope: !394)
!695 = !DILocation(line: 148, column: 5, scope: !509)
!696 = !DILocation(line: 148, column: 5, scope: !511)
!697 = !DILocation(line: 148, column: 5, scope: !513)
!698 = !DILocation(line: 148, column: 5, scope: !515)
!699 = !DILocation(line: 148, column: 5, scope: !517)
!700 = !DILocation(line: 148, column: 5, scope: !519)
!701 = !DILocation(line: 148, column: 5, scope: !521)
!702 = !DILocation(line: 148, column: 5, scope: !523)
!703 = !DILocation(line: 149, column: 5, scope: !394)
!704 = !DILocation(line: 149, column: 5, scope: !526)
!705 = !DILocation(line: 149, column: 5, scope: !528)
!706 = !DILocation(line: 149, column: 5, scope: !530)
!707 = !DILocation(line: 149, column: 5, scope: !532)
!708 = !DILocation(line: 149, column: 5, scope: !534)
!709 = !DILocation(line: 149, column: 5, scope: !536)
!710 = !DILocation(line: 149, column: 5, scope: !538)
!711 = !DILocation(line: 149, column: 5, scope: !540)
!712 = !DILocation(line: 150, column: 5, scope: !394)
!713 = !DILocation(line: 150, column: 5, scope: !543)
!714 = !DILocation(line: 150, column: 5, scope: !545)
!715 = !DILocation(line: 150, column: 5, scope: !547)
!716 = !DILocation(line: 150, column: 5, scope: !549)
!717 = !DILocation(line: 150, column: 5, scope: !551)
!718 = !DILocation(line: 150, column: 5, scope: !553)
!719 = !DILocation(line: 150, column: 5, scope: !555)
!720 = !DILocation(line: 150, column: 5, scope: !557)
!721 = !DILocation(line: 151, column: 5, scope: !394)
!722 = !DILocation(line: 151, column: 5, scope: !560)
!723 = !DILocation(line: 151, column: 5, scope: !562)
!724 = !DILocation(line: 151, column: 5, scope: !564)
!725 = !DILocation(line: 151, column: 5, scope: !566)
!726 = !DILocation(line: 151, column: 5, scope: !568)
!727 = !DILocation(line: 151, column: 5, scope: !570)
!728 = !DILocation(line: 151, column: 5, scope: !572)
!729 = !DILocation(line: 151, column: 5, scope: !574)
!730 = !DILocation(line: 152, column: 5, scope: !394)
!731 = !DILocation(line: 152, column: 5, scope: !577)
!732 = !DILocation(line: 152, column: 5, scope: !579)
!733 = !DILocation(line: 152, column: 5, scope: !581)
!734 = !DILocation(line: 152, column: 5, scope: !583)
!735 = !DILocation(line: 152, column: 5, scope: !585)
!736 = !DILocation(line: 152, column: 5, scope: !587)
!737 = !DILocation(line: 152, column: 5, scope: !589)
!738 = !DILocation(line: 152, column: 5, scope: !591)
!739 = !DILocation(line: 154, column: 8, scope: !394)
!740 = !DILocation(line: 155, column: 5, scope: !394)
!741 = !DILocation(line: 155, column: 5, scope: !595)
!742 = !DILocation(line: 155, column: 5, scope: !597)
!743 = !DILocation(line: 156, column: 6, scope: !394)
!744 = !DILocation(line: 158, column: 10, scope: !394)
!745 = !DILocation(line: 158, column: 18, scope: !394)
!746 = !DILocation(line: 158, column: 15, scope: !394)
!747 = !DILocation(line: 158, column: 13, scope: !394)
!748 = !DILocation(line: 158, column: 8, scope: !394)
!749 = !DILocation(line: 159, column: 10, scope: !394)
!750 = !DILocation(line: 159, column: 18, scope: !394)
!751 = !DILocation(line: 159, column: 15, scope: !394)
!752 = !DILocation(line: 159, column: 13, scope: !394)
!753 = !DILocation(line: 159, column: 8, scope: !394)
!754 = !DILocation(line: 161, column: 8, scope: !394)
!755 = !DILocation(line: 162, column: 5, scope: !394)
!756 = !DILocation(line: 162, column: 5, scope: !612)
!757 = !DILocation(line: 162, column: 5, scope: !614)
!758 = !DILocation(line: 164, column: 13, scope: !394)
!759 = !DILocation(line: 164, column: 16, scope: !394)
!760 = !DILocation(line: 164, column: 30, scope: !394)
!761 = !DILocation(line: 164, column: 33, scope: !394)
!762 = !DILocation(line: 164, column: 43, scope: !394)
!763 = !DILocation(line: 164, column: 26, scope: !394)
!764 = !DILocation(line: 164, column: 5, scope: !394)
!765 = !DILocation(line: 164, column: 10, scope: !394)
!766 = !DILocation(line: 165, column: 13, scope: !394)
!767 = !DILocation(line: 165, column: 16, scope: !394)
!768 = !DILocation(line: 165, column: 30, scope: !394)
!769 = !DILocation(line: 165, column: 33, scope: !394)
!770 = !DILocation(line: 165, column: 43, scope: !394)
!771 = !DILocation(line: 165, column: 26, scope: !394)
!772 = !DILocation(line: 165, column: 5, scope: !394)
!773 = !DILocation(line: 165, column: 10, scope: !394)
!774 = !DILocation(line: 166, column: 1, scope: !394)
!775 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 177, type: !776, scopeLine: 178, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!776 = !DISubroutineType(types: !777)
!777 = !{!9}
!778 = !DILocation(line: 133, column: 34, scope: !394, inlinedAt: !779)
!779 = distinct !DILocation(line: 125, column: 5, scope: !390, inlinedAt: !780)
!780 = distinct !DILocation(line: 195, column: 5, scope: !775)
!781 = !DILocation(line: 133, column: 56, scope: !394, inlinedAt: !779)
!782 = !DILocation(line: 135, column: 24, scope: !394, inlinedAt: !779)
!783 = !DILocation(line: 136, column: 28, scope: !394, inlinedAt: !779)
!784 = !DILocation(line: 136, column: 32, scope: !394, inlinedAt: !779)
!785 = !DILocation(line: 136, column: 36, scope: !394, inlinedAt: !779)
!786 = !DILocation(line: 136, column: 40, scope: !394, inlinedAt: !779)
!787 = !DILocation(line: 136, column: 44, scope: !394, inlinedAt: !779)
!788 = !DILocation(line: 136, column: 48, scope: !394, inlinedAt: !779)
!789 = !DILocation(line: 136, column: 52, scope: !394, inlinedAt: !779)
!790 = !DILocation(line: 116, column: 44, scope: !390, inlinedAt: !780)
!791 = !DILocation(line: 116, column: 63, scope: !390, inlinedAt: !780)
!792 = !DILocation(line: 117, column: 42, scope: !390, inlinedAt: !780)
!793 = !DILocation(line: 119, column: 19, scope: !390, inlinedAt: !780)
!794 = !DILocation(line: 119, column: 23, scope: !390, inlinedAt: !780)
!795 = !DILocation(line: 119, column: 27, scope: !390, inlinedAt: !780)
!796 = !DILocation(line: 16, column: 48, scope: !18, inlinedAt: !797)
!797 = distinct !DILocation(line: 183, column: 5, scope: !775)
!798 = !DILocation(line: 16, column: 72, scope: !18, inlinedAt: !797)
!799 = !DILocation(line: 18, column: 9, scope: !18, inlinedAt: !797)
!800 = !DILocation(line: 19, column: 24, scope: !18, inlinedAt: !797)
!801 = !DILocation(line: 19, column: 29, scope: !18, inlinedAt: !797)
!802 = !DILocation(line: 19, column: 33, scope: !18, inlinedAt: !797)
!803 = !DILocation(line: 19, column: 37, scope: !18, inlinedAt: !797)
!804 = !DILocation(line: 19, column: 41, scope: !18, inlinedAt: !797)
!805 = !DILocalVariable(name: "eks", scope: !775, file: !3, line: 179, type: !24)
!806 = !DILocation(line: 179, column: 23, scope: !775)
!807 = !DILocalVariable(name: "dks", scope: !775, file: !3, line: 180, type: !24)
!808 = !DILocation(line: 180, column: 23, scope: !775)
!809 = !DILocalVariable(name: "text", scope: !775, file: !3, line: 181, type: !12)
!810 = !DILocation(line: 181, column: 20, scope: !775)
!811 = !DILocalVariable(name: "enc_out", scope: !775, file: !3, line: 182, type: !812)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !813)
!813 = !{!814}
!814 = !DISubrange(count: 256)
!815 = !DILocation(line: 182, column: 19, scope: !775)
!816 = !DILocation(line: 183, column: 26, scope: !775)
!817 = !DILocation(line: 21, column: 12, scope: !18, inlinedAt: !797)
!818 = !DILocation(line: 21, column: 16, scope: !18, inlinedAt: !797)
!819 = !DILocation(line: 21, column: 8, scope: !18, inlinedAt: !797)
!820 = !DILocation(line: 22, column: 5, scope: !18, inlinedAt: !797)
!821 = !DILocation(line: 23, column: 5, scope: !18, inlinedAt: !797)
!822 = !DILocation(line: 24, column: 5, scope: !18, inlinedAt: !797)
!823 = !DILocation(line: 25, column: 5, scope: !18, inlinedAt: !797)
!824 = !DILocation(line: 26, column: 5, scope: !18, inlinedAt: !797)
!825 = !DILocation(line: 27, column: 5, scope: !18, inlinedAt: !797)
!826 = !DILocation(line: 28, column: 5, scope: !18, inlinedAt: !797)
!827 = !DILocation(line: 29, column: 5, scope: !18, inlinedAt: !797)
!828 = !DILocation(line: 31, column: 10, scope: !18, inlinedAt: !797)
!829 = !DILocation(line: 31, column: 8, scope: !18, inlinedAt: !797)
!830 = !DILocation(line: 32, column: 8, scope: !18, inlinedAt: !797)
!831 = !DILocation(line: 33, column: 12, scope: !64, inlinedAt: !797)
!832 = !DILocation(line: 33, column: 10, scope: !64, inlinedAt: !797)
!833 = !DILocation(line: 33, column: 17, scope: !67, inlinedAt: !797)
!834 = !DILocation(line: 33, column: 19, scope: !67, inlinedAt: !797)
!835 = !DILocation(line: 33, column: 5, scope: !64, inlinedAt: !797)
!836 = !DILocation(line: 34, column: 14, scope: !71, inlinedAt: !797)
!837 = !DILocation(line: 34, column: 12, scope: !71, inlinedAt: !797)
!838 = !DILocation(line: 35, column: 14, scope: !71, inlinedAt: !797)
!839 = !DILocation(line: 35, column: 12, scope: !71, inlinedAt: !797)
!840 = !DILocation(line: 36, column: 21, scope: !71, inlinedAt: !797)
!841 = !DILocation(line: 36, column: 24, scope: !71, inlinedAt: !797)
!842 = !DILocation(line: 36, column: 33, scope: !71, inlinedAt: !797)
!843 = !DILocation(line: 36, column: 36, scope: !71, inlinedAt: !797)
!844 = !DILocation(line: 36, column: 30, scope: !71, inlinedAt: !797)
!845 = !DILocation(line: 36, column: 43, scope: !71, inlinedAt: !797)
!846 = !DILocation(line: 36, column: 13, scope: !71, inlinedAt: !797)
!847 = !DILocation(line: 36, column: 17, scope: !71, inlinedAt: !797)
!848 = !DILocation(line: 37, column: 14, scope: !71, inlinedAt: !797)
!849 = !DILocation(line: 37, column: 12, scope: !71, inlinedAt: !797)
!850 = !DILocation(line: 38, column: 21, scope: !71, inlinedAt: !797)
!851 = !DILocation(line: 38, column: 24, scope: !71, inlinedAt: !797)
!852 = !DILocation(line: 38, column: 33, scope: !71, inlinedAt: !797)
!853 = !DILocation(line: 38, column: 36, scope: !71, inlinedAt: !797)
!854 = !DILocation(line: 38, column: 30, scope: !71, inlinedAt: !797)
!855 = !DILocation(line: 38, column: 43, scope: !71, inlinedAt: !797)
!856 = !DILocation(line: 38, column: 13, scope: !71, inlinedAt: !797)
!857 = !DILocation(line: 38, column: 17, scope: !71, inlinedAt: !797)
!858 = !DILocation(line: 39, column: 14, scope: !71, inlinedAt: !797)
!859 = !DILocation(line: 39, column: 12, scope: !71, inlinedAt: !797)
!860 = !DILocation(line: 40, column: 21, scope: !71, inlinedAt: !797)
!861 = !DILocation(line: 40, column: 24, scope: !71, inlinedAt: !797)
!862 = !DILocation(line: 40, column: 33, scope: !71, inlinedAt: !797)
!863 = !DILocation(line: 40, column: 36, scope: !71, inlinedAt: !797)
!864 = !DILocation(line: 40, column: 30, scope: !71, inlinedAt: !797)
!865 = !DILocation(line: 40, column: 43, scope: !71, inlinedAt: !797)
!866 = !DILocation(line: 40, column: 13, scope: !71, inlinedAt: !797)
!867 = !DILocation(line: 40, column: 17, scope: !71, inlinedAt: !797)
!868 = !DILocation(line: 41, column: 14, scope: !71, inlinedAt: !797)
!869 = !DILocation(line: 41, column: 12, scope: !71, inlinedAt: !797)
!870 = !DILocation(line: 42, column: 21, scope: !71, inlinedAt: !797)
!871 = !DILocation(line: 42, column: 24, scope: !71, inlinedAt: !797)
!872 = !DILocation(line: 42, column: 33, scope: !71, inlinedAt: !797)
!873 = !DILocation(line: 42, column: 36, scope: !71, inlinedAt: !797)
!874 = !DILocation(line: 42, column: 30, scope: !71, inlinedAt: !797)
!875 = !DILocation(line: 42, column: 43, scope: !71, inlinedAt: !797)
!876 = !DILocation(line: 42, column: 13, scope: !71, inlinedAt: !797)
!877 = !DILocation(line: 42, column: 17, scope: !71, inlinedAt: !797)
!878 = !DILocation(line: 43, column: 14, scope: !71, inlinedAt: !797)
!879 = !DILocation(line: 43, column: 12, scope: !71, inlinedAt: !797)
!880 = !DILocation(line: 44, column: 21, scope: !71, inlinedAt: !797)
!881 = !DILocation(line: 44, column: 24, scope: !71, inlinedAt: !797)
!882 = !DILocation(line: 44, column: 33, scope: !71, inlinedAt: !797)
!883 = !DILocation(line: 44, column: 36, scope: !71, inlinedAt: !797)
!884 = !DILocation(line: 44, column: 30, scope: !71, inlinedAt: !797)
!885 = !DILocation(line: 44, column: 43, scope: !71, inlinedAt: !797)
!886 = !DILocation(line: 44, column: 13, scope: !71, inlinedAt: !797)
!887 = !DILocation(line: 44, column: 17, scope: !71, inlinedAt: !797)
!888 = !DILocation(line: 45, column: 14, scope: !71, inlinedAt: !797)
!889 = !DILocation(line: 45, column: 12, scope: !71, inlinedAt: !797)
!890 = !DILocation(line: 46, column: 21, scope: !71, inlinedAt: !797)
!891 = !DILocation(line: 46, column: 24, scope: !71, inlinedAt: !797)
!892 = !DILocation(line: 46, column: 33, scope: !71, inlinedAt: !797)
!893 = !DILocation(line: 46, column: 36, scope: !71, inlinedAt: !797)
!894 = !DILocation(line: 46, column: 30, scope: !71, inlinedAt: !797)
!895 = !DILocation(line: 46, column: 43, scope: !71, inlinedAt: !797)
!896 = !DILocation(line: 46, column: 13, scope: !71, inlinedAt: !797)
!897 = !DILocation(line: 46, column: 17, scope: !71, inlinedAt: !797)
!898 = !DILocation(line: 47, column: 14, scope: !71, inlinedAt: !797)
!899 = !DILocation(line: 47, column: 12, scope: !71, inlinedAt: !797)
!900 = !DILocation(line: 48, column: 13, scope: !136, inlinedAt: !797)
!901 = !DILocation(line: 48, column: 15, scope: !136, inlinedAt: !797)
!902 = !DILocation(line: 48, column: 13, scope: !71, inlinedAt: !797)
!903 = !DILocation(line: 49, column: 13, scope: !136, inlinedAt: !797)
!904 = !DILocation(line: 50, column: 21, scope: !71, inlinedAt: !797)
!905 = !DILocation(line: 50, column: 24, scope: !71, inlinedAt: !797)
!906 = !DILocation(line: 50, column: 33, scope: !71, inlinedAt: !797)
!907 = !DILocation(line: 50, column: 36, scope: !71, inlinedAt: !797)
!908 = !DILocation(line: 50, column: 30, scope: !71, inlinedAt: !797)
!909 = !DILocation(line: 50, column: 43, scope: !71, inlinedAt: !797)
!910 = !DILocation(line: 50, column: 13, scope: !71, inlinedAt: !797)
!911 = !DILocation(line: 50, column: 17, scope: !71, inlinedAt: !797)
!912 = !DILocation(line: 51, column: 21, scope: !71, inlinedAt: !797)
!913 = !DILocation(line: 51, column: 24, scope: !71, inlinedAt: !797)
!914 = !DILocation(line: 51, column: 33, scope: !71, inlinedAt: !797)
!915 = !DILocation(line: 51, column: 36, scope: !71, inlinedAt: !797)
!916 = !DILocation(line: 51, column: 30, scope: !71, inlinedAt: !797)
!917 = !DILocation(line: 51, column: 43, scope: !71, inlinedAt: !797)
!918 = !DILocation(line: 51, column: 13, scope: !71, inlinedAt: !797)
!919 = !DILocation(line: 51, column: 17, scope: !71, inlinedAt: !797)
!920 = !DILocation(line: 52, column: 12, scope: !71, inlinedAt: !797)
!921 = !DILocation(line: 33, column: 25, scope: !67, inlinedAt: !797)
!922 = !DILocation(line: 33, column: 5, scope: !67, inlinedAt: !797)
!923 = distinct !{!923, !835, !924}
!924 = !DILocation(line: 53, column: 5, scope: !64, inlinedAt: !797)
!925 = !DILocalVariable(name: "charset", scope: !775, file: !3, line: 185, type: !926)
!926 = !DICompositeType(tag: DW_TAG_array_type, baseType: !927, size: 752, elements: !929)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!929 = !{!930}
!930 = !DISubrange(count: 94)
!931 = !DILocation(line: 185, column: 16, scope: !775)
!932 = !DILocalVariable(name: "length", scope: !775, file: !3, line: 186, type: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !934, line: 46, baseType: !10)
!934 = !DIFile(filename: "Tools/LLVM/llvm-10.0.0/build/lib/clang/10.0.0/include/stddef.h", directory: "/home/phil")
!935 = !DILocation(line: 186, column: 12, scope: !775)
!936 = !DILocalVariable(name: "size", scope: !775, file: !3, line: 187, type: !9)
!937 = !DILocation(line: 187, column: 9, scope: !775)
!938 = !DILocalVariable(name: "round", scope: !775, file: !3, line: 188, type: !933)
!939 = !DILocation(line: 188, column: 12, scope: !775)
!940 = !DILocalVariable(name: "i", scope: !775, file: !3, line: 189, type: !9)
!941 = !DILocation(line: 189, column: 9, scope: !775)
!942 = !DILocalVariable(name: "buff", scope: !775, file: !3, line: 190, type: !943)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!944 = !DILocation(line: 190, column: 11, scope: !775)
!945 = !DILocation(line: 190, column: 40, scope: !775)
!946 = !DILocation(line: 190, column: 38, scope: !775)
!947 = !DILocation(line: 190, column: 47, scope: !775)
!948 = !DILocation(line: 190, column: 45, scope: !775)
!949 = !DILocation(line: 190, column: 18, scope: !775)
!950 = !DILocation(line: 191, column: 12, scope: !951)
!951 = distinct !DILexicalBlock(scope: !775, file: !3, line: 191, column: 5)
!952 = !DILocation(line: 191, column: 10, scope: !951)
!953 = !DILocation(line: 191, column: 17, scope: !954)
!954 = distinct !DILexicalBlock(scope: !951, file: !3, line: 191, column: 5)
!955 = !DILocation(line: 191, column: 21, scope: !954)
!956 = !DILocation(line: 191, column: 28, scope: !954)
!957 = !DILocation(line: 191, column: 26, scope: !954)
!958 = !DILocation(line: 191, column: 19, scope: !954)
!959 = !DILocation(line: 191, column: 5, scope: !951)
!960 = !DILocalVariable(name: "key", scope: !961, file: !3, line: 192, type: !9)
!961 = distinct !DILexicalBlock(scope: !954, file: !3, line: 191, column: 43)
!962 = !DILocation(line: 192, column: 11, scope: !961)
!963 = !DILocation(line: 192, column: 17, scope: !961)
!964 = !DILocation(line: 192, column: 26, scope: !961)
!965 = !DILocation(line: 192, column: 24, scope: !961)
!966 = !DILocation(line: 193, column: 25, scope: !961)
!967 = !DILocation(line: 193, column: 17, scope: !961)
!968 = !DILocation(line: 193, column: 7, scope: !961)
!969 = !DILocation(line: 193, column: 12, scope: !961)
!970 = !DILocation(line: 193, column: 15, scope: !961)
!971 = !DILocation(line: 194, column: 5, scope: !961)
!972 = !DILocation(line: 191, column: 36, scope: !954)
!973 = !DILocation(line: 191, column: 5, scope: !954)
!974 = distinct !{!974, !959, !975}
!975 = !DILocation(line: 194, column: 5, scope: !951)
!976 = !DILocation(line: 195, column: 22, scope: !775)
!977 = !DILocation(line: 195, column: 28, scope: !775)
!978 = !DILocation(line: 121, column: 5, scope: !390, inlinedAt: !780)
!979 = !DILocation(line: 122, column: 12, scope: !390, inlinedAt: !780)
!980 = !DILocation(line: 122, column: 5, scope: !390, inlinedAt: !780)
!981 = !DILocation(line: 122, column: 10, scope: !390, inlinedAt: !780)
!982 = !DILocation(line: 123, column: 5, scope: !390, inlinedAt: !780)
!983 = !DILocation(line: 124, column: 12, scope: !390, inlinedAt: !780)
!984 = !DILocation(line: 124, column: 5, scope: !390, inlinedAt: !780)
!985 = !DILocation(line: 124, column: 10, scope: !390, inlinedAt: !780)
!986 = !DILocation(line: 125, column: 18, scope: !390, inlinedAt: !780)
!987 = !DILocation(line: 125, column: 21, scope: !390, inlinedAt: !780)
!988 = !DILocation(line: 138, column: 10, scope: !394, inlinedAt: !779)
!989 = !DILocation(line: 138, column: 8, scope: !394, inlinedAt: !779)
!990 = !DILocation(line: 139, column: 11, scope: !394, inlinedAt: !779)
!991 = !DILocation(line: 139, column: 14, scope: !394, inlinedAt: !779)
!992 = !DILocation(line: 139, column: 8, scope: !394, inlinedAt: !779)
!993 = !DILocation(line: 140, column: 10, scope: !394, inlinedAt: !779)
!994 = !DILocation(line: 140, column: 8, scope: !394, inlinedAt: !779)
!995 = !DILocation(line: 141, column: 11, scope: !394, inlinedAt: !779)
!996 = !DILocation(line: 141, column: 14, scope: !394, inlinedAt: !779)
!997 = !DILocation(line: 141, column: 8, scope: !394, inlinedAt: !779)
!998 = !DILocation(line: 143, column: 11, scope: !394, inlinedAt: !779)
!999 = !DILocation(line: 143, column: 16, scope: !394, inlinedAt: !779)
!1000 = !DILocation(line: 143, column: 7, scope: !394, inlinedAt: !779)
!1001 = !DILocation(line: 145, column: 5, scope: !394, inlinedAt: !779)
!1002 = !DILocation(line: 145, column: 5, scope: !458, inlinedAt: !779)
!1003 = !DILocation(line: 145, column: 5, scope: !460, inlinedAt: !779)
!1004 = !DILocation(line: 145, column: 5, scope: !462, inlinedAt: !779)
!1005 = !DILocation(line: 145, column: 5, scope: !464, inlinedAt: !779)
!1006 = !DILocation(line: 145, column: 5, scope: !466, inlinedAt: !779)
!1007 = !DILocation(line: 145, column: 5, scope: !468, inlinedAt: !779)
!1008 = !DILocation(line: 145, column: 5, scope: !470, inlinedAt: !779)
!1009 = !DILocation(line: 145, column: 5, scope: !472, inlinedAt: !779)
!1010 = !DILocation(line: 146, column: 5, scope: !394, inlinedAt: !779)
!1011 = !DILocation(line: 146, column: 5, scope: !475, inlinedAt: !779)
!1012 = !DILocation(line: 146, column: 5, scope: !477, inlinedAt: !779)
!1013 = !DILocation(line: 146, column: 5, scope: !479, inlinedAt: !779)
!1014 = !DILocation(line: 146, column: 5, scope: !481, inlinedAt: !779)
!1015 = !DILocation(line: 146, column: 5, scope: !483, inlinedAt: !779)
!1016 = !DILocation(line: 146, column: 5, scope: !485, inlinedAt: !779)
!1017 = !DILocation(line: 146, column: 5, scope: !487, inlinedAt: !779)
!1018 = !DILocation(line: 146, column: 5, scope: !489, inlinedAt: !779)
!1019 = !DILocation(line: 147, column: 5, scope: !394, inlinedAt: !779)
!1020 = !DILocation(line: 147, column: 5, scope: !492, inlinedAt: !779)
!1021 = !DILocation(line: 147, column: 5, scope: !494, inlinedAt: !779)
!1022 = !DILocation(line: 147, column: 5, scope: !496, inlinedAt: !779)
!1023 = !DILocation(line: 147, column: 5, scope: !498, inlinedAt: !779)
!1024 = !DILocation(line: 147, column: 5, scope: !500, inlinedAt: !779)
!1025 = !DILocation(line: 147, column: 5, scope: !502, inlinedAt: !779)
!1026 = !DILocation(line: 147, column: 5, scope: !504, inlinedAt: !779)
!1027 = !DILocation(line: 147, column: 5, scope: !506, inlinedAt: !779)
!1028 = !DILocation(line: 148, column: 5, scope: !394, inlinedAt: !779)
!1029 = !DILocation(line: 148, column: 5, scope: !509, inlinedAt: !779)
!1030 = !DILocation(line: 148, column: 5, scope: !511, inlinedAt: !779)
!1031 = !DILocation(line: 148, column: 5, scope: !513, inlinedAt: !779)
!1032 = !DILocation(line: 148, column: 5, scope: !515, inlinedAt: !779)
!1033 = !DILocation(line: 148, column: 5, scope: !517, inlinedAt: !779)
!1034 = !DILocation(line: 148, column: 5, scope: !519, inlinedAt: !779)
!1035 = !DILocation(line: 148, column: 5, scope: !521, inlinedAt: !779)
!1036 = !DILocation(line: 148, column: 5, scope: !523, inlinedAt: !779)
!1037 = !DILocation(line: 149, column: 5, scope: !394, inlinedAt: !779)
!1038 = !DILocation(line: 149, column: 5, scope: !526, inlinedAt: !779)
!1039 = !DILocation(line: 149, column: 5, scope: !528, inlinedAt: !779)
!1040 = !DILocation(line: 149, column: 5, scope: !530, inlinedAt: !779)
!1041 = !DILocation(line: 149, column: 5, scope: !532, inlinedAt: !779)
!1042 = !DILocation(line: 149, column: 5, scope: !534, inlinedAt: !779)
!1043 = !DILocation(line: 149, column: 5, scope: !536, inlinedAt: !779)
!1044 = !DILocation(line: 149, column: 5, scope: !538, inlinedAt: !779)
!1045 = !DILocation(line: 149, column: 5, scope: !540, inlinedAt: !779)
!1046 = !DILocation(line: 150, column: 5, scope: !394, inlinedAt: !779)
!1047 = !DILocation(line: 150, column: 5, scope: !543, inlinedAt: !779)
!1048 = !DILocation(line: 150, column: 5, scope: !545, inlinedAt: !779)
!1049 = !DILocation(line: 150, column: 5, scope: !547, inlinedAt: !779)
!1050 = !DILocation(line: 150, column: 5, scope: !549, inlinedAt: !779)
!1051 = !DILocation(line: 150, column: 5, scope: !551, inlinedAt: !779)
!1052 = !DILocation(line: 150, column: 5, scope: !553, inlinedAt: !779)
!1053 = !DILocation(line: 150, column: 5, scope: !555, inlinedAt: !779)
!1054 = !DILocation(line: 150, column: 5, scope: !557, inlinedAt: !779)
!1055 = !DILocation(line: 151, column: 5, scope: !394, inlinedAt: !779)
!1056 = !DILocation(line: 151, column: 5, scope: !560, inlinedAt: !779)
!1057 = !DILocation(line: 151, column: 5, scope: !562, inlinedAt: !779)
!1058 = !DILocation(line: 151, column: 5, scope: !564, inlinedAt: !779)
!1059 = !DILocation(line: 151, column: 5, scope: !566, inlinedAt: !779)
!1060 = !DILocation(line: 151, column: 5, scope: !568, inlinedAt: !779)
!1061 = !DILocation(line: 151, column: 5, scope: !570, inlinedAt: !779)
!1062 = !DILocation(line: 151, column: 5, scope: !572, inlinedAt: !779)
!1063 = !DILocation(line: 151, column: 5, scope: !574, inlinedAt: !779)
!1064 = !DILocation(line: 152, column: 5, scope: !394, inlinedAt: !779)
!1065 = !DILocation(line: 152, column: 5, scope: !577, inlinedAt: !779)
!1066 = !DILocation(line: 152, column: 5, scope: !579, inlinedAt: !779)
!1067 = !DILocation(line: 152, column: 5, scope: !581, inlinedAt: !779)
!1068 = !DILocation(line: 152, column: 5, scope: !583, inlinedAt: !779)
!1069 = !DILocation(line: 152, column: 5, scope: !585, inlinedAt: !779)
!1070 = !DILocation(line: 152, column: 5, scope: !587, inlinedAt: !779)
!1071 = !DILocation(line: 152, column: 5, scope: !589, inlinedAt: !779)
!1072 = !DILocation(line: 152, column: 5, scope: !591, inlinedAt: !779)
!1073 = !DILocation(line: 154, column: 8, scope: !394, inlinedAt: !779)
!1074 = !DILocation(line: 155, column: 5, scope: !394, inlinedAt: !779)
!1075 = !DILocation(line: 155, column: 5, scope: !595, inlinedAt: !779)
!1076 = !DILocation(line: 155, column: 5, scope: !597, inlinedAt: !779)
!1077 = !DILocation(line: 156, column: 6, scope: !394, inlinedAt: !779)
!1078 = !DILocation(line: 158, column: 10, scope: !394, inlinedAt: !779)
!1079 = !DILocation(line: 158, column: 18, scope: !394, inlinedAt: !779)
!1080 = !DILocation(line: 158, column: 15, scope: !394, inlinedAt: !779)
!1081 = !DILocation(line: 158, column: 13, scope: !394, inlinedAt: !779)
!1082 = !DILocation(line: 158, column: 8, scope: !394, inlinedAt: !779)
!1083 = !DILocation(line: 159, column: 10, scope: !394, inlinedAt: !779)
!1084 = !DILocation(line: 159, column: 18, scope: !394, inlinedAt: !779)
!1085 = !DILocation(line: 159, column: 15, scope: !394, inlinedAt: !779)
!1086 = !DILocation(line: 159, column: 13, scope: !394, inlinedAt: !779)
!1087 = !DILocation(line: 159, column: 8, scope: !394, inlinedAt: !779)
!1088 = !DILocation(line: 161, column: 8, scope: !394, inlinedAt: !779)
!1089 = !DILocation(line: 162, column: 5, scope: !394, inlinedAt: !779)
!1090 = !DILocation(line: 162, column: 5, scope: !612, inlinedAt: !779)
!1091 = !DILocation(line: 162, column: 5, scope: !614, inlinedAt: !779)
!1092 = !DILocation(line: 164, column: 13, scope: !394, inlinedAt: !779)
!1093 = !DILocation(line: 164, column: 16, scope: !394, inlinedAt: !779)
!1094 = !DILocation(line: 164, column: 30, scope: !394, inlinedAt: !779)
!1095 = !DILocation(line: 164, column: 33, scope: !394, inlinedAt: !779)
!1096 = !DILocation(line: 164, column: 43, scope: !394, inlinedAt: !779)
!1097 = !DILocation(line: 164, column: 26, scope: !394, inlinedAt: !779)
!1098 = !DILocation(line: 164, column: 5, scope: !394, inlinedAt: !779)
!1099 = !DILocation(line: 164, column: 10, scope: !394, inlinedAt: !779)
!1100 = !DILocation(line: 165, column: 13, scope: !394, inlinedAt: !779)
!1101 = !DILocation(line: 165, column: 16, scope: !394, inlinedAt: !779)
!1102 = !DILocation(line: 165, column: 30, scope: !394, inlinedAt: !779)
!1103 = !DILocation(line: 165, column: 33, scope: !394, inlinedAt: !779)
!1104 = !DILocation(line: 165, column: 43, scope: !394, inlinedAt: !779)
!1105 = !DILocation(line: 165, column: 26, scope: !394, inlinedAt: !779)
!1106 = !DILocation(line: 165, column: 5, scope: !394, inlinedAt: !779)
!1107 = !DILocation(line: 165, column: 10, scope: !394, inlinedAt: !779)
!1108 = !DILocation(line: 126, column: 10, scope: !390, inlinedAt: !780)
!1109 = !DILocation(line: 126, column: 8, scope: !390, inlinedAt: !780)
!1110 = !DILocation(line: 127, column: 5, scope: !390, inlinedAt: !780)
!1111 = !DILocation(line: 128, column: 10, scope: !390, inlinedAt: !780)
!1112 = !DILocation(line: 128, column: 8, scope: !390, inlinedAt: !780)
!1113 = !DILocation(line: 129, column: 5, scope: !390, inlinedAt: !780)
!1114 = !DILocation(line: 130, column: 22, scope: !390, inlinedAt: !780)
!1115 = !DILocation(line: 130, column: 27, scope: !390, inlinedAt: !780)
!1116 = !DILocation(line: 130, column: 15, scope: !390, inlinedAt: !780)
!1117 = !DILocation(line: 130, column: 20, scope: !390, inlinedAt: !780)
!1118 = !DILocation(line: 130, column: 13, scope: !390, inlinedAt: !780)
!1119 = !DILocation(line: 130, column: 8, scope: !390, inlinedAt: !780)
!1120 = !DILocation(line: 197, column: 1, scope: !775)
