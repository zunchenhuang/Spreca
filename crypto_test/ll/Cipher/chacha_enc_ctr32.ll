; ModuleID = 'bc/Cipher/chacha_enc_ctr32.bc'
source_filename = "Cipher/chacha_enc_ctr32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64 }
%union.chacha_buf = type { [16 x i32] }

@.str = private unnamed_addr constant [5 x i8] c"mark\00", section "llvm.metadata"
@.str.1 = private unnamed_addr constant [26 x i8] c"Cipher/chacha_enc_ctr32.c\00", section "llvm.metadata"
@.str.2 = private unnamed_addr constant [31 x i8] c"checking chacha string encrypt\00", align 1
@__const.main.key = private unnamed_addr constant [8 x i32] [i32 3, i32 1, i32 4, i32 1, i32 5, i32 9, i32 2, i32 6], align 16
@__const.main.charset = private unnamed_addr constant [94 x i8] c"!#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\00", align 16
@__const.chacha20_core.is_endian = private unnamed_addr constant %union.anon { i64 1 }, align 8

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @ChaCha20_ctr32(i8* %out, i8* %inp, i64 %len, i32* %key, i32* %counter) #0 !dbg !12 {
entry:
  %output.addr.i = alloca %union.chacha_buf*, align 8
  call void @llvm.dbg.declare(metadata %union.chacha_buf** %output.addr.i, metadata !23, metadata !DIExpression()), !dbg !41
  %input.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %input.addr.i, metadata !44, metadata !DIExpression()), !dbg !45
  %x.i = alloca [16 x i32], align 16
  call void @llvm.dbg.declare(metadata [16 x i32]* %x.i, metadata !46, metadata !DIExpression()), !dbg !47
  %i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.i, metadata !48, metadata !DIExpression()), !dbg !50
  %is_endian.i = alloca %union.anon, align 8
  call void @llvm.dbg.declare(metadata %union.anon* %is_endian.i, metadata !51, metadata !DIExpression()), !dbg !59
  %out.addr = alloca i8*, align 8
  %inp.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %key.addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %input = alloca [16 x i32], align 16
  %buf = alloca %union.chacha_buf, align 4
  %todo = alloca i64, align 8
  %i = alloca i64, align 8
  store i8* %out, i8** %out.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i8* %inp, i8** %inp.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %inp.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !64, metadata !DIExpression()), !dbg !65
  store i32* %key, i32** %key.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %key.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %key.addr1 = bitcast i32** %key.addr to i8*
  call void @llvm.var.annotation(i8* %key.addr1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 74)
  store i32* %counter, i32** %counter.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata [16 x i32]* %input, metadata !70, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata %union.chacha_buf* %buf, metadata !72, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.declare(metadata i64* %todo, metadata !74, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i64* %i, metadata !76, metadata !DIExpression()), !dbg !77
  %arrayidx = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 0, !dbg !78
  store i32 1634760805, i32* %arrayidx, align 16, !dbg !79
  %arrayidx2 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 1, !dbg !80
  store i32 857760878, i32* %arrayidx2, align 4, !dbg !81
  %arrayidx3 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 2, !dbg !82
  store i32 2036477234, i32* %arrayidx3, align 8, !dbg !83
  %arrayidx4 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 3, !dbg !84
  store i32 1797285236, i32* %arrayidx4, align 4, !dbg !85
  %0 = load i32*, i32** %key.addr, align 8, !dbg !86
  %arrayidx5 = getelementptr inbounds i32, i32* %0, i64 0, !dbg !86
  %1 = load i32, i32* %arrayidx5, align 4, !dbg !86
  %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 4, !dbg !87
  store i32 %1, i32* %arrayidx6, align 16, !dbg !88
  %2 = load i32*, i32** %key.addr, align 8, !dbg !89
  %arrayidx7 = getelementptr inbounds i32, i32* %2, i64 1, !dbg !89
  %3 = load i32, i32* %arrayidx7, align 4, !dbg !89
  %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 5, !dbg !90
  store i32 %3, i32* %arrayidx8, align 4, !dbg !91
  %4 = load i32*, i32** %key.addr, align 8, !dbg !92
  %arrayidx9 = getelementptr inbounds i32, i32* %4, i64 2, !dbg !92
  %5 = load i32, i32* %arrayidx9, align 4, !dbg !92
  %arrayidx10 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 6, !dbg !93
  store i32 %5, i32* %arrayidx10, align 8, !dbg !94
  %6 = load i32*, i32** %key.addr, align 8, !dbg !95
  %arrayidx11 = getelementptr inbounds i32, i32* %6, i64 3, !dbg !95
  %7 = load i32, i32* %arrayidx11, align 4, !dbg !95
  %arrayidx12 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 7, !dbg !96
  store i32 %7, i32* %arrayidx12, align 4, !dbg !97
  %8 = load i32*, i32** %key.addr, align 8, !dbg !98
  %arrayidx13 = getelementptr inbounds i32, i32* %8, i64 4, !dbg !98
  %9 = load i32, i32* %arrayidx13, align 4, !dbg !98
  %arrayidx14 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 8, !dbg !99
  store i32 %9, i32* %arrayidx14, align 16, !dbg !100
  %10 = load i32*, i32** %key.addr, align 8, !dbg !101
  %arrayidx15 = getelementptr inbounds i32, i32* %10, i64 5, !dbg !101
  %11 = load i32, i32* %arrayidx15, align 4, !dbg !101
  %arrayidx16 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 9, !dbg !102
  store i32 %11, i32* %arrayidx16, align 4, !dbg !103
  %12 = load i32*, i32** %key.addr, align 8, !dbg !104
  %arrayidx17 = getelementptr inbounds i32, i32* %12, i64 6, !dbg !104
  %13 = load i32, i32* %arrayidx17, align 4, !dbg !104
  %arrayidx18 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 10, !dbg !105
  store i32 %13, i32* %arrayidx18, align 8, !dbg !106
  %14 = load i32*, i32** %key.addr, align 8, !dbg !107
  %arrayidx19 = getelementptr inbounds i32, i32* %14, i64 7, !dbg !107
  %15 = load i32, i32* %arrayidx19, align 4, !dbg !107
  %arrayidx20 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 11, !dbg !108
  store i32 %15, i32* %arrayidx20, align 4, !dbg !109
  %16 = load i32*, i32** %counter.addr, align 8, !dbg !110
  %arrayidx21 = getelementptr inbounds i32, i32* %16, i64 0, !dbg !110
  %17 = load i32, i32* %arrayidx21, align 4, !dbg !110
  %arrayidx22 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 12, !dbg !111
  store i32 %17, i32* %arrayidx22, align 16, !dbg !112
  %18 = load i32*, i32** %counter.addr, align 8, !dbg !113
  %arrayidx23 = getelementptr inbounds i32, i32* %18, i64 1, !dbg !113
  %19 = load i32, i32* %arrayidx23, align 4, !dbg !113
  %arrayidx24 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 13, !dbg !114
  store i32 %19, i32* %arrayidx24, align 4, !dbg !115
  %20 = load i32*, i32** %counter.addr, align 8, !dbg !116
  %arrayidx25 = getelementptr inbounds i32, i32* %20, i64 2, !dbg !116
  %21 = load i32, i32* %arrayidx25, align 4, !dbg !116
  %arrayidx26 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 14, !dbg !117
  store i32 %21, i32* %arrayidx26, align 8, !dbg !118
  %22 = load i32*, i32** %counter.addr, align 8, !dbg !119
  %arrayidx27 = getelementptr inbounds i32, i32* %22, i64 3, !dbg !119
  %23 = load i32, i32* %arrayidx27, align 4, !dbg !119
  %arrayidx28 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 15, !dbg !120
  store i32 %23, i32* %arrayidx28, align 4, !dbg !121
  br label %while.cond, !dbg !122

while.cond:                                       ; preds = %for.end, %entry
  %24 = load i64, i64* %len.addr, align 8, !dbg !123
  %cmp = icmp ugt i64 %24, 0, !dbg !124
  br i1 %cmp, label %while.body, label %while.end, !dbg !122

while.body:                                       ; preds = %while.cond
  store i64 64, i64* %todo, align 8, !dbg !125
  %25 = load i64, i64* %len.addr, align 8, !dbg !126
  %26 = load i64, i64* %todo, align 8, !dbg !128
  %cmp29 = icmp ult i64 %25, %26, !dbg !129
  br i1 %cmp29, label %if.then, label %if.end, !dbg !130

if.then:                                          ; preds = %while.body
  %27 = load i64, i64* %len.addr, align 8, !dbg !131
  store i64 %27, i64* %todo, align 8, !dbg !132
  br label %if.end, !dbg !133

if.end:                                           ; preds = %if.then, %while.body
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 0, !dbg !134
  store %union.chacha_buf* %buf, %union.chacha_buf** %output.addr.i, align 8
  store i32* %arraydecay, i32** %input.addr.i, align 8
  %28 = bitcast %union.anon* %is_endian.i to i8*, !dbg !59
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 bitcast (%union.anon* @__const.chacha20_core.is_endian to i8*), i64 8, i1 false) #6, !dbg !59
  %arraydecay.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !135
  %29 = bitcast i32* %arraydecay.i to i8*, !dbg !135
  %30 = load i32*, i32** %input.addr.i, align 8, !dbg !136
  %31 = bitcast i32* %30 to i8*, !dbg !135
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %29, i8* align 4 %31, i64 64, i1 false) #6, !dbg !135
  store i32 20, i32* %i.i, align 4, !dbg !137
  br label %for.cond.i, !dbg !139

for.cond.i:                                       ; preds = %for.body.i, %if.end
  %32 = load i32, i32* %i.i, align 4, !dbg !140
  %cmp.i = icmp sgt i32 %32, 0, !dbg !142
  br i1 %cmp.i, label %for.body.i, label %for.end.i, !dbg !143

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  %33 = load i32, i32* %arrayidx.i, align 16, !dbg !144
  %arrayidx1.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !144
  %34 = load i32, i32* %arrayidx1.i, align 16, !dbg !144
  %add.i = add i32 %34, %33, !dbg !144
  store i32 %add.i, i32* %arrayidx1.i, align 16, !dbg !144
  %arrayidx2.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  %35 = load i32, i32* %arrayidx2.i, align 16, !dbg !144
  %arrayidx3.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !144
  %36 = load i32, i32* %arrayidx3.i, align 16, !dbg !144
  %xor.i = xor i32 %35, %36, !dbg !144
  %shl.i = shl i32 %xor.i, 16, !dbg !144
  %arrayidx4.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  %37 = load i32, i32* %arrayidx4.i, align 16, !dbg !144
  %arrayidx5.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !144
  %38 = load i32, i32* %arrayidx5.i, align 16, !dbg !144
  %xor6.i = xor i32 %37, %38, !dbg !144
  %shr.i = lshr i32 %xor6.i, 16, !dbg !144
  %or.i = or i32 %shl.i, %shr.i, !dbg !144
  %arrayidx7.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  store i32 %or.i, i32* %arrayidx7.i, align 16, !dbg !144
  %arrayidx8.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  %39 = load i32, i32* %arrayidx8.i, align 16, !dbg !144
  %arrayidx9.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !144
  %40 = load i32, i32* %arrayidx9.i, align 16, !dbg !144
  %add10.i = add i32 %40, %39, !dbg !144
  store i32 %add10.i, i32* %arrayidx9.i, align 16, !dbg !144
  %arrayidx11.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  %41 = load i32, i32* %arrayidx11.i, align 16, !dbg !144
  %arrayidx12.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !144
  %42 = load i32, i32* %arrayidx12.i, align 16, !dbg !144
  %xor13.i = xor i32 %41, %42, !dbg !144
  %shl14.i = shl i32 %xor13.i, 12, !dbg !144
  %arrayidx15.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  %43 = load i32, i32* %arrayidx15.i, align 16, !dbg !144
  %arrayidx16.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !144
  %44 = load i32, i32* %arrayidx16.i, align 16, !dbg !144
  %xor17.i = xor i32 %43, %44, !dbg !144
  %shr18.i = lshr i32 %xor17.i, 20, !dbg !144
  %or19.i = or i32 %shl14.i, %shr18.i, !dbg !144
  %arrayidx20.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  store i32 %or19.i, i32* %arrayidx20.i, align 16, !dbg !144
  %arrayidx21.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  %45 = load i32, i32* %arrayidx21.i, align 16, !dbg !144
  %arrayidx22.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !144
  %46 = load i32, i32* %arrayidx22.i, align 16, !dbg !144
  %add23.i = add i32 %46, %45, !dbg !144
  store i32 %add23.i, i32* %arrayidx22.i, align 16, !dbg !144
  %arrayidx24.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  %47 = load i32, i32* %arrayidx24.i, align 16, !dbg !144
  %arrayidx25.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !144
  %48 = load i32, i32* %arrayidx25.i, align 16, !dbg !144
  %xor26.i = xor i32 %47, %48, !dbg !144
  %shl27.i = shl i32 %xor26.i, 8, !dbg !144
  %arrayidx28.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  %49 = load i32, i32* %arrayidx28.i, align 16, !dbg !144
  %arrayidx29.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !144
  %50 = load i32, i32* %arrayidx29.i, align 16, !dbg !144
  %xor30.i = xor i32 %49, %50, !dbg !144
  %shr31.i = lshr i32 %xor30.i, 24, !dbg !144
  %or32.i = or i32 %shl27.i, %shr31.i, !dbg !144
  %arrayidx33.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  store i32 %or32.i, i32* %arrayidx33.i, align 16, !dbg !144
  %arrayidx34.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !144
  %51 = load i32, i32* %arrayidx34.i, align 16, !dbg !144
  %arrayidx35.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !144
  %52 = load i32, i32* %arrayidx35.i, align 16, !dbg !144
  %add36.i = add i32 %52, %51, !dbg !144
  store i32 %add36.i, i32* %arrayidx35.i, align 16, !dbg !144
  %arrayidx37.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  %53 = load i32, i32* %arrayidx37.i, align 16, !dbg !144
  %arrayidx38.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !144
  %54 = load i32, i32* %arrayidx38.i, align 16, !dbg !144
  %xor39.i = xor i32 %53, %54, !dbg !144
  %shl40.i = shl i32 %xor39.i, 7, !dbg !144
  %arrayidx41.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  %55 = load i32, i32* %arrayidx41.i, align 16, !dbg !144
  %arrayidx42.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !144
  %56 = load i32, i32* %arrayidx42.i, align 16, !dbg !144
  %xor43.i = xor i32 %55, %56, !dbg !144
  %shr44.i = lshr i32 %xor43.i, 25, !dbg !144
  %or45.i = or i32 %shl40.i, %shr44.i, !dbg !144
  %arrayidx46.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !144
  store i32 %or45.i, i32* %arrayidx46.i, align 16, !dbg !144
  %arrayidx47.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  %57 = load i32, i32* %arrayidx47.i, align 4, !dbg !146
  %arrayidx48.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !146
  %58 = load i32, i32* %arrayidx48.i, align 4, !dbg !146
  %add49.i = add i32 %58, %57, !dbg !146
  store i32 %add49.i, i32* %arrayidx48.i, align 4, !dbg !146
  %arrayidx50.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  %59 = load i32, i32* %arrayidx50.i, align 4, !dbg !146
  %arrayidx51.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !146
  %60 = load i32, i32* %arrayidx51.i, align 4, !dbg !146
  %xor52.i = xor i32 %59, %60, !dbg !146
  %shl53.i = shl i32 %xor52.i, 16, !dbg !146
  %arrayidx54.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  %61 = load i32, i32* %arrayidx54.i, align 4, !dbg !146
  %arrayidx55.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !146
  %62 = load i32, i32* %arrayidx55.i, align 4, !dbg !146
  %xor56.i = xor i32 %61, %62, !dbg !146
  %shr57.i = lshr i32 %xor56.i, 16, !dbg !146
  %or58.i = or i32 %shl53.i, %shr57.i, !dbg !146
  %arrayidx59.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  store i32 %or58.i, i32* %arrayidx59.i, align 4, !dbg !146
  %arrayidx60.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  %63 = load i32, i32* %arrayidx60.i, align 4, !dbg !146
  %arrayidx61.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !146
  %64 = load i32, i32* %arrayidx61.i, align 4, !dbg !146
  %add62.i = add i32 %64, %63, !dbg !146
  store i32 %add62.i, i32* %arrayidx61.i, align 4, !dbg !146
  %arrayidx63.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  %65 = load i32, i32* %arrayidx63.i, align 4, !dbg !146
  %arrayidx64.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !146
  %66 = load i32, i32* %arrayidx64.i, align 4, !dbg !146
  %xor65.i = xor i32 %65, %66, !dbg !146
  %shl66.i = shl i32 %xor65.i, 12, !dbg !146
  %arrayidx67.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  %67 = load i32, i32* %arrayidx67.i, align 4, !dbg !146
  %arrayidx68.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !146
  %68 = load i32, i32* %arrayidx68.i, align 4, !dbg !146
  %xor69.i = xor i32 %67, %68, !dbg !146
  %shr70.i = lshr i32 %xor69.i, 20, !dbg !146
  %or71.i = or i32 %shl66.i, %shr70.i, !dbg !146
  %arrayidx72.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  store i32 %or71.i, i32* %arrayidx72.i, align 4, !dbg !146
  %arrayidx73.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  %69 = load i32, i32* %arrayidx73.i, align 4, !dbg !146
  %arrayidx74.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !146
  %70 = load i32, i32* %arrayidx74.i, align 4, !dbg !146
  %add75.i = add i32 %70, %69, !dbg !146
  store i32 %add75.i, i32* %arrayidx74.i, align 4, !dbg !146
  %arrayidx76.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  %71 = load i32, i32* %arrayidx76.i, align 4, !dbg !146
  %arrayidx77.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !146
  %72 = load i32, i32* %arrayidx77.i, align 4, !dbg !146
  %xor78.i = xor i32 %71, %72, !dbg !146
  %shl79.i = shl i32 %xor78.i, 8, !dbg !146
  %arrayidx80.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  %73 = load i32, i32* %arrayidx80.i, align 4, !dbg !146
  %arrayidx81.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !146
  %74 = load i32, i32* %arrayidx81.i, align 4, !dbg !146
  %xor82.i = xor i32 %73, %74, !dbg !146
  %shr83.i = lshr i32 %xor82.i, 24, !dbg !146
  %or84.i = or i32 %shl79.i, %shr83.i, !dbg !146
  %arrayidx85.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  store i32 %or84.i, i32* %arrayidx85.i, align 4, !dbg !146
  %arrayidx86.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !146
  %75 = load i32, i32* %arrayidx86.i, align 4, !dbg !146
  %arrayidx87.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !146
  %76 = load i32, i32* %arrayidx87.i, align 4, !dbg !146
  %add88.i = add i32 %76, %75, !dbg !146
  store i32 %add88.i, i32* %arrayidx87.i, align 4, !dbg !146
  %arrayidx89.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  %77 = load i32, i32* %arrayidx89.i, align 4, !dbg !146
  %arrayidx90.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !146
  %78 = load i32, i32* %arrayidx90.i, align 4, !dbg !146
  %xor91.i = xor i32 %77, %78, !dbg !146
  %shl92.i = shl i32 %xor91.i, 7, !dbg !146
  %arrayidx93.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  %79 = load i32, i32* %arrayidx93.i, align 4, !dbg !146
  %arrayidx94.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !146
  %80 = load i32, i32* %arrayidx94.i, align 4, !dbg !146
  %xor95.i = xor i32 %79, %80, !dbg !146
  %shr96.i = lshr i32 %xor95.i, 25, !dbg !146
  %or97.i = or i32 %shl92.i, %shr96.i, !dbg !146
  %arrayidx98.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !146
  store i32 %or97.i, i32* %arrayidx98.i, align 4, !dbg !146
  %arrayidx99.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  %81 = load i32, i32* %arrayidx99.i, align 8, !dbg !147
  %arrayidx100.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !147
  %82 = load i32, i32* %arrayidx100.i, align 8, !dbg !147
  %add101.i = add i32 %82, %81, !dbg !147
  store i32 %add101.i, i32* %arrayidx100.i, align 8, !dbg !147
  %arrayidx102.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  %83 = load i32, i32* %arrayidx102.i, align 8, !dbg !147
  %arrayidx103.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !147
  %84 = load i32, i32* %arrayidx103.i, align 8, !dbg !147
  %xor104.i = xor i32 %83, %84, !dbg !147
  %shl105.i = shl i32 %xor104.i, 16, !dbg !147
  %arrayidx106.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  %85 = load i32, i32* %arrayidx106.i, align 8, !dbg !147
  %arrayidx107.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !147
  %86 = load i32, i32* %arrayidx107.i, align 8, !dbg !147
  %xor108.i = xor i32 %85, %86, !dbg !147
  %shr109.i = lshr i32 %xor108.i, 16, !dbg !147
  %or110.i = or i32 %shl105.i, %shr109.i, !dbg !147
  %arrayidx111.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  store i32 %or110.i, i32* %arrayidx111.i, align 8, !dbg !147
  %arrayidx112.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  %87 = load i32, i32* %arrayidx112.i, align 8, !dbg !147
  %arrayidx113.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !147
  %88 = load i32, i32* %arrayidx113.i, align 8, !dbg !147
  %add114.i = add i32 %88, %87, !dbg !147
  store i32 %add114.i, i32* %arrayidx113.i, align 8, !dbg !147
  %arrayidx115.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  %89 = load i32, i32* %arrayidx115.i, align 8, !dbg !147
  %arrayidx116.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !147
  %90 = load i32, i32* %arrayidx116.i, align 8, !dbg !147
  %xor117.i = xor i32 %89, %90, !dbg !147
  %shl118.i = shl i32 %xor117.i, 12, !dbg !147
  %arrayidx119.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  %91 = load i32, i32* %arrayidx119.i, align 8, !dbg !147
  %arrayidx120.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !147
  %92 = load i32, i32* %arrayidx120.i, align 8, !dbg !147
  %xor121.i = xor i32 %91, %92, !dbg !147
  %shr122.i = lshr i32 %xor121.i, 20, !dbg !147
  %or123.i = or i32 %shl118.i, %shr122.i, !dbg !147
  %arrayidx124.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  store i32 %or123.i, i32* %arrayidx124.i, align 8, !dbg !147
  %arrayidx125.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  %93 = load i32, i32* %arrayidx125.i, align 8, !dbg !147
  %arrayidx126.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !147
  %94 = load i32, i32* %arrayidx126.i, align 8, !dbg !147
  %add127.i = add i32 %94, %93, !dbg !147
  store i32 %add127.i, i32* %arrayidx126.i, align 8, !dbg !147
  %arrayidx128.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  %95 = load i32, i32* %arrayidx128.i, align 8, !dbg !147
  %arrayidx129.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !147
  %96 = load i32, i32* %arrayidx129.i, align 8, !dbg !147
  %xor130.i = xor i32 %95, %96, !dbg !147
  %shl131.i = shl i32 %xor130.i, 8, !dbg !147
  %arrayidx132.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  %97 = load i32, i32* %arrayidx132.i, align 8, !dbg !147
  %arrayidx133.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !147
  %98 = load i32, i32* %arrayidx133.i, align 8, !dbg !147
  %xor134.i = xor i32 %97, %98, !dbg !147
  %shr135.i = lshr i32 %xor134.i, 24, !dbg !147
  %or136.i = or i32 %shl131.i, %shr135.i, !dbg !147
  %arrayidx137.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  store i32 %or136.i, i32* %arrayidx137.i, align 8, !dbg !147
  %arrayidx138.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !147
  %99 = load i32, i32* %arrayidx138.i, align 8, !dbg !147
  %arrayidx139.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !147
  %100 = load i32, i32* %arrayidx139.i, align 8, !dbg !147
  %add140.i = add i32 %100, %99, !dbg !147
  store i32 %add140.i, i32* %arrayidx139.i, align 8, !dbg !147
  %arrayidx141.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  %101 = load i32, i32* %arrayidx141.i, align 8, !dbg !147
  %arrayidx142.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !147
  %102 = load i32, i32* %arrayidx142.i, align 8, !dbg !147
  %xor143.i = xor i32 %101, %102, !dbg !147
  %shl144.i = shl i32 %xor143.i, 7, !dbg !147
  %arrayidx145.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  %103 = load i32, i32* %arrayidx145.i, align 8, !dbg !147
  %arrayidx146.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !147
  %104 = load i32, i32* %arrayidx146.i, align 8, !dbg !147
  %xor147.i = xor i32 %103, %104, !dbg !147
  %shr148.i = lshr i32 %xor147.i, 25, !dbg !147
  %or149.i = or i32 %shl144.i, %shr148.i, !dbg !147
  %arrayidx150.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !147
  store i32 %or149.i, i32* %arrayidx150.i, align 8, !dbg !147
  %arrayidx151.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  %105 = load i32, i32* %arrayidx151.i, align 4, !dbg !148
  %arrayidx152.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !148
  %106 = load i32, i32* %arrayidx152.i, align 4, !dbg !148
  %add153.i = add i32 %106, %105, !dbg !148
  store i32 %add153.i, i32* %arrayidx152.i, align 4, !dbg !148
  %arrayidx154.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  %107 = load i32, i32* %arrayidx154.i, align 4, !dbg !148
  %arrayidx155.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !148
  %108 = load i32, i32* %arrayidx155.i, align 4, !dbg !148
  %xor156.i = xor i32 %107, %108, !dbg !148
  %shl157.i = shl i32 %xor156.i, 16, !dbg !148
  %arrayidx158.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  %109 = load i32, i32* %arrayidx158.i, align 4, !dbg !148
  %arrayidx159.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !148
  %110 = load i32, i32* %arrayidx159.i, align 4, !dbg !148
  %xor160.i = xor i32 %109, %110, !dbg !148
  %shr161.i = lshr i32 %xor160.i, 16, !dbg !148
  %or162.i = or i32 %shl157.i, %shr161.i, !dbg !148
  %arrayidx163.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  store i32 %or162.i, i32* %arrayidx163.i, align 4, !dbg !148
  %arrayidx164.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  %111 = load i32, i32* %arrayidx164.i, align 4, !dbg !148
  %arrayidx165.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !148
  %112 = load i32, i32* %arrayidx165.i, align 4, !dbg !148
  %add166.i = add i32 %112, %111, !dbg !148
  store i32 %add166.i, i32* %arrayidx165.i, align 4, !dbg !148
  %arrayidx167.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  %113 = load i32, i32* %arrayidx167.i, align 4, !dbg !148
  %arrayidx168.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !148
  %114 = load i32, i32* %arrayidx168.i, align 4, !dbg !148
  %xor169.i = xor i32 %113, %114, !dbg !148
  %shl170.i = shl i32 %xor169.i, 12, !dbg !148
  %arrayidx171.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  %115 = load i32, i32* %arrayidx171.i, align 4, !dbg !148
  %arrayidx172.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !148
  %116 = load i32, i32* %arrayidx172.i, align 4, !dbg !148
  %xor173.i = xor i32 %115, %116, !dbg !148
  %shr174.i = lshr i32 %xor173.i, 20, !dbg !148
  %or175.i = or i32 %shl170.i, %shr174.i, !dbg !148
  %arrayidx176.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  store i32 %or175.i, i32* %arrayidx176.i, align 4, !dbg !148
  %arrayidx177.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  %117 = load i32, i32* %arrayidx177.i, align 4, !dbg !148
  %arrayidx178.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !148
  %118 = load i32, i32* %arrayidx178.i, align 4, !dbg !148
  %add179.i = add i32 %118, %117, !dbg !148
  store i32 %add179.i, i32* %arrayidx178.i, align 4, !dbg !148
  %arrayidx180.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  %119 = load i32, i32* %arrayidx180.i, align 4, !dbg !148
  %arrayidx181.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !148
  %120 = load i32, i32* %arrayidx181.i, align 4, !dbg !148
  %xor182.i = xor i32 %119, %120, !dbg !148
  %shl183.i = shl i32 %xor182.i, 8, !dbg !148
  %arrayidx184.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  %121 = load i32, i32* %arrayidx184.i, align 4, !dbg !148
  %arrayidx185.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !148
  %122 = load i32, i32* %arrayidx185.i, align 4, !dbg !148
  %xor186.i = xor i32 %121, %122, !dbg !148
  %shr187.i = lshr i32 %xor186.i, 24, !dbg !148
  %or188.i = or i32 %shl183.i, %shr187.i, !dbg !148
  %arrayidx189.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  store i32 %or188.i, i32* %arrayidx189.i, align 4, !dbg !148
  %arrayidx190.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !148
  %123 = load i32, i32* %arrayidx190.i, align 4, !dbg !148
  %arrayidx191.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !148
  %124 = load i32, i32* %arrayidx191.i, align 4, !dbg !148
  %add192.i = add i32 %124, %123, !dbg !148
  store i32 %add192.i, i32* %arrayidx191.i, align 4, !dbg !148
  %arrayidx193.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  %125 = load i32, i32* %arrayidx193.i, align 4, !dbg !148
  %arrayidx194.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !148
  %126 = load i32, i32* %arrayidx194.i, align 4, !dbg !148
  %xor195.i = xor i32 %125, %126, !dbg !148
  %shl196.i = shl i32 %xor195.i, 7, !dbg !148
  %arrayidx197.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  %127 = load i32, i32* %arrayidx197.i, align 4, !dbg !148
  %arrayidx198.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !148
  %128 = load i32, i32* %arrayidx198.i, align 4, !dbg !148
  %xor199.i = xor i32 %127, %128, !dbg !148
  %shr200.i = lshr i32 %xor199.i, 25, !dbg !148
  %or201.i = or i32 %shl196.i, %shr200.i, !dbg !148
  %arrayidx202.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !148
  store i32 %or201.i, i32* %arrayidx202.i, align 4, !dbg !148
  %arrayidx203.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  %129 = load i32, i32* %arrayidx203.i, align 4, !dbg !149
  %arrayidx204.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !149
  %130 = load i32, i32* %arrayidx204.i, align 16, !dbg !149
  %add205.i = add i32 %130, %129, !dbg !149
  store i32 %add205.i, i32* %arrayidx204.i, align 16, !dbg !149
  %arrayidx206.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  %131 = load i32, i32* %arrayidx206.i, align 4, !dbg !149
  %arrayidx207.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !149
  %132 = load i32, i32* %arrayidx207.i, align 16, !dbg !149
  %xor208.i = xor i32 %131, %132, !dbg !149
  %shl209.i = shl i32 %xor208.i, 16, !dbg !149
  %arrayidx210.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  %133 = load i32, i32* %arrayidx210.i, align 4, !dbg !149
  %arrayidx211.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !149
  %134 = load i32, i32* %arrayidx211.i, align 16, !dbg !149
  %xor212.i = xor i32 %133, %134, !dbg !149
  %shr213.i = lshr i32 %xor212.i, 16, !dbg !149
  %or214.i = or i32 %shl209.i, %shr213.i, !dbg !149
  %arrayidx215.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  store i32 %or214.i, i32* %arrayidx215.i, align 4, !dbg !149
  %arrayidx216.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  %135 = load i32, i32* %arrayidx216.i, align 4, !dbg !149
  %arrayidx217.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !149
  %136 = load i32, i32* %arrayidx217.i, align 8, !dbg !149
  %add218.i = add i32 %136, %135, !dbg !149
  store i32 %add218.i, i32* %arrayidx217.i, align 8, !dbg !149
  %arrayidx219.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  %137 = load i32, i32* %arrayidx219.i, align 4, !dbg !149
  %arrayidx220.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !149
  %138 = load i32, i32* %arrayidx220.i, align 8, !dbg !149
  %xor221.i = xor i32 %137, %138, !dbg !149
  %shl222.i = shl i32 %xor221.i, 12, !dbg !149
  %arrayidx223.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  %139 = load i32, i32* %arrayidx223.i, align 4, !dbg !149
  %arrayidx224.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !149
  %140 = load i32, i32* %arrayidx224.i, align 8, !dbg !149
  %xor225.i = xor i32 %139, %140, !dbg !149
  %shr226.i = lshr i32 %xor225.i, 20, !dbg !149
  %or227.i = or i32 %shl222.i, %shr226.i, !dbg !149
  %arrayidx228.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  store i32 %or227.i, i32* %arrayidx228.i, align 4, !dbg !149
  %arrayidx229.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  %141 = load i32, i32* %arrayidx229.i, align 4, !dbg !149
  %arrayidx230.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !149
  %142 = load i32, i32* %arrayidx230.i, align 16, !dbg !149
  %add231.i = add i32 %142, %141, !dbg !149
  store i32 %add231.i, i32* %arrayidx230.i, align 16, !dbg !149
  %arrayidx232.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  %143 = load i32, i32* %arrayidx232.i, align 4, !dbg !149
  %arrayidx233.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !149
  %144 = load i32, i32* %arrayidx233.i, align 16, !dbg !149
  %xor234.i = xor i32 %143, %144, !dbg !149
  %shl235.i = shl i32 %xor234.i, 8, !dbg !149
  %arrayidx236.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  %145 = load i32, i32* %arrayidx236.i, align 4, !dbg !149
  %arrayidx237.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 0, !dbg !149
  %146 = load i32, i32* %arrayidx237.i, align 16, !dbg !149
  %xor238.i = xor i32 %145, %146, !dbg !149
  %shr239.i = lshr i32 %xor238.i, 24, !dbg !149
  %or240.i = or i32 %shl235.i, %shr239.i, !dbg !149
  %arrayidx241.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  store i32 %or240.i, i32* %arrayidx241.i, align 4, !dbg !149
  %arrayidx242.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 15, !dbg !149
  %147 = load i32, i32* %arrayidx242.i, align 4, !dbg !149
  %arrayidx243.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !149
  %148 = load i32, i32* %arrayidx243.i, align 8, !dbg !149
  %add244.i = add i32 %148, %147, !dbg !149
  store i32 %add244.i, i32* %arrayidx243.i, align 8, !dbg !149
  %arrayidx245.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  %149 = load i32, i32* %arrayidx245.i, align 4, !dbg !149
  %arrayidx246.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !149
  %150 = load i32, i32* %arrayidx246.i, align 8, !dbg !149
  %xor247.i = xor i32 %149, %150, !dbg !149
  %shl248.i = shl i32 %xor247.i, 7, !dbg !149
  %arrayidx249.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  %151 = load i32, i32* %arrayidx249.i, align 4, !dbg !149
  %arrayidx250.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 10, !dbg !149
  %152 = load i32, i32* %arrayidx250.i, align 8, !dbg !149
  %xor251.i = xor i32 %151, %152, !dbg !149
  %shr252.i = lshr i32 %xor251.i, 25, !dbg !149
  %or253.i = or i32 %shl248.i, %shr252.i, !dbg !149
  %arrayidx254.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 5, !dbg !149
  store i32 %or253.i, i32* %arrayidx254.i, align 4, !dbg !149
  %arrayidx255.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  %153 = load i32, i32* %arrayidx255.i, align 8, !dbg !150
  %arrayidx256.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !150
  %154 = load i32, i32* %arrayidx256.i, align 4, !dbg !150
  %add257.i = add i32 %154, %153, !dbg !150
  store i32 %add257.i, i32* %arrayidx256.i, align 4, !dbg !150
  %arrayidx258.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  %155 = load i32, i32* %arrayidx258.i, align 16, !dbg !150
  %arrayidx259.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !150
  %156 = load i32, i32* %arrayidx259.i, align 4, !dbg !150
  %xor260.i = xor i32 %155, %156, !dbg !150
  %shl261.i = shl i32 %xor260.i, 16, !dbg !150
  %arrayidx262.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  %157 = load i32, i32* %arrayidx262.i, align 16, !dbg !150
  %arrayidx263.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !150
  %158 = load i32, i32* %arrayidx263.i, align 4, !dbg !150
  %xor264.i = xor i32 %157, %158, !dbg !150
  %shr265.i = lshr i32 %xor264.i, 16, !dbg !150
  %or266.i = or i32 %shl261.i, %shr265.i, !dbg !150
  %arrayidx267.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  store i32 %or266.i, i32* %arrayidx267.i, align 16, !dbg !150
  %arrayidx268.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  %159 = load i32, i32* %arrayidx268.i, align 16, !dbg !150
  %arrayidx269.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !150
  %160 = load i32, i32* %arrayidx269.i, align 4, !dbg !150
  %add270.i = add i32 %160, %159, !dbg !150
  store i32 %add270.i, i32* %arrayidx269.i, align 4, !dbg !150
  %arrayidx271.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  %161 = load i32, i32* %arrayidx271.i, align 8, !dbg !150
  %arrayidx272.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !150
  %162 = load i32, i32* %arrayidx272.i, align 4, !dbg !150
  %xor273.i = xor i32 %161, %162, !dbg !150
  %shl274.i = shl i32 %xor273.i, 12, !dbg !150
  %arrayidx275.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  %163 = load i32, i32* %arrayidx275.i, align 8, !dbg !150
  %arrayidx276.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !150
  %164 = load i32, i32* %arrayidx276.i, align 4, !dbg !150
  %xor277.i = xor i32 %163, %164, !dbg !150
  %shr278.i = lshr i32 %xor277.i, 20, !dbg !150
  %or279.i = or i32 %shl274.i, %shr278.i, !dbg !150
  %arrayidx280.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  store i32 %or279.i, i32* %arrayidx280.i, align 8, !dbg !150
  %arrayidx281.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  %165 = load i32, i32* %arrayidx281.i, align 8, !dbg !150
  %arrayidx282.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !150
  %166 = load i32, i32* %arrayidx282.i, align 4, !dbg !150
  %add283.i = add i32 %166, %165, !dbg !150
  store i32 %add283.i, i32* %arrayidx282.i, align 4, !dbg !150
  %arrayidx284.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  %167 = load i32, i32* %arrayidx284.i, align 16, !dbg !150
  %arrayidx285.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !150
  %168 = load i32, i32* %arrayidx285.i, align 4, !dbg !150
  %xor286.i = xor i32 %167, %168, !dbg !150
  %shl287.i = shl i32 %xor286.i, 8, !dbg !150
  %arrayidx288.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  %169 = load i32, i32* %arrayidx288.i, align 16, !dbg !150
  %arrayidx289.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 1, !dbg !150
  %170 = load i32, i32* %arrayidx289.i, align 4, !dbg !150
  %xor290.i = xor i32 %169, %170, !dbg !150
  %shr291.i = lshr i32 %xor290.i, 24, !dbg !150
  %or292.i = or i32 %shl287.i, %shr291.i, !dbg !150
  %arrayidx293.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  store i32 %or292.i, i32* %arrayidx293.i, align 16, !dbg !150
  %arrayidx294.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 12, !dbg !150
  %171 = load i32, i32* %arrayidx294.i, align 16, !dbg !150
  %arrayidx295.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !150
  %172 = load i32, i32* %arrayidx295.i, align 4, !dbg !150
  %add296.i = add i32 %172, %171, !dbg !150
  store i32 %add296.i, i32* %arrayidx295.i, align 4, !dbg !150
  %arrayidx297.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  %173 = load i32, i32* %arrayidx297.i, align 8, !dbg !150
  %arrayidx298.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !150
  %174 = load i32, i32* %arrayidx298.i, align 4, !dbg !150
  %xor299.i = xor i32 %173, %174, !dbg !150
  %shl300.i = shl i32 %xor299.i, 7, !dbg !150
  %arrayidx301.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  %175 = load i32, i32* %arrayidx301.i, align 8, !dbg !150
  %arrayidx302.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 11, !dbg !150
  %176 = load i32, i32* %arrayidx302.i, align 4, !dbg !150
  %xor303.i = xor i32 %175, %176, !dbg !150
  %shr304.i = lshr i32 %xor303.i, 25, !dbg !150
  %or305.i = or i32 %shl300.i, %shr304.i, !dbg !150
  %arrayidx306.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 6, !dbg !150
  store i32 %or305.i, i32* %arrayidx306.i, align 8, !dbg !150
  %arrayidx307.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  %177 = load i32, i32* %arrayidx307.i, align 4, !dbg !151
  %arrayidx308.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !151
  %178 = load i32, i32* %arrayidx308.i, align 8, !dbg !151
  %add309.i = add i32 %178, %177, !dbg !151
  store i32 %add309.i, i32* %arrayidx308.i, align 8, !dbg !151
  %arrayidx310.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  %179 = load i32, i32* %arrayidx310.i, align 4, !dbg !151
  %arrayidx311.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !151
  %180 = load i32, i32* %arrayidx311.i, align 8, !dbg !151
  %xor312.i = xor i32 %179, %180, !dbg !151
  %shl313.i = shl i32 %xor312.i, 16, !dbg !151
  %arrayidx314.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  %181 = load i32, i32* %arrayidx314.i, align 4, !dbg !151
  %arrayidx315.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !151
  %182 = load i32, i32* %arrayidx315.i, align 8, !dbg !151
  %xor316.i = xor i32 %181, %182, !dbg !151
  %shr317.i = lshr i32 %xor316.i, 16, !dbg !151
  %or318.i = or i32 %shl313.i, %shr317.i, !dbg !151
  %arrayidx319.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  store i32 %or318.i, i32* %arrayidx319.i, align 4, !dbg !151
  %arrayidx320.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  %183 = load i32, i32* %arrayidx320.i, align 4, !dbg !151
  %arrayidx321.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !151
  %184 = load i32, i32* %arrayidx321.i, align 16, !dbg !151
  %add322.i = add i32 %184, %183, !dbg !151
  store i32 %add322.i, i32* %arrayidx321.i, align 16, !dbg !151
  %arrayidx323.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  %185 = load i32, i32* %arrayidx323.i, align 4, !dbg !151
  %arrayidx324.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !151
  %186 = load i32, i32* %arrayidx324.i, align 16, !dbg !151
  %xor325.i = xor i32 %185, %186, !dbg !151
  %shl326.i = shl i32 %xor325.i, 12, !dbg !151
  %arrayidx327.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  %187 = load i32, i32* %arrayidx327.i, align 4, !dbg !151
  %arrayidx328.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !151
  %188 = load i32, i32* %arrayidx328.i, align 16, !dbg !151
  %xor329.i = xor i32 %187, %188, !dbg !151
  %shr330.i = lshr i32 %xor329.i, 20, !dbg !151
  %or331.i = or i32 %shl326.i, %shr330.i, !dbg !151
  %arrayidx332.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  store i32 %or331.i, i32* %arrayidx332.i, align 4, !dbg !151
  %arrayidx333.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  %189 = load i32, i32* %arrayidx333.i, align 4, !dbg !151
  %arrayidx334.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !151
  %190 = load i32, i32* %arrayidx334.i, align 8, !dbg !151
  %add335.i = add i32 %190, %189, !dbg !151
  store i32 %add335.i, i32* %arrayidx334.i, align 8, !dbg !151
  %arrayidx336.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  %191 = load i32, i32* %arrayidx336.i, align 4, !dbg !151
  %arrayidx337.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !151
  %192 = load i32, i32* %arrayidx337.i, align 8, !dbg !151
  %xor338.i = xor i32 %191, %192, !dbg !151
  %shl339.i = shl i32 %xor338.i, 8, !dbg !151
  %arrayidx340.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  %193 = load i32, i32* %arrayidx340.i, align 4, !dbg !151
  %arrayidx341.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 2, !dbg !151
  %194 = load i32, i32* %arrayidx341.i, align 8, !dbg !151
  %xor342.i = xor i32 %193, %194, !dbg !151
  %shr343.i = lshr i32 %xor342.i, 24, !dbg !151
  %or344.i = or i32 %shl339.i, %shr343.i, !dbg !151
  %arrayidx345.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  store i32 %or344.i, i32* %arrayidx345.i, align 4, !dbg !151
  %arrayidx346.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 13, !dbg !151
  %195 = load i32, i32* %arrayidx346.i, align 4, !dbg !151
  %arrayidx347.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !151
  %196 = load i32, i32* %arrayidx347.i, align 16, !dbg !151
  %add348.i = add i32 %196, %195, !dbg !151
  store i32 %add348.i, i32* %arrayidx347.i, align 16, !dbg !151
  %arrayidx349.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  %197 = load i32, i32* %arrayidx349.i, align 4, !dbg !151
  %arrayidx350.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !151
  %198 = load i32, i32* %arrayidx350.i, align 16, !dbg !151
  %xor351.i = xor i32 %197, %198, !dbg !151
  %shl352.i = shl i32 %xor351.i, 7, !dbg !151
  %arrayidx353.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  %199 = load i32, i32* %arrayidx353.i, align 4, !dbg !151
  %arrayidx354.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 8, !dbg !151
  %200 = load i32, i32* %arrayidx354.i, align 16, !dbg !151
  %xor355.i = xor i32 %199, %200, !dbg !151
  %shr356.i = lshr i32 %xor355.i, 25, !dbg !151
  %or357.i = or i32 %shl352.i, %shr356.i, !dbg !151
  %arrayidx358.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 7, !dbg !151
  store i32 %or357.i, i32* %arrayidx358.i, align 4, !dbg !151
  %arrayidx359.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  %201 = load i32, i32* %arrayidx359.i, align 16, !dbg !152
  %arrayidx360.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !152
  %202 = load i32, i32* %arrayidx360.i, align 4, !dbg !152
  %add361.i = add i32 %202, %201, !dbg !152
  store i32 %add361.i, i32* %arrayidx360.i, align 4, !dbg !152
  %arrayidx362.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  %203 = load i32, i32* %arrayidx362.i, align 8, !dbg !152
  %arrayidx363.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !152
  %204 = load i32, i32* %arrayidx363.i, align 4, !dbg !152
  %xor364.i = xor i32 %203, %204, !dbg !152
  %shl365.i = shl i32 %xor364.i, 16, !dbg !152
  %arrayidx366.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  %205 = load i32, i32* %arrayidx366.i, align 8, !dbg !152
  %arrayidx367.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !152
  %206 = load i32, i32* %arrayidx367.i, align 4, !dbg !152
  %xor368.i = xor i32 %205, %206, !dbg !152
  %shr369.i = lshr i32 %xor368.i, 16, !dbg !152
  %or370.i = or i32 %shl365.i, %shr369.i, !dbg !152
  %arrayidx371.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  store i32 %or370.i, i32* %arrayidx371.i, align 8, !dbg !152
  %arrayidx372.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  %207 = load i32, i32* %arrayidx372.i, align 8, !dbg !152
  %arrayidx373.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !152
  %208 = load i32, i32* %arrayidx373.i, align 4, !dbg !152
  %add374.i = add i32 %208, %207, !dbg !152
  store i32 %add374.i, i32* %arrayidx373.i, align 4, !dbg !152
  %arrayidx375.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  %209 = load i32, i32* %arrayidx375.i, align 16, !dbg !152
  %arrayidx376.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !152
  %210 = load i32, i32* %arrayidx376.i, align 4, !dbg !152
  %xor377.i = xor i32 %209, %210, !dbg !152
  %shl378.i = shl i32 %xor377.i, 12, !dbg !152
  %arrayidx379.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  %211 = load i32, i32* %arrayidx379.i, align 16, !dbg !152
  %arrayidx380.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !152
  %212 = load i32, i32* %arrayidx380.i, align 4, !dbg !152
  %xor381.i = xor i32 %211, %212, !dbg !152
  %shr382.i = lshr i32 %xor381.i, 20, !dbg !152
  %or383.i = or i32 %shl378.i, %shr382.i, !dbg !152
  %arrayidx384.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  store i32 %or383.i, i32* %arrayidx384.i, align 16, !dbg !152
  %arrayidx385.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  %213 = load i32, i32* %arrayidx385.i, align 16, !dbg !152
  %arrayidx386.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !152
  %214 = load i32, i32* %arrayidx386.i, align 4, !dbg !152
  %add387.i = add i32 %214, %213, !dbg !152
  store i32 %add387.i, i32* %arrayidx386.i, align 4, !dbg !152
  %arrayidx388.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  %215 = load i32, i32* %arrayidx388.i, align 8, !dbg !152
  %arrayidx389.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !152
  %216 = load i32, i32* %arrayidx389.i, align 4, !dbg !152
  %xor390.i = xor i32 %215, %216, !dbg !152
  %shl391.i = shl i32 %xor390.i, 8, !dbg !152
  %arrayidx392.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  %217 = load i32, i32* %arrayidx392.i, align 8, !dbg !152
  %arrayidx393.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 3, !dbg !152
  %218 = load i32, i32* %arrayidx393.i, align 4, !dbg !152
  %xor394.i = xor i32 %217, %218, !dbg !152
  %shr395.i = lshr i32 %xor394.i, 24, !dbg !152
  %or396.i = or i32 %shl391.i, %shr395.i, !dbg !152
  %arrayidx397.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  store i32 %or396.i, i32* %arrayidx397.i, align 8, !dbg !152
  %arrayidx398.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 14, !dbg !152
  %219 = load i32, i32* %arrayidx398.i, align 8, !dbg !152
  %arrayidx399.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !152
  %220 = load i32, i32* %arrayidx399.i, align 4, !dbg !152
  %add400.i = add i32 %220, %219, !dbg !152
  store i32 %add400.i, i32* %arrayidx399.i, align 4, !dbg !152
  %arrayidx401.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  %221 = load i32, i32* %arrayidx401.i, align 16, !dbg !152
  %arrayidx402.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !152
  %222 = load i32, i32* %arrayidx402.i, align 4, !dbg !152
  %xor403.i = xor i32 %221, %222, !dbg !152
  %shl404.i = shl i32 %xor403.i, 7, !dbg !152
  %arrayidx405.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  %223 = load i32, i32* %arrayidx405.i, align 16, !dbg !152
  %arrayidx406.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 9, !dbg !152
  %224 = load i32, i32* %arrayidx406.i, align 4, !dbg !152
  %xor407.i = xor i32 %223, %224, !dbg !152
  %shr408.i = lshr i32 %xor407.i, 25, !dbg !152
  %or409.i = or i32 %shl404.i, %shr408.i, !dbg !152
  %arrayidx410.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 4, !dbg !152
  store i32 %or409.i, i32* %arrayidx410.i, align 16, !dbg !152
  %225 = load i32, i32* %i.i, align 4, !dbg !153
  %sub.i = sub nsw i32 %225, 2, !dbg !153
  store i32 %sub.i, i32* %i.i, align 4, !dbg !153
  br label %for.cond.i, !dbg !154, !llvm.loop !155

for.end.i:                                        ; preds = %for.cond.i
  %little.i = bitcast %union.anon* %is_endian.i to i8*, !dbg !157
  %226 = load i8, i8* %little.i, align 8, !dbg !157
  %tobool.i = icmp ne i8 %226, 0, !dbg !159
  br i1 %tobool.i, label %if.then.i, label %if.else.i, !dbg !160

if.then.i:                                        ; preds = %for.end.i
  store i32 0, i32* %i.i, align 4, !dbg !161
  br label %for.cond411.i, !dbg !164

for.cond411.i:                                    ; preds = %for.body413.i, %if.then.i
  %227 = load i32, i32* %i.i, align 4, !dbg !165
  %cmp412.i = icmp slt i32 %227, 16, !dbg !167
  br i1 %cmp412.i, label %for.body413.i, label %for.end421.i, !dbg !168

for.body413.i:                                    ; preds = %for.cond411.i
  %228 = load i32, i32* %i.i, align 4, !dbg !169
  %idxprom.i = sext i32 %228 to i64, !dbg !170
  %arrayidx414.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 %idxprom.i, !dbg !170
  %229 = load i32, i32* %arrayidx414.i, align 4, !dbg !170
  %230 = load i32*, i32** %input.addr.i, align 8, !dbg !171
  %231 = load i32, i32* %i.i, align 4, !dbg !172
  %idxprom415.i = sext i32 %231 to i64, !dbg !171
  %arrayidx416.i = getelementptr inbounds i32, i32* %230, i64 %idxprom415.i, !dbg !171
  %232 = load i32, i32* %arrayidx416.i, align 4, !dbg !171
  %add417.i = add i32 %229, %232, !dbg !173
  %233 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i, align 8, !dbg !174
  %u.i = bitcast %union.chacha_buf* %233 to [16 x i32]*, !dbg !175
  %234 = load i32, i32* %i.i, align 4, !dbg !176
  %idxprom418.i = sext i32 %234 to i64, !dbg !174
  %arrayidx419.i = getelementptr inbounds [16 x i32], [16 x i32]* %u.i, i64 0, i64 %idxprom418.i, !dbg !174
  store i32 %add417.i, i32* %arrayidx419.i, align 4, !dbg !177
  %235 = load i32, i32* %i.i, align 4, !dbg !178
  %inc.i = add nsw i32 %235, 1, !dbg !178
  store i32 %inc.i, i32* %i.i, align 4, !dbg !178
  br label %for.cond411.i, !dbg !179, !llvm.loop !180

for.end421.i:                                     ; preds = %for.cond411.i
  br label %chacha20_core.exit, !dbg !182

if.else.i:                                        ; preds = %for.end.i
  store i32 0, i32* %i.i, align 4, !dbg !183
  br label %for.cond422.i, !dbg !186

for.cond422.i:                                    ; preds = %for.body424.i, %if.else.i
  %236 = load i32, i32* %i.i, align 4, !dbg !187
  %cmp423.i = icmp slt i32 %236, 16, !dbg !189
  br i1 %cmp423.i, label %for.body424.i, label %for.end474.i, !dbg !190

for.body424.i:                                    ; preds = %for.cond422.i
  %237 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom425.i = sext i32 %237 to i64, !dbg !191
  %arrayidx426.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 %idxprom425.i, !dbg !191
  %238 = load i32, i32* %arrayidx426.i, align 4, !dbg !191
  %239 = load i32*, i32** %input.addr.i, align 8, !dbg !191
  %240 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom427.i = sext i32 %240 to i64, !dbg !191
  %arrayidx428.i = getelementptr inbounds i32, i32* %239, i64 %idxprom427.i, !dbg !191
  %241 = load i32, i32* %arrayidx428.i, align 4, !dbg !191
  %add429.i = add i32 %238, %241, !dbg !191
  %conv.i = trunc i32 %add429.i to i8, !dbg !191
  %242 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i, align 8, !dbg !191
  %c.i = bitcast %union.chacha_buf* %242 to [64 x i8]*, !dbg !191
  %arraydecay431.i = getelementptr inbounds [64 x i8], [64 x i8]* %c.i, i64 0, i64 0, !dbg !191
  %243 = load i32, i32* %i.i, align 4, !dbg !191
  %mul.i = mul nsw i32 4, %243, !dbg !191
  %idx.ext.i = sext i32 %mul.i to i64, !dbg !191
  %add.ptr.i = getelementptr inbounds i8, i8* %arraydecay431.i, i64 %idx.ext.i, !dbg !191
  store i8 %conv.i, i8* %add.ptr.i, align 1, !dbg !191
  %244 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom433.i = sext i32 %244 to i64, !dbg !191
  %arrayidx434.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 %idxprom433.i, !dbg !191
  %245 = load i32, i32* %arrayidx434.i, align 4, !dbg !191
  %246 = load i32*, i32** %input.addr.i, align 8, !dbg !191
  %247 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom435.i = sext i32 %247 to i64, !dbg !191
  %arrayidx436.i = getelementptr inbounds i32, i32* %246, i64 %idxprom435.i, !dbg !191
  %248 = load i32, i32* %arrayidx436.i, align 4, !dbg !191
  %add437.i = add i32 %245, %248, !dbg !191
  %shr438.i = lshr i32 %add437.i, 8, !dbg !191
  %conv439.i = trunc i32 %shr438.i to i8, !dbg !191
  %249 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i, align 8, !dbg !191
  %c440.i = bitcast %union.chacha_buf* %249 to [64 x i8]*, !dbg !191
  %arraydecay441.i = getelementptr inbounds [64 x i8], [64 x i8]* %c440.i, i64 0, i64 0, !dbg !191
  %250 = load i32, i32* %i.i, align 4, !dbg !191
  %mul442.i = mul nsw i32 4, %250, !dbg !191
  %idx.ext443.i = sext i32 %mul442.i to i64, !dbg !191
  %add.ptr444.i = getelementptr inbounds i8, i8* %arraydecay441.i, i64 %idx.ext443.i, !dbg !191
  %arrayidx445.i = getelementptr inbounds i8, i8* %add.ptr444.i, i64 1, !dbg !191
  store i8 %conv439.i, i8* %arrayidx445.i, align 1, !dbg !191
  %251 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom446.i = sext i32 %251 to i64, !dbg !191
  %arrayidx447.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 %idxprom446.i, !dbg !191
  %252 = load i32, i32* %arrayidx447.i, align 4, !dbg !191
  %253 = load i32*, i32** %input.addr.i, align 8, !dbg !191
  %254 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom448.i = sext i32 %254 to i64, !dbg !191
  %arrayidx449.i = getelementptr inbounds i32, i32* %253, i64 %idxprom448.i, !dbg !191
  %255 = load i32, i32* %arrayidx449.i, align 4, !dbg !191
  %add450.i = add i32 %252, %255, !dbg !191
  %shr451.i = lshr i32 %add450.i, 16, !dbg !191
  %conv452.i = trunc i32 %shr451.i to i8, !dbg !191
  %256 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i, align 8, !dbg !191
  %c453.i = bitcast %union.chacha_buf* %256 to [64 x i8]*, !dbg !191
  %arraydecay454.i = getelementptr inbounds [64 x i8], [64 x i8]* %c453.i, i64 0, i64 0, !dbg !191
  %257 = load i32, i32* %i.i, align 4, !dbg !191
  %mul455.i = mul nsw i32 4, %257, !dbg !191
  %idx.ext456.i = sext i32 %mul455.i to i64, !dbg !191
  %add.ptr457.i = getelementptr inbounds i8, i8* %arraydecay454.i, i64 %idx.ext456.i, !dbg !191
  %arrayidx458.i = getelementptr inbounds i8, i8* %add.ptr457.i, i64 2, !dbg !191
  store i8 %conv452.i, i8* %arrayidx458.i, align 1, !dbg !191
  %258 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom459.i = sext i32 %258 to i64, !dbg !191
  %arrayidx460.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i, i64 0, i64 %idxprom459.i, !dbg !191
  %259 = load i32, i32* %arrayidx460.i, align 4, !dbg !191
  %260 = load i32*, i32** %input.addr.i, align 8, !dbg !191
  %261 = load i32, i32* %i.i, align 4, !dbg !191
  %idxprom461.i = sext i32 %261 to i64, !dbg !191
  %arrayidx462.i = getelementptr inbounds i32, i32* %260, i64 %idxprom461.i, !dbg !191
  %262 = load i32, i32* %arrayidx462.i, align 4, !dbg !191
  %add463.i = add i32 %259, %262, !dbg !191
  %shr464.i = lshr i32 %add463.i, 24, !dbg !191
  %conv465.i = trunc i32 %shr464.i to i8, !dbg !191
  %263 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i, align 8, !dbg !191
  %c466.i = bitcast %union.chacha_buf* %263 to [64 x i8]*, !dbg !191
  %arraydecay467.i = getelementptr inbounds [64 x i8], [64 x i8]* %c466.i, i64 0, i64 0, !dbg !191
  %264 = load i32, i32* %i.i, align 4, !dbg !191
  %mul468.i = mul nsw i32 4, %264, !dbg !191
  %idx.ext469.i = sext i32 %mul468.i to i64, !dbg !191
  %add.ptr470.i = getelementptr inbounds i8, i8* %arraydecay467.i, i64 %idx.ext469.i, !dbg !191
  %arrayidx471.i = getelementptr inbounds i8, i8* %add.ptr470.i, i64 3, !dbg !191
  store i8 %conv465.i, i8* %arrayidx471.i, align 1, !dbg !191
  %265 = load i32, i32* %i.i, align 4, !dbg !193
  %inc473.i = add nsw i32 %265, 1, !dbg !193
  store i32 %inc473.i, i32* %i.i, align 4, !dbg !193
  br label %for.cond422.i, !dbg !194, !llvm.loop !195

for.end474.i:                                     ; preds = %for.cond422.i
  br label %chacha20_core.exit

chacha20_core.exit:                               ; preds = %for.end421.i, %for.end474.i
  store i64 0, i64* %i, align 8, !dbg !197
  br label %for.cond, !dbg !199

for.cond:                                         ; preds = %for.inc, %chacha20_core.exit
  %266 = load i64, i64* %i, align 8, !dbg !200
  %267 = load i64, i64* %todo, align 8, !dbg !202
  %cmp30 = icmp ult i64 %266, %267, !dbg !203
  br i1 %cmp30, label %for.body, label %for.end, !dbg !204

for.body:                                         ; preds = %for.cond
  %268 = load i8*, i8** %inp.addr, align 8, !dbg !205
  %269 = load i64, i64* %i, align 8, !dbg !206
  %arrayidx31 = getelementptr inbounds i8, i8* %268, i64 %269, !dbg !205
  %270 = load i8, i8* %arrayidx31, align 1, !dbg !205
  %conv = zext i8 %270 to i32, !dbg !205
  %c = bitcast %union.chacha_buf* %buf to [64 x i8]*, !dbg !207
  %271 = load i64, i64* %i, align 8, !dbg !208
  %arrayidx32 = getelementptr inbounds [64 x i8], [64 x i8]* %c, i64 0, i64 %271, !dbg !209
  %272 = load i8, i8* %arrayidx32, align 1, !dbg !209
  %conv33 = zext i8 %272 to i32, !dbg !209
  %xor = xor i32 %conv, %conv33, !dbg !210
  %conv34 = trunc i32 %xor to i8, !dbg !205
  %273 = load i8*, i8** %out.addr, align 8, !dbg !211
  %274 = load i64, i64* %i, align 8, !dbg !212
  %arrayidx35 = getelementptr inbounds i8, i8* %273, i64 %274, !dbg !211
  store i8 %conv34, i8* %arrayidx35, align 1, !dbg !213
  br label %for.inc, !dbg !211

for.inc:                                          ; preds = %for.body
  %275 = load i64, i64* %i, align 8, !dbg !214
  %inc = add i64 %275, 1, !dbg !214
  store i64 %inc, i64* %i, align 8, !dbg !214
  br label %for.cond, !dbg !215, !llvm.loop !216

for.end:                                          ; preds = %for.cond
  %276 = load i64, i64* %todo, align 8, !dbg !218
  %277 = load i8*, i8** %out.addr, align 8, !dbg !219
  %add.ptr = getelementptr inbounds i8, i8* %277, i64 %276, !dbg !219
  store i8* %add.ptr, i8** %out.addr, align 8, !dbg !219
  %278 = load i64, i64* %todo, align 8, !dbg !220
  %279 = load i8*, i8** %inp.addr, align 8, !dbg !221
  %add.ptr36 = getelementptr inbounds i8, i8* %279, i64 %278, !dbg !221
  store i8* %add.ptr36, i8** %inp.addr, align 8, !dbg !221
  %280 = load i64, i64* %todo, align 8, !dbg !222
  %281 = load i64, i64* %len.addr, align 8, !dbg !223
  %sub = sub i64 %281, %280, !dbg !223
  store i64 %sub, i64* %len.addr, align 8, !dbg !223
  %arrayidx37 = getelementptr inbounds [16 x i32], [16 x i32]* %input, i64 0, i64 12, !dbg !224
  %282 = load i32, i32* %arrayidx37, align 16, !dbg !225
  %inc38 = add i32 %282, 1, !dbg !225
  store i32 %inc38, i32* %arrayidx37, align 16, !dbg !225
  br label %while.cond, !dbg !122, !llvm.loop !226

while.end:                                        ; preds = %while.cond
  ret void, !dbg !228
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind willreturn
declare void @llvm.var.annotation(i8*, i8*, i8*, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #3 !dbg !229 {
entry:
  %output.addr.i.i = alloca %union.chacha_buf*, align 8
  call void @llvm.dbg.declare(metadata %union.chacha_buf** %output.addr.i.i, metadata !23, metadata !DIExpression()), !dbg !232
  %input.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %input.addr.i.i, metadata !44, metadata !DIExpression()), !dbg !235
  %x.i.i = alloca [16 x i32], align 16
  call void @llvm.dbg.declare(metadata [16 x i32]* %x.i.i, metadata !46, metadata !DIExpression()), !dbg !236
  %i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.i.i, metadata !48, metadata !DIExpression()), !dbg !237
  %is_endian.i.i = alloca %union.anon, align 8
  call void @llvm.dbg.declare(metadata %union.anon* %is_endian.i.i, metadata !51, metadata !DIExpression()), !dbg !238
  %out.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr.i, metadata !60, metadata !DIExpression()), !dbg !239
  %inp.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %inp.addr.i, metadata !62, metadata !DIExpression()), !dbg !240
  %len.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr.i, metadata !64, metadata !DIExpression()), !dbg !241
  %key.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %key.addr.i, metadata !66, metadata !DIExpression()), !dbg !242
  %counter.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %counter.addr.i, metadata !68, metadata !DIExpression()), !dbg !243
  %input.i = alloca [16 x i32], align 16
  call void @llvm.dbg.declare(metadata [16 x i32]* %input.i, metadata !70, metadata !DIExpression()), !dbg !244
  %buf.i = alloca %union.chacha_buf, align 4
  call void @llvm.dbg.declare(metadata %union.chacha_buf* %buf.i, metadata !72, metadata !DIExpression()), !dbg !245
  %todo.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %todo.i, metadata !74, metadata !DIExpression()), !dbg !246
  %i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %i.i, metadata !76, metadata !DIExpression()), !dbg !247
  %retval = alloca i32, align 4
  %input = alloca i8*, align 8
  %output = alloca %union.chacha_buf, align 4
  %key = alloca [8 x i32], align 16
  %counter = alloca [4 x i32], align 16
  %charset = alloca [94 x i8], align 16
  %length = alloca i64, align 8
  %size = alloca i32, align 4
  %round = alloca i64, align 8
  %i = alloca i32, align 4
  %buff = alloca i8*, align 8
  %key6 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i8** %input, metadata !248, metadata !DIExpression()), !dbg !249
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %input, align 8, !dbg !249
  call void @llvm.dbg.declare(metadata %union.chacha_buf* %output, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata [8 x i32]* %key, metadata !252, metadata !DIExpression()), !dbg !257
  %0 = bitcast [8 x i32]* %key to i8*, !dbg !257
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %0, i8* align 16 bitcast ([8 x i32]* @__const.main.key to i8*), i64 32, i1 false), !dbg !257
  call void @llvm.dbg.declare(metadata [4 x i32]* %counter, metadata !258, metadata !DIExpression()), !dbg !262
  %1 = bitcast [4 x i32]* %counter to i8*, !dbg !262
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 16, i1 false), !dbg !262
  call void @llvm.dbg.declare(metadata [94 x i8]* %charset, metadata !263, metadata !DIExpression()), !dbg !268
  %2 = bitcast [94 x i8]* %charset to i8*, !dbg !268
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 getelementptr inbounds ([94 x i8], [94 x i8]* @__const.main.charset, i32 0, i32 0), i64 94, i1 false), !dbg !268
  call void @llvm.dbg.declare(metadata i64* %length, metadata !269, metadata !DIExpression()), !dbg !270
  store i64 94, i64* %length, align 8, !dbg !270
  call void @llvm.dbg.declare(metadata i32* %size, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 512, i32* %size, align 4, !dbg !272
  call void @llvm.dbg.declare(metadata i64* %round, metadata !273, metadata !DIExpression()), !dbg !274
  store i64 15, i64* %round, align 8, !dbg !274
  call void @llvm.dbg.declare(metadata i32* %i, metadata !275, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.declare(metadata i8** %buff, metadata !277, metadata !DIExpression()), !dbg !279
  %3 = load i32, i32* %size, align 4, !dbg !280
  %conv = sext i32 %3 to i64, !dbg !280
  %mul = mul i64 1, %conv, !dbg !281
  %4 = load i64, i64* %round, align 8, !dbg !282
  %mul1 = mul i64 %mul, %4, !dbg !283
  %call = call i8* @malloc(i64 %mul1), !dbg !284
  store i8* %call, i8** %buff, align 8, !dbg !279
  store i32 0, i32* %i, align 4, !dbg !285
  br label %for.cond, !dbg !287

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !288
  %conv2 = sext i32 %5 to i64, !dbg !288
  %6 = load i32, i32* %size, align 4, !dbg !290
  %conv3 = sext i32 %6 to i64, !dbg !290
  %7 = load i64, i64* %round, align 8, !dbg !291
  %mul4 = mul i64 %conv3, %7, !dbg !292
  %cmp = icmp ult i64 %conv2, %mul4, !dbg !293
  br i1 %cmp, label %for.body, label %for.end, !dbg !294

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %key6, metadata !295, metadata !DIExpression()), !dbg !297
  %call7 = call i32 (...) @rand(), !dbg !298
  %conv8 = sext i32 %call7 to i64, !dbg !298
  %8 = load i64, i64* %length, align 8, !dbg !299
  %rem = urem i64 %conv8, %8, !dbg !300
  %conv9 = trunc i64 %rem to i32, !dbg !298
  store i32 %conv9, i32* %key6, align 4, !dbg !297
  %9 = load i32, i32* %key6, align 4, !dbg !301
  %idxprom = sext i32 %9 to i64, !dbg !302
  %arrayidx = getelementptr inbounds [94 x i8], [94 x i8]* %charset, i64 0, i64 %idxprom, !dbg !302
  %10 = load i8, i8* %arrayidx, align 1, !dbg !302
  %11 = load i8*, i8** %buff, align 8, !dbg !303
  %12 = load i32, i32* %i, align 4, !dbg !304
  %idxprom10 = sext i32 %12 to i64, !dbg !303
  %arrayidx11 = getelementptr inbounds i8, i8* %11, i64 %idxprom10, !dbg !303
  store i8 %10, i8* %arrayidx11, align 1, !dbg !305
  br label %for.inc, !dbg !306

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !307
  %add = add nsw i32 %13, 64, !dbg !307
  store i32 %add, i32* %i, align 4, !dbg !307
  br label %for.cond, !dbg !308, !llvm.loop !309

for.end:                                          ; preds = %for.cond
  %14 = bitcast %union.chacha_buf* %output to i8*, !dbg !311
  %15 = load i8*, i8** %input, align 8, !dbg !312
  %arraydecay = getelementptr inbounds [8 x i32], [8 x i32]* %key, i64 0, i64 0, !dbg !313
  %arraydecay12 = getelementptr inbounds [4 x i32], [4 x i32]* %counter, i64 0, i64 0, !dbg !314
  store i8* %14, i8** %out.addr.i, align 8
  store i8* %15, i8** %inp.addr.i, align 8
  store i64 256, i64* %len.addr.i, align 8
  store i32* %arraydecay, i32** %key.addr.i, align 8
  %key.addr1.i = bitcast i32** %key.addr.i to i8*
  call void @llvm.var.annotation(i8* %key.addr1.i, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i32 0, i32 0), i32 74) #6
  store i32* %arraydecay12, i32** %counter.addr.i, align 8
  %arrayidx.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 0, !dbg !315
  store i32 1634760805, i32* %arrayidx.i, align 16, !dbg !316
  %arrayidx2.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 1, !dbg !317
  store i32 857760878, i32* %arrayidx2.i, align 4, !dbg !318
  %arrayidx3.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 2, !dbg !319
  store i32 2036477234, i32* %arrayidx3.i, align 8, !dbg !320
  %arrayidx4.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 3, !dbg !321
  store i32 1797285236, i32* %arrayidx4.i, align 4, !dbg !322
  %16 = load i32*, i32** %key.addr.i, align 8, !dbg !323
  %17 = load i32, i32* %16, align 4, !dbg !323
  %arrayidx6.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 4, !dbg !324
  store i32 %17, i32* %arrayidx6.i, align 16, !dbg !325
  %18 = load i32*, i32** %key.addr.i, align 8, !dbg !326
  %arrayidx7.i = getelementptr inbounds i32, i32* %18, i64 1, !dbg !326
  %19 = load i32, i32* %arrayidx7.i, align 4, !dbg !326
  %arrayidx8.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 5, !dbg !327
  store i32 %19, i32* %arrayidx8.i, align 4, !dbg !328
  %20 = load i32*, i32** %key.addr.i, align 8, !dbg !329
  %arrayidx9.i = getelementptr inbounds i32, i32* %20, i64 2, !dbg !329
  %21 = load i32, i32* %arrayidx9.i, align 4, !dbg !329
  %arrayidx10.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 6, !dbg !330
  store i32 %21, i32* %arrayidx10.i, align 8, !dbg !331
  %22 = load i32*, i32** %key.addr.i, align 8, !dbg !332
  %arrayidx11.i = getelementptr inbounds i32, i32* %22, i64 3, !dbg !332
  %23 = load i32, i32* %arrayidx11.i, align 4, !dbg !332
  %arrayidx12.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 7, !dbg !333
  store i32 %23, i32* %arrayidx12.i, align 4, !dbg !334
  %24 = load i32*, i32** %key.addr.i, align 8, !dbg !335
  %arrayidx13.i = getelementptr inbounds i32, i32* %24, i64 4, !dbg !335
  %25 = load i32, i32* %arrayidx13.i, align 4, !dbg !335
  %arrayidx14.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 8, !dbg !336
  store i32 %25, i32* %arrayidx14.i, align 16, !dbg !337
  %26 = load i32*, i32** %key.addr.i, align 8, !dbg !338
  %arrayidx15.i = getelementptr inbounds i32, i32* %26, i64 5, !dbg !338
  %27 = load i32, i32* %arrayidx15.i, align 4, !dbg !338
  %arrayidx16.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 9, !dbg !339
  store i32 %27, i32* %arrayidx16.i, align 4, !dbg !340
  %28 = load i32*, i32** %key.addr.i, align 8, !dbg !341
  %arrayidx17.i = getelementptr inbounds i32, i32* %28, i64 6, !dbg !341
  %29 = load i32, i32* %arrayidx17.i, align 4, !dbg !341
  %arrayidx18.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 10, !dbg !342
  store i32 %29, i32* %arrayidx18.i, align 8, !dbg !343
  %30 = load i32*, i32** %key.addr.i, align 8, !dbg !344
  %arrayidx19.i = getelementptr inbounds i32, i32* %30, i64 7, !dbg !344
  %31 = load i32, i32* %arrayidx19.i, align 4, !dbg !344
  %arrayidx20.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 11, !dbg !345
  store i32 %31, i32* %arrayidx20.i, align 4, !dbg !346
  %32 = load i32*, i32** %counter.addr.i, align 8, !dbg !347
  %33 = load i32, i32* %32, align 4, !dbg !347
  %arrayidx22.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 12, !dbg !348
  store i32 %33, i32* %arrayidx22.i, align 16, !dbg !349
  %34 = load i32*, i32** %counter.addr.i, align 8, !dbg !350
  %arrayidx23.i = getelementptr inbounds i32, i32* %34, i64 1, !dbg !350
  %35 = load i32, i32* %arrayidx23.i, align 4, !dbg !350
  %arrayidx24.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 13, !dbg !351
  store i32 %35, i32* %arrayidx24.i, align 4, !dbg !352
  %36 = load i32*, i32** %counter.addr.i, align 8, !dbg !353
  %arrayidx25.i = getelementptr inbounds i32, i32* %36, i64 2, !dbg !353
  %37 = load i32, i32* %arrayidx25.i, align 4, !dbg !353
  %arrayidx26.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 14, !dbg !354
  store i32 %37, i32* %arrayidx26.i, align 8, !dbg !355
  %38 = load i32*, i32** %counter.addr.i, align 8, !dbg !356
  %arrayidx27.i = getelementptr inbounds i32, i32* %38, i64 3, !dbg !356
  %39 = load i32, i32* %arrayidx27.i, align 4, !dbg !356
  %arrayidx28.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 15, !dbg !357
  store i32 %39, i32* %arrayidx28.i, align 4, !dbg !358
  br label %while.cond.i, !dbg !359

while.cond.i:                                     ; preds = %for.end.i, %for.end
  %40 = load i64, i64* %len.addr.i, align 8, !dbg !360
  %cmp.i = icmp ugt i64 %40, 0, !dbg !361
  br i1 %cmp.i, label %while.body.i, label %ChaCha20_ctr32.exit, !dbg !359

while.body.i:                                     ; preds = %while.cond.i
  store i64 64, i64* %todo.i, align 8, !dbg !362
  %41 = load i64, i64* %len.addr.i, align 8, !dbg !363
  %42 = load i64, i64* %todo.i, align 8, !dbg !364
  %cmp29.i = icmp ult i64 %41, %42, !dbg !365
  br i1 %cmp29.i, label %if.then.i, label %if.end.i, !dbg !366

if.then.i:                                        ; preds = %while.body.i
  %43 = load i64, i64* %len.addr.i, align 8, !dbg !367
  store i64 %43, i64* %todo.i, align 8, !dbg !368
  br label %if.end.i, !dbg !369

if.end.i:                                         ; preds = %if.then.i, %while.body.i
  %arraydecay.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 0, !dbg !370
  store %union.chacha_buf* %buf.i, %union.chacha_buf** %output.addr.i.i, align 8
  store i32* %arraydecay.i, i32** %input.addr.i.i, align 8
  %44 = bitcast %union.anon* %is_endian.i.i to i8*, !dbg !238
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %44, i8* align 8 bitcast (%union.anon* @__const.chacha20_core.is_endian to i8*), i64 8, i1 false) #6, !dbg !238
  %arraydecay.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !371
  %45 = bitcast i32* %arraydecay.i.i to i8*, !dbg !371
  %46 = load i32*, i32** %input.addr.i.i, align 8, !dbg !372
  %47 = bitcast i32* %46 to i8*, !dbg !371
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %45, i8* align 4 %47, i64 64, i1 false) #6, !dbg !371
  store i32 20, i32* %i.i.i, align 4, !dbg !373
  br label %for.cond.i.i, !dbg !374

for.cond.i.i:                                     ; preds = %for.body.i.i, %if.end.i
  %48 = load i32, i32* %i.i.i, align 4, !dbg !375
  %cmp.i.i = icmp sgt i32 %48, 0, !dbg !376
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i, !dbg !377

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  %49 = load i32, i32* %arrayidx.i.i, align 16, !dbg !378
  %arrayidx1.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !378
  %50 = load i32, i32* %arrayidx1.i.i, align 16, !dbg !378
  %add.i.i = add i32 %50, %49, !dbg !378
  store i32 %add.i.i, i32* %arrayidx1.i.i, align 16, !dbg !378
  %arrayidx2.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  %51 = load i32, i32* %arrayidx2.i.i, align 16, !dbg !378
  %arrayidx3.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !378
  %52 = load i32, i32* %arrayidx3.i.i, align 16, !dbg !378
  %xor.i.i = xor i32 %51, %52, !dbg !378
  %shl.i.i = shl i32 %xor.i.i, 16, !dbg !378
  %arrayidx4.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  %53 = load i32, i32* %arrayidx4.i.i, align 16, !dbg !378
  %arrayidx5.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !378
  %54 = load i32, i32* %arrayidx5.i.i, align 16, !dbg !378
  %xor6.i.i = xor i32 %53, %54, !dbg !378
  %shr.i.i = lshr i32 %xor6.i.i, 16, !dbg !378
  %or.i.i = or i32 %shl.i.i, %shr.i.i, !dbg !378
  %arrayidx7.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  store i32 %or.i.i, i32* %arrayidx7.i.i, align 16, !dbg !378
  %arrayidx8.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  %55 = load i32, i32* %arrayidx8.i.i, align 16, !dbg !378
  %arrayidx9.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !378
  %56 = load i32, i32* %arrayidx9.i.i, align 16, !dbg !378
  %add10.i.i = add i32 %56, %55, !dbg !378
  store i32 %add10.i.i, i32* %arrayidx9.i.i, align 16, !dbg !378
  %arrayidx11.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  %57 = load i32, i32* %arrayidx11.i.i, align 16, !dbg !378
  %arrayidx12.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !378
  %58 = load i32, i32* %arrayidx12.i.i, align 16, !dbg !378
  %xor13.i.i = xor i32 %57, %58, !dbg !378
  %shl14.i.i = shl i32 %xor13.i.i, 12, !dbg !378
  %arrayidx15.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  %59 = load i32, i32* %arrayidx15.i.i, align 16, !dbg !378
  %arrayidx16.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !378
  %60 = load i32, i32* %arrayidx16.i.i, align 16, !dbg !378
  %xor17.i.i = xor i32 %59, %60, !dbg !378
  %shr18.i.i = lshr i32 %xor17.i.i, 20, !dbg !378
  %or19.i.i = or i32 %shl14.i.i, %shr18.i.i, !dbg !378
  %arrayidx20.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  store i32 %or19.i.i, i32* %arrayidx20.i.i, align 16, !dbg !378
  %arrayidx21.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  %61 = load i32, i32* %arrayidx21.i.i, align 16, !dbg !378
  %arrayidx22.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !378
  %62 = load i32, i32* %arrayidx22.i.i, align 16, !dbg !378
  %add23.i.i = add i32 %62, %61, !dbg !378
  store i32 %add23.i.i, i32* %arrayidx22.i.i, align 16, !dbg !378
  %arrayidx24.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  %63 = load i32, i32* %arrayidx24.i.i, align 16, !dbg !378
  %arrayidx25.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !378
  %64 = load i32, i32* %arrayidx25.i.i, align 16, !dbg !378
  %xor26.i.i = xor i32 %63, %64, !dbg !378
  %shl27.i.i = shl i32 %xor26.i.i, 8, !dbg !378
  %arrayidx28.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  %65 = load i32, i32* %arrayidx28.i.i, align 16, !dbg !378
  %arrayidx29.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !378
  %66 = load i32, i32* %arrayidx29.i.i, align 16, !dbg !378
  %xor30.i.i = xor i32 %65, %66, !dbg !378
  %shr31.i.i = lshr i32 %xor30.i.i, 24, !dbg !378
  %or32.i.i = or i32 %shl27.i.i, %shr31.i.i, !dbg !378
  %arrayidx33.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  store i32 %or32.i.i, i32* %arrayidx33.i.i, align 16, !dbg !378
  %arrayidx34.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !378
  %67 = load i32, i32* %arrayidx34.i.i, align 16, !dbg !378
  %arrayidx35.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !378
  %68 = load i32, i32* %arrayidx35.i.i, align 16, !dbg !378
  %add36.i.i = add i32 %68, %67, !dbg !378
  store i32 %add36.i.i, i32* %arrayidx35.i.i, align 16, !dbg !378
  %arrayidx37.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  %69 = load i32, i32* %arrayidx37.i.i, align 16, !dbg !378
  %arrayidx38.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !378
  %70 = load i32, i32* %arrayidx38.i.i, align 16, !dbg !378
  %xor39.i.i = xor i32 %69, %70, !dbg !378
  %shl40.i.i = shl i32 %xor39.i.i, 7, !dbg !378
  %arrayidx41.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  %71 = load i32, i32* %arrayidx41.i.i, align 16, !dbg !378
  %arrayidx42.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !378
  %72 = load i32, i32* %arrayidx42.i.i, align 16, !dbg !378
  %xor43.i.i = xor i32 %71, %72, !dbg !378
  %shr44.i.i = lshr i32 %xor43.i.i, 25, !dbg !378
  %or45.i.i = or i32 %shl40.i.i, %shr44.i.i, !dbg !378
  %arrayidx46.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !378
  store i32 %or45.i.i, i32* %arrayidx46.i.i, align 16, !dbg !378
  %arrayidx47.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  %73 = load i32, i32* %arrayidx47.i.i, align 4, !dbg !379
  %arrayidx48.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !379
  %74 = load i32, i32* %arrayidx48.i.i, align 4, !dbg !379
  %add49.i.i = add i32 %74, %73, !dbg !379
  store i32 %add49.i.i, i32* %arrayidx48.i.i, align 4, !dbg !379
  %arrayidx50.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  %75 = load i32, i32* %arrayidx50.i.i, align 4, !dbg !379
  %arrayidx51.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !379
  %76 = load i32, i32* %arrayidx51.i.i, align 4, !dbg !379
  %xor52.i.i = xor i32 %75, %76, !dbg !379
  %shl53.i.i = shl i32 %xor52.i.i, 16, !dbg !379
  %arrayidx54.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  %77 = load i32, i32* %arrayidx54.i.i, align 4, !dbg !379
  %arrayidx55.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !379
  %78 = load i32, i32* %arrayidx55.i.i, align 4, !dbg !379
  %xor56.i.i = xor i32 %77, %78, !dbg !379
  %shr57.i.i = lshr i32 %xor56.i.i, 16, !dbg !379
  %or58.i.i = or i32 %shl53.i.i, %shr57.i.i, !dbg !379
  %arrayidx59.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  store i32 %or58.i.i, i32* %arrayidx59.i.i, align 4, !dbg !379
  %arrayidx60.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  %79 = load i32, i32* %arrayidx60.i.i, align 4, !dbg !379
  %arrayidx61.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !379
  %80 = load i32, i32* %arrayidx61.i.i, align 4, !dbg !379
  %add62.i.i = add i32 %80, %79, !dbg !379
  store i32 %add62.i.i, i32* %arrayidx61.i.i, align 4, !dbg !379
  %arrayidx63.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  %81 = load i32, i32* %arrayidx63.i.i, align 4, !dbg !379
  %arrayidx64.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !379
  %82 = load i32, i32* %arrayidx64.i.i, align 4, !dbg !379
  %xor65.i.i = xor i32 %81, %82, !dbg !379
  %shl66.i.i = shl i32 %xor65.i.i, 12, !dbg !379
  %arrayidx67.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  %83 = load i32, i32* %arrayidx67.i.i, align 4, !dbg !379
  %arrayidx68.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !379
  %84 = load i32, i32* %arrayidx68.i.i, align 4, !dbg !379
  %xor69.i.i = xor i32 %83, %84, !dbg !379
  %shr70.i.i = lshr i32 %xor69.i.i, 20, !dbg !379
  %or71.i.i = or i32 %shl66.i.i, %shr70.i.i, !dbg !379
  %arrayidx72.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  store i32 %or71.i.i, i32* %arrayidx72.i.i, align 4, !dbg !379
  %arrayidx73.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  %85 = load i32, i32* %arrayidx73.i.i, align 4, !dbg !379
  %arrayidx74.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !379
  %86 = load i32, i32* %arrayidx74.i.i, align 4, !dbg !379
  %add75.i.i = add i32 %86, %85, !dbg !379
  store i32 %add75.i.i, i32* %arrayidx74.i.i, align 4, !dbg !379
  %arrayidx76.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  %87 = load i32, i32* %arrayidx76.i.i, align 4, !dbg !379
  %arrayidx77.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !379
  %88 = load i32, i32* %arrayidx77.i.i, align 4, !dbg !379
  %xor78.i.i = xor i32 %87, %88, !dbg !379
  %shl79.i.i = shl i32 %xor78.i.i, 8, !dbg !379
  %arrayidx80.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  %89 = load i32, i32* %arrayidx80.i.i, align 4, !dbg !379
  %arrayidx81.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !379
  %90 = load i32, i32* %arrayidx81.i.i, align 4, !dbg !379
  %xor82.i.i = xor i32 %89, %90, !dbg !379
  %shr83.i.i = lshr i32 %xor82.i.i, 24, !dbg !379
  %or84.i.i = or i32 %shl79.i.i, %shr83.i.i, !dbg !379
  %arrayidx85.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  store i32 %or84.i.i, i32* %arrayidx85.i.i, align 4, !dbg !379
  %arrayidx86.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !379
  %91 = load i32, i32* %arrayidx86.i.i, align 4, !dbg !379
  %arrayidx87.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !379
  %92 = load i32, i32* %arrayidx87.i.i, align 4, !dbg !379
  %add88.i.i = add i32 %92, %91, !dbg !379
  store i32 %add88.i.i, i32* %arrayidx87.i.i, align 4, !dbg !379
  %arrayidx89.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  %93 = load i32, i32* %arrayidx89.i.i, align 4, !dbg !379
  %arrayidx90.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !379
  %94 = load i32, i32* %arrayidx90.i.i, align 4, !dbg !379
  %xor91.i.i = xor i32 %93, %94, !dbg !379
  %shl92.i.i = shl i32 %xor91.i.i, 7, !dbg !379
  %arrayidx93.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  %95 = load i32, i32* %arrayidx93.i.i, align 4, !dbg !379
  %arrayidx94.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !379
  %96 = load i32, i32* %arrayidx94.i.i, align 4, !dbg !379
  %xor95.i.i = xor i32 %95, %96, !dbg !379
  %shr96.i.i = lshr i32 %xor95.i.i, 25, !dbg !379
  %or97.i.i = or i32 %shl92.i.i, %shr96.i.i, !dbg !379
  %arrayidx98.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !379
  store i32 %or97.i.i, i32* %arrayidx98.i.i, align 4, !dbg !379
  %arrayidx99.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  %97 = load i32, i32* %arrayidx99.i.i, align 8, !dbg !380
  %arrayidx100.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !380
  %98 = load i32, i32* %arrayidx100.i.i, align 8, !dbg !380
  %add101.i.i = add i32 %98, %97, !dbg !380
  store i32 %add101.i.i, i32* %arrayidx100.i.i, align 8, !dbg !380
  %arrayidx102.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  %99 = load i32, i32* %arrayidx102.i.i, align 8, !dbg !380
  %arrayidx103.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !380
  %100 = load i32, i32* %arrayidx103.i.i, align 8, !dbg !380
  %xor104.i.i = xor i32 %99, %100, !dbg !380
  %shl105.i.i = shl i32 %xor104.i.i, 16, !dbg !380
  %arrayidx106.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  %101 = load i32, i32* %arrayidx106.i.i, align 8, !dbg !380
  %arrayidx107.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !380
  %102 = load i32, i32* %arrayidx107.i.i, align 8, !dbg !380
  %xor108.i.i = xor i32 %101, %102, !dbg !380
  %shr109.i.i = lshr i32 %xor108.i.i, 16, !dbg !380
  %or110.i.i = or i32 %shl105.i.i, %shr109.i.i, !dbg !380
  %arrayidx111.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  store i32 %or110.i.i, i32* %arrayidx111.i.i, align 8, !dbg !380
  %arrayidx112.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  %103 = load i32, i32* %arrayidx112.i.i, align 8, !dbg !380
  %arrayidx113.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !380
  %104 = load i32, i32* %arrayidx113.i.i, align 8, !dbg !380
  %add114.i.i = add i32 %104, %103, !dbg !380
  store i32 %add114.i.i, i32* %arrayidx113.i.i, align 8, !dbg !380
  %arrayidx115.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  %105 = load i32, i32* %arrayidx115.i.i, align 8, !dbg !380
  %arrayidx116.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !380
  %106 = load i32, i32* %arrayidx116.i.i, align 8, !dbg !380
  %xor117.i.i = xor i32 %105, %106, !dbg !380
  %shl118.i.i = shl i32 %xor117.i.i, 12, !dbg !380
  %arrayidx119.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  %107 = load i32, i32* %arrayidx119.i.i, align 8, !dbg !380
  %arrayidx120.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !380
  %108 = load i32, i32* %arrayidx120.i.i, align 8, !dbg !380
  %xor121.i.i = xor i32 %107, %108, !dbg !380
  %shr122.i.i = lshr i32 %xor121.i.i, 20, !dbg !380
  %or123.i.i = or i32 %shl118.i.i, %shr122.i.i, !dbg !380
  %arrayidx124.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  store i32 %or123.i.i, i32* %arrayidx124.i.i, align 8, !dbg !380
  %arrayidx125.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  %109 = load i32, i32* %arrayidx125.i.i, align 8, !dbg !380
  %arrayidx126.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !380
  %110 = load i32, i32* %arrayidx126.i.i, align 8, !dbg !380
  %add127.i.i = add i32 %110, %109, !dbg !380
  store i32 %add127.i.i, i32* %arrayidx126.i.i, align 8, !dbg !380
  %arrayidx128.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  %111 = load i32, i32* %arrayidx128.i.i, align 8, !dbg !380
  %arrayidx129.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !380
  %112 = load i32, i32* %arrayidx129.i.i, align 8, !dbg !380
  %xor130.i.i = xor i32 %111, %112, !dbg !380
  %shl131.i.i = shl i32 %xor130.i.i, 8, !dbg !380
  %arrayidx132.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  %113 = load i32, i32* %arrayidx132.i.i, align 8, !dbg !380
  %arrayidx133.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !380
  %114 = load i32, i32* %arrayidx133.i.i, align 8, !dbg !380
  %xor134.i.i = xor i32 %113, %114, !dbg !380
  %shr135.i.i = lshr i32 %xor134.i.i, 24, !dbg !380
  %or136.i.i = or i32 %shl131.i.i, %shr135.i.i, !dbg !380
  %arrayidx137.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  store i32 %or136.i.i, i32* %arrayidx137.i.i, align 8, !dbg !380
  %arrayidx138.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !380
  %115 = load i32, i32* %arrayidx138.i.i, align 8, !dbg !380
  %arrayidx139.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !380
  %116 = load i32, i32* %arrayidx139.i.i, align 8, !dbg !380
  %add140.i.i = add i32 %116, %115, !dbg !380
  store i32 %add140.i.i, i32* %arrayidx139.i.i, align 8, !dbg !380
  %arrayidx141.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  %117 = load i32, i32* %arrayidx141.i.i, align 8, !dbg !380
  %arrayidx142.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !380
  %118 = load i32, i32* %arrayidx142.i.i, align 8, !dbg !380
  %xor143.i.i = xor i32 %117, %118, !dbg !380
  %shl144.i.i = shl i32 %xor143.i.i, 7, !dbg !380
  %arrayidx145.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  %119 = load i32, i32* %arrayidx145.i.i, align 8, !dbg !380
  %arrayidx146.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !380
  %120 = load i32, i32* %arrayidx146.i.i, align 8, !dbg !380
  %xor147.i.i = xor i32 %119, %120, !dbg !380
  %shr148.i.i = lshr i32 %xor147.i.i, 25, !dbg !380
  %or149.i.i = or i32 %shl144.i.i, %shr148.i.i, !dbg !380
  %arrayidx150.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !380
  store i32 %or149.i.i, i32* %arrayidx150.i.i, align 8, !dbg !380
  %arrayidx151.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  %121 = load i32, i32* %arrayidx151.i.i, align 4, !dbg !381
  %arrayidx152.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !381
  %122 = load i32, i32* %arrayidx152.i.i, align 4, !dbg !381
  %add153.i.i = add i32 %122, %121, !dbg !381
  store i32 %add153.i.i, i32* %arrayidx152.i.i, align 4, !dbg !381
  %arrayidx154.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  %123 = load i32, i32* %arrayidx154.i.i, align 4, !dbg !381
  %arrayidx155.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !381
  %124 = load i32, i32* %arrayidx155.i.i, align 4, !dbg !381
  %xor156.i.i = xor i32 %123, %124, !dbg !381
  %shl157.i.i = shl i32 %xor156.i.i, 16, !dbg !381
  %arrayidx158.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  %125 = load i32, i32* %arrayidx158.i.i, align 4, !dbg !381
  %arrayidx159.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !381
  %126 = load i32, i32* %arrayidx159.i.i, align 4, !dbg !381
  %xor160.i.i = xor i32 %125, %126, !dbg !381
  %shr161.i.i = lshr i32 %xor160.i.i, 16, !dbg !381
  %or162.i.i = or i32 %shl157.i.i, %shr161.i.i, !dbg !381
  %arrayidx163.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  store i32 %or162.i.i, i32* %arrayidx163.i.i, align 4, !dbg !381
  %arrayidx164.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  %127 = load i32, i32* %arrayidx164.i.i, align 4, !dbg !381
  %arrayidx165.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !381
  %128 = load i32, i32* %arrayidx165.i.i, align 4, !dbg !381
  %add166.i.i = add i32 %128, %127, !dbg !381
  store i32 %add166.i.i, i32* %arrayidx165.i.i, align 4, !dbg !381
  %arrayidx167.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  %129 = load i32, i32* %arrayidx167.i.i, align 4, !dbg !381
  %arrayidx168.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !381
  %130 = load i32, i32* %arrayidx168.i.i, align 4, !dbg !381
  %xor169.i.i = xor i32 %129, %130, !dbg !381
  %shl170.i.i = shl i32 %xor169.i.i, 12, !dbg !381
  %arrayidx171.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  %131 = load i32, i32* %arrayidx171.i.i, align 4, !dbg !381
  %arrayidx172.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !381
  %132 = load i32, i32* %arrayidx172.i.i, align 4, !dbg !381
  %xor173.i.i = xor i32 %131, %132, !dbg !381
  %shr174.i.i = lshr i32 %xor173.i.i, 20, !dbg !381
  %or175.i.i = or i32 %shl170.i.i, %shr174.i.i, !dbg !381
  %arrayidx176.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  store i32 %or175.i.i, i32* %arrayidx176.i.i, align 4, !dbg !381
  %arrayidx177.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  %133 = load i32, i32* %arrayidx177.i.i, align 4, !dbg !381
  %arrayidx178.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !381
  %134 = load i32, i32* %arrayidx178.i.i, align 4, !dbg !381
  %add179.i.i = add i32 %134, %133, !dbg !381
  store i32 %add179.i.i, i32* %arrayidx178.i.i, align 4, !dbg !381
  %arrayidx180.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  %135 = load i32, i32* %arrayidx180.i.i, align 4, !dbg !381
  %arrayidx181.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !381
  %136 = load i32, i32* %arrayidx181.i.i, align 4, !dbg !381
  %xor182.i.i = xor i32 %135, %136, !dbg !381
  %shl183.i.i = shl i32 %xor182.i.i, 8, !dbg !381
  %arrayidx184.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  %137 = load i32, i32* %arrayidx184.i.i, align 4, !dbg !381
  %arrayidx185.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !381
  %138 = load i32, i32* %arrayidx185.i.i, align 4, !dbg !381
  %xor186.i.i = xor i32 %137, %138, !dbg !381
  %shr187.i.i = lshr i32 %xor186.i.i, 24, !dbg !381
  %or188.i.i = or i32 %shl183.i.i, %shr187.i.i, !dbg !381
  %arrayidx189.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  store i32 %or188.i.i, i32* %arrayidx189.i.i, align 4, !dbg !381
  %arrayidx190.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !381
  %139 = load i32, i32* %arrayidx190.i.i, align 4, !dbg !381
  %arrayidx191.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !381
  %140 = load i32, i32* %arrayidx191.i.i, align 4, !dbg !381
  %add192.i.i = add i32 %140, %139, !dbg !381
  store i32 %add192.i.i, i32* %arrayidx191.i.i, align 4, !dbg !381
  %arrayidx193.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  %141 = load i32, i32* %arrayidx193.i.i, align 4, !dbg !381
  %arrayidx194.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !381
  %142 = load i32, i32* %arrayidx194.i.i, align 4, !dbg !381
  %xor195.i.i = xor i32 %141, %142, !dbg !381
  %shl196.i.i = shl i32 %xor195.i.i, 7, !dbg !381
  %arrayidx197.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  %143 = load i32, i32* %arrayidx197.i.i, align 4, !dbg !381
  %arrayidx198.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !381
  %144 = load i32, i32* %arrayidx198.i.i, align 4, !dbg !381
  %xor199.i.i = xor i32 %143, %144, !dbg !381
  %shr200.i.i = lshr i32 %xor199.i.i, 25, !dbg !381
  %or201.i.i = or i32 %shl196.i.i, %shr200.i.i, !dbg !381
  %arrayidx202.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !381
  store i32 %or201.i.i, i32* %arrayidx202.i.i, align 4, !dbg !381
  %arrayidx203.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  %145 = load i32, i32* %arrayidx203.i.i, align 4, !dbg !382
  %arrayidx204.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !382
  %146 = load i32, i32* %arrayidx204.i.i, align 16, !dbg !382
  %add205.i.i = add i32 %146, %145, !dbg !382
  store i32 %add205.i.i, i32* %arrayidx204.i.i, align 16, !dbg !382
  %arrayidx206.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  %147 = load i32, i32* %arrayidx206.i.i, align 4, !dbg !382
  %arrayidx207.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !382
  %148 = load i32, i32* %arrayidx207.i.i, align 16, !dbg !382
  %xor208.i.i = xor i32 %147, %148, !dbg !382
  %shl209.i.i = shl i32 %xor208.i.i, 16, !dbg !382
  %arrayidx210.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  %149 = load i32, i32* %arrayidx210.i.i, align 4, !dbg !382
  %arrayidx211.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !382
  %150 = load i32, i32* %arrayidx211.i.i, align 16, !dbg !382
  %xor212.i.i = xor i32 %149, %150, !dbg !382
  %shr213.i.i = lshr i32 %xor212.i.i, 16, !dbg !382
  %or214.i.i = or i32 %shl209.i.i, %shr213.i.i, !dbg !382
  %arrayidx215.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  store i32 %or214.i.i, i32* %arrayidx215.i.i, align 4, !dbg !382
  %arrayidx216.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  %151 = load i32, i32* %arrayidx216.i.i, align 4, !dbg !382
  %arrayidx217.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !382
  %152 = load i32, i32* %arrayidx217.i.i, align 8, !dbg !382
  %add218.i.i = add i32 %152, %151, !dbg !382
  store i32 %add218.i.i, i32* %arrayidx217.i.i, align 8, !dbg !382
  %arrayidx219.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  %153 = load i32, i32* %arrayidx219.i.i, align 4, !dbg !382
  %arrayidx220.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !382
  %154 = load i32, i32* %arrayidx220.i.i, align 8, !dbg !382
  %xor221.i.i = xor i32 %153, %154, !dbg !382
  %shl222.i.i = shl i32 %xor221.i.i, 12, !dbg !382
  %arrayidx223.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  %155 = load i32, i32* %arrayidx223.i.i, align 4, !dbg !382
  %arrayidx224.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !382
  %156 = load i32, i32* %arrayidx224.i.i, align 8, !dbg !382
  %xor225.i.i = xor i32 %155, %156, !dbg !382
  %shr226.i.i = lshr i32 %xor225.i.i, 20, !dbg !382
  %or227.i.i = or i32 %shl222.i.i, %shr226.i.i, !dbg !382
  %arrayidx228.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  store i32 %or227.i.i, i32* %arrayidx228.i.i, align 4, !dbg !382
  %arrayidx229.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  %157 = load i32, i32* %arrayidx229.i.i, align 4, !dbg !382
  %arrayidx230.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !382
  %158 = load i32, i32* %arrayidx230.i.i, align 16, !dbg !382
  %add231.i.i = add i32 %158, %157, !dbg !382
  store i32 %add231.i.i, i32* %arrayidx230.i.i, align 16, !dbg !382
  %arrayidx232.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  %159 = load i32, i32* %arrayidx232.i.i, align 4, !dbg !382
  %arrayidx233.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !382
  %160 = load i32, i32* %arrayidx233.i.i, align 16, !dbg !382
  %xor234.i.i = xor i32 %159, %160, !dbg !382
  %shl235.i.i = shl i32 %xor234.i.i, 8, !dbg !382
  %arrayidx236.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  %161 = load i32, i32* %arrayidx236.i.i, align 4, !dbg !382
  %arrayidx237.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 0, !dbg !382
  %162 = load i32, i32* %arrayidx237.i.i, align 16, !dbg !382
  %xor238.i.i = xor i32 %161, %162, !dbg !382
  %shr239.i.i = lshr i32 %xor238.i.i, 24, !dbg !382
  %or240.i.i = or i32 %shl235.i.i, %shr239.i.i, !dbg !382
  %arrayidx241.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  store i32 %or240.i.i, i32* %arrayidx241.i.i, align 4, !dbg !382
  %arrayidx242.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 15, !dbg !382
  %163 = load i32, i32* %arrayidx242.i.i, align 4, !dbg !382
  %arrayidx243.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !382
  %164 = load i32, i32* %arrayidx243.i.i, align 8, !dbg !382
  %add244.i.i = add i32 %164, %163, !dbg !382
  store i32 %add244.i.i, i32* %arrayidx243.i.i, align 8, !dbg !382
  %arrayidx245.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  %165 = load i32, i32* %arrayidx245.i.i, align 4, !dbg !382
  %arrayidx246.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !382
  %166 = load i32, i32* %arrayidx246.i.i, align 8, !dbg !382
  %xor247.i.i = xor i32 %165, %166, !dbg !382
  %shl248.i.i = shl i32 %xor247.i.i, 7, !dbg !382
  %arrayidx249.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  %167 = load i32, i32* %arrayidx249.i.i, align 4, !dbg !382
  %arrayidx250.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 10, !dbg !382
  %168 = load i32, i32* %arrayidx250.i.i, align 8, !dbg !382
  %xor251.i.i = xor i32 %167, %168, !dbg !382
  %shr252.i.i = lshr i32 %xor251.i.i, 25, !dbg !382
  %or253.i.i = or i32 %shl248.i.i, %shr252.i.i, !dbg !382
  %arrayidx254.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 5, !dbg !382
  store i32 %or253.i.i, i32* %arrayidx254.i.i, align 4, !dbg !382
  %arrayidx255.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  %169 = load i32, i32* %arrayidx255.i.i, align 8, !dbg !383
  %arrayidx256.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !383
  %170 = load i32, i32* %arrayidx256.i.i, align 4, !dbg !383
  %add257.i.i = add i32 %170, %169, !dbg !383
  store i32 %add257.i.i, i32* %arrayidx256.i.i, align 4, !dbg !383
  %arrayidx258.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  %171 = load i32, i32* %arrayidx258.i.i, align 16, !dbg !383
  %arrayidx259.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !383
  %172 = load i32, i32* %arrayidx259.i.i, align 4, !dbg !383
  %xor260.i.i = xor i32 %171, %172, !dbg !383
  %shl261.i.i = shl i32 %xor260.i.i, 16, !dbg !383
  %arrayidx262.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  %173 = load i32, i32* %arrayidx262.i.i, align 16, !dbg !383
  %arrayidx263.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !383
  %174 = load i32, i32* %arrayidx263.i.i, align 4, !dbg !383
  %xor264.i.i = xor i32 %173, %174, !dbg !383
  %shr265.i.i = lshr i32 %xor264.i.i, 16, !dbg !383
  %or266.i.i = or i32 %shl261.i.i, %shr265.i.i, !dbg !383
  %arrayidx267.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  store i32 %or266.i.i, i32* %arrayidx267.i.i, align 16, !dbg !383
  %arrayidx268.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  %175 = load i32, i32* %arrayidx268.i.i, align 16, !dbg !383
  %arrayidx269.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !383
  %176 = load i32, i32* %arrayidx269.i.i, align 4, !dbg !383
  %add270.i.i = add i32 %176, %175, !dbg !383
  store i32 %add270.i.i, i32* %arrayidx269.i.i, align 4, !dbg !383
  %arrayidx271.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  %177 = load i32, i32* %arrayidx271.i.i, align 8, !dbg !383
  %arrayidx272.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !383
  %178 = load i32, i32* %arrayidx272.i.i, align 4, !dbg !383
  %xor273.i.i = xor i32 %177, %178, !dbg !383
  %shl274.i.i = shl i32 %xor273.i.i, 12, !dbg !383
  %arrayidx275.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  %179 = load i32, i32* %arrayidx275.i.i, align 8, !dbg !383
  %arrayidx276.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !383
  %180 = load i32, i32* %arrayidx276.i.i, align 4, !dbg !383
  %xor277.i.i = xor i32 %179, %180, !dbg !383
  %shr278.i.i = lshr i32 %xor277.i.i, 20, !dbg !383
  %or279.i.i = or i32 %shl274.i.i, %shr278.i.i, !dbg !383
  %arrayidx280.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  store i32 %or279.i.i, i32* %arrayidx280.i.i, align 8, !dbg !383
  %arrayidx281.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  %181 = load i32, i32* %arrayidx281.i.i, align 8, !dbg !383
  %arrayidx282.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !383
  %182 = load i32, i32* %arrayidx282.i.i, align 4, !dbg !383
  %add283.i.i = add i32 %182, %181, !dbg !383
  store i32 %add283.i.i, i32* %arrayidx282.i.i, align 4, !dbg !383
  %arrayidx284.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  %183 = load i32, i32* %arrayidx284.i.i, align 16, !dbg !383
  %arrayidx285.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !383
  %184 = load i32, i32* %arrayidx285.i.i, align 4, !dbg !383
  %xor286.i.i = xor i32 %183, %184, !dbg !383
  %shl287.i.i = shl i32 %xor286.i.i, 8, !dbg !383
  %arrayidx288.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  %185 = load i32, i32* %arrayidx288.i.i, align 16, !dbg !383
  %arrayidx289.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 1, !dbg !383
  %186 = load i32, i32* %arrayidx289.i.i, align 4, !dbg !383
  %xor290.i.i = xor i32 %185, %186, !dbg !383
  %shr291.i.i = lshr i32 %xor290.i.i, 24, !dbg !383
  %or292.i.i = or i32 %shl287.i.i, %shr291.i.i, !dbg !383
  %arrayidx293.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  store i32 %or292.i.i, i32* %arrayidx293.i.i, align 16, !dbg !383
  %arrayidx294.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 12, !dbg !383
  %187 = load i32, i32* %arrayidx294.i.i, align 16, !dbg !383
  %arrayidx295.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !383
  %188 = load i32, i32* %arrayidx295.i.i, align 4, !dbg !383
  %add296.i.i = add i32 %188, %187, !dbg !383
  store i32 %add296.i.i, i32* %arrayidx295.i.i, align 4, !dbg !383
  %arrayidx297.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  %189 = load i32, i32* %arrayidx297.i.i, align 8, !dbg !383
  %arrayidx298.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !383
  %190 = load i32, i32* %arrayidx298.i.i, align 4, !dbg !383
  %xor299.i.i = xor i32 %189, %190, !dbg !383
  %shl300.i.i = shl i32 %xor299.i.i, 7, !dbg !383
  %arrayidx301.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  %191 = load i32, i32* %arrayidx301.i.i, align 8, !dbg !383
  %arrayidx302.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 11, !dbg !383
  %192 = load i32, i32* %arrayidx302.i.i, align 4, !dbg !383
  %xor303.i.i = xor i32 %191, %192, !dbg !383
  %shr304.i.i = lshr i32 %xor303.i.i, 25, !dbg !383
  %or305.i.i = or i32 %shl300.i.i, %shr304.i.i, !dbg !383
  %arrayidx306.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 6, !dbg !383
  store i32 %or305.i.i, i32* %arrayidx306.i.i, align 8, !dbg !383
  %arrayidx307.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  %193 = load i32, i32* %arrayidx307.i.i, align 4, !dbg !384
  %arrayidx308.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !384
  %194 = load i32, i32* %arrayidx308.i.i, align 8, !dbg !384
  %add309.i.i = add i32 %194, %193, !dbg !384
  store i32 %add309.i.i, i32* %arrayidx308.i.i, align 8, !dbg !384
  %arrayidx310.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  %195 = load i32, i32* %arrayidx310.i.i, align 4, !dbg !384
  %arrayidx311.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !384
  %196 = load i32, i32* %arrayidx311.i.i, align 8, !dbg !384
  %xor312.i.i = xor i32 %195, %196, !dbg !384
  %shl313.i.i = shl i32 %xor312.i.i, 16, !dbg !384
  %arrayidx314.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  %197 = load i32, i32* %arrayidx314.i.i, align 4, !dbg !384
  %arrayidx315.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !384
  %198 = load i32, i32* %arrayidx315.i.i, align 8, !dbg !384
  %xor316.i.i = xor i32 %197, %198, !dbg !384
  %shr317.i.i = lshr i32 %xor316.i.i, 16, !dbg !384
  %or318.i.i = or i32 %shl313.i.i, %shr317.i.i, !dbg !384
  %arrayidx319.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  store i32 %or318.i.i, i32* %arrayidx319.i.i, align 4, !dbg !384
  %arrayidx320.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  %199 = load i32, i32* %arrayidx320.i.i, align 4, !dbg !384
  %arrayidx321.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !384
  %200 = load i32, i32* %arrayidx321.i.i, align 16, !dbg !384
  %add322.i.i = add i32 %200, %199, !dbg !384
  store i32 %add322.i.i, i32* %arrayidx321.i.i, align 16, !dbg !384
  %arrayidx323.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  %201 = load i32, i32* %arrayidx323.i.i, align 4, !dbg !384
  %arrayidx324.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !384
  %202 = load i32, i32* %arrayidx324.i.i, align 16, !dbg !384
  %xor325.i.i = xor i32 %201, %202, !dbg !384
  %shl326.i.i = shl i32 %xor325.i.i, 12, !dbg !384
  %arrayidx327.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  %203 = load i32, i32* %arrayidx327.i.i, align 4, !dbg !384
  %arrayidx328.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !384
  %204 = load i32, i32* %arrayidx328.i.i, align 16, !dbg !384
  %xor329.i.i = xor i32 %203, %204, !dbg !384
  %shr330.i.i = lshr i32 %xor329.i.i, 20, !dbg !384
  %or331.i.i = or i32 %shl326.i.i, %shr330.i.i, !dbg !384
  %arrayidx332.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  store i32 %or331.i.i, i32* %arrayidx332.i.i, align 4, !dbg !384
  %arrayidx333.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  %205 = load i32, i32* %arrayidx333.i.i, align 4, !dbg !384
  %arrayidx334.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !384
  %206 = load i32, i32* %arrayidx334.i.i, align 8, !dbg !384
  %add335.i.i = add i32 %206, %205, !dbg !384
  store i32 %add335.i.i, i32* %arrayidx334.i.i, align 8, !dbg !384
  %arrayidx336.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  %207 = load i32, i32* %arrayidx336.i.i, align 4, !dbg !384
  %arrayidx337.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !384
  %208 = load i32, i32* %arrayidx337.i.i, align 8, !dbg !384
  %xor338.i.i = xor i32 %207, %208, !dbg !384
  %shl339.i.i = shl i32 %xor338.i.i, 8, !dbg !384
  %arrayidx340.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  %209 = load i32, i32* %arrayidx340.i.i, align 4, !dbg !384
  %arrayidx341.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 2, !dbg !384
  %210 = load i32, i32* %arrayidx341.i.i, align 8, !dbg !384
  %xor342.i.i = xor i32 %209, %210, !dbg !384
  %shr343.i.i = lshr i32 %xor342.i.i, 24, !dbg !384
  %or344.i.i = or i32 %shl339.i.i, %shr343.i.i, !dbg !384
  %arrayidx345.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  store i32 %or344.i.i, i32* %arrayidx345.i.i, align 4, !dbg !384
  %arrayidx346.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 13, !dbg !384
  %211 = load i32, i32* %arrayidx346.i.i, align 4, !dbg !384
  %arrayidx347.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !384
  %212 = load i32, i32* %arrayidx347.i.i, align 16, !dbg !384
  %add348.i.i = add i32 %212, %211, !dbg !384
  store i32 %add348.i.i, i32* %arrayidx347.i.i, align 16, !dbg !384
  %arrayidx349.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  %213 = load i32, i32* %arrayidx349.i.i, align 4, !dbg !384
  %arrayidx350.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !384
  %214 = load i32, i32* %arrayidx350.i.i, align 16, !dbg !384
  %xor351.i.i = xor i32 %213, %214, !dbg !384
  %shl352.i.i = shl i32 %xor351.i.i, 7, !dbg !384
  %arrayidx353.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  %215 = load i32, i32* %arrayidx353.i.i, align 4, !dbg !384
  %arrayidx354.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 8, !dbg !384
  %216 = load i32, i32* %arrayidx354.i.i, align 16, !dbg !384
  %xor355.i.i = xor i32 %215, %216, !dbg !384
  %shr356.i.i = lshr i32 %xor355.i.i, 25, !dbg !384
  %or357.i.i = or i32 %shl352.i.i, %shr356.i.i, !dbg !384
  %arrayidx358.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 7, !dbg !384
  store i32 %or357.i.i, i32* %arrayidx358.i.i, align 4, !dbg !384
  %arrayidx359.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  %217 = load i32, i32* %arrayidx359.i.i, align 16, !dbg !385
  %arrayidx360.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !385
  %218 = load i32, i32* %arrayidx360.i.i, align 4, !dbg !385
  %add361.i.i = add i32 %218, %217, !dbg !385
  store i32 %add361.i.i, i32* %arrayidx360.i.i, align 4, !dbg !385
  %arrayidx362.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  %219 = load i32, i32* %arrayidx362.i.i, align 8, !dbg !385
  %arrayidx363.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !385
  %220 = load i32, i32* %arrayidx363.i.i, align 4, !dbg !385
  %xor364.i.i = xor i32 %219, %220, !dbg !385
  %shl365.i.i = shl i32 %xor364.i.i, 16, !dbg !385
  %arrayidx366.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  %221 = load i32, i32* %arrayidx366.i.i, align 8, !dbg !385
  %arrayidx367.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !385
  %222 = load i32, i32* %arrayidx367.i.i, align 4, !dbg !385
  %xor368.i.i = xor i32 %221, %222, !dbg !385
  %shr369.i.i = lshr i32 %xor368.i.i, 16, !dbg !385
  %or370.i.i = or i32 %shl365.i.i, %shr369.i.i, !dbg !385
  %arrayidx371.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  store i32 %or370.i.i, i32* %arrayidx371.i.i, align 8, !dbg !385
  %arrayidx372.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  %223 = load i32, i32* %arrayidx372.i.i, align 8, !dbg !385
  %arrayidx373.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !385
  %224 = load i32, i32* %arrayidx373.i.i, align 4, !dbg !385
  %add374.i.i = add i32 %224, %223, !dbg !385
  store i32 %add374.i.i, i32* %arrayidx373.i.i, align 4, !dbg !385
  %arrayidx375.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  %225 = load i32, i32* %arrayidx375.i.i, align 16, !dbg !385
  %arrayidx376.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !385
  %226 = load i32, i32* %arrayidx376.i.i, align 4, !dbg !385
  %xor377.i.i = xor i32 %225, %226, !dbg !385
  %shl378.i.i = shl i32 %xor377.i.i, 12, !dbg !385
  %arrayidx379.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  %227 = load i32, i32* %arrayidx379.i.i, align 16, !dbg !385
  %arrayidx380.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !385
  %228 = load i32, i32* %arrayidx380.i.i, align 4, !dbg !385
  %xor381.i.i = xor i32 %227, %228, !dbg !385
  %shr382.i.i = lshr i32 %xor381.i.i, 20, !dbg !385
  %or383.i.i = or i32 %shl378.i.i, %shr382.i.i, !dbg !385
  %arrayidx384.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  store i32 %or383.i.i, i32* %arrayidx384.i.i, align 16, !dbg !385
  %arrayidx385.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  %229 = load i32, i32* %arrayidx385.i.i, align 16, !dbg !385
  %arrayidx386.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !385
  %230 = load i32, i32* %arrayidx386.i.i, align 4, !dbg !385
  %add387.i.i = add i32 %230, %229, !dbg !385
  store i32 %add387.i.i, i32* %arrayidx386.i.i, align 4, !dbg !385
  %arrayidx388.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  %231 = load i32, i32* %arrayidx388.i.i, align 8, !dbg !385
  %arrayidx389.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !385
  %232 = load i32, i32* %arrayidx389.i.i, align 4, !dbg !385
  %xor390.i.i = xor i32 %231, %232, !dbg !385
  %shl391.i.i = shl i32 %xor390.i.i, 8, !dbg !385
  %arrayidx392.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  %233 = load i32, i32* %arrayidx392.i.i, align 8, !dbg !385
  %arrayidx393.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 3, !dbg !385
  %234 = load i32, i32* %arrayidx393.i.i, align 4, !dbg !385
  %xor394.i.i = xor i32 %233, %234, !dbg !385
  %shr395.i.i = lshr i32 %xor394.i.i, 24, !dbg !385
  %or396.i.i = or i32 %shl391.i.i, %shr395.i.i, !dbg !385
  %arrayidx397.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  store i32 %or396.i.i, i32* %arrayidx397.i.i, align 8, !dbg !385
  %arrayidx398.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 14, !dbg !385
  %235 = load i32, i32* %arrayidx398.i.i, align 8, !dbg !385
  %arrayidx399.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !385
  %236 = load i32, i32* %arrayidx399.i.i, align 4, !dbg !385
  %add400.i.i = add i32 %236, %235, !dbg !385
  store i32 %add400.i.i, i32* %arrayidx399.i.i, align 4, !dbg !385
  %arrayidx401.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  %237 = load i32, i32* %arrayidx401.i.i, align 16, !dbg !385
  %arrayidx402.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !385
  %238 = load i32, i32* %arrayidx402.i.i, align 4, !dbg !385
  %xor403.i.i = xor i32 %237, %238, !dbg !385
  %shl404.i.i = shl i32 %xor403.i.i, 7, !dbg !385
  %arrayidx405.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  %239 = load i32, i32* %arrayidx405.i.i, align 16, !dbg !385
  %arrayidx406.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 9, !dbg !385
  %240 = load i32, i32* %arrayidx406.i.i, align 4, !dbg !385
  %xor407.i.i = xor i32 %239, %240, !dbg !385
  %shr408.i.i = lshr i32 %xor407.i.i, 25, !dbg !385
  %or409.i.i = or i32 %shl404.i.i, %shr408.i.i, !dbg !385
  %arrayidx410.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 4, !dbg !385
  store i32 %or409.i.i, i32* %arrayidx410.i.i, align 16, !dbg !385
  %241 = load i32, i32* %i.i.i, align 4, !dbg !386
  %sub.i.i = sub nsw i32 %241, 2, !dbg !386
  store i32 %sub.i.i, i32* %i.i.i, align 4, !dbg !386
  br label %for.cond.i.i, !dbg !387, !llvm.loop !388

for.end.i.i:                                      ; preds = %for.cond.i.i
  %little.i.i = bitcast %union.anon* %is_endian.i.i to i8*, !dbg !390
  %242 = load i8, i8* %little.i.i, align 8, !dbg !390
  %tobool.i.i = icmp ne i8 %242, 0, !dbg !391
  br i1 %tobool.i.i, label %if.then.i.i, label %if.else.i.i, !dbg !392

if.then.i.i:                                      ; preds = %for.end.i.i
  store i32 0, i32* %i.i.i, align 4, !dbg !393
  br label %for.cond411.i.i, !dbg !394

for.cond411.i.i:                                  ; preds = %for.body413.i.i, %if.then.i.i
  %243 = load i32, i32* %i.i.i, align 4, !dbg !395
  %cmp412.i.i = icmp slt i32 %243, 16, !dbg !396
  br i1 %cmp412.i.i, label %for.body413.i.i, label %for.end421.i.i, !dbg !397

for.body413.i.i:                                  ; preds = %for.cond411.i.i
  %244 = load i32, i32* %i.i.i, align 4, !dbg !398
  %idxprom.i.i = sext i32 %244 to i64, !dbg !399
  %arrayidx414.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 %idxprom.i.i, !dbg !399
  %245 = load i32, i32* %arrayidx414.i.i, align 4, !dbg !399
  %246 = load i32*, i32** %input.addr.i.i, align 8, !dbg !400
  %247 = load i32, i32* %i.i.i, align 4, !dbg !401
  %idxprom415.i.i = sext i32 %247 to i64, !dbg !400
  %arrayidx416.i.i = getelementptr inbounds i32, i32* %246, i64 %idxprom415.i.i, !dbg !400
  %248 = load i32, i32* %arrayidx416.i.i, align 4, !dbg !400
  %add417.i.i = add i32 %245, %248, !dbg !402
  %249 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i.i, align 8, !dbg !403
  %u.i.i = bitcast %union.chacha_buf* %249 to [16 x i32]*, !dbg !404
  %250 = load i32, i32* %i.i.i, align 4, !dbg !405
  %idxprom418.i.i = sext i32 %250 to i64, !dbg !403
  %arrayidx419.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %u.i.i, i64 0, i64 %idxprom418.i.i, !dbg !403
  store i32 %add417.i.i, i32* %arrayidx419.i.i, align 4, !dbg !406
  %251 = load i32, i32* %i.i.i, align 4, !dbg !407
  %inc.i.i = add nsw i32 %251, 1, !dbg !407
  store i32 %inc.i.i, i32* %i.i.i, align 4, !dbg !407
  br label %for.cond411.i.i, !dbg !408, !llvm.loop !409

for.end421.i.i:                                   ; preds = %for.cond411.i.i
  br label %chacha20_core.exit.i, !dbg !411

if.else.i.i:                                      ; preds = %for.end.i.i
  store i32 0, i32* %i.i.i, align 4, !dbg !412
  br label %for.cond422.i.i, !dbg !413

for.cond422.i.i:                                  ; preds = %for.body424.i.i, %if.else.i.i
  %252 = load i32, i32* %i.i.i, align 4, !dbg !414
  %cmp423.i.i = icmp slt i32 %252, 16, !dbg !415
  br i1 %cmp423.i.i, label %for.body424.i.i, label %for.end474.i.i, !dbg !416

for.body424.i.i:                                  ; preds = %for.cond422.i.i
  %253 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom425.i.i = sext i32 %253 to i64, !dbg !417
  %arrayidx426.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 %idxprom425.i.i, !dbg !417
  %254 = load i32, i32* %arrayidx426.i.i, align 4, !dbg !417
  %255 = load i32*, i32** %input.addr.i.i, align 8, !dbg !417
  %256 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom427.i.i = sext i32 %256 to i64, !dbg !417
  %arrayidx428.i.i = getelementptr inbounds i32, i32* %255, i64 %idxprom427.i.i, !dbg !417
  %257 = load i32, i32* %arrayidx428.i.i, align 4, !dbg !417
  %add429.i.i = add i32 %254, %257, !dbg !417
  %conv.i.i = trunc i32 %add429.i.i to i8, !dbg !417
  %258 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i.i, align 8, !dbg !417
  %c.i.i = bitcast %union.chacha_buf* %258 to [64 x i8]*, !dbg !417
  %arraydecay431.i.i = getelementptr inbounds [64 x i8], [64 x i8]* %c.i.i, i64 0, i64 0, !dbg !417
  %259 = load i32, i32* %i.i.i, align 4, !dbg !417
  %mul.i.i = mul nsw i32 4, %259, !dbg !417
  %idx.ext.i.i = sext i32 %mul.i.i to i64, !dbg !417
  %add.ptr.i.i = getelementptr inbounds i8, i8* %arraydecay431.i.i, i64 %idx.ext.i.i, !dbg !417
  store i8 %conv.i.i, i8* %add.ptr.i.i, align 1, !dbg !417
  %260 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom433.i.i = sext i32 %260 to i64, !dbg !417
  %arrayidx434.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 %idxprom433.i.i, !dbg !417
  %261 = load i32, i32* %arrayidx434.i.i, align 4, !dbg !417
  %262 = load i32*, i32** %input.addr.i.i, align 8, !dbg !417
  %263 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom435.i.i = sext i32 %263 to i64, !dbg !417
  %arrayidx436.i.i = getelementptr inbounds i32, i32* %262, i64 %idxprom435.i.i, !dbg !417
  %264 = load i32, i32* %arrayidx436.i.i, align 4, !dbg !417
  %add437.i.i = add i32 %261, %264, !dbg !417
  %shr438.i.i = lshr i32 %add437.i.i, 8, !dbg !417
  %conv439.i.i = trunc i32 %shr438.i.i to i8, !dbg !417
  %265 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i.i, align 8, !dbg !417
  %c440.i.i = bitcast %union.chacha_buf* %265 to [64 x i8]*, !dbg !417
  %arraydecay441.i.i = getelementptr inbounds [64 x i8], [64 x i8]* %c440.i.i, i64 0, i64 0, !dbg !417
  %266 = load i32, i32* %i.i.i, align 4, !dbg !417
  %mul442.i.i = mul nsw i32 4, %266, !dbg !417
  %idx.ext443.i.i = sext i32 %mul442.i.i to i64, !dbg !417
  %add.ptr444.i.i = getelementptr inbounds i8, i8* %arraydecay441.i.i, i64 %idx.ext443.i.i, !dbg !417
  %arrayidx445.i.i = getelementptr inbounds i8, i8* %add.ptr444.i.i, i64 1, !dbg !417
  store i8 %conv439.i.i, i8* %arrayidx445.i.i, align 1, !dbg !417
  %267 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom446.i.i = sext i32 %267 to i64, !dbg !417
  %arrayidx447.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 %idxprom446.i.i, !dbg !417
  %268 = load i32, i32* %arrayidx447.i.i, align 4, !dbg !417
  %269 = load i32*, i32** %input.addr.i.i, align 8, !dbg !417
  %270 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom448.i.i = sext i32 %270 to i64, !dbg !417
  %arrayidx449.i.i = getelementptr inbounds i32, i32* %269, i64 %idxprom448.i.i, !dbg !417
  %271 = load i32, i32* %arrayidx449.i.i, align 4, !dbg !417
  %add450.i.i = add i32 %268, %271, !dbg !417
  %shr451.i.i = lshr i32 %add450.i.i, 16, !dbg !417
  %conv452.i.i = trunc i32 %shr451.i.i to i8, !dbg !417
  %272 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i.i, align 8, !dbg !417
  %c453.i.i = bitcast %union.chacha_buf* %272 to [64 x i8]*, !dbg !417
  %arraydecay454.i.i = getelementptr inbounds [64 x i8], [64 x i8]* %c453.i.i, i64 0, i64 0, !dbg !417
  %273 = load i32, i32* %i.i.i, align 4, !dbg !417
  %mul455.i.i = mul nsw i32 4, %273, !dbg !417
  %idx.ext456.i.i = sext i32 %mul455.i.i to i64, !dbg !417
  %add.ptr457.i.i = getelementptr inbounds i8, i8* %arraydecay454.i.i, i64 %idx.ext456.i.i, !dbg !417
  %arrayidx458.i.i = getelementptr inbounds i8, i8* %add.ptr457.i.i, i64 2, !dbg !417
  store i8 %conv452.i.i, i8* %arrayidx458.i.i, align 1, !dbg !417
  %274 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom459.i.i = sext i32 %274 to i64, !dbg !417
  %arrayidx460.i.i = getelementptr inbounds [16 x i32], [16 x i32]* %x.i.i, i64 0, i64 %idxprom459.i.i, !dbg !417
  %275 = load i32, i32* %arrayidx460.i.i, align 4, !dbg !417
  %276 = load i32*, i32** %input.addr.i.i, align 8, !dbg !417
  %277 = load i32, i32* %i.i.i, align 4, !dbg !417
  %idxprom461.i.i = sext i32 %277 to i64, !dbg !417
  %arrayidx462.i.i = getelementptr inbounds i32, i32* %276, i64 %idxprom461.i.i, !dbg !417
  %278 = load i32, i32* %arrayidx462.i.i, align 4, !dbg !417
  %add463.i.i = add i32 %275, %278, !dbg !417
  %shr464.i.i = lshr i32 %add463.i.i, 24, !dbg !417
  %conv465.i.i = trunc i32 %shr464.i.i to i8, !dbg !417
  %279 = load %union.chacha_buf*, %union.chacha_buf** %output.addr.i.i, align 8, !dbg !417
  %c466.i.i = bitcast %union.chacha_buf* %279 to [64 x i8]*, !dbg !417
  %arraydecay467.i.i = getelementptr inbounds [64 x i8], [64 x i8]* %c466.i.i, i64 0, i64 0, !dbg !417
  %280 = load i32, i32* %i.i.i, align 4, !dbg !417
  %mul468.i.i = mul nsw i32 4, %280, !dbg !417
  %idx.ext469.i.i = sext i32 %mul468.i.i to i64, !dbg !417
  %add.ptr470.i.i = getelementptr inbounds i8, i8* %arraydecay467.i.i, i64 %idx.ext469.i.i, !dbg !417
  %arrayidx471.i.i = getelementptr inbounds i8, i8* %add.ptr470.i.i, i64 3, !dbg !417
  store i8 %conv465.i.i, i8* %arrayidx471.i.i, align 1, !dbg !417
  %281 = load i32, i32* %i.i.i, align 4, !dbg !418
  %inc473.i.i = add nsw i32 %281, 1, !dbg !418
  store i32 %inc473.i.i, i32* %i.i.i, align 4, !dbg !418
  br label %for.cond422.i.i, !dbg !419, !llvm.loop !420

for.end474.i.i:                                   ; preds = %for.cond422.i.i
  br label %chacha20_core.exit.i

chacha20_core.exit.i:                             ; preds = %for.end474.i.i, %for.end421.i.i
  store i64 0, i64* %i.i, align 8, !dbg !422
  br label %for.cond.i, !dbg !423

for.cond.i:                                       ; preds = %for.body.i, %chacha20_core.exit.i
  %282 = load i64, i64* %i.i, align 8, !dbg !424
  %283 = load i64, i64* %todo.i, align 8, !dbg !425
  %cmp30.i = icmp ult i64 %282, %283, !dbg !426
  br i1 %cmp30.i, label %for.body.i, label %for.end.i, !dbg !427

for.body.i:                                       ; preds = %for.cond.i
  %284 = load i8*, i8** %inp.addr.i, align 8, !dbg !428
  %285 = load i64, i64* %i.i, align 8, !dbg !429
  %arrayidx31.i = getelementptr inbounds i8, i8* %284, i64 %285, !dbg !428
  %286 = load i8, i8* %arrayidx31.i, align 1, !dbg !428
  %conv.i = zext i8 %286 to i32, !dbg !428
  %c.i = bitcast %union.chacha_buf* %buf.i to [64 x i8]*, !dbg !430
  %287 = load i64, i64* %i.i, align 8, !dbg !431
  %arrayidx32.i = getelementptr inbounds [64 x i8], [64 x i8]* %c.i, i64 0, i64 %287, !dbg !432
  %288 = load i8, i8* %arrayidx32.i, align 1, !dbg !432
  %conv33.i = zext i8 %288 to i32, !dbg !432
  %xor.i = xor i32 %conv.i, %conv33.i, !dbg !433
  %conv34.i = trunc i32 %xor.i to i8, !dbg !428
  %289 = load i8*, i8** %out.addr.i, align 8, !dbg !434
  %290 = load i64, i64* %i.i, align 8, !dbg !435
  %arrayidx35.i = getelementptr inbounds i8, i8* %289, i64 %290, !dbg !434
  store i8 %conv34.i, i8* %arrayidx35.i, align 1, !dbg !436
  %291 = load i64, i64* %i.i, align 8, !dbg !437
  %inc.i = add i64 %291, 1, !dbg !437
  store i64 %inc.i, i64* %i.i, align 8, !dbg !437
  br label %for.cond.i, !dbg !438, !llvm.loop !439

for.end.i:                                        ; preds = %for.cond.i
  %292 = load i64, i64* %todo.i, align 8, !dbg !441
  %293 = load i8*, i8** %out.addr.i, align 8, !dbg !442
  %add.ptr.i = getelementptr inbounds i8, i8* %293, i64 %292, !dbg !442
  store i8* %add.ptr.i, i8** %out.addr.i, align 8, !dbg !442
  %294 = load i64, i64* %todo.i, align 8, !dbg !443
  %295 = load i8*, i8** %inp.addr.i, align 8, !dbg !444
  %add.ptr36.i = getelementptr inbounds i8, i8* %295, i64 %294, !dbg !444
  store i8* %add.ptr36.i, i8** %inp.addr.i, align 8, !dbg !444
  %296 = load i64, i64* %todo.i, align 8, !dbg !445
  %297 = load i64, i64* %len.addr.i, align 8, !dbg !446
  %sub.i = sub i64 %297, %296, !dbg !446
  store i64 %sub.i, i64* %len.addr.i, align 8, !dbg !446
  %arrayidx37.i = getelementptr inbounds [16 x i32], [16 x i32]* %input.i, i64 0, i64 12, !dbg !447
  %298 = load i32, i32* %arrayidx37.i, align 16, !dbg !448
  %inc38.i = add i32 %298, 1, !dbg !448
  store i32 %inc38.i, i32* %arrayidx37.i, align 16, !dbg !448
  br label %while.cond.i, !dbg !359, !llvm.loop !449

ChaCha20_ctr32.exit:                              ; preds = %while.cond.i
  ret i32 0, !dbg !451
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare dso_local i8* @malloc(i64) #5

declare dso_local i32 @rand(...) #5

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind willreturn }
attributes #3 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "Cipher/chacha_enc_ctr32.c", directory: "/home/phil/Documents/github/cache-symbolic/crypto_test")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !1, line: 17, baseType: !5)
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !1, line: 18, baseType: !7)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 10.0.0 "}
!12 = distinct !DISubprogram(name: "ChaCha20_ctr32", scope: !1, file: !1, line: 73, type: !13, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !16, !18, !21, !21}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !19, line: 46, baseType: !20)
!19 = !DIFile(filename: "Tools/LLVM/llvm-10.0.0/build/lib/clang/10.0.0/include/stddef.h", directory: "/home/phil")
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!23 = !DILocalVariable(name: "output", arg: 1, scope: !24, file: !1, line: 42, type: !27)
!24 = distinct !DISubprogram(name: "chacha20_core", scope: !1, file: !1, line: 42, type: !25, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !39}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "chacha_buf", file: !1, line: 22, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !1, line: 19, size: 512, elements: !30)
!30 = !{!31, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !29, file: !1, line: 20, baseType: !32, size: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 16)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "c", scope: !29, file: !1, line: 21, baseType: !36, size: 512)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 512, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!41 = !DILocation(line: 42, column: 39, scope: !24, inlinedAt: !42)
!42 = distinct !DILocation(line: 114, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !12, file: !1, line: 109, column: 21)
!44 = !DILocalVariable(name: "input", arg: 2, scope: !24, file: !1, line: 42, type: !39)
!45 = !DILocation(line: 42, column: 57, scope: !24, inlinedAt: !42)
!46 = !DILocalVariable(name: "x", scope: !24, file: !1, line: 44, type: !32)
!47 = !DILocation(line: 44, column: 9, scope: !24, inlinedAt: !42)
!48 = !DILocalVariable(name: "i", scope: !24, file: !1, line: 45, type: !49)
!49 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!50 = !DILocation(line: 45, column: 9, scope: !24, inlinedAt: !42)
!51 = !DILocalVariable(name: "is_endian", scope: !24, file: !1, line: 49, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !24, file: !1, line: 46, size: 64, elements: !54)
!54 = !{!55, !57}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "one", scope: !53, file: !1, line: 47, baseType: !56, size: 64)
!56 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "little", scope: !53, file: !1, line: 48, baseType: !58, size: 8)
!58 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DILocation(line: 49, column: 7, scope: !24, inlinedAt: !42)
!60 = !DILocalVariable(name: "out", arg: 1, scope: !12, file: !1, line: 73, type: !15)
!61 = !DILocation(line: 73, column: 36, scope: !12)
!62 = !DILocalVariable(name: "inp", arg: 2, scope: !12, file: !1, line: 73, type: !16)
!63 = !DILocation(line: 73, column: 62, scope: !12)
!64 = !DILocalVariable(name: "len", arg: 3, scope: !12, file: !1, line: 74, type: !18)
!65 = !DILocation(line: 74, column: 28, scope: !12)
!66 = !DILocalVariable(name: "key", arg: 4, scope: !12, file: !1, line: 74, type: !21)
!67 = !DILocation(line: 74, column: 52, scope: !12)
!68 = !DILocalVariable(name: "counter", arg: 5, scope: !12, file: !1, line: 75, type: !21)
!69 = !DILocation(line: 75, column: 40, scope: !12)
!70 = !DILocalVariable(name: "input", scope: !12, file: !1, line: 77, type: !32)
!71 = !DILocation(line: 77, column: 9, scope: !12)
!72 = !DILocalVariable(name: "buf", scope: !12, file: !1, line: 78, type: !28)
!73 = !DILocation(line: 78, column: 16, scope: !12)
!74 = !DILocalVariable(name: "todo", scope: !12, file: !1, line: 79, type: !18)
!75 = !DILocation(line: 79, column: 12, scope: !12)
!76 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 79, type: !18)
!77 = !DILocation(line: 79, column: 18, scope: !12)
!78 = !DILocation(line: 82, column: 5, scope: !12)
!79 = !DILocation(line: 82, column: 14, scope: !12)
!80 = !DILocation(line: 85, column: 5, scope: !12)
!81 = !DILocation(line: 85, column: 14, scope: !12)
!82 = !DILocation(line: 88, column: 5, scope: !12)
!83 = !DILocation(line: 88, column: 14, scope: !12)
!84 = !DILocation(line: 91, column: 5, scope: !12)
!85 = !DILocation(line: 91, column: 14, scope: !12)
!86 = !DILocation(line: 95, column: 16, scope: !12)
!87 = !DILocation(line: 95, column: 5, scope: !12)
!88 = !DILocation(line: 95, column: 14, scope: !12)
!89 = !DILocation(line: 96, column: 16, scope: !12)
!90 = !DILocation(line: 96, column: 5, scope: !12)
!91 = !DILocation(line: 96, column: 14, scope: !12)
!92 = !DILocation(line: 97, column: 16, scope: !12)
!93 = !DILocation(line: 97, column: 5, scope: !12)
!94 = !DILocation(line: 97, column: 14, scope: !12)
!95 = !DILocation(line: 98, column: 16, scope: !12)
!96 = !DILocation(line: 98, column: 5, scope: !12)
!97 = !DILocation(line: 98, column: 14, scope: !12)
!98 = !DILocation(line: 99, column: 16, scope: !12)
!99 = !DILocation(line: 99, column: 5, scope: !12)
!100 = !DILocation(line: 99, column: 14, scope: !12)
!101 = !DILocation(line: 100, column: 16, scope: !12)
!102 = !DILocation(line: 100, column: 5, scope: !12)
!103 = !DILocation(line: 100, column: 14, scope: !12)
!104 = !DILocation(line: 101, column: 17, scope: !12)
!105 = !DILocation(line: 101, column: 5, scope: !12)
!106 = !DILocation(line: 101, column: 15, scope: !12)
!107 = !DILocation(line: 102, column: 17, scope: !12)
!108 = !DILocation(line: 102, column: 5, scope: !12)
!109 = !DILocation(line: 102, column: 15, scope: !12)
!110 = !DILocation(line: 104, column: 17, scope: !12)
!111 = !DILocation(line: 104, column: 5, scope: !12)
!112 = !DILocation(line: 104, column: 15, scope: !12)
!113 = !DILocation(line: 105, column: 17, scope: !12)
!114 = !DILocation(line: 105, column: 5, scope: !12)
!115 = !DILocation(line: 105, column: 15, scope: !12)
!116 = !DILocation(line: 106, column: 17, scope: !12)
!117 = !DILocation(line: 106, column: 5, scope: !12)
!118 = !DILocation(line: 106, column: 15, scope: !12)
!119 = !DILocation(line: 107, column: 17, scope: !12)
!120 = !DILocation(line: 107, column: 5, scope: !12)
!121 = !DILocation(line: 107, column: 15, scope: !12)
!122 = !DILocation(line: 109, column: 5, scope: !12)
!123 = !DILocation(line: 109, column: 12, scope: !12)
!124 = !DILocation(line: 109, column: 16, scope: !12)
!125 = !DILocation(line: 110, column: 14, scope: !43)
!126 = !DILocation(line: 111, column: 13, scope: !127)
!127 = distinct !DILexicalBlock(scope: !43, file: !1, line: 111, column: 13)
!128 = !DILocation(line: 111, column: 19, scope: !127)
!129 = !DILocation(line: 111, column: 17, scope: !127)
!130 = !DILocation(line: 111, column: 13, scope: !43)
!131 = !DILocation(line: 112, column: 20, scope: !127)
!132 = !DILocation(line: 112, column: 18, scope: !127)
!133 = !DILocation(line: 112, column: 13, scope: !127)
!134 = !DILocation(line: 114, column: 29, scope: !43)
!135 = !DILocation(line: 51, column: 5, scope: !24, inlinedAt: !42)
!136 = !DILocation(line: 51, column: 15, scope: !24, inlinedAt: !42)
!137 = !DILocation(line: 53, column: 12, scope: !138, inlinedAt: !42)
!138 = distinct !DILexicalBlock(scope: !24, file: !1, line: 53, column: 5)
!139 = !DILocation(line: 53, column: 10, scope: !138, inlinedAt: !42)
!140 = !DILocation(line: 53, column: 18, scope: !141, inlinedAt: !42)
!141 = distinct !DILexicalBlock(scope: !138, file: !1, line: 53, column: 5)
!142 = !DILocation(line: 53, column: 20, scope: !141, inlinedAt: !42)
!143 = !DILocation(line: 53, column: 5, scope: !138, inlinedAt: !42)
!144 = !DILocation(line: 54, column: 9, scope: !145, inlinedAt: !42)
!145 = distinct !DILexicalBlock(scope: !141, file: !1, line: 53, column: 33)
!146 = !DILocation(line: 55, column: 9, scope: !145, inlinedAt: !42)
!147 = !DILocation(line: 56, column: 9, scope: !145, inlinedAt: !42)
!148 = !DILocation(line: 57, column: 9, scope: !145, inlinedAt: !42)
!149 = !DILocation(line: 58, column: 9, scope: !145, inlinedAt: !42)
!150 = !DILocation(line: 59, column: 9, scope: !145, inlinedAt: !42)
!151 = !DILocation(line: 60, column: 9, scope: !145, inlinedAt: !42)
!152 = !DILocation(line: 61, column: 9, scope: !145, inlinedAt: !42)
!153 = !DILocation(line: 53, column: 27, scope: !141, inlinedAt: !42)
!154 = !DILocation(line: 53, column: 5, scope: !141, inlinedAt: !42)
!155 = distinct !{!155, !143, !156}
!156 = !DILocation(line: 62, column: 5, scope: !138, inlinedAt: !42)
!157 = !DILocation(line: 64, column: 19, scope: !158, inlinedAt: !42)
!158 = distinct !DILexicalBlock(scope: !24, file: !1, line: 64, column: 9)
!159 = !DILocation(line: 64, column: 9, scope: !158, inlinedAt: !42)
!160 = !DILocation(line: 64, column: 9, scope: !24, inlinedAt: !42)
!161 = !DILocation(line: 65, column: 16, scope: !162, inlinedAt: !42)
!162 = distinct !DILexicalBlock(scope: !163, file: !1, line: 65, column: 9)
!163 = distinct !DILexicalBlock(scope: !158, file: !1, line: 64, column: 27)
!164 = !DILocation(line: 65, column: 14, scope: !162, inlinedAt: !42)
!165 = !DILocation(line: 65, column: 21, scope: !166, inlinedAt: !42)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 65, column: 9)
!167 = !DILocation(line: 65, column: 23, scope: !166, inlinedAt: !42)
!168 = !DILocation(line: 65, column: 9, scope: !162, inlinedAt: !42)
!169 = !DILocation(line: 66, column: 30, scope: !166, inlinedAt: !42)
!170 = !DILocation(line: 66, column: 28, scope: !166, inlinedAt: !42)
!171 = !DILocation(line: 66, column: 35, scope: !166, inlinedAt: !42)
!172 = !DILocation(line: 66, column: 41, scope: !166, inlinedAt: !42)
!173 = !DILocation(line: 66, column: 33, scope: !166, inlinedAt: !42)
!174 = !DILocation(line: 66, column: 13, scope: !166, inlinedAt: !42)
!175 = !DILocation(line: 66, column: 21, scope: !166, inlinedAt: !42)
!176 = !DILocation(line: 66, column: 23, scope: !166, inlinedAt: !42)
!177 = !DILocation(line: 66, column: 26, scope: !166, inlinedAt: !42)
!178 = !DILocation(line: 65, column: 29, scope: !166, inlinedAt: !42)
!179 = !DILocation(line: 65, column: 9, scope: !166, inlinedAt: !42)
!180 = distinct !{!180, !168, !181}
!181 = !DILocation(line: 66, column: 42, scope: !162, inlinedAt: !42)
!182 = !DILocation(line: 67, column: 5, scope: !163, inlinedAt: !42)
!183 = !DILocation(line: 68, column: 16, scope: !184, inlinedAt: !42)
!184 = distinct !DILexicalBlock(scope: !185, file: !1, line: 68, column: 9)
!185 = distinct !DILexicalBlock(scope: !158, file: !1, line: 67, column: 12)
!186 = !DILocation(line: 68, column: 14, scope: !184, inlinedAt: !42)
!187 = !DILocation(line: 68, column: 21, scope: !188, inlinedAt: !42)
!188 = distinct !DILexicalBlock(scope: !184, file: !1, line: 68, column: 9)
!189 = !DILocation(line: 68, column: 23, scope: !188, inlinedAt: !42)
!190 = !DILocation(line: 68, column: 9, scope: !184, inlinedAt: !42)
!191 = !DILocation(line: 69, column: 13, scope: !192, inlinedAt: !42)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 69, column: 13)
!193 = !DILocation(line: 68, column: 29, scope: !188, inlinedAt: !42)
!194 = !DILocation(line: 68, column: 9, scope: !188, inlinedAt: !42)
!195 = distinct !{!195, !190, !196}
!196 = !DILocation(line: 69, column: 13, scope: !184, inlinedAt: !42)
!197 = !DILocation(line: 116, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !43, file: !1, line: 116, column: 9)
!199 = !DILocation(line: 116, column: 14, scope: !198)
!200 = !DILocation(line: 116, column: 21, scope: !201)
!201 = distinct !DILexicalBlock(scope: !198, file: !1, line: 116, column: 9)
!202 = !DILocation(line: 116, column: 25, scope: !201)
!203 = !DILocation(line: 116, column: 23, scope: !201)
!204 = !DILocation(line: 116, column: 9, scope: !198)
!205 = !DILocation(line: 117, column: 22, scope: !201)
!206 = !DILocation(line: 117, column: 26, scope: !201)
!207 = !DILocation(line: 117, column: 35, scope: !201)
!208 = !DILocation(line: 117, column: 37, scope: !201)
!209 = !DILocation(line: 117, column: 31, scope: !201)
!210 = !DILocation(line: 117, column: 29, scope: !201)
!211 = !DILocation(line: 117, column: 13, scope: !201)
!212 = !DILocation(line: 117, column: 17, scope: !201)
!213 = !DILocation(line: 117, column: 20, scope: !201)
!214 = !DILocation(line: 116, column: 32, scope: !201)
!215 = !DILocation(line: 116, column: 9, scope: !201)
!216 = distinct !{!216, !204, !217}
!217 = !DILocation(line: 117, column: 38, scope: !198)
!218 = !DILocation(line: 118, column: 16, scope: !43)
!219 = !DILocation(line: 118, column: 13, scope: !43)
!220 = !DILocation(line: 119, column: 16, scope: !43)
!221 = !DILocation(line: 119, column: 13, scope: !43)
!222 = !DILocation(line: 120, column: 16, scope: !43)
!223 = !DILocation(line: 120, column: 13, scope: !43)
!224 = !DILocation(line: 128, column: 9, scope: !43)
!225 = !DILocation(line: 128, column: 18, scope: !43)
!226 = distinct !{!226, !122, !227}
!227 = !DILocation(line: 129, column: 5, scope: !12)
!228 = !DILocation(line: 130, column: 1, scope: !12)
!229 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 133, type: !230, scopeLine: 134, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!230 = !DISubroutineType(types: !231)
!231 = !{!49}
!232 = !DILocation(line: 42, column: 39, scope: !24, inlinedAt: !233)
!233 = distinct !DILocation(line: 114, column: 9, scope: !43, inlinedAt: !234)
!234 = distinct !DILocation(line: 151, column: 5, scope: !229)
!235 = !DILocation(line: 42, column: 57, scope: !24, inlinedAt: !233)
!236 = !DILocation(line: 44, column: 9, scope: !24, inlinedAt: !233)
!237 = !DILocation(line: 45, column: 9, scope: !24, inlinedAt: !233)
!238 = !DILocation(line: 49, column: 7, scope: !24, inlinedAt: !233)
!239 = !DILocation(line: 73, column: 36, scope: !12, inlinedAt: !234)
!240 = !DILocation(line: 73, column: 62, scope: !12, inlinedAt: !234)
!241 = !DILocation(line: 74, column: 28, scope: !12, inlinedAt: !234)
!242 = !DILocation(line: 74, column: 52, scope: !12, inlinedAt: !234)
!243 = !DILocation(line: 75, column: 40, scope: !12, inlinedAt: !234)
!244 = !DILocation(line: 77, column: 9, scope: !12, inlinedAt: !234)
!245 = !DILocation(line: 78, column: 16, scope: !12, inlinedAt: !234)
!246 = !DILocation(line: 79, column: 12, scope: !12, inlinedAt: !234)
!247 = !DILocation(line: 79, column: 18, scope: !12, inlinedAt: !234)
!248 = !DILocalVariable(name: "input", scope: !229, file: !1, line: 136, type: !16)
!249 = !DILocation(line: 136, column: 26, scope: !229)
!250 = !DILocalVariable(name: "output", scope: !229, file: !1, line: 137, type: !28)
!251 = !DILocation(line: 137, column: 16, scope: !229)
!252 = !DILocalVariable(name: "key", scope: !229, file: !1, line: 138, type: !253)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 256, elements: !255)
!254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!255 = !{!256}
!256 = !DISubrange(count: 8)
!257 = !DILocation(line: 138, column: 15, scope: !229)
!258 = !DILocalVariable(name: "counter", scope: !229, file: !1, line: 139, type: !259)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 128, elements: !260)
!260 = !{!261}
!261 = !DISubrange(count: 4)
!262 = !DILocation(line: 139, column: 15, scope: !229)
!263 = !DILocalVariable(name: "charset", scope: !229, file: !1, line: 141, type: !264)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 752, elements: !266)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!266 = !{!267}
!267 = !DISubrange(count: 94)
!268 = !DILocation(line: 141, column: 16, scope: !229)
!269 = !DILocalVariable(name: "length", scope: !229, file: !1, line: 142, type: !18)
!270 = !DILocation(line: 142, column: 12, scope: !229)
!271 = !DILocalVariable(name: "size", scope: !229, file: !1, line: 143, type: !49)
!272 = !DILocation(line: 143, column: 9, scope: !229)
!273 = !DILocalVariable(name: "round", scope: !229, file: !1, line: 144, type: !18)
!274 = !DILocation(line: 144, column: 12, scope: !229)
!275 = !DILocalVariable(name: "i", scope: !229, file: !1, line: 145, type: !49)
!276 = !DILocation(line: 145, column: 9, scope: !229)
!277 = !DILocalVariable(name: "buff", scope: !229, file: !1, line: 146, type: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!279 = !DILocation(line: 146, column: 11, scope: !229)
!280 = !DILocation(line: 146, column: 40, scope: !229)
!281 = !DILocation(line: 146, column: 38, scope: !229)
!282 = !DILocation(line: 146, column: 47, scope: !229)
!283 = !DILocation(line: 146, column: 45, scope: !229)
!284 = !DILocation(line: 146, column: 18, scope: !229)
!285 = !DILocation(line: 147, column: 12, scope: !286)
!286 = distinct !DILexicalBlock(scope: !229, file: !1, line: 147, column: 5)
!287 = !DILocation(line: 147, column: 10, scope: !286)
!288 = !DILocation(line: 147, column: 17, scope: !289)
!289 = distinct !DILexicalBlock(scope: !286, file: !1, line: 147, column: 5)
!290 = !DILocation(line: 147, column: 21, scope: !289)
!291 = !DILocation(line: 147, column: 28, scope: !289)
!292 = !DILocation(line: 147, column: 26, scope: !289)
!293 = !DILocation(line: 147, column: 19, scope: !289)
!294 = !DILocation(line: 147, column: 5, scope: !286)
!295 = !DILocalVariable(name: "key", scope: !296, file: !1, line: 148, type: !49)
!296 = distinct !DILexicalBlock(scope: !289, file: !1, line: 147, column: 43)
!297 = !DILocation(line: 148, column: 11, scope: !296)
!298 = !DILocation(line: 148, column: 17, scope: !296)
!299 = !DILocation(line: 148, column: 26, scope: !296)
!300 = !DILocation(line: 148, column: 24, scope: !296)
!301 = !DILocation(line: 149, column: 25, scope: !296)
!302 = !DILocation(line: 149, column: 17, scope: !296)
!303 = !DILocation(line: 149, column: 7, scope: !296)
!304 = !DILocation(line: 149, column: 12, scope: !296)
!305 = !DILocation(line: 149, column: 15, scope: !296)
!306 = !DILocation(line: 150, column: 5, scope: !296)
!307 = !DILocation(line: 147, column: 36, scope: !289)
!308 = !DILocation(line: 147, column: 5, scope: !289)
!309 = distinct !{!309, !294, !310}
!310 = !DILocation(line: 150, column: 5, scope: !286)
!311 = !DILocation(line: 151, column: 20, scope: !229)
!312 = !DILocation(line: 151, column: 29, scope: !229)
!313 = !DILocation(line: 151, column: 41, scope: !229)
!314 = !DILocation(line: 151, column: 46, scope: !229)
!315 = !DILocation(line: 82, column: 5, scope: !12, inlinedAt: !234)
!316 = !DILocation(line: 82, column: 14, scope: !12, inlinedAt: !234)
!317 = !DILocation(line: 85, column: 5, scope: !12, inlinedAt: !234)
!318 = !DILocation(line: 85, column: 14, scope: !12, inlinedAt: !234)
!319 = !DILocation(line: 88, column: 5, scope: !12, inlinedAt: !234)
!320 = !DILocation(line: 88, column: 14, scope: !12, inlinedAt: !234)
!321 = !DILocation(line: 91, column: 5, scope: !12, inlinedAt: !234)
!322 = !DILocation(line: 91, column: 14, scope: !12, inlinedAt: !234)
!323 = !DILocation(line: 95, column: 16, scope: !12, inlinedAt: !234)
!324 = !DILocation(line: 95, column: 5, scope: !12, inlinedAt: !234)
!325 = !DILocation(line: 95, column: 14, scope: !12, inlinedAt: !234)
!326 = !DILocation(line: 96, column: 16, scope: !12, inlinedAt: !234)
!327 = !DILocation(line: 96, column: 5, scope: !12, inlinedAt: !234)
!328 = !DILocation(line: 96, column: 14, scope: !12, inlinedAt: !234)
!329 = !DILocation(line: 97, column: 16, scope: !12, inlinedAt: !234)
!330 = !DILocation(line: 97, column: 5, scope: !12, inlinedAt: !234)
!331 = !DILocation(line: 97, column: 14, scope: !12, inlinedAt: !234)
!332 = !DILocation(line: 98, column: 16, scope: !12, inlinedAt: !234)
!333 = !DILocation(line: 98, column: 5, scope: !12, inlinedAt: !234)
!334 = !DILocation(line: 98, column: 14, scope: !12, inlinedAt: !234)
!335 = !DILocation(line: 99, column: 16, scope: !12, inlinedAt: !234)
!336 = !DILocation(line: 99, column: 5, scope: !12, inlinedAt: !234)
!337 = !DILocation(line: 99, column: 14, scope: !12, inlinedAt: !234)
!338 = !DILocation(line: 100, column: 16, scope: !12, inlinedAt: !234)
!339 = !DILocation(line: 100, column: 5, scope: !12, inlinedAt: !234)
!340 = !DILocation(line: 100, column: 14, scope: !12, inlinedAt: !234)
!341 = !DILocation(line: 101, column: 17, scope: !12, inlinedAt: !234)
!342 = !DILocation(line: 101, column: 5, scope: !12, inlinedAt: !234)
!343 = !DILocation(line: 101, column: 15, scope: !12, inlinedAt: !234)
!344 = !DILocation(line: 102, column: 17, scope: !12, inlinedAt: !234)
!345 = !DILocation(line: 102, column: 5, scope: !12, inlinedAt: !234)
!346 = !DILocation(line: 102, column: 15, scope: !12, inlinedAt: !234)
!347 = !DILocation(line: 104, column: 17, scope: !12, inlinedAt: !234)
!348 = !DILocation(line: 104, column: 5, scope: !12, inlinedAt: !234)
!349 = !DILocation(line: 104, column: 15, scope: !12, inlinedAt: !234)
!350 = !DILocation(line: 105, column: 17, scope: !12, inlinedAt: !234)
!351 = !DILocation(line: 105, column: 5, scope: !12, inlinedAt: !234)
!352 = !DILocation(line: 105, column: 15, scope: !12, inlinedAt: !234)
!353 = !DILocation(line: 106, column: 17, scope: !12, inlinedAt: !234)
!354 = !DILocation(line: 106, column: 5, scope: !12, inlinedAt: !234)
!355 = !DILocation(line: 106, column: 15, scope: !12, inlinedAt: !234)
!356 = !DILocation(line: 107, column: 17, scope: !12, inlinedAt: !234)
!357 = !DILocation(line: 107, column: 5, scope: !12, inlinedAt: !234)
!358 = !DILocation(line: 107, column: 15, scope: !12, inlinedAt: !234)
!359 = !DILocation(line: 109, column: 5, scope: !12, inlinedAt: !234)
!360 = !DILocation(line: 109, column: 12, scope: !12, inlinedAt: !234)
!361 = !DILocation(line: 109, column: 16, scope: !12, inlinedAt: !234)
!362 = !DILocation(line: 110, column: 14, scope: !43, inlinedAt: !234)
!363 = !DILocation(line: 111, column: 13, scope: !127, inlinedAt: !234)
!364 = !DILocation(line: 111, column: 19, scope: !127, inlinedAt: !234)
!365 = !DILocation(line: 111, column: 17, scope: !127, inlinedAt: !234)
!366 = !DILocation(line: 111, column: 13, scope: !43, inlinedAt: !234)
!367 = !DILocation(line: 112, column: 20, scope: !127, inlinedAt: !234)
!368 = !DILocation(line: 112, column: 18, scope: !127, inlinedAt: !234)
!369 = !DILocation(line: 112, column: 13, scope: !127, inlinedAt: !234)
!370 = !DILocation(line: 114, column: 29, scope: !43, inlinedAt: !234)
!371 = !DILocation(line: 51, column: 5, scope: !24, inlinedAt: !233)
!372 = !DILocation(line: 51, column: 15, scope: !24, inlinedAt: !233)
!373 = !DILocation(line: 53, column: 12, scope: !138, inlinedAt: !233)
!374 = !DILocation(line: 53, column: 10, scope: !138, inlinedAt: !233)
!375 = !DILocation(line: 53, column: 18, scope: !141, inlinedAt: !233)
!376 = !DILocation(line: 53, column: 20, scope: !141, inlinedAt: !233)
!377 = !DILocation(line: 53, column: 5, scope: !138, inlinedAt: !233)
!378 = !DILocation(line: 54, column: 9, scope: !145, inlinedAt: !233)
!379 = !DILocation(line: 55, column: 9, scope: !145, inlinedAt: !233)
!380 = !DILocation(line: 56, column: 9, scope: !145, inlinedAt: !233)
!381 = !DILocation(line: 57, column: 9, scope: !145, inlinedAt: !233)
!382 = !DILocation(line: 58, column: 9, scope: !145, inlinedAt: !233)
!383 = !DILocation(line: 59, column: 9, scope: !145, inlinedAt: !233)
!384 = !DILocation(line: 60, column: 9, scope: !145, inlinedAt: !233)
!385 = !DILocation(line: 61, column: 9, scope: !145, inlinedAt: !233)
!386 = !DILocation(line: 53, column: 27, scope: !141, inlinedAt: !233)
!387 = !DILocation(line: 53, column: 5, scope: !141, inlinedAt: !233)
!388 = distinct !{!388, !377, !389}
!389 = !DILocation(line: 62, column: 5, scope: !138, inlinedAt: !233)
!390 = !DILocation(line: 64, column: 19, scope: !158, inlinedAt: !233)
!391 = !DILocation(line: 64, column: 9, scope: !158, inlinedAt: !233)
!392 = !DILocation(line: 64, column: 9, scope: !24, inlinedAt: !233)
!393 = !DILocation(line: 65, column: 16, scope: !162, inlinedAt: !233)
!394 = !DILocation(line: 65, column: 14, scope: !162, inlinedAt: !233)
!395 = !DILocation(line: 65, column: 21, scope: !166, inlinedAt: !233)
!396 = !DILocation(line: 65, column: 23, scope: !166, inlinedAt: !233)
!397 = !DILocation(line: 65, column: 9, scope: !162, inlinedAt: !233)
!398 = !DILocation(line: 66, column: 30, scope: !166, inlinedAt: !233)
!399 = !DILocation(line: 66, column: 28, scope: !166, inlinedAt: !233)
!400 = !DILocation(line: 66, column: 35, scope: !166, inlinedAt: !233)
!401 = !DILocation(line: 66, column: 41, scope: !166, inlinedAt: !233)
!402 = !DILocation(line: 66, column: 33, scope: !166, inlinedAt: !233)
!403 = !DILocation(line: 66, column: 13, scope: !166, inlinedAt: !233)
!404 = !DILocation(line: 66, column: 21, scope: !166, inlinedAt: !233)
!405 = !DILocation(line: 66, column: 23, scope: !166, inlinedAt: !233)
!406 = !DILocation(line: 66, column: 26, scope: !166, inlinedAt: !233)
!407 = !DILocation(line: 65, column: 29, scope: !166, inlinedAt: !233)
!408 = !DILocation(line: 65, column: 9, scope: !166, inlinedAt: !233)
!409 = distinct !{!409, !397, !410}
!410 = !DILocation(line: 66, column: 42, scope: !162, inlinedAt: !233)
!411 = !DILocation(line: 67, column: 5, scope: !163, inlinedAt: !233)
!412 = !DILocation(line: 68, column: 16, scope: !184, inlinedAt: !233)
!413 = !DILocation(line: 68, column: 14, scope: !184, inlinedAt: !233)
!414 = !DILocation(line: 68, column: 21, scope: !188, inlinedAt: !233)
!415 = !DILocation(line: 68, column: 23, scope: !188, inlinedAt: !233)
!416 = !DILocation(line: 68, column: 9, scope: !184, inlinedAt: !233)
!417 = !DILocation(line: 69, column: 13, scope: !192, inlinedAt: !233)
!418 = !DILocation(line: 68, column: 29, scope: !188, inlinedAt: !233)
!419 = !DILocation(line: 68, column: 9, scope: !188, inlinedAt: !233)
!420 = distinct !{!420, !416, !421}
!421 = !DILocation(line: 69, column: 13, scope: !184, inlinedAt: !233)
!422 = !DILocation(line: 116, column: 16, scope: !198, inlinedAt: !234)
!423 = !DILocation(line: 116, column: 14, scope: !198, inlinedAt: !234)
!424 = !DILocation(line: 116, column: 21, scope: !201, inlinedAt: !234)
!425 = !DILocation(line: 116, column: 25, scope: !201, inlinedAt: !234)
!426 = !DILocation(line: 116, column: 23, scope: !201, inlinedAt: !234)
!427 = !DILocation(line: 116, column: 9, scope: !198, inlinedAt: !234)
!428 = !DILocation(line: 117, column: 22, scope: !201, inlinedAt: !234)
!429 = !DILocation(line: 117, column: 26, scope: !201, inlinedAt: !234)
!430 = !DILocation(line: 117, column: 35, scope: !201, inlinedAt: !234)
!431 = !DILocation(line: 117, column: 37, scope: !201, inlinedAt: !234)
!432 = !DILocation(line: 117, column: 31, scope: !201, inlinedAt: !234)
!433 = !DILocation(line: 117, column: 29, scope: !201, inlinedAt: !234)
!434 = !DILocation(line: 117, column: 13, scope: !201, inlinedAt: !234)
!435 = !DILocation(line: 117, column: 17, scope: !201, inlinedAt: !234)
!436 = !DILocation(line: 117, column: 20, scope: !201, inlinedAt: !234)
!437 = !DILocation(line: 116, column: 32, scope: !201, inlinedAt: !234)
!438 = !DILocation(line: 116, column: 9, scope: !201, inlinedAt: !234)
!439 = distinct !{!439, !427, !440}
!440 = !DILocation(line: 117, column: 38, scope: !198, inlinedAt: !234)
!441 = !DILocation(line: 118, column: 16, scope: !43, inlinedAt: !234)
!442 = !DILocation(line: 118, column: 13, scope: !43, inlinedAt: !234)
!443 = !DILocation(line: 119, column: 16, scope: !43, inlinedAt: !234)
!444 = !DILocation(line: 119, column: 13, scope: !43, inlinedAt: !234)
!445 = !DILocation(line: 120, column: 16, scope: !43, inlinedAt: !234)
!446 = !DILocation(line: 120, column: 13, scope: !43, inlinedAt: !234)
!447 = !DILocation(line: 128, column: 9, scope: !43, inlinedAt: !234)
!448 = !DILocation(line: 128, column: 18, scope: !43, inlinedAt: !234)
!449 = distinct !{!449, !359, !450}
!450 = !DILocation(line: 129, column: 5, scope: !12, inlinedAt: !234)
!451 = !DILocation(line: 152, column: 5, scope: !229)
