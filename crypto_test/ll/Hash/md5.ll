; ModuleID = 'bc/Hash/md5.bc'
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
define dso_local i32 @MD5_Update(%struct.MD5state_st* %c, i8* %data_, i64 %len) #0 {
entry:
  %c.addr.i47 = alloca %struct.MD5state_st*, align 8
  %data_.addr.i48 = alloca i8*, align 8
  %num.addr.i49 = alloca i64, align 8
  %data.i50 = alloca i8*, align 8
  %A.i51 = alloca i32, align 4
  %B.i52 = alloca i32, align 4
  %C.i53 = alloca i32, align 4
  %D.i54 = alloca i32, align 4
  %l.i55 = alloca i32, align 4
  %XX0.i56 = alloca i32, align 4
  %XX1.i57 = alloca i32, align 4
  %XX2.i58 = alloca i32, align 4
  %XX3.i59 = alloca i32, align 4
  %XX4.i60 = alloca i32, align 4
  %XX5.i61 = alloca i32, align 4
  %XX6.i62 = alloca i32, align 4
  %XX7.i63 = alloca i32, align 4
  %XX8.i64 = alloca i32, align 4
  %XX9.i65 = alloca i32, align 4
  %XX10.i66 = alloca i32, align 4
  %XX11.i67 = alloca i32, align 4
  %XX12.i68 = alloca i32, align 4
  %XX13.i69 = alloca i32, align 4
  %XX14.i70 = alloca i32, align 4
  %XX15.i71 = alloca i32, align 4
  %c.addr.i = alloca %struct.MD5state_st*, align 8
  %data_.addr.i = alloca i8*, align 8
  %num.addr.i = alloca i64, align 8
  %data.i = alloca i8*, align 8
  %A.i = alloca i32, align 4
  %B.i = alloca i32, align 4
  %C.i = alloca i32, align 4
  %D.i = alloca i32, align 4
  %l.i = alloca i32, align 4
  %XX0.i = alloca i32, align 4
  %XX1.i = alloca i32, align 4
  %XX2.i = alloca i32, align 4
  %XX3.i = alloca i32, align 4
  %XX4.i = alloca i32, align 4
  %XX5.i = alloca i32, align 4
  %XX6.i = alloca i32, align 4
  %XX7.i = alloca i32, align 4
  %XX8.i = alloca i32, align 4
  %XX9.i = alloca i32, align 4
  %XX10.i = alloca i32, align 4
  %XX11.i = alloca i32, align 4
  %XX12.i = alloca i32, align 4
  %XX13.i = alloca i32, align 4
  %XX14.i = alloca i32, align 4
  %XX15.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %c.addr = alloca %struct.MD5state_st*, align 8
  %data_.addr = alloca i8*, align 8
  %len.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %p = alloca i8*, align 8
  %l = alloca i32, align 4
  %n = alloca i64, align 8
  store %struct.MD5state_st* %c, %struct.MD5state_st** %c.addr, align 8
  store i8* %data_, i8** %data_.addr, align 8
  store i64 %len, i64* %len.addr, align 8
  %0 = load i8*, i8** %data_.addr, align 8
  store i8* %0, i8** %data, align 8
  %1 = load i64, i64* %len.addr, align 8
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %2 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %2, i32 0, i32 4
  %3 = load i32, i32* %Nl, align 4
  %4 = load i64, i64* %len.addr, align 8
  %conv = trunc i64 %4 to i32
  %shl = shl i32 %conv, 3
  %add = add i32 %3, %shl
  %conv1 = zext i32 %add to i64
  %and = and i64 %conv1, 4294967295
  %conv2 = trunc i64 %and to i32
  store i32 %conv2, i32* %l, align 4
  %5 = load i32, i32* %l, align 4
  %6 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl3 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %6, i32 0, i32 4
  %7 = load i32, i32* %Nl3, align 4
  %cmp4 = icmp ult i32 %5, %7
  br i1 %cmp4, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  %8 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %8, i32 0, i32 5
  %9 = load i32, i32* %Nh, align 4
  %inc = add i32 %9, 1
  store i32 %inc, i32* %Nh, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end
  %10 = load i64, i64* %len.addr, align 8
  %shr = lshr i64 %10, 29
  %conv8 = trunc i64 %shr to i32
  %11 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh9 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %11, i32 0, i32 5
  %12 = load i32, i32* %Nh9, align 4
  %add10 = add i32 %12, %conv8
  store i32 %add10, i32* %Nh9, align 4
  %13 = load i32, i32* %l, align 4
  %14 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl11 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %14, i32 0, i32 4
  store i32 %13, i32* %Nl11, align 4
  %15 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %num = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %15, i32 0, i32 7
  %16 = load i32, i32* %num, align 4
  %conv12 = zext i32 %16 to i64
  store i64 %conv12, i64* %n, align 8
  %17 = load i64, i64* %n, align 8
  %cmp13 = icmp ne i64 %17, 0
  br i1 %cmp13, label %if.then15, label %if.end32

if.then15:                                        ; preds = %if.end7
  %18 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %data16 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %18, i32 0, i32 6
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %data16, i64 0, i64 0
  %19 = bitcast i32* %arraydecay to i8*
  store i8* %19, i8** %p, align 8
  %20 = load i64, i64* %len.addr, align 8
  %cmp17 = icmp uge i64 %20, 64
  br i1 %cmp17, label %if.then22, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then15
  %21 = load i64, i64* %len.addr, align 8
  %22 = load i64, i64* %n, align 8
  %add19 = add i64 %21, %22
  %cmp20 = icmp uge i64 %add19, 64
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %lor.lhs.false, %if.then15
  %23 = load i8*, i8** %p, align 8
  %24 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds i8, i8* %23, i64 %24
  %25 = load i8*, i8** %data, align 8
  %26 = load i64, i64* %n, align 8
  %sub = sub i64 64, %26
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr, i8* align 1 %25, i64 %sub, i1 false)
  %27 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %28 = load i8*, i8** %p, align 8
  store %struct.MD5state_st* %27, %struct.MD5state_st** %c.addr.i, align 8
  store i8* %28, i8** %data_.addr.i, align 8
  store i64 1, i64* %num.addr.i, align 8
  %29 = load i8*, i8** %data_.addr.i, align 8
  store i8* %29, i8** %data.i, align 8
  %30 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %A1.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %30, i32 0, i32 0
  %31 = load i32, i32* %A1.i, align 4
  store i32 %31, i32* %A.i, align 4
  %32 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %B2.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %32, i32 0, i32 1
  %33 = load i32, i32* %B2.i, align 4
  store i32 %33, i32* %B.i, align 4
  %34 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %C3.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %34, i32 0, i32 2
  %35 = load i32, i32* %C3.i, align 4
  store i32 %35, i32* %C.i, align 4
  %36 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %D4.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %36, i32 0, i32 3
  %37 = load i32, i32* %D4.i, align 4
  store i32 %37, i32* %D.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then22
  %38 = load i64, i64* %num.addr.i, align 8
  %dec.i = add i64 %38, -1
  store i64 %dec.i, i64* %num.addr.i, align 8
  %tobool.i = icmp ne i64 %38, 0
  br i1 %tobool.i, label %for.body.i, label %md5_block_data_order.exit

for.body.i:                                       ; preds = %for.cond.i
  %39 = load i8*, i8** %data.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %incdec.ptr.i, i8** %data.i, align 8
  %40 = load i8, i8* %39, align 1
  %conv.i = zext i8 %40 to i64
  %conv5.i = trunc i64 %conv.i to i32
  store i32 %conv5.i, i32* %l.i, align 4
  %41 = load i8*, i8** %data.i, align 8
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %incdec.ptr6.i, i8** %data.i, align 8
  %42 = load i8, i8* %41, align 1
  %conv7.i = zext i8 %42 to i64
  %shl.i = shl i64 %conv7.i, 8
  %43 = load i32, i32* %l.i, align 4
  %conv8.i = zext i32 %43 to i64
  %or.i = or i64 %conv8.i, %shl.i
  %conv9.i = trunc i64 %or.i to i32
  store i32 %conv9.i, i32* %l.i, align 4
  %44 = load i8*, i8** %data.i, align 8
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr10.i, i8** %data.i, align 8
  %45 = load i8, i8* %44, align 1
  %conv11.i = zext i8 %45 to i64
  %shl12.i = shl i64 %conv11.i, 16
  %46 = load i32, i32* %l.i, align 4
  %conv13.i = zext i32 %46 to i64
  %or14.i = or i64 %conv13.i, %shl12.i
  %conv15.i = trunc i64 %or14.i to i32
  store i32 %conv15.i, i32* %l.i, align 4
  %47 = load i8*, i8** %data.i, align 8
  %incdec.ptr16.i = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %incdec.ptr16.i, i8** %data.i, align 8
  %48 = load i8, i8* %47, align 1
  %conv17.i = zext i8 %48 to i64
  %shl18.i = shl i64 %conv17.i, 24
  %49 = load i32, i32* %l.i, align 4
  %conv19.i = zext i32 %49 to i64
  %or20.i = or i64 %conv19.i, %shl18.i
  %conv21.i = trunc i64 %or20.i to i32
  store i32 %conv21.i, i32* %l.i, align 4
  %50 = load i32, i32* %l.i, align 4
  store i32 %50, i32* %XX0.i, align 4
  %51 = load i8*, i8** %data.i, align 8
  %incdec.ptr22.i = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr22.i, i8** %data.i, align 8
  %52 = load i8, i8* %51, align 1
  %conv23.i = zext i8 %52 to i64
  %conv24.i = trunc i64 %conv23.i to i32
  store i32 %conv24.i, i32* %l.i, align 4
  %53 = load i8*, i8** %data.i, align 8
  %incdec.ptr25.i = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %incdec.ptr25.i, i8** %data.i, align 8
  %54 = load i8, i8* %53, align 1
  %conv26.i = zext i8 %54 to i64
  %shl27.i = shl i64 %conv26.i, 8
  %55 = load i32, i32* %l.i, align 4
  %conv28.i = zext i32 %55 to i64
  %or29.i = or i64 %conv28.i, %shl27.i
  %conv30.i = trunc i64 %or29.i to i32
  store i32 %conv30.i, i32* %l.i, align 4
  %56 = load i8*, i8** %data.i, align 8
  %incdec.ptr31.i = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %incdec.ptr31.i, i8** %data.i, align 8
  %57 = load i8, i8* %56, align 1
  %conv32.i = zext i8 %57 to i64
  %shl33.i = shl i64 %conv32.i, 16
  %58 = load i32, i32* %l.i, align 4
  %conv34.i = zext i32 %58 to i64
  %or35.i = or i64 %conv34.i, %shl33.i
  %conv36.i = trunc i64 %or35.i to i32
  store i32 %conv36.i, i32* %l.i, align 4
  %59 = load i8*, i8** %data.i, align 8
  %incdec.ptr37.i = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr37.i, i8** %data.i, align 8
  %60 = load i8, i8* %59, align 1
  %conv38.i = zext i8 %60 to i64
  %shl39.i = shl i64 %conv38.i, 24
  %61 = load i32, i32* %l.i, align 4
  %conv40.i = zext i32 %61 to i64
  %or41.i = or i64 %conv40.i, %shl39.i
  %conv42.i = trunc i64 %or41.i to i32
  store i32 %conv42.i, i32* %l.i, align 4
  %62 = load i32, i32* %l.i, align 4
  store i32 %62, i32* %XX1.i, align 4
  %63 = load i32, i32* %XX0.i, align 4
  %conv43.i = zext i32 %63 to i64
  %add.i = add nsw i64 %conv43.i, 3614090360
  %64 = load i32, i32* %C.i, align 4
  %65 = load i32, i32* %D.i, align 4
  %xor.i = xor i32 %64, %65
  %66 = load i32, i32* %B.i, align 4
  %and.i = and i32 %xor.i, %66
  %67 = load i32, i32* %D.i, align 4
  %xor44.i = xor i32 %and.i, %67
  %conv45.i = zext i32 %xor44.i to i64
  %add46.i = add nsw i64 %add.i, %conv45.i
  %68 = load i32, i32* %A.i, align 4
  %conv47.i = zext i32 %68 to i64
  %add48.i = add nsw i64 %conv47.i, %add46.i
  %conv49.i = trunc i64 %add48.i to i32
  store i32 %conv49.i, i32* %A.i, align 4
  %69 = load i32, i32* %A.i, align 4
  %shl50.i = shl i32 %69, 7
  %70 = load i32, i32* %A.i, align 4
  %shr.i = lshr i32 %70, 25
  %or51.i = or i32 %shl50.i, %shr.i
  store i32 %or51.i, i32* %A.i, align 4
  %71 = load i32, i32* %B.i, align 4
  %72 = load i32, i32* %A.i, align 4
  %add52.i = add i32 %72, %71
  store i32 %add52.i, i32* %A.i, align 4
  %73 = load i8*, i8** %data.i, align 8
  %incdec.ptr53.i = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr53.i, i8** %data.i, align 8
  %74 = load i8, i8* %73, align 1
  %conv54.i = zext i8 %74 to i64
  %conv55.i = trunc i64 %conv54.i to i32
  store i32 %conv55.i, i32* %l.i, align 4
  %75 = load i8*, i8** %data.i, align 8
  %incdec.ptr56.i = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %incdec.ptr56.i, i8** %data.i, align 8
  %76 = load i8, i8* %75, align 1
  %conv57.i = zext i8 %76 to i64
  %shl58.i = shl i64 %conv57.i, 8
  %77 = load i32, i32* %l.i, align 4
  %conv59.i = zext i32 %77 to i64
  %or60.i = or i64 %conv59.i, %shl58.i
  %conv61.i = trunc i64 %or60.i to i32
  store i32 %conv61.i, i32* %l.i, align 4
  %78 = load i8*, i8** %data.i, align 8
  %incdec.ptr62.i = getelementptr inbounds i8, i8* %78, i32 1
  store i8* %incdec.ptr62.i, i8** %data.i, align 8
  %79 = load i8, i8* %78, align 1
  %conv63.i = zext i8 %79 to i64
  %shl64.i = shl i64 %conv63.i, 16
  %80 = load i32, i32* %l.i, align 4
  %conv65.i = zext i32 %80 to i64
  %or66.i = or i64 %conv65.i, %shl64.i
  %conv67.i = trunc i64 %or66.i to i32
  store i32 %conv67.i, i32* %l.i, align 4
  %81 = load i8*, i8** %data.i, align 8
  %incdec.ptr68.i = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr68.i, i8** %data.i, align 8
  %82 = load i8, i8* %81, align 1
  %conv69.i = zext i8 %82 to i64
  %shl70.i = shl i64 %conv69.i, 24
  %83 = load i32, i32* %l.i, align 4
  %conv71.i = zext i32 %83 to i64
  %or72.i = or i64 %conv71.i, %shl70.i
  %conv73.i = trunc i64 %or72.i to i32
  store i32 %conv73.i, i32* %l.i, align 4
  %84 = load i32, i32* %l.i, align 4
  store i32 %84, i32* %XX2.i, align 4
  %85 = load i32, i32* %XX1.i, align 4
  %conv74.i = zext i32 %85 to i64
  %add75.i = add nsw i64 %conv74.i, 3905402710
  %86 = load i32, i32* %B.i, align 4
  %87 = load i32, i32* %C.i, align 4
  %xor76.i = xor i32 %86, %87
  %88 = load i32, i32* %A.i, align 4
  %and77.i = and i32 %xor76.i, %88
  %89 = load i32, i32* %C.i, align 4
  %xor78.i = xor i32 %and77.i, %89
  %conv79.i = zext i32 %xor78.i to i64
  %add80.i = add nsw i64 %add75.i, %conv79.i
  %90 = load i32, i32* %D.i, align 4
  %conv81.i = zext i32 %90 to i64
  %add82.i = add nsw i64 %conv81.i, %add80.i
  %conv83.i = trunc i64 %add82.i to i32
  store i32 %conv83.i, i32* %D.i, align 4
  %91 = load i32, i32* %D.i, align 4
  %shl84.i = shl i32 %91, 12
  %92 = load i32, i32* %D.i, align 4
  %shr85.i = lshr i32 %92, 20
  %or86.i = or i32 %shl84.i, %shr85.i
  store i32 %or86.i, i32* %D.i, align 4
  %93 = load i32, i32* %A.i, align 4
  %94 = load i32, i32* %D.i, align 4
  %add87.i = add i32 %94, %93
  store i32 %add87.i, i32* %D.i, align 4
  %95 = load i8*, i8** %data.i, align 8
  %incdec.ptr88.i = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr88.i, i8** %data.i, align 8
  %96 = load i8, i8* %95, align 1
  %conv89.i = zext i8 %96 to i64
  %conv90.i = trunc i64 %conv89.i to i32
  store i32 %conv90.i, i32* %l.i, align 4
  %97 = load i8*, i8** %data.i, align 8
  %incdec.ptr91.i = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %incdec.ptr91.i, i8** %data.i, align 8
  %98 = load i8, i8* %97, align 1
  %conv92.i = zext i8 %98 to i64
  %shl93.i = shl i64 %conv92.i, 8
  %99 = load i32, i32* %l.i, align 4
  %conv94.i = zext i32 %99 to i64
  %or95.i = or i64 %conv94.i, %shl93.i
  %conv96.i = trunc i64 %or95.i to i32
  store i32 %conv96.i, i32* %l.i, align 4
  %100 = load i8*, i8** %data.i, align 8
  %incdec.ptr97.i = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %incdec.ptr97.i, i8** %data.i, align 8
  %101 = load i8, i8* %100, align 1
  %conv98.i = zext i8 %101 to i64
  %shl99.i = shl i64 %conv98.i, 16
  %102 = load i32, i32* %l.i, align 4
  %conv100.i = zext i32 %102 to i64
  %or101.i = or i64 %conv100.i, %shl99.i
  %conv102.i = trunc i64 %or101.i to i32
  store i32 %conv102.i, i32* %l.i, align 4
  %103 = load i8*, i8** %data.i, align 8
  %incdec.ptr103.i = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr103.i, i8** %data.i, align 8
  %104 = load i8, i8* %103, align 1
  %conv104.i = zext i8 %104 to i64
  %shl105.i = shl i64 %conv104.i, 24
  %105 = load i32, i32* %l.i, align 4
  %conv106.i = zext i32 %105 to i64
  %or107.i = or i64 %conv106.i, %shl105.i
  %conv108.i = trunc i64 %or107.i to i32
  store i32 %conv108.i, i32* %l.i, align 4
  %106 = load i32, i32* %l.i, align 4
  store i32 %106, i32* %XX3.i, align 4
  %107 = load i32, i32* %XX2.i, align 4
  %conv109.i = zext i32 %107 to i64
  %add110.i = add nsw i64 %conv109.i, 606105819
  %108 = load i32, i32* %A.i, align 4
  %109 = load i32, i32* %B.i, align 4
  %xor111.i = xor i32 %108, %109
  %110 = load i32, i32* %D.i, align 4
  %and112.i = and i32 %xor111.i, %110
  %111 = load i32, i32* %B.i, align 4
  %xor113.i = xor i32 %and112.i, %111
  %conv114.i = zext i32 %xor113.i to i64
  %add115.i = add nsw i64 %add110.i, %conv114.i
  %112 = load i32, i32* %C.i, align 4
  %conv116.i = zext i32 %112 to i64
  %add117.i = add nsw i64 %conv116.i, %add115.i
  %conv118.i = trunc i64 %add117.i to i32
  store i32 %conv118.i, i32* %C.i, align 4
  %113 = load i32, i32* %C.i, align 4
  %shl119.i = shl i32 %113, 17
  %114 = load i32, i32* %C.i, align 4
  %shr120.i = lshr i32 %114, 15
  %or121.i = or i32 %shl119.i, %shr120.i
  store i32 %or121.i, i32* %C.i, align 4
  %115 = load i32, i32* %D.i, align 4
  %116 = load i32, i32* %C.i, align 4
  %add122.i = add i32 %116, %115
  store i32 %add122.i, i32* %C.i, align 4
  %117 = load i8*, i8** %data.i, align 8
  %incdec.ptr123.i = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr123.i, i8** %data.i, align 8
  %118 = load i8, i8* %117, align 1
  %conv124.i = zext i8 %118 to i64
  %conv125.i = trunc i64 %conv124.i to i32
  store i32 %conv125.i, i32* %l.i, align 4
  %119 = load i8*, i8** %data.i, align 8
  %incdec.ptr126.i = getelementptr inbounds i8, i8* %119, i32 1
  store i8* %incdec.ptr126.i, i8** %data.i, align 8
  %120 = load i8, i8* %119, align 1
  %conv127.i = zext i8 %120 to i64
  %shl128.i = shl i64 %conv127.i, 8
  %121 = load i32, i32* %l.i, align 4
  %conv129.i = zext i32 %121 to i64
  %or130.i = or i64 %conv129.i, %shl128.i
  %conv131.i = trunc i64 %or130.i to i32
  store i32 %conv131.i, i32* %l.i, align 4
  %122 = load i8*, i8** %data.i, align 8
  %incdec.ptr132.i = getelementptr inbounds i8, i8* %122, i32 1
  store i8* %incdec.ptr132.i, i8** %data.i, align 8
  %123 = load i8, i8* %122, align 1
  %conv133.i = zext i8 %123 to i64
  %shl134.i = shl i64 %conv133.i, 16
  %124 = load i32, i32* %l.i, align 4
  %conv135.i = zext i32 %124 to i64
  %or136.i = or i64 %conv135.i, %shl134.i
  %conv137.i = trunc i64 %or136.i to i32
  store i32 %conv137.i, i32* %l.i, align 4
  %125 = load i8*, i8** %data.i, align 8
  %incdec.ptr138.i = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr138.i, i8** %data.i, align 8
  %126 = load i8, i8* %125, align 1
  %conv139.i = zext i8 %126 to i64
  %shl140.i = shl i64 %conv139.i, 24
  %127 = load i32, i32* %l.i, align 4
  %conv141.i = zext i32 %127 to i64
  %or142.i = or i64 %conv141.i, %shl140.i
  %conv143.i = trunc i64 %or142.i to i32
  store i32 %conv143.i, i32* %l.i, align 4
  %128 = load i32, i32* %l.i, align 4
  store i32 %128, i32* %XX4.i, align 4
  %129 = load i32, i32* %XX3.i, align 4
  %conv144.i = zext i32 %129 to i64
  %add145.i = add nsw i64 %conv144.i, 3250441966
  %130 = load i32, i32* %D.i, align 4
  %131 = load i32, i32* %A.i, align 4
  %xor146.i = xor i32 %130, %131
  %132 = load i32, i32* %C.i, align 4
  %and147.i = and i32 %xor146.i, %132
  %133 = load i32, i32* %A.i, align 4
  %xor148.i = xor i32 %and147.i, %133
  %conv149.i = zext i32 %xor148.i to i64
  %add150.i = add nsw i64 %add145.i, %conv149.i
  %134 = load i32, i32* %B.i, align 4
  %conv151.i = zext i32 %134 to i64
  %add152.i = add nsw i64 %conv151.i, %add150.i
  %conv153.i = trunc i64 %add152.i to i32
  store i32 %conv153.i, i32* %B.i, align 4
  %135 = load i32, i32* %B.i, align 4
  %shl154.i = shl i32 %135, 22
  %136 = load i32, i32* %B.i, align 4
  %shr155.i = lshr i32 %136, 10
  %or156.i = or i32 %shl154.i, %shr155.i
  store i32 %or156.i, i32* %B.i, align 4
  %137 = load i32, i32* %C.i, align 4
  %138 = load i32, i32* %B.i, align 4
  %add157.i = add i32 %138, %137
  store i32 %add157.i, i32* %B.i, align 4
  %139 = load i8*, i8** %data.i, align 8
  %incdec.ptr158.i = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr158.i, i8** %data.i, align 8
  %140 = load i8, i8* %139, align 1
  %conv159.i = zext i8 %140 to i64
  %conv160.i = trunc i64 %conv159.i to i32
  store i32 %conv160.i, i32* %l.i, align 4
  %141 = load i8*, i8** %data.i, align 8
  %incdec.ptr161.i = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %incdec.ptr161.i, i8** %data.i, align 8
  %142 = load i8, i8* %141, align 1
  %conv162.i = zext i8 %142 to i64
  %shl163.i = shl i64 %conv162.i, 8
  %143 = load i32, i32* %l.i, align 4
  %conv164.i = zext i32 %143 to i64
  %or165.i = or i64 %conv164.i, %shl163.i
  %conv166.i = trunc i64 %or165.i to i32
  store i32 %conv166.i, i32* %l.i, align 4
  %144 = load i8*, i8** %data.i, align 8
  %incdec.ptr167.i = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %incdec.ptr167.i, i8** %data.i, align 8
  %145 = load i8, i8* %144, align 1
  %conv168.i = zext i8 %145 to i64
  %shl169.i = shl i64 %conv168.i, 16
  %146 = load i32, i32* %l.i, align 4
  %conv170.i = zext i32 %146 to i64
  %or171.i = or i64 %conv170.i, %shl169.i
  %conv172.i = trunc i64 %or171.i to i32
  store i32 %conv172.i, i32* %l.i, align 4
  %147 = load i8*, i8** %data.i, align 8
  %incdec.ptr173.i = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr173.i, i8** %data.i, align 8
  %148 = load i8, i8* %147, align 1
  %conv174.i = zext i8 %148 to i64
  %shl175.i = shl i64 %conv174.i, 24
  %149 = load i32, i32* %l.i, align 4
  %conv176.i = zext i32 %149 to i64
  %or177.i = or i64 %conv176.i, %shl175.i
  %conv178.i = trunc i64 %or177.i to i32
  store i32 %conv178.i, i32* %l.i, align 4
  %150 = load i32, i32* %l.i, align 4
  store i32 %150, i32* %XX5.i, align 4
  %151 = load i32, i32* %XX4.i, align 4
  %conv179.i = zext i32 %151 to i64
  %add180.i = add nsw i64 %conv179.i, 4118548399
  %152 = load i32, i32* %C.i, align 4
  %153 = load i32, i32* %D.i, align 4
  %xor181.i = xor i32 %152, %153
  %154 = load i32, i32* %B.i, align 4
  %and182.i = and i32 %xor181.i, %154
  %155 = load i32, i32* %D.i, align 4
  %xor183.i = xor i32 %and182.i, %155
  %conv184.i = zext i32 %xor183.i to i64
  %add185.i = add nsw i64 %add180.i, %conv184.i
  %156 = load i32, i32* %A.i, align 4
  %conv186.i = zext i32 %156 to i64
  %add187.i = add nsw i64 %conv186.i, %add185.i
  %conv188.i = trunc i64 %add187.i to i32
  store i32 %conv188.i, i32* %A.i, align 4
  %157 = load i32, i32* %A.i, align 4
  %shl189.i = shl i32 %157, 7
  %158 = load i32, i32* %A.i, align 4
  %shr190.i = lshr i32 %158, 25
  %or191.i = or i32 %shl189.i, %shr190.i
  store i32 %or191.i, i32* %A.i, align 4
  %159 = load i32, i32* %B.i, align 4
  %160 = load i32, i32* %A.i, align 4
  %add192.i = add i32 %160, %159
  store i32 %add192.i, i32* %A.i, align 4
  %161 = load i8*, i8** %data.i, align 8
  %incdec.ptr193.i = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr193.i, i8** %data.i, align 8
  %162 = load i8, i8* %161, align 1
  %conv194.i = zext i8 %162 to i64
  %conv195.i = trunc i64 %conv194.i to i32
  store i32 %conv195.i, i32* %l.i, align 4
  %163 = load i8*, i8** %data.i, align 8
  %incdec.ptr196.i = getelementptr inbounds i8, i8* %163, i32 1
  store i8* %incdec.ptr196.i, i8** %data.i, align 8
  %164 = load i8, i8* %163, align 1
  %conv197.i = zext i8 %164 to i64
  %shl198.i = shl i64 %conv197.i, 8
  %165 = load i32, i32* %l.i, align 4
  %conv199.i = zext i32 %165 to i64
  %or200.i = or i64 %conv199.i, %shl198.i
  %conv201.i = trunc i64 %or200.i to i32
  store i32 %conv201.i, i32* %l.i, align 4
  %166 = load i8*, i8** %data.i, align 8
  %incdec.ptr202.i = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %incdec.ptr202.i, i8** %data.i, align 8
  %167 = load i8, i8* %166, align 1
  %conv203.i = zext i8 %167 to i64
  %shl204.i = shl i64 %conv203.i, 16
  %168 = load i32, i32* %l.i, align 4
  %conv205.i = zext i32 %168 to i64
  %or206.i = or i64 %conv205.i, %shl204.i
  %conv207.i = trunc i64 %or206.i to i32
  store i32 %conv207.i, i32* %l.i, align 4
  %169 = load i8*, i8** %data.i, align 8
  %incdec.ptr208.i = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr208.i, i8** %data.i, align 8
  %170 = load i8, i8* %169, align 1
  %conv209.i = zext i8 %170 to i64
  %shl210.i = shl i64 %conv209.i, 24
  %171 = load i32, i32* %l.i, align 4
  %conv211.i = zext i32 %171 to i64
  %or212.i = or i64 %conv211.i, %shl210.i
  %conv213.i = trunc i64 %or212.i to i32
  store i32 %conv213.i, i32* %l.i, align 4
  %172 = load i32, i32* %l.i, align 4
  store i32 %172, i32* %XX6.i, align 4
  %173 = load i32, i32* %XX5.i, align 4
  %conv214.i = zext i32 %173 to i64
  %add215.i = add nsw i64 %conv214.i, 1200080426
  %174 = load i32, i32* %B.i, align 4
  %175 = load i32, i32* %C.i, align 4
  %xor216.i = xor i32 %174, %175
  %176 = load i32, i32* %A.i, align 4
  %and217.i = and i32 %xor216.i, %176
  %177 = load i32, i32* %C.i, align 4
  %xor218.i = xor i32 %and217.i, %177
  %conv219.i = zext i32 %xor218.i to i64
  %add220.i = add nsw i64 %add215.i, %conv219.i
  %178 = load i32, i32* %D.i, align 4
  %conv221.i = zext i32 %178 to i64
  %add222.i = add nsw i64 %conv221.i, %add220.i
  %conv223.i = trunc i64 %add222.i to i32
  store i32 %conv223.i, i32* %D.i, align 4
  %179 = load i32, i32* %D.i, align 4
  %shl224.i = shl i32 %179, 12
  %180 = load i32, i32* %D.i, align 4
  %shr225.i = lshr i32 %180, 20
  %or226.i = or i32 %shl224.i, %shr225.i
  store i32 %or226.i, i32* %D.i, align 4
  %181 = load i32, i32* %A.i, align 4
  %182 = load i32, i32* %D.i, align 4
  %add227.i = add i32 %182, %181
  store i32 %add227.i, i32* %D.i, align 4
  %183 = load i8*, i8** %data.i, align 8
  %incdec.ptr228.i = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr228.i, i8** %data.i, align 8
  %184 = load i8, i8* %183, align 1
  %conv229.i = zext i8 %184 to i64
  %conv230.i = trunc i64 %conv229.i to i32
  store i32 %conv230.i, i32* %l.i, align 4
  %185 = load i8*, i8** %data.i, align 8
  %incdec.ptr231.i = getelementptr inbounds i8, i8* %185, i32 1
  store i8* %incdec.ptr231.i, i8** %data.i, align 8
  %186 = load i8, i8* %185, align 1
  %conv232.i = zext i8 %186 to i64
  %shl233.i = shl i64 %conv232.i, 8
  %187 = load i32, i32* %l.i, align 4
  %conv234.i = zext i32 %187 to i64
  %or235.i = or i64 %conv234.i, %shl233.i
  %conv236.i = trunc i64 %or235.i to i32
  store i32 %conv236.i, i32* %l.i, align 4
  %188 = load i8*, i8** %data.i, align 8
  %incdec.ptr237.i = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %incdec.ptr237.i, i8** %data.i, align 8
  %189 = load i8, i8* %188, align 1
  %conv238.i = zext i8 %189 to i64
  %shl239.i = shl i64 %conv238.i, 16
  %190 = load i32, i32* %l.i, align 4
  %conv240.i = zext i32 %190 to i64
  %or241.i = or i64 %conv240.i, %shl239.i
  %conv242.i = trunc i64 %or241.i to i32
  store i32 %conv242.i, i32* %l.i, align 4
  %191 = load i8*, i8** %data.i, align 8
  %incdec.ptr243.i = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr243.i, i8** %data.i, align 8
  %192 = load i8, i8* %191, align 1
  %conv244.i = zext i8 %192 to i64
  %shl245.i = shl i64 %conv244.i, 24
  %193 = load i32, i32* %l.i, align 4
  %conv246.i = zext i32 %193 to i64
  %or247.i = or i64 %conv246.i, %shl245.i
  %conv248.i = trunc i64 %or247.i to i32
  store i32 %conv248.i, i32* %l.i, align 4
  %194 = load i32, i32* %l.i, align 4
  store i32 %194, i32* %XX7.i, align 4
  %195 = load i32, i32* %XX6.i, align 4
  %conv249.i = zext i32 %195 to i64
  %add250.i = add nsw i64 %conv249.i, 2821735955
  %196 = load i32, i32* %A.i, align 4
  %197 = load i32, i32* %B.i, align 4
  %xor251.i = xor i32 %196, %197
  %198 = load i32, i32* %D.i, align 4
  %and252.i = and i32 %xor251.i, %198
  %199 = load i32, i32* %B.i, align 4
  %xor253.i = xor i32 %and252.i, %199
  %conv254.i = zext i32 %xor253.i to i64
  %add255.i = add nsw i64 %add250.i, %conv254.i
  %200 = load i32, i32* %C.i, align 4
  %conv256.i = zext i32 %200 to i64
  %add257.i = add nsw i64 %conv256.i, %add255.i
  %conv258.i = trunc i64 %add257.i to i32
  store i32 %conv258.i, i32* %C.i, align 4
  %201 = load i32, i32* %C.i, align 4
  %shl259.i = shl i32 %201, 17
  %202 = load i32, i32* %C.i, align 4
  %shr260.i = lshr i32 %202, 15
  %or261.i = or i32 %shl259.i, %shr260.i
  store i32 %or261.i, i32* %C.i, align 4
  %203 = load i32, i32* %D.i, align 4
  %204 = load i32, i32* %C.i, align 4
  %add262.i = add i32 %204, %203
  store i32 %add262.i, i32* %C.i, align 4
  %205 = load i8*, i8** %data.i, align 8
  %incdec.ptr263.i = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr263.i, i8** %data.i, align 8
  %206 = load i8, i8* %205, align 1
  %conv264.i = zext i8 %206 to i64
  %conv265.i = trunc i64 %conv264.i to i32
  store i32 %conv265.i, i32* %l.i, align 4
  %207 = load i8*, i8** %data.i, align 8
  %incdec.ptr266.i = getelementptr inbounds i8, i8* %207, i32 1
  store i8* %incdec.ptr266.i, i8** %data.i, align 8
  %208 = load i8, i8* %207, align 1
  %conv267.i = zext i8 %208 to i64
  %shl268.i = shl i64 %conv267.i, 8
  %209 = load i32, i32* %l.i, align 4
  %conv269.i = zext i32 %209 to i64
  %or270.i = or i64 %conv269.i, %shl268.i
  %conv271.i = trunc i64 %or270.i to i32
  store i32 %conv271.i, i32* %l.i, align 4
  %210 = load i8*, i8** %data.i, align 8
  %incdec.ptr272.i = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %incdec.ptr272.i, i8** %data.i, align 8
  %211 = load i8, i8* %210, align 1
  %conv273.i = zext i8 %211 to i64
  %shl274.i = shl i64 %conv273.i, 16
  %212 = load i32, i32* %l.i, align 4
  %conv275.i = zext i32 %212 to i64
  %or276.i = or i64 %conv275.i, %shl274.i
  %conv277.i = trunc i64 %or276.i to i32
  store i32 %conv277.i, i32* %l.i, align 4
  %213 = load i8*, i8** %data.i, align 8
  %incdec.ptr278.i = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr278.i, i8** %data.i, align 8
  %214 = load i8, i8* %213, align 1
  %conv279.i = zext i8 %214 to i64
  %shl280.i = shl i64 %conv279.i, 24
  %215 = load i32, i32* %l.i, align 4
  %conv281.i = zext i32 %215 to i64
  %or282.i = or i64 %conv281.i, %shl280.i
  %conv283.i = trunc i64 %or282.i to i32
  store i32 %conv283.i, i32* %l.i, align 4
  %216 = load i32, i32* %l.i, align 4
  store i32 %216, i32* %XX8.i, align 4
  %217 = load i32, i32* %XX7.i, align 4
  %conv284.i = zext i32 %217 to i64
  %add285.i = add nsw i64 %conv284.i, 4249261313
  %218 = load i32, i32* %D.i, align 4
  %219 = load i32, i32* %A.i, align 4
  %xor286.i = xor i32 %218, %219
  %220 = load i32, i32* %C.i, align 4
  %and287.i = and i32 %xor286.i, %220
  %221 = load i32, i32* %A.i, align 4
  %xor288.i = xor i32 %and287.i, %221
  %conv289.i = zext i32 %xor288.i to i64
  %add290.i = add nsw i64 %add285.i, %conv289.i
  %222 = load i32, i32* %B.i, align 4
  %conv291.i = zext i32 %222 to i64
  %add292.i = add nsw i64 %conv291.i, %add290.i
  %conv293.i = trunc i64 %add292.i to i32
  store i32 %conv293.i, i32* %B.i, align 4
  %223 = load i32, i32* %B.i, align 4
  %shl294.i = shl i32 %223, 22
  %224 = load i32, i32* %B.i, align 4
  %shr295.i = lshr i32 %224, 10
  %or296.i = or i32 %shl294.i, %shr295.i
  store i32 %or296.i, i32* %B.i, align 4
  %225 = load i32, i32* %C.i, align 4
  %226 = load i32, i32* %B.i, align 4
  %add297.i = add i32 %226, %225
  store i32 %add297.i, i32* %B.i, align 4
  %227 = load i8*, i8** %data.i, align 8
  %incdec.ptr298.i = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr298.i, i8** %data.i, align 8
  %228 = load i8, i8* %227, align 1
  %conv299.i = zext i8 %228 to i64
  %conv300.i = trunc i64 %conv299.i to i32
  store i32 %conv300.i, i32* %l.i, align 4
  %229 = load i8*, i8** %data.i, align 8
  %incdec.ptr301.i = getelementptr inbounds i8, i8* %229, i32 1
  store i8* %incdec.ptr301.i, i8** %data.i, align 8
  %230 = load i8, i8* %229, align 1
  %conv302.i = zext i8 %230 to i64
  %shl303.i = shl i64 %conv302.i, 8
  %231 = load i32, i32* %l.i, align 4
  %conv304.i = zext i32 %231 to i64
  %or305.i = or i64 %conv304.i, %shl303.i
  %conv306.i = trunc i64 %or305.i to i32
  store i32 %conv306.i, i32* %l.i, align 4
  %232 = load i8*, i8** %data.i, align 8
  %incdec.ptr307.i = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %incdec.ptr307.i, i8** %data.i, align 8
  %233 = load i8, i8* %232, align 1
  %conv308.i = zext i8 %233 to i64
  %shl309.i = shl i64 %conv308.i, 16
  %234 = load i32, i32* %l.i, align 4
  %conv310.i = zext i32 %234 to i64
  %or311.i = or i64 %conv310.i, %shl309.i
  %conv312.i = trunc i64 %or311.i to i32
  store i32 %conv312.i, i32* %l.i, align 4
  %235 = load i8*, i8** %data.i, align 8
  %incdec.ptr313.i = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr313.i, i8** %data.i, align 8
  %236 = load i8, i8* %235, align 1
  %conv314.i = zext i8 %236 to i64
  %shl315.i = shl i64 %conv314.i, 24
  %237 = load i32, i32* %l.i, align 4
  %conv316.i = zext i32 %237 to i64
  %or317.i = or i64 %conv316.i, %shl315.i
  %conv318.i = trunc i64 %or317.i to i32
  store i32 %conv318.i, i32* %l.i, align 4
  %238 = load i32, i32* %l.i, align 4
  store i32 %238, i32* %XX9.i, align 4
  %239 = load i32, i32* %XX8.i, align 4
  %conv319.i = zext i32 %239 to i64
  %add320.i = add nsw i64 %conv319.i, 1770035416
  %240 = load i32, i32* %C.i, align 4
  %241 = load i32, i32* %D.i, align 4
  %xor321.i = xor i32 %240, %241
  %242 = load i32, i32* %B.i, align 4
  %and322.i = and i32 %xor321.i, %242
  %243 = load i32, i32* %D.i, align 4
  %xor323.i = xor i32 %and322.i, %243
  %conv324.i = zext i32 %xor323.i to i64
  %add325.i = add nsw i64 %add320.i, %conv324.i
  %244 = load i32, i32* %A.i, align 4
  %conv326.i = zext i32 %244 to i64
  %add327.i = add nsw i64 %conv326.i, %add325.i
  %conv328.i = trunc i64 %add327.i to i32
  store i32 %conv328.i, i32* %A.i, align 4
  %245 = load i32, i32* %A.i, align 4
  %shl329.i = shl i32 %245, 7
  %246 = load i32, i32* %A.i, align 4
  %shr330.i = lshr i32 %246, 25
  %or331.i = or i32 %shl329.i, %shr330.i
  store i32 %or331.i, i32* %A.i, align 4
  %247 = load i32, i32* %B.i, align 4
  %248 = load i32, i32* %A.i, align 4
  %add332.i = add i32 %248, %247
  store i32 %add332.i, i32* %A.i, align 4
  %249 = load i8*, i8** %data.i, align 8
  %incdec.ptr333.i = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr333.i, i8** %data.i, align 8
  %250 = load i8, i8* %249, align 1
  %conv334.i = zext i8 %250 to i64
  %conv335.i = trunc i64 %conv334.i to i32
  store i32 %conv335.i, i32* %l.i, align 4
  %251 = load i8*, i8** %data.i, align 8
  %incdec.ptr336.i = getelementptr inbounds i8, i8* %251, i32 1
  store i8* %incdec.ptr336.i, i8** %data.i, align 8
  %252 = load i8, i8* %251, align 1
  %conv337.i = zext i8 %252 to i64
  %shl338.i = shl i64 %conv337.i, 8
  %253 = load i32, i32* %l.i, align 4
  %conv339.i = zext i32 %253 to i64
  %or340.i = or i64 %conv339.i, %shl338.i
  %conv341.i = trunc i64 %or340.i to i32
  store i32 %conv341.i, i32* %l.i, align 4
  %254 = load i8*, i8** %data.i, align 8
  %incdec.ptr342.i = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %incdec.ptr342.i, i8** %data.i, align 8
  %255 = load i8, i8* %254, align 1
  %conv343.i = zext i8 %255 to i64
  %shl344.i = shl i64 %conv343.i, 16
  %256 = load i32, i32* %l.i, align 4
  %conv345.i = zext i32 %256 to i64
  %or346.i = or i64 %conv345.i, %shl344.i
  %conv347.i = trunc i64 %or346.i to i32
  store i32 %conv347.i, i32* %l.i, align 4
  %257 = load i8*, i8** %data.i, align 8
  %incdec.ptr348.i = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr348.i, i8** %data.i, align 8
  %258 = load i8, i8* %257, align 1
  %conv349.i = zext i8 %258 to i64
  %shl350.i = shl i64 %conv349.i, 24
  %259 = load i32, i32* %l.i, align 4
  %conv351.i = zext i32 %259 to i64
  %or352.i = or i64 %conv351.i, %shl350.i
  %conv353.i = trunc i64 %or352.i to i32
  store i32 %conv353.i, i32* %l.i, align 4
  %260 = load i32, i32* %l.i, align 4
  store i32 %260, i32* %XX10.i, align 4
  %261 = load i32, i32* %XX9.i, align 4
  %conv354.i = zext i32 %261 to i64
  %add355.i = add nsw i64 %conv354.i, 2336552879
  %262 = load i32, i32* %B.i, align 4
  %263 = load i32, i32* %C.i, align 4
  %xor356.i = xor i32 %262, %263
  %264 = load i32, i32* %A.i, align 4
  %and357.i = and i32 %xor356.i, %264
  %265 = load i32, i32* %C.i, align 4
  %xor358.i = xor i32 %and357.i, %265
  %conv359.i = zext i32 %xor358.i to i64
  %add360.i = add nsw i64 %add355.i, %conv359.i
  %266 = load i32, i32* %D.i, align 4
  %conv361.i = zext i32 %266 to i64
  %add362.i = add nsw i64 %conv361.i, %add360.i
  %conv363.i = trunc i64 %add362.i to i32
  store i32 %conv363.i, i32* %D.i, align 4
  %267 = load i32, i32* %D.i, align 4
  %shl364.i = shl i32 %267, 12
  %268 = load i32, i32* %D.i, align 4
  %shr365.i = lshr i32 %268, 20
  %or366.i = or i32 %shl364.i, %shr365.i
  store i32 %or366.i, i32* %D.i, align 4
  %269 = load i32, i32* %A.i, align 4
  %270 = load i32, i32* %D.i, align 4
  %add367.i = add i32 %270, %269
  store i32 %add367.i, i32* %D.i, align 4
  %271 = load i8*, i8** %data.i, align 8
  %incdec.ptr368.i = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr368.i, i8** %data.i, align 8
  %272 = load i8, i8* %271, align 1
  %conv369.i = zext i8 %272 to i64
  %conv370.i = trunc i64 %conv369.i to i32
  store i32 %conv370.i, i32* %l.i, align 4
  %273 = load i8*, i8** %data.i, align 8
  %incdec.ptr371.i = getelementptr inbounds i8, i8* %273, i32 1
  store i8* %incdec.ptr371.i, i8** %data.i, align 8
  %274 = load i8, i8* %273, align 1
  %conv372.i = zext i8 %274 to i64
  %shl373.i = shl i64 %conv372.i, 8
  %275 = load i32, i32* %l.i, align 4
  %conv374.i = zext i32 %275 to i64
  %or375.i = or i64 %conv374.i, %shl373.i
  %conv376.i = trunc i64 %or375.i to i32
  store i32 %conv376.i, i32* %l.i, align 4
  %276 = load i8*, i8** %data.i, align 8
  %incdec.ptr377.i = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %incdec.ptr377.i, i8** %data.i, align 8
  %277 = load i8, i8* %276, align 1
  %conv378.i = zext i8 %277 to i64
  %shl379.i = shl i64 %conv378.i, 16
  %278 = load i32, i32* %l.i, align 4
  %conv380.i = zext i32 %278 to i64
  %or381.i = or i64 %conv380.i, %shl379.i
  %conv382.i = trunc i64 %or381.i to i32
  store i32 %conv382.i, i32* %l.i, align 4
  %279 = load i8*, i8** %data.i, align 8
  %incdec.ptr383.i = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr383.i, i8** %data.i, align 8
  %280 = load i8, i8* %279, align 1
  %conv384.i = zext i8 %280 to i64
  %shl385.i = shl i64 %conv384.i, 24
  %281 = load i32, i32* %l.i, align 4
  %conv386.i = zext i32 %281 to i64
  %or387.i = or i64 %conv386.i, %shl385.i
  %conv388.i = trunc i64 %or387.i to i32
  store i32 %conv388.i, i32* %l.i, align 4
  %282 = load i32, i32* %l.i, align 4
  store i32 %282, i32* %XX11.i, align 4
  %283 = load i32, i32* %XX10.i, align 4
  %conv389.i = zext i32 %283 to i64
  %add390.i = add nsw i64 %conv389.i, 4294925233
  %284 = load i32, i32* %A.i, align 4
  %285 = load i32, i32* %B.i, align 4
  %xor391.i = xor i32 %284, %285
  %286 = load i32, i32* %D.i, align 4
  %and392.i = and i32 %xor391.i, %286
  %287 = load i32, i32* %B.i, align 4
  %xor393.i = xor i32 %and392.i, %287
  %conv394.i = zext i32 %xor393.i to i64
  %add395.i = add nsw i64 %add390.i, %conv394.i
  %288 = load i32, i32* %C.i, align 4
  %conv396.i = zext i32 %288 to i64
  %add397.i = add nsw i64 %conv396.i, %add395.i
  %conv398.i = trunc i64 %add397.i to i32
  store i32 %conv398.i, i32* %C.i, align 4
  %289 = load i32, i32* %C.i, align 4
  %shl399.i = shl i32 %289, 17
  %290 = load i32, i32* %C.i, align 4
  %shr400.i = lshr i32 %290, 15
  %or401.i = or i32 %shl399.i, %shr400.i
  store i32 %or401.i, i32* %C.i, align 4
  %291 = load i32, i32* %D.i, align 4
  %292 = load i32, i32* %C.i, align 4
  %add402.i = add i32 %292, %291
  store i32 %add402.i, i32* %C.i, align 4
  %293 = load i8*, i8** %data.i, align 8
  %incdec.ptr403.i = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr403.i, i8** %data.i, align 8
  %294 = load i8, i8* %293, align 1
  %conv404.i = zext i8 %294 to i64
  %conv405.i = trunc i64 %conv404.i to i32
  store i32 %conv405.i, i32* %l.i, align 4
  %295 = load i8*, i8** %data.i, align 8
  %incdec.ptr406.i = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %incdec.ptr406.i, i8** %data.i, align 8
  %296 = load i8, i8* %295, align 1
  %conv407.i = zext i8 %296 to i64
  %shl408.i = shl i64 %conv407.i, 8
  %297 = load i32, i32* %l.i, align 4
  %conv409.i = zext i32 %297 to i64
  %or410.i = or i64 %conv409.i, %shl408.i
  %conv411.i = trunc i64 %or410.i to i32
  store i32 %conv411.i, i32* %l.i, align 4
  %298 = load i8*, i8** %data.i, align 8
  %incdec.ptr412.i = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %incdec.ptr412.i, i8** %data.i, align 8
  %299 = load i8, i8* %298, align 1
  %conv413.i = zext i8 %299 to i64
  %shl414.i = shl i64 %conv413.i, 16
  %300 = load i32, i32* %l.i, align 4
  %conv415.i = zext i32 %300 to i64
  %or416.i = or i64 %conv415.i, %shl414.i
  %conv417.i = trunc i64 %or416.i to i32
  store i32 %conv417.i, i32* %l.i, align 4
  %301 = load i8*, i8** %data.i, align 8
  %incdec.ptr418.i = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %incdec.ptr418.i, i8** %data.i, align 8
  %302 = load i8, i8* %301, align 1
  %conv419.i = zext i8 %302 to i64
  %shl420.i = shl i64 %conv419.i, 24
  %303 = load i32, i32* %l.i, align 4
  %conv421.i = zext i32 %303 to i64
  %or422.i = or i64 %conv421.i, %shl420.i
  %conv423.i = trunc i64 %or422.i to i32
  store i32 %conv423.i, i32* %l.i, align 4
  %304 = load i32, i32* %l.i, align 4
  store i32 %304, i32* %XX12.i, align 4
  %305 = load i32, i32* %XX11.i, align 4
  %conv424.i = zext i32 %305 to i64
  %add425.i = add nsw i64 %conv424.i, 2304563134
  %306 = load i32, i32* %D.i, align 4
  %307 = load i32, i32* %A.i, align 4
  %xor426.i = xor i32 %306, %307
  %308 = load i32, i32* %C.i, align 4
  %and427.i = and i32 %xor426.i, %308
  %309 = load i32, i32* %A.i, align 4
  %xor428.i = xor i32 %and427.i, %309
  %conv429.i = zext i32 %xor428.i to i64
  %add430.i = add nsw i64 %add425.i, %conv429.i
  %310 = load i32, i32* %B.i, align 4
  %conv431.i = zext i32 %310 to i64
  %add432.i = add nsw i64 %conv431.i, %add430.i
  %conv433.i = trunc i64 %add432.i to i32
  store i32 %conv433.i, i32* %B.i, align 4
  %311 = load i32, i32* %B.i, align 4
  %shl434.i = shl i32 %311, 22
  %312 = load i32, i32* %B.i, align 4
  %shr435.i = lshr i32 %312, 10
  %or436.i = or i32 %shl434.i, %shr435.i
  store i32 %or436.i, i32* %B.i, align 4
  %313 = load i32, i32* %C.i, align 4
  %314 = load i32, i32* %B.i, align 4
  %add437.i = add i32 %314, %313
  store i32 %add437.i, i32* %B.i, align 4
  %315 = load i8*, i8** %data.i, align 8
  %incdec.ptr438.i = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %incdec.ptr438.i, i8** %data.i, align 8
  %316 = load i8, i8* %315, align 1
  %conv439.i = zext i8 %316 to i64
  %conv440.i = trunc i64 %conv439.i to i32
  store i32 %conv440.i, i32* %l.i, align 4
  %317 = load i8*, i8** %data.i, align 8
  %incdec.ptr441.i = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %incdec.ptr441.i, i8** %data.i, align 8
  %318 = load i8, i8* %317, align 1
  %conv442.i = zext i8 %318 to i64
  %shl443.i = shl i64 %conv442.i, 8
  %319 = load i32, i32* %l.i, align 4
  %conv444.i = zext i32 %319 to i64
  %or445.i = or i64 %conv444.i, %shl443.i
  %conv446.i = trunc i64 %or445.i to i32
  store i32 %conv446.i, i32* %l.i, align 4
  %320 = load i8*, i8** %data.i, align 8
  %incdec.ptr447.i = getelementptr inbounds i8, i8* %320, i32 1
  store i8* %incdec.ptr447.i, i8** %data.i, align 8
  %321 = load i8, i8* %320, align 1
  %conv448.i = zext i8 %321 to i64
  %shl449.i = shl i64 %conv448.i, 16
  %322 = load i32, i32* %l.i, align 4
  %conv450.i = zext i32 %322 to i64
  %or451.i = or i64 %conv450.i, %shl449.i
  %conv452.i = trunc i64 %or451.i to i32
  store i32 %conv452.i, i32* %l.i, align 4
  %323 = load i8*, i8** %data.i, align 8
  %incdec.ptr453.i = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %incdec.ptr453.i, i8** %data.i, align 8
  %324 = load i8, i8* %323, align 1
  %conv454.i = zext i8 %324 to i64
  %shl455.i = shl i64 %conv454.i, 24
  %325 = load i32, i32* %l.i, align 4
  %conv456.i = zext i32 %325 to i64
  %or457.i = or i64 %conv456.i, %shl455.i
  %conv458.i = trunc i64 %or457.i to i32
  store i32 %conv458.i, i32* %l.i, align 4
  %326 = load i32, i32* %l.i, align 4
  store i32 %326, i32* %XX13.i, align 4
  %327 = load i32, i32* %XX12.i, align 4
  %conv459.i = zext i32 %327 to i64
  %add460.i = add nsw i64 %conv459.i, 1804603682
  %328 = load i32, i32* %C.i, align 4
  %329 = load i32, i32* %D.i, align 4
  %xor461.i = xor i32 %328, %329
  %330 = load i32, i32* %B.i, align 4
  %and462.i = and i32 %xor461.i, %330
  %331 = load i32, i32* %D.i, align 4
  %xor463.i = xor i32 %and462.i, %331
  %conv464.i = zext i32 %xor463.i to i64
  %add465.i = add nsw i64 %add460.i, %conv464.i
  %332 = load i32, i32* %A.i, align 4
  %conv466.i = zext i32 %332 to i64
  %add467.i = add nsw i64 %conv466.i, %add465.i
  %conv468.i = trunc i64 %add467.i to i32
  store i32 %conv468.i, i32* %A.i, align 4
  %333 = load i32, i32* %A.i, align 4
  %shl469.i = shl i32 %333, 7
  %334 = load i32, i32* %A.i, align 4
  %shr470.i = lshr i32 %334, 25
  %or471.i = or i32 %shl469.i, %shr470.i
  store i32 %or471.i, i32* %A.i, align 4
  %335 = load i32, i32* %B.i, align 4
  %336 = load i32, i32* %A.i, align 4
  %add472.i = add i32 %336, %335
  store i32 %add472.i, i32* %A.i, align 4
  %337 = load i8*, i8** %data.i, align 8
  %incdec.ptr473.i = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr473.i, i8** %data.i, align 8
  %338 = load i8, i8* %337, align 1
  %conv474.i = zext i8 %338 to i64
  %conv475.i = trunc i64 %conv474.i to i32
  store i32 %conv475.i, i32* %l.i, align 4
  %339 = load i8*, i8** %data.i, align 8
  %incdec.ptr476.i = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %incdec.ptr476.i, i8** %data.i, align 8
  %340 = load i8, i8* %339, align 1
  %conv477.i = zext i8 %340 to i64
  %shl478.i = shl i64 %conv477.i, 8
  %341 = load i32, i32* %l.i, align 4
  %conv479.i = zext i32 %341 to i64
  %or480.i = or i64 %conv479.i, %shl478.i
  %conv481.i = trunc i64 %or480.i to i32
  store i32 %conv481.i, i32* %l.i, align 4
  %342 = load i8*, i8** %data.i, align 8
  %incdec.ptr482.i = getelementptr inbounds i8, i8* %342, i32 1
  store i8* %incdec.ptr482.i, i8** %data.i, align 8
  %343 = load i8, i8* %342, align 1
  %conv483.i = zext i8 %343 to i64
  %shl484.i = shl i64 %conv483.i, 16
  %344 = load i32, i32* %l.i, align 4
  %conv485.i = zext i32 %344 to i64
  %or486.i = or i64 %conv485.i, %shl484.i
  %conv487.i = trunc i64 %or486.i to i32
  store i32 %conv487.i, i32* %l.i, align 4
  %345 = load i8*, i8** %data.i, align 8
  %incdec.ptr488.i = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr488.i, i8** %data.i, align 8
  %346 = load i8, i8* %345, align 1
  %conv489.i = zext i8 %346 to i64
  %shl490.i = shl i64 %conv489.i, 24
  %347 = load i32, i32* %l.i, align 4
  %conv491.i = zext i32 %347 to i64
  %or492.i = or i64 %conv491.i, %shl490.i
  %conv493.i = trunc i64 %or492.i to i32
  store i32 %conv493.i, i32* %l.i, align 4
  %348 = load i32, i32* %l.i, align 4
  store i32 %348, i32* %XX14.i, align 4
  %349 = load i32, i32* %XX13.i, align 4
  %conv494.i = zext i32 %349 to i64
  %add495.i = add nsw i64 %conv494.i, 4254626195
  %350 = load i32, i32* %B.i, align 4
  %351 = load i32, i32* %C.i, align 4
  %xor496.i = xor i32 %350, %351
  %352 = load i32, i32* %A.i, align 4
  %and497.i = and i32 %xor496.i, %352
  %353 = load i32, i32* %C.i, align 4
  %xor498.i = xor i32 %and497.i, %353
  %conv499.i = zext i32 %xor498.i to i64
  %add500.i = add nsw i64 %add495.i, %conv499.i
  %354 = load i32, i32* %D.i, align 4
  %conv501.i = zext i32 %354 to i64
  %add502.i = add nsw i64 %conv501.i, %add500.i
  %conv503.i = trunc i64 %add502.i to i32
  store i32 %conv503.i, i32* %D.i, align 4
  %355 = load i32, i32* %D.i, align 4
  %shl504.i = shl i32 %355, 12
  %356 = load i32, i32* %D.i, align 4
  %shr505.i = lshr i32 %356, 20
  %or506.i = or i32 %shl504.i, %shr505.i
  store i32 %or506.i, i32* %D.i, align 4
  %357 = load i32, i32* %A.i, align 4
  %358 = load i32, i32* %D.i, align 4
  %add507.i = add i32 %358, %357
  store i32 %add507.i, i32* %D.i, align 4
  %359 = load i8*, i8** %data.i, align 8
  %incdec.ptr508.i = getelementptr inbounds i8, i8* %359, i32 1
  store i8* %incdec.ptr508.i, i8** %data.i, align 8
  %360 = load i8, i8* %359, align 1
  %conv509.i = zext i8 %360 to i64
  %conv510.i = trunc i64 %conv509.i to i32
  store i32 %conv510.i, i32* %l.i, align 4
  %361 = load i8*, i8** %data.i, align 8
  %incdec.ptr511.i = getelementptr inbounds i8, i8* %361, i32 1
  store i8* %incdec.ptr511.i, i8** %data.i, align 8
  %362 = load i8, i8* %361, align 1
  %conv512.i = zext i8 %362 to i64
  %shl513.i = shl i64 %conv512.i, 8
  %363 = load i32, i32* %l.i, align 4
  %conv514.i = zext i32 %363 to i64
  %or515.i = or i64 %conv514.i, %shl513.i
  %conv516.i = trunc i64 %or515.i to i32
  store i32 %conv516.i, i32* %l.i, align 4
  %364 = load i8*, i8** %data.i, align 8
  %incdec.ptr517.i = getelementptr inbounds i8, i8* %364, i32 1
  store i8* %incdec.ptr517.i, i8** %data.i, align 8
  %365 = load i8, i8* %364, align 1
  %conv518.i = zext i8 %365 to i64
  %shl519.i = shl i64 %conv518.i, 16
  %366 = load i32, i32* %l.i, align 4
  %conv520.i = zext i32 %366 to i64
  %or521.i = or i64 %conv520.i, %shl519.i
  %conv522.i = trunc i64 %or521.i to i32
  store i32 %conv522.i, i32* %l.i, align 4
  %367 = load i8*, i8** %data.i, align 8
  %incdec.ptr523.i = getelementptr inbounds i8, i8* %367, i32 1
  store i8* %incdec.ptr523.i, i8** %data.i, align 8
  %368 = load i8, i8* %367, align 1
  %conv524.i = zext i8 %368 to i64
  %shl525.i = shl i64 %conv524.i, 24
  %369 = load i32, i32* %l.i, align 4
  %conv526.i = zext i32 %369 to i64
  %or527.i = or i64 %conv526.i, %shl525.i
  %conv528.i = trunc i64 %or527.i to i32
  store i32 %conv528.i, i32* %l.i, align 4
  %370 = load i32, i32* %l.i, align 4
  store i32 %370, i32* %XX15.i, align 4
  %371 = load i32, i32* %XX14.i, align 4
  %conv529.i = zext i32 %371 to i64
  %add530.i = add nsw i64 %conv529.i, 2792965006
  %372 = load i32, i32* %A.i, align 4
  %373 = load i32, i32* %B.i, align 4
  %xor531.i = xor i32 %372, %373
  %374 = load i32, i32* %D.i, align 4
  %and532.i = and i32 %xor531.i, %374
  %375 = load i32, i32* %B.i, align 4
  %xor533.i = xor i32 %and532.i, %375
  %conv534.i = zext i32 %xor533.i to i64
  %add535.i = add nsw i64 %add530.i, %conv534.i
  %376 = load i32, i32* %C.i, align 4
  %conv536.i = zext i32 %376 to i64
  %add537.i = add nsw i64 %conv536.i, %add535.i
  %conv538.i = trunc i64 %add537.i to i32
  store i32 %conv538.i, i32* %C.i, align 4
  %377 = load i32, i32* %C.i, align 4
  %shl539.i = shl i32 %377, 17
  %378 = load i32, i32* %C.i, align 4
  %shr540.i = lshr i32 %378, 15
  %or541.i = or i32 %shl539.i, %shr540.i
  store i32 %or541.i, i32* %C.i, align 4
  %379 = load i32, i32* %D.i, align 4
  %380 = load i32, i32* %C.i, align 4
  %add542.i = add i32 %380, %379
  store i32 %add542.i, i32* %C.i, align 4
  %381 = load i32, i32* %XX15.i, align 4
  %conv543.i = zext i32 %381 to i64
  %add544.i = add nsw i64 %conv543.i, 1236535329
  %382 = load i32, i32* %D.i, align 4
  %383 = load i32, i32* %A.i, align 4
  %xor545.i = xor i32 %382, %383
  %384 = load i32, i32* %C.i, align 4
  %and546.i = and i32 %xor545.i, %384
  %385 = load i32, i32* %A.i, align 4
  %xor547.i = xor i32 %and546.i, %385
  %conv548.i = zext i32 %xor547.i to i64
  %add549.i = add nsw i64 %add544.i, %conv548.i
  %386 = load i32, i32* %B.i, align 4
  %conv550.i = zext i32 %386 to i64
  %add551.i = add nsw i64 %conv550.i, %add549.i
  %conv552.i = trunc i64 %add551.i to i32
  store i32 %conv552.i, i32* %B.i, align 4
  %387 = load i32, i32* %B.i, align 4
  %shl553.i = shl i32 %387, 22
  %388 = load i32, i32* %B.i, align 4
  %shr554.i = lshr i32 %388, 10
  %or555.i = or i32 %shl553.i, %shr554.i
  store i32 %or555.i, i32* %B.i, align 4
  %389 = load i32, i32* %C.i, align 4
  %390 = load i32, i32* %B.i, align 4
  %add556.i = add i32 %390, %389
  store i32 %add556.i, i32* %B.i, align 4
  %391 = load i32, i32* %XX1.i, align 4
  %conv557.i = zext i32 %391 to i64
  %add558.i = add nsw i64 %conv557.i, 4129170786
  %392 = load i32, i32* %B.i, align 4
  %393 = load i32, i32* %C.i, align 4
  %xor559.i = xor i32 %392, %393
  %394 = load i32, i32* %D.i, align 4
  %and560.i = and i32 %xor559.i, %394
  %395 = load i32, i32* %C.i, align 4
  %xor561.i = xor i32 %and560.i, %395
  %conv562.i = zext i32 %xor561.i to i64
  %add563.i = add nsw i64 %add558.i, %conv562.i
  %396 = load i32, i32* %A.i, align 4
  %conv564.i = zext i32 %396 to i64
  %add565.i = add nsw i64 %conv564.i, %add563.i
  %conv566.i = trunc i64 %add565.i to i32
  store i32 %conv566.i, i32* %A.i, align 4
  %397 = load i32, i32* %A.i, align 4
  %shl567.i = shl i32 %397, 5
  %398 = load i32, i32* %A.i, align 4
  %shr568.i = lshr i32 %398, 27
  %or569.i = or i32 %shl567.i, %shr568.i
  store i32 %or569.i, i32* %A.i, align 4
  %399 = load i32, i32* %B.i, align 4
  %400 = load i32, i32* %A.i, align 4
  %add570.i = add i32 %400, %399
  store i32 %add570.i, i32* %A.i, align 4
  %401 = load i32, i32* %XX6.i, align 4
  %conv571.i = zext i32 %401 to i64
  %add572.i = add nsw i64 %conv571.i, 3225465664
  %402 = load i32, i32* %A.i, align 4
  %403 = load i32, i32* %B.i, align 4
  %xor573.i = xor i32 %402, %403
  %404 = load i32, i32* %C.i, align 4
  %and574.i = and i32 %xor573.i, %404
  %405 = load i32, i32* %B.i, align 4
  %xor575.i = xor i32 %and574.i, %405
  %conv576.i = zext i32 %xor575.i to i64
  %add577.i = add nsw i64 %add572.i, %conv576.i
  %406 = load i32, i32* %D.i, align 4
  %conv578.i = zext i32 %406 to i64
  %add579.i = add nsw i64 %conv578.i, %add577.i
  %conv580.i = trunc i64 %add579.i to i32
  store i32 %conv580.i, i32* %D.i, align 4
  %407 = load i32, i32* %D.i, align 4
  %shl581.i = shl i32 %407, 9
  %408 = load i32, i32* %D.i, align 4
  %shr582.i = lshr i32 %408, 23
  %or583.i = or i32 %shl581.i, %shr582.i
  store i32 %or583.i, i32* %D.i, align 4
  %409 = load i32, i32* %A.i, align 4
  %410 = load i32, i32* %D.i, align 4
  %add584.i = add i32 %410, %409
  store i32 %add584.i, i32* %D.i, align 4
  %411 = load i32, i32* %XX11.i, align 4
  %conv585.i = zext i32 %411 to i64
  %add586.i = add nsw i64 %conv585.i, 643717713
  %412 = load i32, i32* %D.i, align 4
  %413 = load i32, i32* %A.i, align 4
  %xor587.i = xor i32 %412, %413
  %414 = load i32, i32* %B.i, align 4
  %and588.i = and i32 %xor587.i, %414
  %415 = load i32, i32* %A.i, align 4
  %xor589.i = xor i32 %and588.i, %415
  %conv590.i = zext i32 %xor589.i to i64
  %add591.i = add nsw i64 %add586.i, %conv590.i
  %416 = load i32, i32* %C.i, align 4
  %conv592.i = zext i32 %416 to i64
  %add593.i = add nsw i64 %conv592.i, %add591.i
  %conv594.i = trunc i64 %add593.i to i32
  store i32 %conv594.i, i32* %C.i, align 4
  %417 = load i32, i32* %C.i, align 4
  %shl595.i = shl i32 %417, 14
  %418 = load i32, i32* %C.i, align 4
  %shr596.i = lshr i32 %418, 18
  %or597.i = or i32 %shl595.i, %shr596.i
  store i32 %or597.i, i32* %C.i, align 4
  %419 = load i32, i32* %D.i, align 4
  %420 = load i32, i32* %C.i, align 4
  %add598.i = add i32 %420, %419
  store i32 %add598.i, i32* %C.i, align 4
  %421 = load i32, i32* %XX0.i, align 4
  %conv599.i = zext i32 %421 to i64
  %add600.i = add nsw i64 %conv599.i, 3921069994
  %422 = load i32, i32* %C.i, align 4
  %423 = load i32, i32* %D.i, align 4
  %xor601.i = xor i32 %422, %423
  %424 = load i32, i32* %A.i, align 4
  %and602.i = and i32 %xor601.i, %424
  %425 = load i32, i32* %D.i, align 4
  %xor603.i = xor i32 %and602.i, %425
  %conv604.i = zext i32 %xor603.i to i64
  %add605.i = add nsw i64 %add600.i, %conv604.i
  %426 = load i32, i32* %B.i, align 4
  %conv606.i = zext i32 %426 to i64
  %add607.i = add nsw i64 %conv606.i, %add605.i
  %conv608.i = trunc i64 %add607.i to i32
  store i32 %conv608.i, i32* %B.i, align 4
  %427 = load i32, i32* %B.i, align 4
  %shl609.i = shl i32 %427, 20
  %428 = load i32, i32* %B.i, align 4
  %shr610.i = lshr i32 %428, 12
  %or611.i = or i32 %shl609.i, %shr610.i
  store i32 %or611.i, i32* %B.i, align 4
  %429 = load i32, i32* %C.i, align 4
  %430 = load i32, i32* %B.i, align 4
  %add612.i = add i32 %430, %429
  store i32 %add612.i, i32* %B.i, align 4
  %431 = load i32, i32* %XX5.i, align 4
  %conv613.i = zext i32 %431 to i64
  %add614.i = add nsw i64 %conv613.i, 3593408605
  %432 = load i32, i32* %B.i, align 4
  %433 = load i32, i32* %C.i, align 4
  %xor615.i = xor i32 %432, %433
  %434 = load i32, i32* %D.i, align 4
  %and616.i = and i32 %xor615.i, %434
  %435 = load i32, i32* %C.i, align 4
  %xor617.i = xor i32 %and616.i, %435
  %conv618.i = zext i32 %xor617.i to i64
  %add619.i = add nsw i64 %add614.i, %conv618.i
  %436 = load i32, i32* %A.i, align 4
  %conv620.i = zext i32 %436 to i64
  %add621.i = add nsw i64 %conv620.i, %add619.i
  %conv622.i = trunc i64 %add621.i to i32
  store i32 %conv622.i, i32* %A.i, align 4
  %437 = load i32, i32* %A.i, align 4
  %shl623.i = shl i32 %437, 5
  %438 = load i32, i32* %A.i, align 4
  %shr624.i = lshr i32 %438, 27
  %or625.i = or i32 %shl623.i, %shr624.i
  store i32 %or625.i, i32* %A.i, align 4
  %439 = load i32, i32* %B.i, align 4
  %440 = load i32, i32* %A.i, align 4
  %add626.i = add i32 %440, %439
  store i32 %add626.i, i32* %A.i, align 4
  %441 = load i32, i32* %XX10.i, align 4
  %conv627.i = zext i32 %441 to i64
  %add628.i = add nsw i64 %conv627.i, 38016083
  %442 = load i32, i32* %A.i, align 4
  %443 = load i32, i32* %B.i, align 4
  %xor629.i = xor i32 %442, %443
  %444 = load i32, i32* %C.i, align 4
  %and630.i = and i32 %xor629.i, %444
  %445 = load i32, i32* %B.i, align 4
  %xor631.i = xor i32 %and630.i, %445
  %conv632.i = zext i32 %xor631.i to i64
  %add633.i = add nsw i64 %add628.i, %conv632.i
  %446 = load i32, i32* %D.i, align 4
  %conv634.i = zext i32 %446 to i64
  %add635.i = add nsw i64 %conv634.i, %add633.i
  %conv636.i = trunc i64 %add635.i to i32
  store i32 %conv636.i, i32* %D.i, align 4
  %447 = load i32, i32* %D.i, align 4
  %shl637.i = shl i32 %447, 9
  %448 = load i32, i32* %D.i, align 4
  %shr638.i = lshr i32 %448, 23
  %or639.i = or i32 %shl637.i, %shr638.i
  store i32 %or639.i, i32* %D.i, align 4
  %449 = load i32, i32* %A.i, align 4
  %450 = load i32, i32* %D.i, align 4
  %add640.i = add i32 %450, %449
  store i32 %add640.i, i32* %D.i, align 4
  %451 = load i32, i32* %XX15.i, align 4
  %conv641.i = zext i32 %451 to i64
  %add642.i = add nsw i64 %conv641.i, 3634488961
  %452 = load i32, i32* %D.i, align 4
  %453 = load i32, i32* %A.i, align 4
  %xor643.i = xor i32 %452, %453
  %454 = load i32, i32* %B.i, align 4
  %and644.i = and i32 %xor643.i, %454
  %455 = load i32, i32* %A.i, align 4
  %xor645.i = xor i32 %and644.i, %455
  %conv646.i = zext i32 %xor645.i to i64
  %add647.i = add nsw i64 %add642.i, %conv646.i
  %456 = load i32, i32* %C.i, align 4
  %conv648.i = zext i32 %456 to i64
  %add649.i = add nsw i64 %conv648.i, %add647.i
  %conv650.i = trunc i64 %add649.i to i32
  store i32 %conv650.i, i32* %C.i, align 4
  %457 = load i32, i32* %C.i, align 4
  %shl651.i = shl i32 %457, 14
  %458 = load i32, i32* %C.i, align 4
  %shr652.i = lshr i32 %458, 18
  %or653.i = or i32 %shl651.i, %shr652.i
  store i32 %or653.i, i32* %C.i, align 4
  %459 = load i32, i32* %D.i, align 4
  %460 = load i32, i32* %C.i, align 4
  %add654.i = add i32 %460, %459
  store i32 %add654.i, i32* %C.i, align 4
  %461 = load i32, i32* %XX4.i, align 4
  %conv655.i = zext i32 %461 to i64
  %add656.i = add nsw i64 %conv655.i, 3889429448
  %462 = load i32, i32* %C.i, align 4
  %463 = load i32, i32* %D.i, align 4
  %xor657.i = xor i32 %462, %463
  %464 = load i32, i32* %A.i, align 4
  %and658.i = and i32 %xor657.i, %464
  %465 = load i32, i32* %D.i, align 4
  %xor659.i = xor i32 %and658.i, %465
  %conv660.i = zext i32 %xor659.i to i64
  %add661.i = add nsw i64 %add656.i, %conv660.i
  %466 = load i32, i32* %B.i, align 4
  %conv662.i = zext i32 %466 to i64
  %add663.i = add nsw i64 %conv662.i, %add661.i
  %conv664.i = trunc i64 %add663.i to i32
  store i32 %conv664.i, i32* %B.i, align 4
  %467 = load i32, i32* %B.i, align 4
  %shl665.i = shl i32 %467, 20
  %468 = load i32, i32* %B.i, align 4
  %shr666.i = lshr i32 %468, 12
  %or667.i = or i32 %shl665.i, %shr666.i
  store i32 %or667.i, i32* %B.i, align 4
  %469 = load i32, i32* %C.i, align 4
  %470 = load i32, i32* %B.i, align 4
  %add668.i = add i32 %470, %469
  store i32 %add668.i, i32* %B.i, align 4
  %471 = load i32, i32* %XX9.i, align 4
  %conv669.i = zext i32 %471 to i64
  %add670.i = add nsw i64 %conv669.i, 568446438
  %472 = load i32, i32* %B.i, align 4
  %473 = load i32, i32* %C.i, align 4
  %xor671.i = xor i32 %472, %473
  %474 = load i32, i32* %D.i, align 4
  %and672.i = and i32 %xor671.i, %474
  %475 = load i32, i32* %C.i, align 4
  %xor673.i = xor i32 %and672.i, %475
  %conv674.i = zext i32 %xor673.i to i64
  %add675.i = add nsw i64 %add670.i, %conv674.i
  %476 = load i32, i32* %A.i, align 4
  %conv676.i = zext i32 %476 to i64
  %add677.i = add nsw i64 %conv676.i, %add675.i
  %conv678.i = trunc i64 %add677.i to i32
  store i32 %conv678.i, i32* %A.i, align 4
  %477 = load i32, i32* %A.i, align 4
  %shl679.i = shl i32 %477, 5
  %478 = load i32, i32* %A.i, align 4
  %shr680.i = lshr i32 %478, 27
  %or681.i = or i32 %shl679.i, %shr680.i
  store i32 %or681.i, i32* %A.i, align 4
  %479 = load i32, i32* %B.i, align 4
  %480 = load i32, i32* %A.i, align 4
  %add682.i = add i32 %480, %479
  store i32 %add682.i, i32* %A.i, align 4
  %481 = load i32, i32* %XX14.i, align 4
  %conv683.i = zext i32 %481 to i64
  %add684.i = add nsw i64 %conv683.i, 3275163606
  %482 = load i32, i32* %A.i, align 4
  %483 = load i32, i32* %B.i, align 4
  %xor685.i = xor i32 %482, %483
  %484 = load i32, i32* %C.i, align 4
  %and686.i = and i32 %xor685.i, %484
  %485 = load i32, i32* %B.i, align 4
  %xor687.i = xor i32 %and686.i, %485
  %conv688.i = zext i32 %xor687.i to i64
  %add689.i = add nsw i64 %add684.i, %conv688.i
  %486 = load i32, i32* %D.i, align 4
  %conv690.i = zext i32 %486 to i64
  %add691.i = add nsw i64 %conv690.i, %add689.i
  %conv692.i = trunc i64 %add691.i to i32
  store i32 %conv692.i, i32* %D.i, align 4
  %487 = load i32, i32* %D.i, align 4
  %shl693.i = shl i32 %487, 9
  %488 = load i32, i32* %D.i, align 4
  %shr694.i = lshr i32 %488, 23
  %or695.i = or i32 %shl693.i, %shr694.i
  store i32 %or695.i, i32* %D.i, align 4
  %489 = load i32, i32* %A.i, align 4
  %490 = load i32, i32* %D.i, align 4
  %add696.i = add i32 %490, %489
  store i32 %add696.i, i32* %D.i, align 4
  %491 = load i32, i32* %XX3.i, align 4
  %conv697.i = zext i32 %491 to i64
  %add698.i = add nsw i64 %conv697.i, 4107603335
  %492 = load i32, i32* %D.i, align 4
  %493 = load i32, i32* %A.i, align 4
  %xor699.i = xor i32 %492, %493
  %494 = load i32, i32* %B.i, align 4
  %and700.i = and i32 %xor699.i, %494
  %495 = load i32, i32* %A.i, align 4
  %xor701.i = xor i32 %and700.i, %495
  %conv702.i = zext i32 %xor701.i to i64
  %add703.i = add nsw i64 %add698.i, %conv702.i
  %496 = load i32, i32* %C.i, align 4
  %conv704.i = zext i32 %496 to i64
  %add705.i = add nsw i64 %conv704.i, %add703.i
  %conv706.i = trunc i64 %add705.i to i32
  store i32 %conv706.i, i32* %C.i, align 4
  %497 = load i32, i32* %C.i, align 4
  %shl707.i = shl i32 %497, 14
  %498 = load i32, i32* %C.i, align 4
  %shr708.i = lshr i32 %498, 18
  %or709.i = or i32 %shl707.i, %shr708.i
  store i32 %or709.i, i32* %C.i, align 4
  %499 = load i32, i32* %D.i, align 4
  %500 = load i32, i32* %C.i, align 4
  %add710.i = add i32 %500, %499
  store i32 %add710.i, i32* %C.i, align 4
  %501 = load i32, i32* %XX8.i, align 4
  %conv711.i = zext i32 %501 to i64
  %add712.i = add nsw i64 %conv711.i, 1163531501
  %502 = load i32, i32* %C.i, align 4
  %503 = load i32, i32* %D.i, align 4
  %xor713.i = xor i32 %502, %503
  %504 = load i32, i32* %A.i, align 4
  %and714.i = and i32 %xor713.i, %504
  %505 = load i32, i32* %D.i, align 4
  %xor715.i = xor i32 %and714.i, %505
  %conv716.i = zext i32 %xor715.i to i64
  %add717.i = add nsw i64 %add712.i, %conv716.i
  %506 = load i32, i32* %B.i, align 4
  %conv718.i = zext i32 %506 to i64
  %add719.i = add nsw i64 %conv718.i, %add717.i
  %conv720.i = trunc i64 %add719.i to i32
  store i32 %conv720.i, i32* %B.i, align 4
  %507 = load i32, i32* %B.i, align 4
  %shl721.i = shl i32 %507, 20
  %508 = load i32, i32* %B.i, align 4
  %shr722.i = lshr i32 %508, 12
  %or723.i = or i32 %shl721.i, %shr722.i
  store i32 %or723.i, i32* %B.i, align 4
  %509 = load i32, i32* %C.i, align 4
  %510 = load i32, i32* %B.i, align 4
  %add724.i = add i32 %510, %509
  store i32 %add724.i, i32* %B.i, align 4
  %511 = load i32, i32* %XX13.i, align 4
  %conv725.i = zext i32 %511 to i64
  %add726.i = add nsw i64 %conv725.i, 2850285829
  %512 = load i32, i32* %B.i, align 4
  %513 = load i32, i32* %C.i, align 4
  %xor727.i = xor i32 %512, %513
  %514 = load i32, i32* %D.i, align 4
  %and728.i = and i32 %xor727.i, %514
  %515 = load i32, i32* %C.i, align 4
  %xor729.i = xor i32 %and728.i, %515
  %conv730.i = zext i32 %xor729.i to i64
  %add731.i = add nsw i64 %add726.i, %conv730.i
  %516 = load i32, i32* %A.i, align 4
  %conv732.i = zext i32 %516 to i64
  %add733.i = add nsw i64 %conv732.i, %add731.i
  %conv734.i = trunc i64 %add733.i to i32
  store i32 %conv734.i, i32* %A.i, align 4
  %517 = load i32, i32* %A.i, align 4
  %shl735.i = shl i32 %517, 5
  %518 = load i32, i32* %A.i, align 4
  %shr736.i = lshr i32 %518, 27
  %or737.i = or i32 %shl735.i, %shr736.i
  store i32 %or737.i, i32* %A.i, align 4
  %519 = load i32, i32* %B.i, align 4
  %520 = load i32, i32* %A.i, align 4
  %add738.i = add i32 %520, %519
  store i32 %add738.i, i32* %A.i, align 4
  %521 = load i32, i32* %XX2.i, align 4
  %conv739.i = zext i32 %521 to i64
  %add740.i = add nsw i64 %conv739.i, 4243563512
  %522 = load i32, i32* %A.i, align 4
  %523 = load i32, i32* %B.i, align 4
  %xor741.i = xor i32 %522, %523
  %524 = load i32, i32* %C.i, align 4
  %and742.i = and i32 %xor741.i, %524
  %525 = load i32, i32* %B.i, align 4
  %xor743.i = xor i32 %and742.i, %525
  %conv744.i = zext i32 %xor743.i to i64
  %add745.i = add nsw i64 %add740.i, %conv744.i
  %526 = load i32, i32* %D.i, align 4
  %conv746.i = zext i32 %526 to i64
  %add747.i = add nsw i64 %conv746.i, %add745.i
  %conv748.i = trunc i64 %add747.i to i32
  store i32 %conv748.i, i32* %D.i, align 4
  %527 = load i32, i32* %D.i, align 4
  %shl749.i = shl i32 %527, 9
  %528 = load i32, i32* %D.i, align 4
  %shr750.i = lshr i32 %528, 23
  %or751.i = or i32 %shl749.i, %shr750.i
  store i32 %or751.i, i32* %D.i, align 4
  %529 = load i32, i32* %A.i, align 4
  %530 = load i32, i32* %D.i, align 4
  %add752.i = add i32 %530, %529
  store i32 %add752.i, i32* %D.i, align 4
  %531 = load i32, i32* %XX7.i, align 4
  %conv753.i = zext i32 %531 to i64
  %add754.i = add nsw i64 %conv753.i, 1735328473
  %532 = load i32, i32* %D.i, align 4
  %533 = load i32, i32* %A.i, align 4
  %xor755.i = xor i32 %532, %533
  %534 = load i32, i32* %B.i, align 4
  %and756.i = and i32 %xor755.i, %534
  %535 = load i32, i32* %A.i, align 4
  %xor757.i = xor i32 %and756.i, %535
  %conv758.i = zext i32 %xor757.i to i64
  %add759.i = add nsw i64 %add754.i, %conv758.i
  %536 = load i32, i32* %C.i, align 4
  %conv760.i = zext i32 %536 to i64
  %add761.i = add nsw i64 %conv760.i, %add759.i
  %conv762.i = trunc i64 %add761.i to i32
  store i32 %conv762.i, i32* %C.i, align 4
  %537 = load i32, i32* %C.i, align 4
  %shl763.i = shl i32 %537, 14
  %538 = load i32, i32* %C.i, align 4
  %shr764.i = lshr i32 %538, 18
  %or765.i = or i32 %shl763.i, %shr764.i
  store i32 %or765.i, i32* %C.i, align 4
  %539 = load i32, i32* %D.i, align 4
  %540 = load i32, i32* %C.i, align 4
  %add766.i = add i32 %540, %539
  store i32 %add766.i, i32* %C.i, align 4
  %541 = load i32, i32* %XX12.i, align 4
  %conv767.i = zext i32 %541 to i64
  %add768.i = add nsw i64 %conv767.i, 2368359562
  %542 = load i32, i32* %C.i, align 4
  %543 = load i32, i32* %D.i, align 4
  %xor769.i = xor i32 %542, %543
  %544 = load i32, i32* %A.i, align 4
  %and770.i = and i32 %xor769.i, %544
  %545 = load i32, i32* %D.i, align 4
  %xor771.i = xor i32 %and770.i, %545
  %conv772.i = zext i32 %xor771.i to i64
  %add773.i = add nsw i64 %add768.i, %conv772.i
  %546 = load i32, i32* %B.i, align 4
  %conv774.i = zext i32 %546 to i64
  %add775.i = add nsw i64 %conv774.i, %add773.i
  %conv776.i = trunc i64 %add775.i to i32
  store i32 %conv776.i, i32* %B.i, align 4
  %547 = load i32, i32* %B.i, align 4
  %shl777.i = shl i32 %547, 20
  %548 = load i32, i32* %B.i, align 4
  %shr778.i = lshr i32 %548, 12
  %or779.i = or i32 %shl777.i, %shr778.i
  store i32 %or779.i, i32* %B.i, align 4
  %549 = load i32, i32* %C.i, align 4
  %550 = load i32, i32* %B.i, align 4
  %add780.i = add i32 %550, %549
  store i32 %add780.i, i32* %B.i, align 4
  %551 = load i32, i32* %XX5.i, align 4
  %conv781.i = zext i32 %551 to i64
  %add782.i = add nsw i64 %conv781.i, 4294588738
  %552 = load i32, i32* %B.i, align 4
  %553 = load i32, i32* %C.i, align 4
  %xor783.i = xor i32 %552, %553
  %554 = load i32, i32* %D.i, align 4
  %xor784.i = xor i32 %xor783.i, %554
  %conv785.i = zext i32 %xor784.i to i64
  %add786.i = add nsw i64 %add782.i, %conv785.i
  %555 = load i32, i32* %A.i, align 4
  %conv787.i = zext i32 %555 to i64
  %add788.i = add nsw i64 %conv787.i, %add786.i
  %conv789.i = trunc i64 %add788.i to i32
  store i32 %conv789.i, i32* %A.i, align 4
  %556 = load i32, i32* %A.i, align 4
  %shl790.i = shl i32 %556, 4
  %557 = load i32, i32* %A.i, align 4
  %shr791.i = lshr i32 %557, 28
  %or792.i = or i32 %shl790.i, %shr791.i
  store i32 %or792.i, i32* %A.i, align 4
  %558 = load i32, i32* %B.i, align 4
  %559 = load i32, i32* %A.i, align 4
  %add793.i = add i32 %559, %558
  store i32 %add793.i, i32* %A.i, align 4
  %560 = load i32, i32* %XX8.i, align 4
  %conv794.i = zext i32 %560 to i64
  %add795.i = add nsw i64 %conv794.i, 2272392833
  %561 = load i32, i32* %A.i, align 4
  %562 = load i32, i32* %B.i, align 4
  %xor796.i = xor i32 %561, %562
  %563 = load i32, i32* %C.i, align 4
  %xor797.i = xor i32 %xor796.i, %563
  %conv798.i = zext i32 %xor797.i to i64
  %add799.i = add nsw i64 %add795.i, %conv798.i
  %564 = load i32, i32* %D.i, align 4
  %conv800.i = zext i32 %564 to i64
  %add801.i = add nsw i64 %conv800.i, %add799.i
  %conv802.i = trunc i64 %add801.i to i32
  store i32 %conv802.i, i32* %D.i, align 4
  %565 = load i32, i32* %D.i, align 4
  %shl803.i = shl i32 %565, 11
  %566 = load i32, i32* %D.i, align 4
  %shr804.i = lshr i32 %566, 21
  %or805.i = or i32 %shl803.i, %shr804.i
  store i32 %or805.i, i32* %D.i, align 4
  %567 = load i32, i32* %A.i, align 4
  %568 = load i32, i32* %D.i, align 4
  %add806.i = add i32 %568, %567
  store i32 %add806.i, i32* %D.i, align 4
  %569 = load i32, i32* %XX11.i, align 4
  %conv807.i = zext i32 %569 to i64
  %add808.i = add nsw i64 %conv807.i, 1839030562
  %570 = load i32, i32* %D.i, align 4
  %571 = load i32, i32* %A.i, align 4
  %xor809.i = xor i32 %570, %571
  %572 = load i32, i32* %B.i, align 4
  %xor810.i = xor i32 %xor809.i, %572
  %conv811.i = zext i32 %xor810.i to i64
  %add812.i = add nsw i64 %add808.i, %conv811.i
  %573 = load i32, i32* %C.i, align 4
  %conv813.i = zext i32 %573 to i64
  %add814.i = add nsw i64 %conv813.i, %add812.i
  %conv815.i = trunc i64 %add814.i to i32
  store i32 %conv815.i, i32* %C.i, align 4
  %574 = load i32, i32* %C.i, align 4
  %shl816.i = shl i32 %574, 16
  %575 = load i32, i32* %C.i, align 4
  %shr817.i = lshr i32 %575, 16
  %or818.i = or i32 %shl816.i, %shr817.i
  store i32 %or818.i, i32* %C.i, align 4
  %576 = load i32, i32* %D.i, align 4
  %577 = load i32, i32* %C.i, align 4
  %add819.i = add i32 %577, %576
  store i32 %add819.i, i32* %C.i, align 4
  %578 = load i32, i32* %XX14.i, align 4
  %conv820.i = zext i32 %578 to i64
  %add821.i = add nsw i64 %conv820.i, 4259657740
  %579 = load i32, i32* %C.i, align 4
  %580 = load i32, i32* %D.i, align 4
  %xor822.i = xor i32 %579, %580
  %581 = load i32, i32* %A.i, align 4
  %xor823.i = xor i32 %xor822.i, %581
  %conv824.i = zext i32 %xor823.i to i64
  %add825.i = add nsw i64 %add821.i, %conv824.i
  %582 = load i32, i32* %B.i, align 4
  %conv826.i = zext i32 %582 to i64
  %add827.i = add nsw i64 %conv826.i, %add825.i
  %conv828.i = trunc i64 %add827.i to i32
  store i32 %conv828.i, i32* %B.i, align 4
  %583 = load i32, i32* %B.i, align 4
  %shl829.i = shl i32 %583, 23
  %584 = load i32, i32* %B.i, align 4
  %shr830.i = lshr i32 %584, 9
  %or831.i = or i32 %shl829.i, %shr830.i
  store i32 %or831.i, i32* %B.i, align 4
  %585 = load i32, i32* %C.i, align 4
  %586 = load i32, i32* %B.i, align 4
  %add832.i = add i32 %586, %585
  store i32 %add832.i, i32* %B.i, align 4
  %587 = load i32, i32* %XX1.i, align 4
  %conv833.i = zext i32 %587 to i64
  %add834.i = add nsw i64 %conv833.i, 2763975236
  %588 = load i32, i32* %B.i, align 4
  %589 = load i32, i32* %C.i, align 4
  %xor835.i = xor i32 %588, %589
  %590 = load i32, i32* %D.i, align 4
  %xor836.i = xor i32 %xor835.i, %590
  %conv837.i = zext i32 %xor836.i to i64
  %add838.i = add nsw i64 %add834.i, %conv837.i
  %591 = load i32, i32* %A.i, align 4
  %conv839.i = zext i32 %591 to i64
  %add840.i = add nsw i64 %conv839.i, %add838.i
  %conv841.i = trunc i64 %add840.i to i32
  store i32 %conv841.i, i32* %A.i, align 4
  %592 = load i32, i32* %A.i, align 4
  %shl842.i = shl i32 %592, 4
  %593 = load i32, i32* %A.i, align 4
  %shr843.i = lshr i32 %593, 28
  %or844.i = or i32 %shl842.i, %shr843.i
  store i32 %or844.i, i32* %A.i, align 4
  %594 = load i32, i32* %B.i, align 4
  %595 = load i32, i32* %A.i, align 4
  %add845.i = add i32 %595, %594
  store i32 %add845.i, i32* %A.i, align 4
  %596 = load i32, i32* %XX4.i, align 4
  %conv846.i = zext i32 %596 to i64
  %add847.i = add nsw i64 %conv846.i, 1272893353
  %597 = load i32, i32* %A.i, align 4
  %598 = load i32, i32* %B.i, align 4
  %xor848.i = xor i32 %597, %598
  %599 = load i32, i32* %C.i, align 4
  %xor849.i = xor i32 %xor848.i, %599
  %conv850.i = zext i32 %xor849.i to i64
  %add851.i = add nsw i64 %add847.i, %conv850.i
  %600 = load i32, i32* %D.i, align 4
  %conv852.i = zext i32 %600 to i64
  %add853.i = add nsw i64 %conv852.i, %add851.i
  %conv854.i = trunc i64 %add853.i to i32
  store i32 %conv854.i, i32* %D.i, align 4
  %601 = load i32, i32* %D.i, align 4
  %shl855.i = shl i32 %601, 11
  %602 = load i32, i32* %D.i, align 4
  %shr856.i = lshr i32 %602, 21
  %or857.i = or i32 %shl855.i, %shr856.i
  store i32 %or857.i, i32* %D.i, align 4
  %603 = load i32, i32* %A.i, align 4
  %604 = load i32, i32* %D.i, align 4
  %add858.i = add i32 %604, %603
  store i32 %add858.i, i32* %D.i, align 4
  %605 = load i32, i32* %XX7.i, align 4
  %conv859.i = zext i32 %605 to i64
  %add860.i = add nsw i64 %conv859.i, 4139469664
  %606 = load i32, i32* %D.i, align 4
  %607 = load i32, i32* %A.i, align 4
  %xor861.i = xor i32 %606, %607
  %608 = load i32, i32* %B.i, align 4
  %xor862.i = xor i32 %xor861.i, %608
  %conv863.i = zext i32 %xor862.i to i64
  %add864.i = add nsw i64 %add860.i, %conv863.i
  %609 = load i32, i32* %C.i, align 4
  %conv865.i = zext i32 %609 to i64
  %add866.i = add nsw i64 %conv865.i, %add864.i
  %conv867.i = trunc i64 %add866.i to i32
  store i32 %conv867.i, i32* %C.i, align 4
  %610 = load i32, i32* %C.i, align 4
  %shl868.i = shl i32 %610, 16
  %611 = load i32, i32* %C.i, align 4
  %shr869.i = lshr i32 %611, 16
  %or870.i = or i32 %shl868.i, %shr869.i
  store i32 %or870.i, i32* %C.i, align 4
  %612 = load i32, i32* %D.i, align 4
  %613 = load i32, i32* %C.i, align 4
  %add871.i = add i32 %613, %612
  store i32 %add871.i, i32* %C.i, align 4
  %614 = load i32, i32* %XX10.i, align 4
  %conv872.i = zext i32 %614 to i64
  %add873.i = add nsw i64 %conv872.i, 3200236656
  %615 = load i32, i32* %C.i, align 4
  %616 = load i32, i32* %D.i, align 4
  %xor874.i = xor i32 %615, %616
  %617 = load i32, i32* %A.i, align 4
  %xor875.i = xor i32 %xor874.i, %617
  %conv876.i = zext i32 %xor875.i to i64
  %add877.i = add nsw i64 %add873.i, %conv876.i
  %618 = load i32, i32* %B.i, align 4
  %conv878.i = zext i32 %618 to i64
  %add879.i = add nsw i64 %conv878.i, %add877.i
  %conv880.i = trunc i64 %add879.i to i32
  store i32 %conv880.i, i32* %B.i, align 4
  %619 = load i32, i32* %B.i, align 4
  %shl881.i = shl i32 %619, 23
  %620 = load i32, i32* %B.i, align 4
  %shr882.i = lshr i32 %620, 9
  %or883.i = or i32 %shl881.i, %shr882.i
  store i32 %or883.i, i32* %B.i, align 4
  %621 = load i32, i32* %C.i, align 4
  %622 = load i32, i32* %B.i, align 4
  %add884.i = add i32 %622, %621
  store i32 %add884.i, i32* %B.i, align 4
  %623 = load i32, i32* %XX13.i, align 4
  %conv885.i = zext i32 %623 to i64
  %add886.i = add nsw i64 %conv885.i, 681279174
  %624 = load i32, i32* %B.i, align 4
  %625 = load i32, i32* %C.i, align 4
  %xor887.i = xor i32 %624, %625
  %626 = load i32, i32* %D.i, align 4
  %xor888.i = xor i32 %xor887.i, %626
  %conv889.i = zext i32 %xor888.i to i64
  %add890.i = add nsw i64 %add886.i, %conv889.i
  %627 = load i32, i32* %A.i, align 4
  %conv891.i = zext i32 %627 to i64
  %add892.i = add nsw i64 %conv891.i, %add890.i
  %conv893.i = trunc i64 %add892.i to i32
  store i32 %conv893.i, i32* %A.i, align 4
  %628 = load i32, i32* %A.i, align 4
  %shl894.i = shl i32 %628, 4
  %629 = load i32, i32* %A.i, align 4
  %shr895.i = lshr i32 %629, 28
  %or896.i = or i32 %shl894.i, %shr895.i
  store i32 %or896.i, i32* %A.i, align 4
  %630 = load i32, i32* %B.i, align 4
  %631 = load i32, i32* %A.i, align 4
  %add897.i = add i32 %631, %630
  store i32 %add897.i, i32* %A.i, align 4
  %632 = load i32, i32* %XX0.i, align 4
  %conv898.i = zext i32 %632 to i64
  %add899.i = add nsw i64 %conv898.i, 3936430074
  %633 = load i32, i32* %A.i, align 4
  %634 = load i32, i32* %B.i, align 4
  %xor900.i = xor i32 %633, %634
  %635 = load i32, i32* %C.i, align 4
  %xor901.i = xor i32 %xor900.i, %635
  %conv902.i = zext i32 %xor901.i to i64
  %add903.i = add nsw i64 %add899.i, %conv902.i
  %636 = load i32, i32* %D.i, align 4
  %conv904.i = zext i32 %636 to i64
  %add905.i = add nsw i64 %conv904.i, %add903.i
  %conv906.i = trunc i64 %add905.i to i32
  store i32 %conv906.i, i32* %D.i, align 4
  %637 = load i32, i32* %D.i, align 4
  %shl907.i = shl i32 %637, 11
  %638 = load i32, i32* %D.i, align 4
  %shr908.i = lshr i32 %638, 21
  %or909.i = or i32 %shl907.i, %shr908.i
  store i32 %or909.i, i32* %D.i, align 4
  %639 = load i32, i32* %A.i, align 4
  %640 = load i32, i32* %D.i, align 4
  %add910.i = add i32 %640, %639
  store i32 %add910.i, i32* %D.i, align 4
  %641 = load i32, i32* %XX3.i, align 4
  %conv911.i = zext i32 %641 to i64
  %add912.i = add nsw i64 %conv911.i, 3572445317
  %642 = load i32, i32* %D.i, align 4
  %643 = load i32, i32* %A.i, align 4
  %xor913.i = xor i32 %642, %643
  %644 = load i32, i32* %B.i, align 4
  %xor914.i = xor i32 %xor913.i, %644
  %conv915.i = zext i32 %xor914.i to i64
  %add916.i = add nsw i64 %add912.i, %conv915.i
  %645 = load i32, i32* %C.i, align 4
  %conv917.i = zext i32 %645 to i64
  %add918.i = add nsw i64 %conv917.i, %add916.i
  %conv919.i = trunc i64 %add918.i to i32
  store i32 %conv919.i, i32* %C.i, align 4
  %646 = load i32, i32* %C.i, align 4
  %shl920.i = shl i32 %646, 16
  %647 = load i32, i32* %C.i, align 4
  %shr921.i = lshr i32 %647, 16
  %or922.i = or i32 %shl920.i, %shr921.i
  store i32 %or922.i, i32* %C.i, align 4
  %648 = load i32, i32* %D.i, align 4
  %649 = load i32, i32* %C.i, align 4
  %add923.i = add i32 %649, %648
  store i32 %add923.i, i32* %C.i, align 4
  %650 = load i32, i32* %XX6.i, align 4
  %conv924.i = zext i32 %650 to i64
  %add925.i = add nsw i64 %conv924.i, 76029189
  %651 = load i32, i32* %C.i, align 4
  %652 = load i32, i32* %D.i, align 4
  %xor926.i = xor i32 %651, %652
  %653 = load i32, i32* %A.i, align 4
  %xor927.i = xor i32 %xor926.i, %653
  %conv928.i = zext i32 %xor927.i to i64
  %add929.i = add nsw i64 %add925.i, %conv928.i
  %654 = load i32, i32* %B.i, align 4
  %conv930.i = zext i32 %654 to i64
  %add931.i = add nsw i64 %conv930.i, %add929.i
  %conv932.i = trunc i64 %add931.i to i32
  store i32 %conv932.i, i32* %B.i, align 4
  %655 = load i32, i32* %B.i, align 4
  %shl933.i = shl i32 %655, 23
  %656 = load i32, i32* %B.i, align 4
  %shr934.i = lshr i32 %656, 9
  %or935.i = or i32 %shl933.i, %shr934.i
  store i32 %or935.i, i32* %B.i, align 4
  %657 = load i32, i32* %C.i, align 4
  %658 = load i32, i32* %B.i, align 4
  %add936.i = add i32 %658, %657
  store i32 %add936.i, i32* %B.i, align 4
  %659 = load i32, i32* %XX9.i, align 4
  %conv937.i = zext i32 %659 to i64
  %add938.i = add nsw i64 %conv937.i, 3654602809
  %660 = load i32, i32* %B.i, align 4
  %661 = load i32, i32* %C.i, align 4
  %xor939.i = xor i32 %660, %661
  %662 = load i32, i32* %D.i, align 4
  %xor940.i = xor i32 %xor939.i, %662
  %conv941.i = zext i32 %xor940.i to i64
  %add942.i = add nsw i64 %add938.i, %conv941.i
  %663 = load i32, i32* %A.i, align 4
  %conv943.i = zext i32 %663 to i64
  %add944.i = add nsw i64 %conv943.i, %add942.i
  %conv945.i = trunc i64 %add944.i to i32
  store i32 %conv945.i, i32* %A.i, align 4
  %664 = load i32, i32* %A.i, align 4
  %shl946.i = shl i32 %664, 4
  %665 = load i32, i32* %A.i, align 4
  %shr947.i = lshr i32 %665, 28
  %or948.i = or i32 %shl946.i, %shr947.i
  store i32 %or948.i, i32* %A.i, align 4
  %666 = load i32, i32* %B.i, align 4
  %667 = load i32, i32* %A.i, align 4
  %add949.i = add i32 %667, %666
  store i32 %add949.i, i32* %A.i, align 4
  %668 = load i32, i32* %XX12.i, align 4
  %conv950.i = zext i32 %668 to i64
  %add951.i = add nsw i64 %conv950.i, 3873151461
  %669 = load i32, i32* %A.i, align 4
  %670 = load i32, i32* %B.i, align 4
  %xor952.i = xor i32 %669, %670
  %671 = load i32, i32* %C.i, align 4
  %xor953.i = xor i32 %xor952.i, %671
  %conv954.i = zext i32 %xor953.i to i64
  %add955.i = add nsw i64 %add951.i, %conv954.i
  %672 = load i32, i32* %D.i, align 4
  %conv956.i = zext i32 %672 to i64
  %add957.i = add nsw i64 %conv956.i, %add955.i
  %conv958.i = trunc i64 %add957.i to i32
  store i32 %conv958.i, i32* %D.i, align 4
  %673 = load i32, i32* %D.i, align 4
  %shl959.i = shl i32 %673, 11
  %674 = load i32, i32* %D.i, align 4
  %shr960.i = lshr i32 %674, 21
  %or961.i = or i32 %shl959.i, %shr960.i
  store i32 %or961.i, i32* %D.i, align 4
  %675 = load i32, i32* %A.i, align 4
  %676 = load i32, i32* %D.i, align 4
  %add962.i = add i32 %676, %675
  store i32 %add962.i, i32* %D.i, align 4
  %677 = load i32, i32* %XX15.i, align 4
  %conv963.i = zext i32 %677 to i64
  %add964.i = add nsw i64 %conv963.i, 530742520
  %678 = load i32, i32* %D.i, align 4
  %679 = load i32, i32* %A.i, align 4
  %xor965.i = xor i32 %678, %679
  %680 = load i32, i32* %B.i, align 4
  %xor966.i = xor i32 %xor965.i, %680
  %conv967.i = zext i32 %xor966.i to i64
  %add968.i = add nsw i64 %add964.i, %conv967.i
  %681 = load i32, i32* %C.i, align 4
  %conv969.i = zext i32 %681 to i64
  %add970.i = add nsw i64 %conv969.i, %add968.i
  %conv971.i = trunc i64 %add970.i to i32
  store i32 %conv971.i, i32* %C.i, align 4
  %682 = load i32, i32* %C.i, align 4
  %shl972.i = shl i32 %682, 16
  %683 = load i32, i32* %C.i, align 4
  %shr973.i = lshr i32 %683, 16
  %or974.i = or i32 %shl972.i, %shr973.i
  store i32 %or974.i, i32* %C.i, align 4
  %684 = load i32, i32* %D.i, align 4
  %685 = load i32, i32* %C.i, align 4
  %add975.i = add i32 %685, %684
  store i32 %add975.i, i32* %C.i, align 4
  %686 = load i32, i32* %XX2.i, align 4
  %conv976.i = zext i32 %686 to i64
  %add977.i = add nsw i64 %conv976.i, 3299628645
  %687 = load i32, i32* %C.i, align 4
  %688 = load i32, i32* %D.i, align 4
  %xor978.i = xor i32 %687, %688
  %689 = load i32, i32* %A.i, align 4
  %xor979.i = xor i32 %xor978.i, %689
  %conv980.i = zext i32 %xor979.i to i64
  %add981.i = add nsw i64 %add977.i, %conv980.i
  %690 = load i32, i32* %B.i, align 4
  %conv982.i = zext i32 %690 to i64
  %add983.i = add nsw i64 %conv982.i, %add981.i
  %conv984.i = trunc i64 %add983.i to i32
  store i32 %conv984.i, i32* %B.i, align 4
  %691 = load i32, i32* %B.i, align 4
  %shl985.i = shl i32 %691, 23
  %692 = load i32, i32* %B.i, align 4
  %shr986.i = lshr i32 %692, 9
  %or987.i = or i32 %shl985.i, %shr986.i
  store i32 %or987.i, i32* %B.i, align 4
  %693 = load i32, i32* %C.i, align 4
  %694 = load i32, i32* %B.i, align 4
  %add988.i = add i32 %694, %693
  store i32 %add988.i, i32* %B.i, align 4
  %695 = load i32, i32* %XX0.i, align 4
  %conv989.i = zext i32 %695 to i64
  %add990.i = add nsw i64 %conv989.i, 4096336452
  %696 = load i32, i32* %D.i, align 4
  %neg.i = xor i32 %696, -1
  %697 = load i32, i32* %B.i, align 4
  %or991.i = or i32 %neg.i, %697
  %698 = load i32, i32* %C.i, align 4
  %xor992.i = xor i32 %or991.i, %698
  %conv993.i = zext i32 %xor992.i to i64
  %add994.i = add nsw i64 %add990.i, %conv993.i
  %699 = load i32, i32* %A.i, align 4
  %conv995.i = zext i32 %699 to i64
  %add996.i = add nsw i64 %conv995.i, %add994.i
  %conv997.i = trunc i64 %add996.i to i32
  store i32 %conv997.i, i32* %A.i, align 4
  %700 = load i32, i32* %A.i, align 4
  %shl998.i = shl i32 %700, 6
  %701 = load i32, i32* %A.i, align 4
  %shr999.i = lshr i32 %701, 26
  %or1000.i = or i32 %shl998.i, %shr999.i
  store i32 %or1000.i, i32* %A.i, align 4
  %702 = load i32, i32* %B.i, align 4
  %703 = load i32, i32* %A.i, align 4
  %add1001.i = add i32 %703, %702
  store i32 %add1001.i, i32* %A.i, align 4
  %704 = load i32, i32* %XX7.i, align 4
  %conv1002.i = zext i32 %704 to i64
  %add1003.i = add nsw i64 %conv1002.i, 1126891415
  %705 = load i32, i32* %C.i, align 4
  %neg1004.i = xor i32 %705, -1
  %706 = load i32, i32* %A.i, align 4
  %or1005.i = or i32 %neg1004.i, %706
  %707 = load i32, i32* %B.i, align 4
  %xor1006.i = xor i32 %or1005.i, %707
  %conv1007.i = zext i32 %xor1006.i to i64
  %add1008.i = add nsw i64 %add1003.i, %conv1007.i
  %708 = load i32, i32* %D.i, align 4
  %conv1009.i = zext i32 %708 to i64
  %add1010.i = add nsw i64 %conv1009.i, %add1008.i
  %conv1011.i = trunc i64 %add1010.i to i32
  store i32 %conv1011.i, i32* %D.i, align 4
  %709 = load i32, i32* %D.i, align 4
  %shl1012.i = shl i32 %709, 10
  %710 = load i32, i32* %D.i, align 4
  %shr1013.i = lshr i32 %710, 22
  %or1014.i = or i32 %shl1012.i, %shr1013.i
  store i32 %or1014.i, i32* %D.i, align 4
  %711 = load i32, i32* %A.i, align 4
  %712 = load i32, i32* %D.i, align 4
  %add1015.i = add i32 %712, %711
  store i32 %add1015.i, i32* %D.i, align 4
  %713 = load i32, i32* %XX14.i, align 4
  %conv1016.i = zext i32 %713 to i64
  %add1017.i = add nsw i64 %conv1016.i, 2878612391
  %714 = load i32, i32* %B.i, align 4
  %neg1018.i = xor i32 %714, -1
  %715 = load i32, i32* %D.i, align 4
  %or1019.i = or i32 %neg1018.i, %715
  %716 = load i32, i32* %A.i, align 4
  %xor1020.i = xor i32 %or1019.i, %716
  %conv1021.i = zext i32 %xor1020.i to i64
  %add1022.i = add nsw i64 %add1017.i, %conv1021.i
  %717 = load i32, i32* %C.i, align 4
  %conv1023.i = zext i32 %717 to i64
  %add1024.i = add nsw i64 %conv1023.i, %add1022.i
  %conv1025.i = trunc i64 %add1024.i to i32
  store i32 %conv1025.i, i32* %C.i, align 4
  %718 = load i32, i32* %C.i, align 4
  %shl1026.i = shl i32 %718, 15
  %719 = load i32, i32* %C.i, align 4
  %shr1027.i = lshr i32 %719, 17
  %or1028.i = or i32 %shl1026.i, %shr1027.i
  store i32 %or1028.i, i32* %C.i, align 4
  %720 = load i32, i32* %D.i, align 4
  %721 = load i32, i32* %C.i, align 4
  %add1029.i = add i32 %721, %720
  store i32 %add1029.i, i32* %C.i, align 4
  %722 = load i32, i32* %XX5.i, align 4
  %conv1030.i = zext i32 %722 to i64
  %add1031.i = add nsw i64 %conv1030.i, 4237533241
  %723 = load i32, i32* %A.i, align 4
  %neg1032.i = xor i32 %723, -1
  %724 = load i32, i32* %C.i, align 4
  %or1033.i = or i32 %neg1032.i, %724
  %725 = load i32, i32* %D.i, align 4
  %xor1034.i = xor i32 %or1033.i, %725
  %conv1035.i = zext i32 %xor1034.i to i64
  %add1036.i = add nsw i64 %add1031.i, %conv1035.i
  %726 = load i32, i32* %B.i, align 4
  %conv1037.i = zext i32 %726 to i64
  %add1038.i = add nsw i64 %conv1037.i, %add1036.i
  %conv1039.i = trunc i64 %add1038.i to i32
  store i32 %conv1039.i, i32* %B.i, align 4
  %727 = load i32, i32* %B.i, align 4
  %shl1040.i = shl i32 %727, 21
  %728 = load i32, i32* %B.i, align 4
  %shr1041.i = lshr i32 %728, 11
  %or1042.i = or i32 %shl1040.i, %shr1041.i
  store i32 %or1042.i, i32* %B.i, align 4
  %729 = load i32, i32* %C.i, align 4
  %730 = load i32, i32* %B.i, align 4
  %add1043.i = add i32 %730, %729
  store i32 %add1043.i, i32* %B.i, align 4
  %731 = load i32, i32* %XX12.i, align 4
  %conv1044.i = zext i32 %731 to i64
  %add1045.i = add nsw i64 %conv1044.i, 1700485571
  %732 = load i32, i32* %D.i, align 4
  %neg1046.i = xor i32 %732, -1
  %733 = load i32, i32* %B.i, align 4
  %or1047.i = or i32 %neg1046.i, %733
  %734 = load i32, i32* %C.i, align 4
  %xor1048.i = xor i32 %or1047.i, %734
  %conv1049.i = zext i32 %xor1048.i to i64
  %add1050.i = add nsw i64 %add1045.i, %conv1049.i
  %735 = load i32, i32* %A.i, align 4
  %conv1051.i = zext i32 %735 to i64
  %add1052.i = add nsw i64 %conv1051.i, %add1050.i
  %conv1053.i = trunc i64 %add1052.i to i32
  store i32 %conv1053.i, i32* %A.i, align 4
  %736 = load i32, i32* %A.i, align 4
  %shl1054.i = shl i32 %736, 6
  %737 = load i32, i32* %A.i, align 4
  %shr1055.i = lshr i32 %737, 26
  %or1056.i = or i32 %shl1054.i, %shr1055.i
  store i32 %or1056.i, i32* %A.i, align 4
  %738 = load i32, i32* %B.i, align 4
  %739 = load i32, i32* %A.i, align 4
  %add1057.i = add i32 %739, %738
  store i32 %add1057.i, i32* %A.i, align 4
  %740 = load i32, i32* %XX3.i, align 4
  %conv1058.i = zext i32 %740 to i64
  %add1059.i = add nsw i64 %conv1058.i, 2399980690
  %741 = load i32, i32* %C.i, align 4
  %neg1060.i = xor i32 %741, -1
  %742 = load i32, i32* %A.i, align 4
  %or1061.i = or i32 %neg1060.i, %742
  %743 = load i32, i32* %B.i, align 4
  %xor1062.i = xor i32 %or1061.i, %743
  %conv1063.i = zext i32 %xor1062.i to i64
  %add1064.i = add nsw i64 %add1059.i, %conv1063.i
  %744 = load i32, i32* %D.i, align 4
  %conv1065.i = zext i32 %744 to i64
  %add1066.i = add nsw i64 %conv1065.i, %add1064.i
  %conv1067.i = trunc i64 %add1066.i to i32
  store i32 %conv1067.i, i32* %D.i, align 4
  %745 = load i32, i32* %D.i, align 4
  %shl1068.i = shl i32 %745, 10
  %746 = load i32, i32* %D.i, align 4
  %shr1069.i = lshr i32 %746, 22
  %or1070.i = or i32 %shl1068.i, %shr1069.i
  store i32 %or1070.i, i32* %D.i, align 4
  %747 = load i32, i32* %A.i, align 4
  %748 = load i32, i32* %D.i, align 4
  %add1071.i = add i32 %748, %747
  store i32 %add1071.i, i32* %D.i, align 4
  %749 = load i32, i32* %XX10.i, align 4
  %conv1072.i = zext i32 %749 to i64
  %add1073.i = add nsw i64 %conv1072.i, 4293915773
  %750 = load i32, i32* %B.i, align 4
  %neg1074.i = xor i32 %750, -1
  %751 = load i32, i32* %D.i, align 4
  %or1075.i = or i32 %neg1074.i, %751
  %752 = load i32, i32* %A.i, align 4
  %xor1076.i = xor i32 %or1075.i, %752
  %conv1077.i = zext i32 %xor1076.i to i64
  %add1078.i = add nsw i64 %add1073.i, %conv1077.i
  %753 = load i32, i32* %C.i, align 4
  %conv1079.i = zext i32 %753 to i64
  %add1080.i = add nsw i64 %conv1079.i, %add1078.i
  %conv1081.i = trunc i64 %add1080.i to i32
  store i32 %conv1081.i, i32* %C.i, align 4
  %754 = load i32, i32* %C.i, align 4
  %shl1082.i = shl i32 %754, 15
  %755 = load i32, i32* %C.i, align 4
  %shr1083.i = lshr i32 %755, 17
  %or1084.i = or i32 %shl1082.i, %shr1083.i
  store i32 %or1084.i, i32* %C.i, align 4
  %756 = load i32, i32* %D.i, align 4
  %757 = load i32, i32* %C.i, align 4
  %add1085.i = add i32 %757, %756
  store i32 %add1085.i, i32* %C.i, align 4
  %758 = load i32, i32* %XX1.i, align 4
  %conv1086.i = zext i32 %758 to i64
  %add1087.i = add nsw i64 %conv1086.i, 2240044497
  %759 = load i32, i32* %A.i, align 4
  %neg1088.i = xor i32 %759, -1
  %760 = load i32, i32* %C.i, align 4
  %or1089.i = or i32 %neg1088.i, %760
  %761 = load i32, i32* %D.i, align 4
  %xor1090.i = xor i32 %or1089.i, %761
  %conv1091.i = zext i32 %xor1090.i to i64
  %add1092.i = add nsw i64 %add1087.i, %conv1091.i
  %762 = load i32, i32* %B.i, align 4
  %conv1093.i = zext i32 %762 to i64
  %add1094.i = add nsw i64 %conv1093.i, %add1092.i
  %conv1095.i = trunc i64 %add1094.i to i32
  store i32 %conv1095.i, i32* %B.i, align 4
  %763 = load i32, i32* %B.i, align 4
  %shl1096.i = shl i32 %763, 21
  %764 = load i32, i32* %B.i, align 4
  %shr1097.i = lshr i32 %764, 11
  %or1098.i = or i32 %shl1096.i, %shr1097.i
  store i32 %or1098.i, i32* %B.i, align 4
  %765 = load i32, i32* %C.i, align 4
  %766 = load i32, i32* %B.i, align 4
  %add1099.i = add i32 %766, %765
  store i32 %add1099.i, i32* %B.i, align 4
  %767 = load i32, i32* %XX8.i, align 4
  %conv1100.i = zext i32 %767 to i64
  %add1101.i = add nsw i64 %conv1100.i, 1873313359
  %768 = load i32, i32* %D.i, align 4
  %neg1102.i = xor i32 %768, -1
  %769 = load i32, i32* %B.i, align 4
  %or1103.i = or i32 %neg1102.i, %769
  %770 = load i32, i32* %C.i, align 4
  %xor1104.i = xor i32 %or1103.i, %770
  %conv1105.i = zext i32 %xor1104.i to i64
  %add1106.i = add nsw i64 %add1101.i, %conv1105.i
  %771 = load i32, i32* %A.i, align 4
  %conv1107.i = zext i32 %771 to i64
  %add1108.i = add nsw i64 %conv1107.i, %add1106.i
  %conv1109.i = trunc i64 %add1108.i to i32
  store i32 %conv1109.i, i32* %A.i, align 4
  %772 = load i32, i32* %A.i, align 4
  %shl1110.i = shl i32 %772, 6
  %773 = load i32, i32* %A.i, align 4
  %shr1111.i = lshr i32 %773, 26
  %or1112.i = or i32 %shl1110.i, %shr1111.i
  store i32 %or1112.i, i32* %A.i, align 4
  %774 = load i32, i32* %B.i, align 4
  %775 = load i32, i32* %A.i, align 4
  %add1113.i = add i32 %775, %774
  store i32 %add1113.i, i32* %A.i, align 4
  %776 = load i32, i32* %XX15.i, align 4
  %conv1114.i = zext i32 %776 to i64
  %add1115.i = add nsw i64 %conv1114.i, 4264355552
  %777 = load i32, i32* %C.i, align 4
  %neg1116.i = xor i32 %777, -1
  %778 = load i32, i32* %A.i, align 4
  %or1117.i = or i32 %neg1116.i, %778
  %779 = load i32, i32* %B.i, align 4
  %xor1118.i = xor i32 %or1117.i, %779
  %conv1119.i = zext i32 %xor1118.i to i64
  %add1120.i = add nsw i64 %add1115.i, %conv1119.i
  %780 = load i32, i32* %D.i, align 4
  %conv1121.i = zext i32 %780 to i64
  %add1122.i = add nsw i64 %conv1121.i, %add1120.i
  %conv1123.i = trunc i64 %add1122.i to i32
  store i32 %conv1123.i, i32* %D.i, align 4
  %781 = load i32, i32* %D.i, align 4
  %shl1124.i = shl i32 %781, 10
  %782 = load i32, i32* %D.i, align 4
  %shr1125.i = lshr i32 %782, 22
  %or1126.i = or i32 %shl1124.i, %shr1125.i
  store i32 %or1126.i, i32* %D.i, align 4
  %783 = load i32, i32* %A.i, align 4
  %784 = load i32, i32* %D.i, align 4
  %add1127.i = add i32 %784, %783
  store i32 %add1127.i, i32* %D.i, align 4
  %785 = load i32, i32* %XX6.i, align 4
  %conv1128.i = zext i32 %785 to i64
  %add1129.i = add nsw i64 %conv1128.i, 2734768916
  %786 = load i32, i32* %B.i, align 4
  %neg1130.i = xor i32 %786, -1
  %787 = load i32, i32* %D.i, align 4
  %or1131.i = or i32 %neg1130.i, %787
  %788 = load i32, i32* %A.i, align 4
  %xor1132.i = xor i32 %or1131.i, %788
  %conv1133.i = zext i32 %xor1132.i to i64
  %add1134.i = add nsw i64 %add1129.i, %conv1133.i
  %789 = load i32, i32* %C.i, align 4
  %conv1135.i = zext i32 %789 to i64
  %add1136.i = add nsw i64 %conv1135.i, %add1134.i
  %conv1137.i = trunc i64 %add1136.i to i32
  store i32 %conv1137.i, i32* %C.i, align 4
  %790 = load i32, i32* %C.i, align 4
  %shl1138.i = shl i32 %790, 15
  %791 = load i32, i32* %C.i, align 4
  %shr1139.i = lshr i32 %791, 17
  %or1140.i = or i32 %shl1138.i, %shr1139.i
  store i32 %or1140.i, i32* %C.i, align 4
  %792 = load i32, i32* %D.i, align 4
  %793 = load i32, i32* %C.i, align 4
  %add1141.i = add i32 %793, %792
  store i32 %add1141.i, i32* %C.i, align 4
  %794 = load i32, i32* %XX13.i, align 4
  %conv1142.i = zext i32 %794 to i64
  %add1143.i = add nsw i64 %conv1142.i, 1309151649
  %795 = load i32, i32* %A.i, align 4
  %neg1144.i = xor i32 %795, -1
  %796 = load i32, i32* %C.i, align 4
  %or1145.i = or i32 %neg1144.i, %796
  %797 = load i32, i32* %D.i, align 4
  %xor1146.i = xor i32 %or1145.i, %797
  %conv1147.i = zext i32 %xor1146.i to i64
  %add1148.i = add nsw i64 %add1143.i, %conv1147.i
  %798 = load i32, i32* %B.i, align 4
  %conv1149.i = zext i32 %798 to i64
  %add1150.i = add nsw i64 %conv1149.i, %add1148.i
  %conv1151.i = trunc i64 %add1150.i to i32
  store i32 %conv1151.i, i32* %B.i, align 4
  %799 = load i32, i32* %B.i, align 4
  %shl1152.i = shl i32 %799, 21
  %800 = load i32, i32* %B.i, align 4
  %shr1153.i = lshr i32 %800, 11
  %or1154.i = or i32 %shl1152.i, %shr1153.i
  store i32 %or1154.i, i32* %B.i, align 4
  %801 = load i32, i32* %C.i, align 4
  %802 = load i32, i32* %B.i, align 4
  %add1155.i = add i32 %802, %801
  store i32 %add1155.i, i32* %B.i, align 4
  %803 = load i32, i32* %XX4.i, align 4
  %conv1156.i = zext i32 %803 to i64
  %add1157.i = add nsw i64 %conv1156.i, 4149444226
  %804 = load i32, i32* %D.i, align 4
  %neg1158.i = xor i32 %804, -1
  %805 = load i32, i32* %B.i, align 4
  %or1159.i = or i32 %neg1158.i, %805
  %806 = load i32, i32* %C.i, align 4
  %xor1160.i = xor i32 %or1159.i, %806
  %conv1161.i = zext i32 %xor1160.i to i64
  %add1162.i = add nsw i64 %add1157.i, %conv1161.i
  %807 = load i32, i32* %A.i, align 4
  %conv1163.i = zext i32 %807 to i64
  %add1164.i = add nsw i64 %conv1163.i, %add1162.i
  %conv1165.i = trunc i64 %add1164.i to i32
  store i32 %conv1165.i, i32* %A.i, align 4
  %808 = load i32, i32* %A.i, align 4
  %shl1166.i = shl i32 %808, 6
  %809 = load i32, i32* %A.i, align 4
  %shr1167.i = lshr i32 %809, 26
  %or1168.i = or i32 %shl1166.i, %shr1167.i
  store i32 %or1168.i, i32* %A.i, align 4
  %810 = load i32, i32* %B.i, align 4
  %811 = load i32, i32* %A.i, align 4
  %add1169.i = add i32 %811, %810
  store i32 %add1169.i, i32* %A.i, align 4
  %812 = load i32, i32* %XX11.i, align 4
  %conv1170.i = zext i32 %812 to i64
  %add1171.i = add nsw i64 %conv1170.i, 3174756917
  %813 = load i32, i32* %C.i, align 4
  %neg1172.i = xor i32 %813, -1
  %814 = load i32, i32* %A.i, align 4
  %or1173.i = or i32 %neg1172.i, %814
  %815 = load i32, i32* %B.i, align 4
  %xor1174.i = xor i32 %or1173.i, %815
  %conv1175.i = zext i32 %xor1174.i to i64
  %add1176.i = add nsw i64 %add1171.i, %conv1175.i
  %816 = load i32, i32* %D.i, align 4
  %conv1177.i = zext i32 %816 to i64
  %add1178.i = add nsw i64 %conv1177.i, %add1176.i
  %conv1179.i = trunc i64 %add1178.i to i32
  store i32 %conv1179.i, i32* %D.i, align 4
  %817 = load i32, i32* %D.i, align 4
  %shl1180.i = shl i32 %817, 10
  %818 = load i32, i32* %D.i, align 4
  %shr1181.i = lshr i32 %818, 22
  %or1182.i = or i32 %shl1180.i, %shr1181.i
  store i32 %or1182.i, i32* %D.i, align 4
  %819 = load i32, i32* %A.i, align 4
  %820 = load i32, i32* %D.i, align 4
  %add1183.i = add i32 %820, %819
  store i32 %add1183.i, i32* %D.i, align 4
  %821 = load i32, i32* %XX2.i, align 4
  %conv1184.i = zext i32 %821 to i64
  %add1185.i = add nsw i64 %conv1184.i, 718787259
  %822 = load i32, i32* %B.i, align 4
  %neg1186.i = xor i32 %822, -1
  %823 = load i32, i32* %D.i, align 4
  %or1187.i = or i32 %neg1186.i, %823
  %824 = load i32, i32* %A.i, align 4
  %xor1188.i = xor i32 %or1187.i, %824
  %conv1189.i = zext i32 %xor1188.i to i64
  %add1190.i = add nsw i64 %add1185.i, %conv1189.i
  %825 = load i32, i32* %C.i, align 4
  %conv1191.i = zext i32 %825 to i64
  %add1192.i = add nsw i64 %conv1191.i, %add1190.i
  %conv1193.i = trunc i64 %add1192.i to i32
  store i32 %conv1193.i, i32* %C.i, align 4
  %826 = load i32, i32* %C.i, align 4
  %shl1194.i = shl i32 %826, 15
  %827 = load i32, i32* %C.i, align 4
  %shr1195.i = lshr i32 %827, 17
  %or1196.i = or i32 %shl1194.i, %shr1195.i
  store i32 %or1196.i, i32* %C.i, align 4
  %828 = load i32, i32* %D.i, align 4
  %829 = load i32, i32* %C.i, align 4
  %add1197.i = add i32 %829, %828
  store i32 %add1197.i, i32* %C.i, align 4
  %830 = load i32, i32* %XX9.i, align 4
  %conv1198.i = zext i32 %830 to i64
  %add1199.i = add nsw i64 %conv1198.i, 3951481745
  %831 = load i32, i32* %A.i, align 4
  %neg1200.i = xor i32 %831, -1
  %832 = load i32, i32* %C.i, align 4
  %or1201.i = or i32 %neg1200.i, %832
  %833 = load i32, i32* %D.i, align 4
  %xor1202.i = xor i32 %or1201.i, %833
  %conv1203.i = zext i32 %xor1202.i to i64
  %add1204.i = add nsw i64 %add1199.i, %conv1203.i
  %834 = load i32, i32* %B.i, align 4
  %conv1205.i = zext i32 %834 to i64
  %add1206.i = add nsw i64 %conv1205.i, %add1204.i
  %conv1207.i = trunc i64 %add1206.i to i32
  store i32 %conv1207.i, i32* %B.i, align 4
  %835 = load i32, i32* %B.i, align 4
  %shl1208.i = shl i32 %835, 21
  %836 = load i32, i32* %B.i, align 4
  %shr1209.i = lshr i32 %836, 11
  %or1210.i = or i32 %shl1208.i, %shr1209.i
  store i32 %or1210.i, i32* %B.i, align 4
  %837 = load i32, i32* %C.i, align 4
  %838 = load i32, i32* %B.i, align 4
  %add1211.i = add i32 %838, %837
  store i32 %add1211.i, i32* %B.i, align 4
  %839 = load i32, i32* %A.i, align 4
  %840 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %A1212.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %840, i32 0, i32 0
  %841 = load i32, i32* %A1212.i, align 4
  %add1213.i = add i32 %841, %839
  store i32 %add1213.i, i32* %A1212.i, align 4
  store i32 %add1213.i, i32* %A.i, align 4
  %842 = load i32, i32* %B.i, align 4
  %843 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %B1214.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %843, i32 0, i32 1
  %844 = load i32, i32* %B1214.i, align 4
  %add1215.i = add i32 %844, %842
  store i32 %add1215.i, i32* %B1214.i, align 4
  store i32 %add1215.i, i32* %B.i, align 4
  %845 = load i32, i32* %C.i, align 4
  %846 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %C1216.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %846, i32 0, i32 2
  %847 = load i32, i32* %C1216.i, align 4
  %add1217.i = add i32 %847, %845
  store i32 %add1217.i, i32* %C1216.i, align 4
  store i32 %add1217.i, i32* %C.i, align 4
  %848 = load i32, i32* %D.i, align 4
  %849 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %D1218.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %849, i32 0, i32 3
  %850 = load i32, i32* %D1218.i, align 4
  %add1219.i = add i32 %850, %848
  store i32 %add1219.i, i32* %D1218.i, align 4
  store i32 %add1219.i, i32* %D.i, align 4
  br label %for.cond.i

md5_block_data_order.exit:                        ; preds = %for.cond.i
  %851 = load i64, i64* %n, align 8
  %sub23 = sub i64 64, %851
  store i64 %sub23, i64* %n, align 8
  %852 = load i64, i64* %n, align 8
  %853 = load i8*, i8** %data, align 8
  %add.ptr24 = getelementptr inbounds i8, i8* %853, i64 %852
  store i8* %add.ptr24, i8** %data, align 8
  %854 = load i64, i64* %n, align 8
  %855 = load i64, i64* %len.addr, align 8
  %sub25 = sub i64 %855, %854
  store i64 %sub25, i64* %len.addr, align 8
  %856 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %num26 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %856, i32 0, i32 7
  store i32 0, i32* %num26, align 4
  %857 = load i8*, i8** %p, align 8
  call void @llvm.memset.p0i8.i64(i8* align 1 %857, i8 0, i64 64, i1 false)
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false
  %858 = load i8*, i8** %p, align 8
  %859 = load i64, i64* %n, align 8
  %add.ptr27 = getelementptr inbounds i8, i8* %858, i64 %859
  %860 = load i8*, i8** %data, align 8
  %861 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %add.ptr27, i8* align 1 %860, i64 %861, i1 false)
  %862 = load i64, i64* %len.addr, align 8
  %conv28 = trunc i64 %862 to i32
  %863 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %num29 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %863, i32 0, i32 7
  %864 = load i32, i32* %num29, align 4
  %add30 = add i32 %864, %conv28
  store i32 %add30, i32* %num29, align 4
  store i32 1, i32* %retval, align 4
  br label %return

if.end31:                                         ; preds = %md5_block_data_order.exit
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end7
  %865 = load i64, i64* %len.addr, align 8
  %div = udiv i64 %865, 64
  store i64 %div, i64* %n, align 8
  %866 = load i64, i64* %n, align 8
  %cmp33 = icmp ugt i64 %866, 0
  br i1 %cmp33, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  %867 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %868 = load i8*, i8** %data, align 8
  %869 = load i64, i64* %n, align 8
  store %struct.MD5state_st* %867, %struct.MD5state_st** %c.addr.i47, align 8
  store i8* %868, i8** %data_.addr.i48, align 8
  store i64 %869, i64* %num.addr.i49, align 8
  %870 = load i8*, i8** %data_.addr.i48, align 8
  store i8* %870, i8** %data.i50, align 8
  %871 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %A1.i72 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %871, i32 0, i32 0
  %872 = load i32, i32* %A1.i72, align 4
  store i32 %872, i32* %A.i51, align 4
  %873 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %B2.i73 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %873, i32 0, i32 1
  %874 = load i32, i32* %B2.i73, align 4
  store i32 %874, i32* %B.i52, align 4
  %875 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %C3.i74 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %875, i32 0, i32 2
  %876 = load i32, i32* %C3.i74, align 4
  store i32 %876, i32* %C.i53, align 4
  %877 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %D4.i75 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %877, i32 0, i32 3
  %878 = load i32, i32* %D4.i75, align 4
  store i32 %878, i32* %D.i54, align 4
  br label %for.cond.i78

for.cond.i78:                                     ; preds = %for.body.i1303, %if.then35
  %879 = load i64, i64* %num.addr.i49, align 8
  %dec.i76 = add i64 %879, -1
  store i64 %dec.i76, i64* %num.addr.i49, align 8
  %tobool.i77 = icmp ne i64 %879, 0
  br i1 %tobool.i77, label %for.body.i1303, label %md5_block_data_order.exit1304

for.body.i1303:                                   ; preds = %for.cond.i78
  %880 = load i8*, i8** %data.i50, align 8
  %incdec.ptr.i79 = getelementptr inbounds i8, i8* %880, i32 1
  store i8* %incdec.ptr.i79, i8** %data.i50, align 8
  %881 = load i8, i8* %880, align 1
  %conv.i80 = zext i8 %881 to i64
  %conv5.i81 = trunc i64 %conv.i80 to i32
  store i32 %conv5.i81, i32* %l.i55, align 4
  %882 = load i8*, i8** %data.i50, align 8
  %incdec.ptr6.i82 = getelementptr inbounds i8, i8* %882, i32 1
  store i8* %incdec.ptr6.i82, i8** %data.i50, align 8
  %883 = load i8, i8* %882, align 1
  %conv7.i83 = zext i8 %883 to i64
  %shl.i84 = shl i64 %conv7.i83, 8
  %884 = load i32, i32* %l.i55, align 4
  %conv8.i85 = zext i32 %884 to i64
  %or.i86 = or i64 %conv8.i85, %shl.i84
  %conv9.i87 = trunc i64 %or.i86 to i32
  store i32 %conv9.i87, i32* %l.i55, align 4
  %885 = load i8*, i8** %data.i50, align 8
  %incdec.ptr10.i88 = getelementptr inbounds i8, i8* %885, i32 1
  store i8* %incdec.ptr10.i88, i8** %data.i50, align 8
  %886 = load i8, i8* %885, align 1
  %conv11.i89 = zext i8 %886 to i64
  %shl12.i90 = shl i64 %conv11.i89, 16
  %887 = load i32, i32* %l.i55, align 4
  %conv13.i91 = zext i32 %887 to i64
  %or14.i92 = or i64 %conv13.i91, %shl12.i90
  %conv15.i93 = trunc i64 %or14.i92 to i32
  store i32 %conv15.i93, i32* %l.i55, align 4
  %888 = load i8*, i8** %data.i50, align 8
  %incdec.ptr16.i94 = getelementptr inbounds i8, i8* %888, i32 1
  store i8* %incdec.ptr16.i94, i8** %data.i50, align 8
  %889 = load i8, i8* %888, align 1
  %conv17.i95 = zext i8 %889 to i64
  %shl18.i96 = shl i64 %conv17.i95, 24
  %890 = load i32, i32* %l.i55, align 4
  %conv19.i97 = zext i32 %890 to i64
  %or20.i98 = or i64 %conv19.i97, %shl18.i96
  %conv21.i99 = trunc i64 %or20.i98 to i32
  store i32 %conv21.i99, i32* %l.i55, align 4
  %891 = load i32, i32* %l.i55, align 4
  store i32 %891, i32* %XX0.i56, align 4
  %892 = load i8*, i8** %data.i50, align 8
  %incdec.ptr22.i100 = getelementptr inbounds i8, i8* %892, i32 1
  store i8* %incdec.ptr22.i100, i8** %data.i50, align 8
  %893 = load i8, i8* %892, align 1
  %conv23.i101 = zext i8 %893 to i64
  %conv24.i102 = trunc i64 %conv23.i101 to i32
  store i32 %conv24.i102, i32* %l.i55, align 4
  %894 = load i8*, i8** %data.i50, align 8
  %incdec.ptr25.i103 = getelementptr inbounds i8, i8* %894, i32 1
  store i8* %incdec.ptr25.i103, i8** %data.i50, align 8
  %895 = load i8, i8* %894, align 1
  %conv26.i104 = zext i8 %895 to i64
  %shl27.i105 = shl i64 %conv26.i104, 8
  %896 = load i32, i32* %l.i55, align 4
  %conv28.i106 = zext i32 %896 to i64
  %or29.i107 = or i64 %conv28.i106, %shl27.i105
  %conv30.i108 = trunc i64 %or29.i107 to i32
  store i32 %conv30.i108, i32* %l.i55, align 4
  %897 = load i8*, i8** %data.i50, align 8
  %incdec.ptr31.i109 = getelementptr inbounds i8, i8* %897, i32 1
  store i8* %incdec.ptr31.i109, i8** %data.i50, align 8
  %898 = load i8, i8* %897, align 1
  %conv32.i110 = zext i8 %898 to i64
  %shl33.i111 = shl i64 %conv32.i110, 16
  %899 = load i32, i32* %l.i55, align 4
  %conv34.i112 = zext i32 %899 to i64
  %or35.i113 = or i64 %conv34.i112, %shl33.i111
  %conv36.i114 = trunc i64 %or35.i113 to i32
  store i32 %conv36.i114, i32* %l.i55, align 4
  %900 = load i8*, i8** %data.i50, align 8
  %incdec.ptr37.i115 = getelementptr inbounds i8, i8* %900, i32 1
  store i8* %incdec.ptr37.i115, i8** %data.i50, align 8
  %901 = load i8, i8* %900, align 1
  %conv38.i116 = zext i8 %901 to i64
  %shl39.i117 = shl i64 %conv38.i116, 24
  %902 = load i32, i32* %l.i55, align 4
  %conv40.i118 = zext i32 %902 to i64
  %or41.i119 = or i64 %conv40.i118, %shl39.i117
  %conv42.i120 = trunc i64 %or41.i119 to i32
  store i32 %conv42.i120, i32* %l.i55, align 4
  %903 = load i32, i32* %l.i55, align 4
  store i32 %903, i32* %XX1.i57, align 4
  %904 = load i32, i32* %XX0.i56, align 4
  %conv43.i121 = zext i32 %904 to i64
  %add.i122 = add nsw i64 %conv43.i121, 3614090360
  %905 = load i32, i32* %C.i53, align 4
  %906 = load i32, i32* %D.i54, align 4
  %xor.i123 = xor i32 %905, %906
  %907 = load i32, i32* %B.i52, align 4
  %and.i124 = and i32 %xor.i123, %907
  %908 = load i32, i32* %D.i54, align 4
  %xor44.i125 = xor i32 %and.i124, %908
  %conv45.i126 = zext i32 %xor44.i125 to i64
  %add46.i127 = add nsw i64 %add.i122, %conv45.i126
  %909 = load i32, i32* %A.i51, align 4
  %conv47.i128 = zext i32 %909 to i64
  %add48.i129 = add nsw i64 %conv47.i128, %add46.i127
  %conv49.i130 = trunc i64 %add48.i129 to i32
  store i32 %conv49.i130, i32* %A.i51, align 4
  %910 = load i32, i32* %A.i51, align 4
  %shl50.i131 = shl i32 %910, 7
  %911 = load i32, i32* %A.i51, align 4
  %shr.i132 = lshr i32 %911, 25
  %or51.i133 = or i32 %shl50.i131, %shr.i132
  store i32 %or51.i133, i32* %A.i51, align 4
  %912 = load i32, i32* %B.i52, align 4
  %913 = load i32, i32* %A.i51, align 4
  %add52.i134 = add i32 %913, %912
  store i32 %add52.i134, i32* %A.i51, align 4
  %914 = load i8*, i8** %data.i50, align 8
  %incdec.ptr53.i135 = getelementptr inbounds i8, i8* %914, i32 1
  store i8* %incdec.ptr53.i135, i8** %data.i50, align 8
  %915 = load i8, i8* %914, align 1
  %conv54.i136 = zext i8 %915 to i64
  %conv55.i137 = trunc i64 %conv54.i136 to i32
  store i32 %conv55.i137, i32* %l.i55, align 4
  %916 = load i8*, i8** %data.i50, align 8
  %incdec.ptr56.i138 = getelementptr inbounds i8, i8* %916, i32 1
  store i8* %incdec.ptr56.i138, i8** %data.i50, align 8
  %917 = load i8, i8* %916, align 1
  %conv57.i139 = zext i8 %917 to i64
  %shl58.i140 = shl i64 %conv57.i139, 8
  %918 = load i32, i32* %l.i55, align 4
  %conv59.i141 = zext i32 %918 to i64
  %or60.i142 = or i64 %conv59.i141, %shl58.i140
  %conv61.i143 = trunc i64 %or60.i142 to i32
  store i32 %conv61.i143, i32* %l.i55, align 4
  %919 = load i8*, i8** %data.i50, align 8
  %incdec.ptr62.i144 = getelementptr inbounds i8, i8* %919, i32 1
  store i8* %incdec.ptr62.i144, i8** %data.i50, align 8
  %920 = load i8, i8* %919, align 1
  %conv63.i145 = zext i8 %920 to i64
  %shl64.i146 = shl i64 %conv63.i145, 16
  %921 = load i32, i32* %l.i55, align 4
  %conv65.i147 = zext i32 %921 to i64
  %or66.i148 = or i64 %conv65.i147, %shl64.i146
  %conv67.i149 = trunc i64 %or66.i148 to i32
  store i32 %conv67.i149, i32* %l.i55, align 4
  %922 = load i8*, i8** %data.i50, align 8
  %incdec.ptr68.i150 = getelementptr inbounds i8, i8* %922, i32 1
  store i8* %incdec.ptr68.i150, i8** %data.i50, align 8
  %923 = load i8, i8* %922, align 1
  %conv69.i151 = zext i8 %923 to i64
  %shl70.i152 = shl i64 %conv69.i151, 24
  %924 = load i32, i32* %l.i55, align 4
  %conv71.i153 = zext i32 %924 to i64
  %or72.i154 = or i64 %conv71.i153, %shl70.i152
  %conv73.i155 = trunc i64 %or72.i154 to i32
  store i32 %conv73.i155, i32* %l.i55, align 4
  %925 = load i32, i32* %l.i55, align 4
  store i32 %925, i32* %XX2.i58, align 4
  %926 = load i32, i32* %XX1.i57, align 4
  %conv74.i156 = zext i32 %926 to i64
  %add75.i157 = add nsw i64 %conv74.i156, 3905402710
  %927 = load i32, i32* %B.i52, align 4
  %928 = load i32, i32* %C.i53, align 4
  %xor76.i158 = xor i32 %927, %928
  %929 = load i32, i32* %A.i51, align 4
  %and77.i159 = and i32 %xor76.i158, %929
  %930 = load i32, i32* %C.i53, align 4
  %xor78.i160 = xor i32 %and77.i159, %930
  %conv79.i161 = zext i32 %xor78.i160 to i64
  %add80.i162 = add nsw i64 %add75.i157, %conv79.i161
  %931 = load i32, i32* %D.i54, align 4
  %conv81.i163 = zext i32 %931 to i64
  %add82.i164 = add nsw i64 %conv81.i163, %add80.i162
  %conv83.i165 = trunc i64 %add82.i164 to i32
  store i32 %conv83.i165, i32* %D.i54, align 4
  %932 = load i32, i32* %D.i54, align 4
  %shl84.i166 = shl i32 %932, 12
  %933 = load i32, i32* %D.i54, align 4
  %shr85.i167 = lshr i32 %933, 20
  %or86.i168 = or i32 %shl84.i166, %shr85.i167
  store i32 %or86.i168, i32* %D.i54, align 4
  %934 = load i32, i32* %A.i51, align 4
  %935 = load i32, i32* %D.i54, align 4
  %add87.i169 = add i32 %935, %934
  store i32 %add87.i169, i32* %D.i54, align 4
  %936 = load i8*, i8** %data.i50, align 8
  %incdec.ptr88.i170 = getelementptr inbounds i8, i8* %936, i32 1
  store i8* %incdec.ptr88.i170, i8** %data.i50, align 8
  %937 = load i8, i8* %936, align 1
  %conv89.i171 = zext i8 %937 to i64
  %conv90.i172 = trunc i64 %conv89.i171 to i32
  store i32 %conv90.i172, i32* %l.i55, align 4
  %938 = load i8*, i8** %data.i50, align 8
  %incdec.ptr91.i173 = getelementptr inbounds i8, i8* %938, i32 1
  store i8* %incdec.ptr91.i173, i8** %data.i50, align 8
  %939 = load i8, i8* %938, align 1
  %conv92.i174 = zext i8 %939 to i64
  %shl93.i175 = shl i64 %conv92.i174, 8
  %940 = load i32, i32* %l.i55, align 4
  %conv94.i176 = zext i32 %940 to i64
  %or95.i177 = or i64 %conv94.i176, %shl93.i175
  %conv96.i178 = trunc i64 %or95.i177 to i32
  store i32 %conv96.i178, i32* %l.i55, align 4
  %941 = load i8*, i8** %data.i50, align 8
  %incdec.ptr97.i179 = getelementptr inbounds i8, i8* %941, i32 1
  store i8* %incdec.ptr97.i179, i8** %data.i50, align 8
  %942 = load i8, i8* %941, align 1
  %conv98.i180 = zext i8 %942 to i64
  %shl99.i181 = shl i64 %conv98.i180, 16
  %943 = load i32, i32* %l.i55, align 4
  %conv100.i182 = zext i32 %943 to i64
  %or101.i183 = or i64 %conv100.i182, %shl99.i181
  %conv102.i184 = trunc i64 %or101.i183 to i32
  store i32 %conv102.i184, i32* %l.i55, align 4
  %944 = load i8*, i8** %data.i50, align 8
  %incdec.ptr103.i185 = getelementptr inbounds i8, i8* %944, i32 1
  store i8* %incdec.ptr103.i185, i8** %data.i50, align 8
  %945 = load i8, i8* %944, align 1
  %conv104.i186 = zext i8 %945 to i64
  %shl105.i187 = shl i64 %conv104.i186, 24
  %946 = load i32, i32* %l.i55, align 4
  %conv106.i188 = zext i32 %946 to i64
  %or107.i189 = or i64 %conv106.i188, %shl105.i187
  %conv108.i190 = trunc i64 %or107.i189 to i32
  store i32 %conv108.i190, i32* %l.i55, align 4
  %947 = load i32, i32* %l.i55, align 4
  store i32 %947, i32* %XX3.i59, align 4
  %948 = load i32, i32* %XX2.i58, align 4
  %conv109.i191 = zext i32 %948 to i64
  %add110.i192 = add nsw i64 %conv109.i191, 606105819
  %949 = load i32, i32* %A.i51, align 4
  %950 = load i32, i32* %B.i52, align 4
  %xor111.i193 = xor i32 %949, %950
  %951 = load i32, i32* %D.i54, align 4
  %and112.i194 = and i32 %xor111.i193, %951
  %952 = load i32, i32* %B.i52, align 4
  %xor113.i195 = xor i32 %and112.i194, %952
  %conv114.i196 = zext i32 %xor113.i195 to i64
  %add115.i197 = add nsw i64 %add110.i192, %conv114.i196
  %953 = load i32, i32* %C.i53, align 4
  %conv116.i198 = zext i32 %953 to i64
  %add117.i199 = add nsw i64 %conv116.i198, %add115.i197
  %conv118.i200 = trunc i64 %add117.i199 to i32
  store i32 %conv118.i200, i32* %C.i53, align 4
  %954 = load i32, i32* %C.i53, align 4
  %shl119.i201 = shl i32 %954, 17
  %955 = load i32, i32* %C.i53, align 4
  %shr120.i202 = lshr i32 %955, 15
  %or121.i203 = or i32 %shl119.i201, %shr120.i202
  store i32 %or121.i203, i32* %C.i53, align 4
  %956 = load i32, i32* %D.i54, align 4
  %957 = load i32, i32* %C.i53, align 4
  %add122.i204 = add i32 %957, %956
  store i32 %add122.i204, i32* %C.i53, align 4
  %958 = load i8*, i8** %data.i50, align 8
  %incdec.ptr123.i205 = getelementptr inbounds i8, i8* %958, i32 1
  store i8* %incdec.ptr123.i205, i8** %data.i50, align 8
  %959 = load i8, i8* %958, align 1
  %conv124.i206 = zext i8 %959 to i64
  %conv125.i207 = trunc i64 %conv124.i206 to i32
  store i32 %conv125.i207, i32* %l.i55, align 4
  %960 = load i8*, i8** %data.i50, align 8
  %incdec.ptr126.i208 = getelementptr inbounds i8, i8* %960, i32 1
  store i8* %incdec.ptr126.i208, i8** %data.i50, align 8
  %961 = load i8, i8* %960, align 1
  %conv127.i209 = zext i8 %961 to i64
  %shl128.i210 = shl i64 %conv127.i209, 8
  %962 = load i32, i32* %l.i55, align 4
  %conv129.i211 = zext i32 %962 to i64
  %or130.i212 = or i64 %conv129.i211, %shl128.i210
  %conv131.i213 = trunc i64 %or130.i212 to i32
  store i32 %conv131.i213, i32* %l.i55, align 4
  %963 = load i8*, i8** %data.i50, align 8
  %incdec.ptr132.i214 = getelementptr inbounds i8, i8* %963, i32 1
  store i8* %incdec.ptr132.i214, i8** %data.i50, align 8
  %964 = load i8, i8* %963, align 1
  %conv133.i215 = zext i8 %964 to i64
  %shl134.i216 = shl i64 %conv133.i215, 16
  %965 = load i32, i32* %l.i55, align 4
  %conv135.i217 = zext i32 %965 to i64
  %or136.i218 = or i64 %conv135.i217, %shl134.i216
  %conv137.i219 = trunc i64 %or136.i218 to i32
  store i32 %conv137.i219, i32* %l.i55, align 4
  %966 = load i8*, i8** %data.i50, align 8
  %incdec.ptr138.i220 = getelementptr inbounds i8, i8* %966, i32 1
  store i8* %incdec.ptr138.i220, i8** %data.i50, align 8
  %967 = load i8, i8* %966, align 1
  %conv139.i221 = zext i8 %967 to i64
  %shl140.i222 = shl i64 %conv139.i221, 24
  %968 = load i32, i32* %l.i55, align 4
  %conv141.i223 = zext i32 %968 to i64
  %or142.i224 = or i64 %conv141.i223, %shl140.i222
  %conv143.i225 = trunc i64 %or142.i224 to i32
  store i32 %conv143.i225, i32* %l.i55, align 4
  %969 = load i32, i32* %l.i55, align 4
  store i32 %969, i32* %XX4.i60, align 4
  %970 = load i32, i32* %XX3.i59, align 4
  %conv144.i226 = zext i32 %970 to i64
  %add145.i227 = add nsw i64 %conv144.i226, 3250441966
  %971 = load i32, i32* %D.i54, align 4
  %972 = load i32, i32* %A.i51, align 4
  %xor146.i228 = xor i32 %971, %972
  %973 = load i32, i32* %C.i53, align 4
  %and147.i229 = and i32 %xor146.i228, %973
  %974 = load i32, i32* %A.i51, align 4
  %xor148.i230 = xor i32 %and147.i229, %974
  %conv149.i231 = zext i32 %xor148.i230 to i64
  %add150.i232 = add nsw i64 %add145.i227, %conv149.i231
  %975 = load i32, i32* %B.i52, align 4
  %conv151.i233 = zext i32 %975 to i64
  %add152.i234 = add nsw i64 %conv151.i233, %add150.i232
  %conv153.i235 = trunc i64 %add152.i234 to i32
  store i32 %conv153.i235, i32* %B.i52, align 4
  %976 = load i32, i32* %B.i52, align 4
  %shl154.i236 = shl i32 %976, 22
  %977 = load i32, i32* %B.i52, align 4
  %shr155.i237 = lshr i32 %977, 10
  %or156.i238 = or i32 %shl154.i236, %shr155.i237
  store i32 %or156.i238, i32* %B.i52, align 4
  %978 = load i32, i32* %C.i53, align 4
  %979 = load i32, i32* %B.i52, align 4
  %add157.i239 = add i32 %979, %978
  store i32 %add157.i239, i32* %B.i52, align 4
  %980 = load i8*, i8** %data.i50, align 8
  %incdec.ptr158.i240 = getelementptr inbounds i8, i8* %980, i32 1
  store i8* %incdec.ptr158.i240, i8** %data.i50, align 8
  %981 = load i8, i8* %980, align 1
  %conv159.i241 = zext i8 %981 to i64
  %conv160.i242 = trunc i64 %conv159.i241 to i32
  store i32 %conv160.i242, i32* %l.i55, align 4
  %982 = load i8*, i8** %data.i50, align 8
  %incdec.ptr161.i243 = getelementptr inbounds i8, i8* %982, i32 1
  store i8* %incdec.ptr161.i243, i8** %data.i50, align 8
  %983 = load i8, i8* %982, align 1
  %conv162.i244 = zext i8 %983 to i64
  %shl163.i245 = shl i64 %conv162.i244, 8
  %984 = load i32, i32* %l.i55, align 4
  %conv164.i246 = zext i32 %984 to i64
  %or165.i247 = or i64 %conv164.i246, %shl163.i245
  %conv166.i248 = trunc i64 %or165.i247 to i32
  store i32 %conv166.i248, i32* %l.i55, align 4
  %985 = load i8*, i8** %data.i50, align 8
  %incdec.ptr167.i249 = getelementptr inbounds i8, i8* %985, i32 1
  store i8* %incdec.ptr167.i249, i8** %data.i50, align 8
  %986 = load i8, i8* %985, align 1
  %conv168.i250 = zext i8 %986 to i64
  %shl169.i251 = shl i64 %conv168.i250, 16
  %987 = load i32, i32* %l.i55, align 4
  %conv170.i252 = zext i32 %987 to i64
  %or171.i253 = or i64 %conv170.i252, %shl169.i251
  %conv172.i254 = trunc i64 %or171.i253 to i32
  store i32 %conv172.i254, i32* %l.i55, align 4
  %988 = load i8*, i8** %data.i50, align 8
  %incdec.ptr173.i255 = getelementptr inbounds i8, i8* %988, i32 1
  store i8* %incdec.ptr173.i255, i8** %data.i50, align 8
  %989 = load i8, i8* %988, align 1
  %conv174.i256 = zext i8 %989 to i64
  %shl175.i257 = shl i64 %conv174.i256, 24
  %990 = load i32, i32* %l.i55, align 4
  %conv176.i258 = zext i32 %990 to i64
  %or177.i259 = or i64 %conv176.i258, %shl175.i257
  %conv178.i260 = trunc i64 %or177.i259 to i32
  store i32 %conv178.i260, i32* %l.i55, align 4
  %991 = load i32, i32* %l.i55, align 4
  store i32 %991, i32* %XX5.i61, align 4
  %992 = load i32, i32* %XX4.i60, align 4
  %conv179.i261 = zext i32 %992 to i64
  %add180.i262 = add nsw i64 %conv179.i261, 4118548399
  %993 = load i32, i32* %C.i53, align 4
  %994 = load i32, i32* %D.i54, align 4
  %xor181.i263 = xor i32 %993, %994
  %995 = load i32, i32* %B.i52, align 4
  %and182.i264 = and i32 %xor181.i263, %995
  %996 = load i32, i32* %D.i54, align 4
  %xor183.i265 = xor i32 %and182.i264, %996
  %conv184.i266 = zext i32 %xor183.i265 to i64
  %add185.i267 = add nsw i64 %add180.i262, %conv184.i266
  %997 = load i32, i32* %A.i51, align 4
  %conv186.i268 = zext i32 %997 to i64
  %add187.i269 = add nsw i64 %conv186.i268, %add185.i267
  %conv188.i270 = trunc i64 %add187.i269 to i32
  store i32 %conv188.i270, i32* %A.i51, align 4
  %998 = load i32, i32* %A.i51, align 4
  %shl189.i271 = shl i32 %998, 7
  %999 = load i32, i32* %A.i51, align 4
  %shr190.i272 = lshr i32 %999, 25
  %or191.i273 = or i32 %shl189.i271, %shr190.i272
  store i32 %or191.i273, i32* %A.i51, align 4
  %1000 = load i32, i32* %B.i52, align 4
  %1001 = load i32, i32* %A.i51, align 4
  %add192.i274 = add i32 %1001, %1000
  store i32 %add192.i274, i32* %A.i51, align 4
  %1002 = load i8*, i8** %data.i50, align 8
  %incdec.ptr193.i275 = getelementptr inbounds i8, i8* %1002, i32 1
  store i8* %incdec.ptr193.i275, i8** %data.i50, align 8
  %1003 = load i8, i8* %1002, align 1
  %conv194.i276 = zext i8 %1003 to i64
  %conv195.i277 = trunc i64 %conv194.i276 to i32
  store i32 %conv195.i277, i32* %l.i55, align 4
  %1004 = load i8*, i8** %data.i50, align 8
  %incdec.ptr196.i278 = getelementptr inbounds i8, i8* %1004, i32 1
  store i8* %incdec.ptr196.i278, i8** %data.i50, align 8
  %1005 = load i8, i8* %1004, align 1
  %conv197.i279 = zext i8 %1005 to i64
  %shl198.i280 = shl i64 %conv197.i279, 8
  %1006 = load i32, i32* %l.i55, align 4
  %conv199.i281 = zext i32 %1006 to i64
  %or200.i282 = or i64 %conv199.i281, %shl198.i280
  %conv201.i283 = trunc i64 %or200.i282 to i32
  store i32 %conv201.i283, i32* %l.i55, align 4
  %1007 = load i8*, i8** %data.i50, align 8
  %incdec.ptr202.i284 = getelementptr inbounds i8, i8* %1007, i32 1
  store i8* %incdec.ptr202.i284, i8** %data.i50, align 8
  %1008 = load i8, i8* %1007, align 1
  %conv203.i285 = zext i8 %1008 to i64
  %shl204.i286 = shl i64 %conv203.i285, 16
  %1009 = load i32, i32* %l.i55, align 4
  %conv205.i287 = zext i32 %1009 to i64
  %or206.i288 = or i64 %conv205.i287, %shl204.i286
  %conv207.i289 = trunc i64 %or206.i288 to i32
  store i32 %conv207.i289, i32* %l.i55, align 4
  %1010 = load i8*, i8** %data.i50, align 8
  %incdec.ptr208.i290 = getelementptr inbounds i8, i8* %1010, i32 1
  store i8* %incdec.ptr208.i290, i8** %data.i50, align 8
  %1011 = load i8, i8* %1010, align 1
  %conv209.i291 = zext i8 %1011 to i64
  %shl210.i292 = shl i64 %conv209.i291, 24
  %1012 = load i32, i32* %l.i55, align 4
  %conv211.i293 = zext i32 %1012 to i64
  %or212.i294 = or i64 %conv211.i293, %shl210.i292
  %conv213.i295 = trunc i64 %or212.i294 to i32
  store i32 %conv213.i295, i32* %l.i55, align 4
  %1013 = load i32, i32* %l.i55, align 4
  store i32 %1013, i32* %XX6.i62, align 4
  %1014 = load i32, i32* %XX5.i61, align 4
  %conv214.i296 = zext i32 %1014 to i64
  %add215.i297 = add nsw i64 %conv214.i296, 1200080426
  %1015 = load i32, i32* %B.i52, align 4
  %1016 = load i32, i32* %C.i53, align 4
  %xor216.i298 = xor i32 %1015, %1016
  %1017 = load i32, i32* %A.i51, align 4
  %and217.i299 = and i32 %xor216.i298, %1017
  %1018 = load i32, i32* %C.i53, align 4
  %xor218.i300 = xor i32 %and217.i299, %1018
  %conv219.i301 = zext i32 %xor218.i300 to i64
  %add220.i302 = add nsw i64 %add215.i297, %conv219.i301
  %1019 = load i32, i32* %D.i54, align 4
  %conv221.i303 = zext i32 %1019 to i64
  %add222.i304 = add nsw i64 %conv221.i303, %add220.i302
  %conv223.i305 = trunc i64 %add222.i304 to i32
  store i32 %conv223.i305, i32* %D.i54, align 4
  %1020 = load i32, i32* %D.i54, align 4
  %shl224.i306 = shl i32 %1020, 12
  %1021 = load i32, i32* %D.i54, align 4
  %shr225.i307 = lshr i32 %1021, 20
  %or226.i308 = or i32 %shl224.i306, %shr225.i307
  store i32 %or226.i308, i32* %D.i54, align 4
  %1022 = load i32, i32* %A.i51, align 4
  %1023 = load i32, i32* %D.i54, align 4
  %add227.i309 = add i32 %1023, %1022
  store i32 %add227.i309, i32* %D.i54, align 4
  %1024 = load i8*, i8** %data.i50, align 8
  %incdec.ptr228.i310 = getelementptr inbounds i8, i8* %1024, i32 1
  store i8* %incdec.ptr228.i310, i8** %data.i50, align 8
  %1025 = load i8, i8* %1024, align 1
  %conv229.i311 = zext i8 %1025 to i64
  %conv230.i312 = trunc i64 %conv229.i311 to i32
  store i32 %conv230.i312, i32* %l.i55, align 4
  %1026 = load i8*, i8** %data.i50, align 8
  %incdec.ptr231.i313 = getelementptr inbounds i8, i8* %1026, i32 1
  store i8* %incdec.ptr231.i313, i8** %data.i50, align 8
  %1027 = load i8, i8* %1026, align 1
  %conv232.i314 = zext i8 %1027 to i64
  %shl233.i315 = shl i64 %conv232.i314, 8
  %1028 = load i32, i32* %l.i55, align 4
  %conv234.i316 = zext i32 %1028 to i64
  %or235.i317 = or i64 %conv234.i316, %shl233.i315
  %conv236.i318 = trunc i64 %or235.i317 to i32
  store i32 %conv236.i318, i32* %l.i55, align 4
  %1029 = load i8*, i8** %data.i50, align 8
  %incdec.ptr237.i319 = getelementptr inbounds i8, i8* %1029, i32 1
  store i8* %incdec.ptr237.i319, i8** %data.i50, align 8
  %1030 = load i8, i8* %1029, align 1
  %conv238.i320 = zext i8 %1030 to i64
  %shl239.i321 = shl i64 %conv238.i320, 16
  %1031 = load i32, i32* %l.i55, align 4
  %conv240.i322 = zext i32 %1031 to i64
  %or241.i323 = or i64 %conv240.i322, %shl239.i321
  %conv242.i324 = trunc i64 %or241.i323 to i32
  store i32 %conv242.i324, i32* %l.i55, align 4
  %1032 = load i8*, i8** %data.i50, align 8
  %incdec.ptr243.i325 = getelementptr inbounds i8, i8* %1032, i32 1
  store i8* %incdec.ptr243.i325, i8** %data.i50, align 8
  %1033 = load i8, i8* %1032, align 1
  %conv244.i326 = zext i8 %1033 to i64
  %shl245.i327 = shl i64 %conv244.i326, 24
  %1034 = load i32, i32* %l.i55, align 4
  %conv246.i328 = zext i32 %1034 to i64
  %or247.i329 = or i64 %conv246.i328, %shl245.i327
  %conv248.i330 = trunc i64 %or247.i329 to i32
  store i32 %conv248.i330, i32* %l.i55, align 4
  %1035 = load i32, i32* %l.i55, align 4
  store i32 %1035, i32* %XX7.i63, align 4
  %1036 = load i32, i32* %XX6.i62, align 4
  %conv249.i331 = zext i32 %1036 to i64
  %add250.i332 = add nsw i64 %conv249.i331, 2821735955
  %1037 = load i32, i32* %A.i51, align 4
  %1038 = load i32, i32* %B.i52, align 4
  %xor251.i333 = xor i32 %1037, %1038
  %1039 = load i32, i32* %D.i54, align 4
  %and252.i334 = and i32 %xor251.i333, %1039
  %1040 = load i32, i32* %B.i52, align 4
  %xor253.i335 = xor i32 %and252.i334, %1040
  %conv254.i336 = zext i32 %xor253.i335 to i64
  %add255.i337 = add nsw i64 %add250.i332, %conv254.i336
  %1041 = load i32, i32* %C.i53, align 4
  %conv256.i338 = zext i32 %1041 to i64
  %add257.i339 = add nsw i64 %conv256.i338, %add255.i337
  %conv258.i340 = trunc i64 %add257.i339 to i32
  store i32 %conv258.i340, i32* %C.i53, align 4
  %1042 = load i32, i32* %C.i53, align 4
  %shl259.i341 = shl i32 %1042, 17
  %1043 = load i32, i32* %C.i53, align 4
  %shr260.i342 = lshr i32 %1043, 15
  %or261.i343 = or i32 %shl259.i341, %shr260.i342
  store i32 %or261.i343, i32* %C.i53, align 4
  %1044 = load i32, i32* %D.i54, align 4
  %1045 = load i32, i32* %C.i53, align 4
  %add262.i344 = add i32 %1045, %1044
  store i32 %add262.i344, i32* %C.i53, align 4
  %1046 = load i8*, i8** %data.i50, align 8
  %incdec.ptr263.i345 = getelementptr inbounds i8, i8* %1046, i32 1
  store i8* %incdec.ptr263.i345, i8** %data.i50, align 8
  %1047 = load i8, i8* %1046, align 1
  %conv264.i346 = zext i8 %1047 to i64
  %conv265.i347 = trunc i64 %conv264.i346 to i32
  store i32 %conv265.i347, i32* %l.i55, align 4
  %1048 = load i8*, i8** %data.i50, align 8
  %incdec.ptr266.i348 = getelementptr inbounds i8, i8* %1048, i32 1
  store i8* %incdec.ptr266.i348, i8** %data.i50, align 8
  %1049 = load i8, i8* %1048, align 1
  %conv267.i349 = zext i8 %1049 to i64
  %shl268.i350 = shl i64 %conv267.i349, 8
  %1050 = load i32, i32* %l.i55, align 4
  %conv269.i351 = zext i32 %1050 to i64
  %or270.i352 = or i64 %conv269.i351, %shl268.i350
  %conv271.i353 = trunc i64 %or270.i352 to i32
  store i32 %conv271.i353, i32* %l.i55, align 4
  %1051 = load i8*, i8** %data.i50, align 8
  %incdec.ptr272.i354 = getelementptr inbounds i8, i8* %1051, i32 1
  store i8* %incdec.ptr272.i354, i8** %data.i50, align 8
  %1052 = load i8, i8* %1051, align 1
  %conv273.i355 = zext i8 %1052 to i64
  %shl274.i356 = shl i64 %conv273.i355, 16
  %1053 = load i32, i32* %l.i55, align 4
  %conv275.i357 = zext i32 %1053 to i64
  %or276.i358 = or i64 %conv275.i357, %shl274.i356
  %conv277.i359 = trunc i64 %or276.i358 to i32
  store i32 %conv277.i359, i32* %l.i55, align 4
  %1054 = load i8*, i8** %data.i50, align 8
  %incdec.ptr278.i360 = getelementptr inbounds i8, i8* %1054, i32 1
  store i8* %incdec.ptr278.i360, i8** %data.i50, align 8
  %1055 = load i8, i8* %1054, align 1
  %conv279.i361 = zext i8 %1055 to i64
  %shl280.i362 = shl i64 %conv279.i361, 24
  %1056 = load i32, i32* %l.i55, align 4
  %conv281.i363 = zext i32 %1056 to i64
  %or282.i364 = or i64 %conv281.i363, %shl280.i362
  %conv283.i365 = trunc i64 %or282.i364 to i32
  store i32 %conv283.i365, i32* %l.i55, align 4
  %1057 = load i32, i32* %l.i55, align 4
  store i32 %1057, i32* %XX8.i64, align 4
  %1058 = load i32, i32* %XX7.i63, align 4
  %conv284.i366 = zext i32 %1058 to i64
  %add285.i367 = add nsw i64 %conv284.i366, 4249261313
  %1059 = load i32, i32* %D.i54, align 4
  %1060 = load i32, i32* %A.i51, align 4
  %xor286.i368 = xor i32 %1059, %1060
  %1061 = load i32, i32* %C.i53, align 4
  %and287.i369 = and i32 %xor286.i368, %1061
  %1062 = load i32, i32* %A.i51, align 4
  %xor288.i370 = xor i32 %and287.i369, %1062
  %conv289.i371 = zext i32 %xor288.i370 to i64
  %add290.i372 = add nsw i64 %add285.i367, %conv289.i371
  %1063 = load i32, i32* %B.i52, align 4
  %conv291.i373 = zext i32 %1063 to i64
  %add292.i374 = add nsw i64 %conv291.i373, %add290.i372
  %conv293.i375 = trunc i64 %add292.i374 to i32
  store i32 %conv293.i375, i32* %B.i52, align 4
  %1064 = load i32, i32* %B.i52, align 4
  %shl294.i376 = shl i32 %1064, 22
  %1065 = load i32, i32* %B.i52, align 4
  %shr295.i377 = lshr i32 %1065, 10
  %or296.i378 = or i32 %shl294.i376, %shr295.i377
  store i32 %or296.i378, i32* %B.i52, align 4
  %1066 = load i32, i32* %C.i53, align 4
  %1067 = load i32, i32* %B.i52, align 4
  %add297.i379 = add i32 %1067, %1066
  store i32 %add297.i379, i32* %B.i52, align 4
  %1068 = load i8*, i8** %data.i50, align 8
  %incdec.ptr298.i380 = getelementptr inbounds i8, i8* %1068, i32 1
  store i8* %incdec.ptr298.i380, i8** %data.i50, align 8
  %1069 = load i8, i8* %1068, align 1
  %conv299.i381 = zext i8 %1069 to i64
  %conv300.i382 = trunc i64 %conv299.i381 to i32
  store i32 %conv300.i382, i32* %l.i55, align 4
  %1070 = load i8*, i8** %data.i50, align 8
  %incdec.ptr301.i383 = getelementptr inbounds i8, i8* %1070, i32 1
  store i8* %incdec.ptr301.i383, i8** %data.i50, align 8
  %1071 = load i8, i8* %1070, align 1
  %conv302.i384 = zext i8 %1071 to i64
  %shl303.i385 = shl i64 %conv302.i384, 8
  %1072 = load i32, i32* %l.i55, align 4
  %conv304.i386 = zext i32 %1072 to i64
  %or305.i387 = or i64 %conv304.i386, %shl303.i385
  %conv306.i388 = trunc i64 %or305.i387 to i32
  store i32 %conv306.i388, i32* %l.i55, align 4
  %1073 = load i8*, i8** %data.i50, align 8
  %incdec.ptr307.i389 = getelementptr inbounds i8, i8* %1073, i32 1
  store i8* %incdec.ptr307.i389, i8** %data.i50, align 8
  %1074 = load i8, i8* %1073, align 1
  %conv308.i390 = zext i8 %1074 to i64
  %shl309.i391 = shl i64 %conv308.i390, 16
  %1075 = load i32, i32* %l.i55, align 4
  %conv310.i392 = zext i32 %1075 to i64
  %or311.i393 = or i64 %conv310.i392, %shl309.i391
  %conv312.i394 = trunc i64 %or311.i393 to i32
  store i32 %conv312.i394, i32* %l.i55, align 4
  %1076 = load i8*, i8** %data.i50, align 8
  %incdec.ptr313.i395 = getelementptr inbounds i8, i8* %1076, i32 1
  store i8* %incdec.ptr313.i395, i8** %data.i50, align 8
  %1077 = load i8, i8* %1076, align 1
  %conv314.i396 = zext i8 %1077 to i64
  %shl315.i397 = shl i64 %conv314.i396, 24
  %1078 = load i32, i32* %l.i55, align 4
  %conv316.i398 = zext i32 %1078 to i64
  %or317.i399 = or i64 %conv316.i398, %shl315.i397
  %conv318.i400 = trunc i64 %or317.i399 to i32
  store i32 %conv318.i400, i32* %l.i55, align 4
  %1079 = load i32, i32* %l.i55, align 4
  store i32 %1079, i32* %XX9.i65, align 4
  %1080 = load i32, i32* %XX8.i64, align 4
  %conv319.i401 = zext i32 %1080 to i64
  %add320.i402 = add nsw i64 %conv319.i401, 1770035416
  %1081 = load i32, i32* %C.i53, align 4
  %1082 = load i32, i32* %D.i54, align 4
  %xor321.i403 = xor i32 %1081, %1082
  %1083 = load i32, i32* %B.i52, align 4
  %and322.i404 = and i32 %xor321.i403, %1083
  %1084 = load i32, i32* %D.i54, align 4
  %xor323.i405 = xor i32 %and322.i404, %1084
  %conv324.i406 = zext i32 %xor323.i405 to i64
  %add325.i407 = add nsw i64 %add320.i402, %conv324.i406
  %1085 = load i32, i32* %A.i51, align 4
  %conv326.i408 = zext i32 %1085 to i64
  %add327.i409 = add nsw i64 %conv326.i408, %add325.i407
  %conv328.i410 = trunc i64 %add327.i409 to i32
  store i32 %conv328.i410, i32* %A.i51, align 4
  %1086 = load i32, i32* %A.i51, align 4
  %shl329.i411 = shl i32 %1086, 7
  %1087 = load i32, i32* %A.i51, align 4
  %shr330.i412 = lshr i32 %1087, 25
  %or331.i413 = or i32 %shl329.i411, %shr330.i412
  store i32 %or331.i413, i32* %A.i51, align 4
  %1088 = load i32, i32* %B.i52, align 4
  %1089 = load i32, i32* %A.i51, align 4
  %add332.i414 = add i32 %1089, %1088
  store i32 %add332.i414, i32* %A.i51, align 4
  %1090 = load i8*, i8** %data.i50, align 8
  %incdec.ptr333.i415 = getelementptr inbounds i8, i8* %1090, i32 1
  store i8* %incdec.ptr333.i415, i8** %data.i50, align 8
  %1091 = load i8, i8* %1090, align 1
  %conv334.i416 = zext i8 %1091 to i64
  %conv335.i417 = trunc i64 %conv334.i416 to i32
  store i32 %conv335.i417, i32* %l.i55, align 4
  %1092 = load i8*, i8** %data.i50, align 8
  %incdec.ptr336.i418 = getelementptr inbounds i8, i8* %1092, i32 1
  store i8* %incdec.ptr336.i418, i8** %data.i50, align 8
  %1093 = load i8, i8* %1092, align 1
  %conv337.i419 = zext i8 %1093 to i64
  %shl338.i420 = shl i64 %conv337.i419, 8
  %1094 = load i32, i32* %l.i55, align 4
  %conv339.i421 = zext i32 %1094 to i64
  %or340.i422 = or i64 %conv339.i421, %shl338.i420
  %conv341.i423 = trunc i64 %or340.i422 to i32
  store i32 %conv341.i423, i32* %l.i55, align 4
  %1095 = load i8*, i8** %data.i50, align 8
  %incdec.ptr342.i424 = getelementptr inbounds i8, i8* %1095, i32 1
  store i8* %incdec.ptr342.i424, i8** %data.i50, align 8
  %1096 = load i8, i8* %1095, align 1
  %conv343.i425 = zext i8 %1096 to i64
  %shl344.i426 = shl i64 %conv343.i425, 16
  %1097 = load i32, i32* %l.i55, align 4
  %conv345.i427 = zext i32 %1097 to i64
  %or346.i428 = or i64 %conv345.i427, %shl344.i426
  %conv347.i429 = trunc i64 %or346.i428 to i32
  store i32 %conv347.i429, i32* %l.i55, align 4
  %1098 = load i8*, i8** %data.i50, align 8
  %incdec.ptr348.i430 = getelementptr inbounds i8, i8* %1098, i32 1
  store i8* %incdec.ptr348.i430, i8** %data.i50, align 8
  %1099 = load i8, i8* %1098, align 1
  %conv349.i431 = zext i8 %1099 to i64
  %shl350.i432 = shl i64 %conv349.i431, 24
  %1100 = load i32, i32* %l.i55, align 4
  %conv351.i433 = zext i32 %1100 to i64
  %or352.i434 = or i64 %conv351.i433, %shl350.i432
  %conv353.i435 = trunc i64 %or352.i434 to i32
  store i32 %conv353.i435, i32* %l.i55, align 4
  %1101 = load i32, i32* %l.i55, align 4
  store i32 %1101, i32* %XX10.i66, align 4
  %1102 = load i32, i32* %XX9.i65, align 4
  %conv354.i436 = zext i32 %1102 to i64
  %add355.i437 = add nsw i64 %conv354.i436, 2336552879
  %1103 = load i32, i32* %B.i52, align 4
  %1104 = load i32, i32* %C.i53, align 4
  %xor356.i438 = xor i32 %1103, %1104
  %1105 = load i32, i32* %A.i51, align 4
  %and357.i439 = and i32 %xor356.i438, %1105
  %1106 = load i32, i32* %C.i53, align 4
  %xor358.i440 = xor i32 %and357.i439, %1106
  %conv359.i441 = zext i32 %xor358.i440 to i64
  %add360.i442 = add nsw i64 %add355.i437, %conv359.i441
  %1107 = load i32, i32* %D.i54, align 4
  %conv361.i443 = zext i32 %1107 to i64
  %add362.i444 = add nsw i64 %conv361.i443, %add360.i442
  %conv363.i445 = trunc i64 %add362.i444 to i32
  store i32 %conv363.i445, i32* %D.i54, align 4
  %1108 = load i32, i32* %D.i54, align 4
  %shl364.i446 = shl i32 %1108, 12
  %1109 = load i32, i32* %D.i54, align 4
  %shr365.i447 = lshr i32 %1109, 20
  %or366.i448 = or i32 %shl364.i446, %shr365.i447
  store i32 %or366.i448, i32* %D.i54, align 4
  %1110 = load i32, i32* %A.i51, align 4
  %1111 = load i32, i32* %D.i54, align 4
  %add367.i449 = add i32 %1111, %1110
  store i32 %add367.i449, i32* %D.i54, align 4
  %1112 = load i8*, i8** %data.i50, align 8
  %incdec.ptr368.i450 = getelementptr inbounds i8, i8* %1112, i32 1
  store i8* %incdec.ptr368.i450, i8** %data.i50, align 8
  %1113 = load i8, i8* %1112, align 1
  %conv369.i451 = zext i8 %1113 to i64
  %conv370.i452 = trunc i64 %conv369.i451 to i32
  store i32 %conv370.i452, i32* %l.i55, align 4
  %1114 = load i8*, i8** %data.i50, align 8
  %incdec.ptr371.i453 = getelementptr inbounds i8, i8* %1114, i32 1
  store i8* %incdec.ptr371.i453, i8** %data.i50, align 8
  %1115 = load i8, i8* %1114, align 1
  %conv372.i454 = zext i8 %1115 to i64
  %shl373.i455 = shl i64 %conv372.i454, 8
  %1116 = load i32, i32* %l.i55, align 4
  %conv374.i456 = zext i32 %1116 to i64
  %or375.i457 = or i64 %conv374.i456, %shl373.i455
  %conv376.i458 = trunc i64 %or375.i457 to i32
  store i32 %conv376.i458, i32* %l.i55, align 4
  %1117 = load i8*, i8** %data.i50, align 8
  %incdec.ptr377.i459 = getelementptr inbounds i8, i8* %1117, i32 1
  store i8* %incdec.ptr377.i459, i8** %data.i50, align 8
  %1118 = load i8, i8* %1117, align 1
  %conv378.i460 = zext i8 %1118 to i64
  %shl379.i461 = shl i64 %conv378.i460, 16
  %1119 = load i32, i32* %l.i55, align 4
  %conv380.i462 = zext i32 %1119 to i64
  %or381.i463 = or i64 %conv380.i462, %shl379.i461
  %conv382.i464 = trunc i64 %or381.i463 to i32
  store i32 %conv382.i464, i32* %l.i55, align 4
  %1120 = load i8*, i8** %data.i50, align 8
  %incdec.ptr383.i465 = getelementptr inbounds i8, i8* %1120, i32 1
  store i8* %incdec.ptr383.i465, i8** %data.i50, align 8
  %1121 = load i8, i8* %1120, align 1
  %conv384.i466 = zext i8 %1121 to i64
  %shl385.i467 = shl i64 %conv384.i466, 24
  %1122 = load i32, i32* %l.i55, align 4
  %conv386.i468 = zext i32 %1122 to i64
  %or387.i469 = or i64 %conv386.i468, %shl385.i467
  %conv388.i470 = trunc i64 %or387.i469 to i32
  store i32 %conv388.i470, i32* %l.i55, align 4
  %1123 = load i32, i32* %l.i55, align 4
  store i32 %1123, i32* %XX11.i67, align 4
  %1124 = load i32, i32* %XX10.i66, align 4
  %conv389.i471 = zext i32 %1124 to i64
  %add390.i472 = add nsw i64 %conv389.i471, 4294925233
  %1125 = load i32, i32* %A.i51, align 4
  %1126 = load i32, i32* %B.i52, align 4
  %xor391.i473 = xor i32 %1125, %1126
  %1127 = load i32, i32* %D.i54, align 4
  %and392.i474 = and i32 %xor391.i473, %1127
  %1128 = load i32, i32* %B.i52, align 4
  %xor393.i475 = xor i32 %and392.i474, %1128
  %conv394.i476 = zext i32 %xor393.i475 to i64
  %add395.i477 = add nsw i64 %add390.i472, %conv394.i476
  %1129 = load i32, i32* %C.i53, align 4
  %conv396.i478 = zext i32 %1129 to i64
  %add397.i479 = add nsw i64 %conv396.i478, %add395.i477
  %conv398.i480 = trunc i64 %add397.i479 to i32
  store i32 %conv398.i480, i32* %C.i53, align 4
  %1130 = load i32, i32* %C.i53, align 4
  %shl399.i481 = shl i32 %1130, 17
  %1131 = load i32, i32* %C.i53, align 4
  %shr400.i482 = lshr i32 %1131, 15
  %or401.i483 = or i32 %shl399.i481, %shr400.i482
  store i32 %or401.i483, i32* %C.i53, align 4
  %1132 = load i32, i32* %D.i54, align 4
  %1133 = load i32, i32* %C.i53, align 4
  %add402.i484 = add i32 %1133, %1132
  store i32 %add402.i484, i32* %C.i53, align 4
  %1134 = load i8*, i8** %data.i50, align 8
  %incdec.ptr403.i485 = getelementptr inbounds i8, i8* %1134, i32 1
  store i8* %incdec.ptr403.i485, i8** %data.i50, align 8
  %1135 = load i8, i8* %1134, align 1
  %conv404.i486 = zext i8 %1135 to i64
  %conv405.i487 = trunc i64 %conv404.i486 to i32
  store i32 %conv405.i487, i32* %l.i55, align 4
  %1136 = load i8*, i8** %data.i50, align 8
  %incdec.ptr406.i488 = getelementptr inbounds i8, i8* %1136, i32 1
  store i8* %incdec.ptr406.i488, i8** %data.i50, align 8
  %1137 = load i8, i8* %1136, align 1
  %conv407.i489 = zext i8 %1137 to i64
  %shl408.i490 = shl i64 %conv407.i489, 8
  %1138 = load i32, i32* %l.i55, align 4
  %conv409.i491 = zext i32 %1138 to i64
  %or410.i492 = or i64 %conv409.i491, %shl408.i490
  %conv411.i493 = trunc i64 %or410.i492 to i32
  store i32 %conv411.i493, i32* %l.i55, align 4
  %1139 = load i8*, i8** %data.i50, align 8
  %incdec.ptr412.i494 = getelementptr inbounds i8, i8* %1139, i32 1
  store i8* %incdec.ptr412.i494, i8** %data.i50, align 8
  %1140 = load i8, i8* %1139, align 1
  %conv413.i495 = zext i8 %1140 to i64
  %shl414.i496 = shl i64 %conv413.i495, 16
  %1141 = load i32, i32* %l.i55, align 4
  %conv415.i497 = zext i32 %1141 to i64
  %or416.i498 = or i64 %conv415.i497, %shl414.i496
  %conv417.i499 = trunc i64 %or416.i498 to i32
  store i32 %conv417.i499, i32* %l.i55, align 4
  %1142 = load i8*, i8** %data.i50, align 8
  %incdec.ptr418.i500 = getelementptr inbounds i8, i8* %1142, i32 1
  store i8* %incdec.ptr418.i500, i8** %data.i50, align 8
  %1143 = load i8, i8* %1142, align 1
  %conv419.i501 = zext i8 %1143 to i64
  %shl420.i502 = shl i64 %conv419.i501, 24
  %1144 = load i32, i32* %l.i55, align 4
  %conv421.i503 = zext i32 %1144 to i64
  %or422.i504 = or i64 %conv421.i503, %shl420.i502
  %conv423.i505 = trunc i64 %or422.i504 to i32
  store i32 %conv423.i505, i32* %l.i55, align 4
  %1145 = load i32, i32* %l.i55, align 4
  store i32 %1145, i32* %XX12.i68, align 4
  %1146 = load i32, i32* %XX11.i67, align 4
  %conv424.i506 = zext i32 %1146 to i64
  %add425.i507 = add nsw i64 %conv424.i506, 2304563134
  %1147 = load i32, i32* %D.i54, align 4
  %1148 = load i32, i32* %A.i51, align 4
  %xor426.i508 = xor i32 %1147, %1148
  %1149 = load i32, i32* %C.i53, align 4
  %and427.i509 = and i32 %xor426.i508, %1149
  %1150 = load i32, i32* %A.i51, align 4
  %xor428.i510 = xor i32 %and427.i509, %1150
  %conv429.i511 = zext i32 %xor428.i510 to i64
  %add430.i512 = add nsw i64 %add425.i507, %conv429.i511
  %1151 = load i32, i32* %B.i52, align 4
  %conv431.i513 = zext i32 %1151 to i64
  %add432.i514 = add nsw i64 %conv431.i513, %add430.i512
  %conv433.i515 = trunc i64 %add432.i514 to i32
  store i32 %conv433.i515, i32* %B.i52, align 4
  %1152 = load i32, i32* %B.i52, align 4
  %shl434.i516 = shl i32 %1152, 22
  %1153 = load i32, i32* %B.i52, align 4
  %shr435.i517 = lshr i32 %1153, 10
  %or436.i518 = or i32 %shl434.i516, %shr435.i517
  store i32 %or436.i518, i32* %B.i52, align 4
  %1154 = load i32, i32* %C.i53, align 4
  %1155 = load i32, i32* %B.i52, align 4
  %add437.i519 = add i32 %1155, %1154
  store i32 %add437.i519, i32* %B.i52, align 4
  %1156 = load i8*, i8** %data.i50, align 8
  %incdec.ptr438.i520 = getelementptr inbounds i8, i8* %1156, i32 1
  store i8* %incdec.ptr438.i520, i8** %data.i50, align 8
  %1157 = load i8, i8* %1156, align 1
  %conv439.i521 = zext i8 %1157 to i64
  %conv440.i522 = trunc i64 %conv439.i521 to i32
  store i32 %conv440.i522, i32* %l.i55, align 4
  %1158 = load i8*, i8** %data.i50, align 8
  %incdec.ptr441.i523 = getelementptr inbounds i8, i8* %1158, i32 1
  store i8* %incdec.ptr441.i523, i8** %data.i50, align 8
  %1159 = load i8, i8* %1158, align 1
  %conv442.i524 = zext i8 %1159 to i64
  %shl443.i525 = shl i64 %conv442.i524, 8
  %1160 = load i32, i32* %l.i55, align 4
  %conv444.i526 = zext i32 %1160 to i64
  %or445.i527 = or i64 %conv444.i526, %shl443.i525
  %conv446.i528 = trunc i64 %or445.i527 to i32
  store i32 %conv446.i528, i32* %l.i55, align 4
  %1161 = load i8*, i8** %data.i50, align 8
  %incdec.ptr447.i529 = getelementptr inbounds i8, i8* %1161, i32 1
  store i8* %incdec.ptr447.i529, i8** %data.i50, align 8
  %1162 = load i8, i8* %1161, align 1
  %conv448.i530 = zext i8 %1162 to i64
  %shl449.i531 = shl i64 %conv448.i530, 16
  %1163 = load i32, i32* %l.i55, align 4
  %conv450.i532 = zext i32 %1163 to i64
  %or451.i533 = or i64 %conv450.i532, %shl449.i531
  %conv452.i534 = trunc i64 %or451.i533 to i32
  store i32 %conv452.i534, i32* %l.i55, align 4
  %1164 = load i8*, i8** %data.i50, align 8
  %incdec.ptr453.i535 = getelementptr inbounds i8, i8* %1164, i32 1
  store i8* %incdec.ptr453.i535, i8** %data.i50, align 8
  %1165 = load i8, i8* %1164, align 1
  %conv454.i536 = zext i8 %1165 to i64
  %shl455.i537 = shl i64 %conv454.i536, 24
  %1166 = load i32, i32* %l.i55, align 4
  %conv456.i538 = zext i32 %1166 to i64
  %or457.i539 = or i64 %conv456.i538, %shl455.i537
  %conv458.i540 = trunc i64 %or457.i539 to i32
  store i32 %conv458.i540, i32* %l.i55, align 4
  %1167 = load i32, i32* %l.i55, align 4
  store i32 %1167, i32* %XX13.i69, align 4
  %1168 = load i32, i32* %XX12.i68, align 4
  %conv459.i541 = zext i32 %1168 to i64
  %add460.i542 = add nsw i64 %conv459.i541, 1804603682
  %1169 = load i32, i32* %C.i53, align 4
  %1170 = load i32, i32* %D.i54, align 4
  %xor461.i543 = xor i32 %1169, %1170
  %1171 = load i32, i32* %B.i52, align 4
  %and462.i544 = and i32 %xor461.i543, %1171
  %1172 = load i32, i32* %D.i54, align 4
  %xor463.i545 = xor i32 %and462.i544, %1172
  %conv464.i546 = zext i32 %xor463.i545 to i64
  %add465.i547 = add nsw i64 %add460.i542, %conv464.i546
  %1173 = load i32, i32* %A.i51, align 4
  %conv466.i548 = zext i32 %1173 to i64
  %add467.i549 = add nsw i64 %conv466.i548, %add465.i547
  %conv468.i550 = trunc i64 %add467.i549 to i32
  store i32 %conv468.i550, i32* %A.i51, align 4
  %1174 = load i32, i32* %A.i51, align 4
  %shl469.i551 = shl i32 %1174, 7
  %1175 = load i32, i32* %A.i51, align 4
  %shr470.i552 = lshr i32 %1175, 25
  %or471.i553 = or i32 %shl469.i551, %shr470.i552
  store i32 %or471.i553, i32* %A.i51, align 4
  %1176 = load i32, i32* %B.i52, align 4
  %1177 = load i32, i32* %A.i51, align 4
  %add472.i554 = add i32 %1177, %1176
  store i32 %add472.i554, i32* %A.i51, align 4
  %1178 = load i8*, i8** %data.i50, align 8
  %incdec.ptr473.i555 = getelementptr inbounds i8, i8* %1178, i32 1
  store i8* %incdec.ptr473.i555, i8** %data.i50, align 8
  %1179 = load i8, i8* %1178, align 1
  %conv474.i556 = zext i8 %1179 to i64
  %conv475.i557 = trunc i64 %conv474.i556 to i32
  store i32 %conv475.i557, i32* %l.i55, align 4
  %1180 = load i8*, i8** %data.i50, align 8
  %incdec.ptr476.i558 = getelementptr inbounds i8, i8* %1180, i32 1
  store i8* %incdec.ptr476.i558, i8** %data.i50, align 8
  %1181 = load i8, i8* %1180, align 1
  %conv477.i559 = zext i8 %1181 to i64
  %shl478.i560 = shl i64 %conv477.i559, 8
  %1182 = load i32, i32* %l.i55, align 4
  %conv479.i561 = zext i32 %1182 to i64
  %or480.i562 = or i64 %conv479.i561, %shl478.i560
  %conv481.i563 = trunc i64 %or480.i562 to i32
  store i32 %conv481.i563, i32* %l.i55, align 4
  %1183 = load i8*, i8** %data.i50, align 8
  %incdec.ptr482.i564 = getelementptr inbounds i8, i8* %1183, i32 1
  store i8* %incdec.ptr482.i564, i8** %data.i50, align 8
  %1184 = load i8, i8* %1183, align 1
  %conv483.i565 = zext i8 %1184 to i64
  %shl484.i566 = shl i64 %conv483.i565, 16
  %1185 = load i32, i32* %l.i55, align 4
  %conv485.i567 = zext i32 %1185 to i64
  %or486.i568 = or i64 %conv485.i567, %shl484.i566
  %conv487.i569 = trunc i64 %or486.i568 to i32
  store i32 %conv487.i569, i32* %l.i55, align 4
  %1186 = load i8*, i8** %data.i50, align 8
  %incdec.ptr488.i570 = getelementptr inbounds i8, i8* %1186, i32 1
  store i8* %incdec.ptr488.i570, i8** %data.i50, align 8
  %1187 = load i8, i8* %1186, align 1
  %conv489.i571 = zext i8 %1187 to i64
  %shl490.i572 = shl i64 %conv489.i571, 24
  %1188 = load i32, i32* %l.i55, align 4
  %conv491.i573 = zext i32 %1188 to i64
  %or492.i574 = or i64 %conv491.i573, %shl490.i572
  %conv493.i575 = trunc i64 %or492.i574 to i32
  store i32 %conv493.i575, i32* %l.i55, align 4
  %1189 = load i32, i32* %l.i55, align 4
  store i32 %1189, i32* %XX14.i70, align 4
  %1190 = load i32, i32* %XX13.i69, align 4
  %conv494.i576 = zext i32 %1190 to i64
  %add495.i577 = add nsw i64 %conv494.i576, 4254626195
  %1191 = load i32, i32* %B.i52, align 4
  %1192 = load i32, i32* %C.i53, align 4
  %xor496.i578 = xor i32 %1191, %1192
  %1193 = load i32, i32* %A.i51, align 4
  %and497.i579 = and i32 %xor496.i578, %1193
  %1194 = load i32, i32* %C.i53, align 4
  %xor498.i580 = xor i32 %and497.i579, %1194
  %conv499.i581 = zext i32 %xor498.i580 to i64
  %add500.i582 = add nsw i64 %add495.i577, %conv499.i581
  %1195 = load i32, i32* %D.i54, align 4
  %conv501.i583 = zext i32 %1195 to i64
  %add502.i584 = add nsw i64 %conv501.i583, %add500.i582
  %conv503.i585 = trunc i64 %add502.i584 to i32
  store i32 %conv503.i585, i32* %D.i54, align 4
  %1196 = load i32, i32* %D.i54, align 4
  %shl504.i586 = shl i32 %1196, 12
  %1197 = load i32, i32* %D.i54, align 4
  %shr505.i587 = lshr i32 %1197, 20
  %or506.i588 = or i32 %shl504.i586, %shr505.i587
  store i32 %or506.i588, i32* %D.i54, align 4
  %1198 = load i32, i32* %A.i51, align 4
  %1199 = load i32, i32* %D.i54, align 4
  %add507.i589 = add i32 %1199, %1198
  store i32 %add507.i589, i32* %D.i54, align 4
  %1200 = load i8*, i8** %data.i50, align 8
  %incdec.ptr508.i590 = getelementptr inbounds i8, i8* %1200, i32 1
  store i8* %incdec.ptr508.i590, i8** %data.i50, align 8
  %1201 = load i8, i8* %1200, align 1
  %conv509.i591 = zext i8 %1201 to i64
  %conv510.i592 = trunc i64 %conv509.i591 to i32
  store i32 %conv510.i592, i32* %l.i55, align 4
  %1202 = load i8*, i8** %data.i50, align 8
  %incdec.ptr511.i593 = getelementptr inbounds i8, i8* %1202, i32 1
  store i8* %incdec.ptr511.i593, i8** %data.i50, align 8
  %1203 = load i8, i8* %1202, align 1
  %conv512.i594 = zext i8 %1203 to i64
  %shl513.i595 = shl i64 %conv512.i594, 8
  %1204 = load i32, i32* %l.i55, align 4
  %conv514.i596 = zext i32 %1204 to i64
  %or515.i597 = or i64 %conv514.i596, %shl513.i595
  %conv516.i598 = trunc i64 %or515.i597 to i32
  store i32 %conv516.i598, i32* %l.i55, align 4
  %1205 = load i8*, i8** %data.i50, align 8
  %incdec.ptr517.i599 = getelementptr inbounds i8, i8* %1205, i32 1
  store i8* %incdec.ptr517.i599, i8** %data.i50, align 8
  %1206 = load i8, i8* %1205, align 1
  %conv518.i600 = zext i8 %1206 to i64
  %shl519.i601 = shl i64 %conv518.i600, 16
  %1207 = load i32, i32* %l.i55, align 4
  %conv520.i602 = zext i32 %1207 to i64
  %or521.i603 = or i64 %conv520.i602, %shl519.i601
  %conv522.i604 = trunc i64 %or521.i603 to i32
  store i32 %conv522.i604, i32* %l.i55, align 4
  %1208 = load i8*, i8** %data.i50, align 8
  %incdec.ptr523.i605 = getelementptr inbounds i8, i8* %1208, i32 1
  store i8* %incdec.ptr523.i605, i8** %data.i50, align 8
  %1209 = load i8, i8* %1208, align 1
  %conv524.i606 = zext i8 %1209 to i64
  %shl525.i607 = shl i64 %conv524.i606, 24
  %1210 = load i32, i32* %l.i55, align 4
  %conv526.i608 = zext i32 %1210 to i64
  %or527.i609 = or i64 %conv526.i608, %shl525.i607
  %conv528.i610 = trunc i64 %or527.i609 to i32
  store i32 %conv528.i610, i32* %l.i55, align 4
  %1211 = load i32, i32* %l.i55, align 4
  store i32 %1211, i32* %XX15.i71, align 4
  %1212 = load i32, i32* %XX14.i70, align 4
  %conv529.i611 = zext i32 %1212 to i64
  %add530.i612 = add nsw i64 %conv529.i611, 2792965006
  %1213 = load i32, i32* %A.i51, align 4
  %1214 = load i32, i32* %B.i52, align 4
  %xor531.i613 = xor i32 %1213, %1214
  %1215 = load i32, i32* %D.i54, align 4
  %and532.i614 = and i32 %xor531.i613, %1215
  %1216 = load i32, i32* %B.i52, align 4
  %xor533.i615 = xor i32 %and532.i614, %1216
  %conv534.i616 = zext i32 %xor533.i615 to i64
  %add535.i617 = add nsw i64 %add530.i612, %conv534.i616
  %1217 = load i32, i32* %C.i53, align 4
  %conv536.i618 = zext i32 %1217 to i64
  %add537.i619 = add nsw i64 %conv536.i618, %add535.i617
  %conv538.i620 = trunc i64 %add537.i619 to i32
  store i32 %conv538.i620, i32* %C.i53, align 4
  %1218 = load i32, i32* %C.i53, align 4
  %shl539.i621 = shl i32 %1218, 17
  %1219 = load i32, i32* %C.i53, align 4
  %shr540.i622 = lshr i32 %1219, 15
  %or541.i623 = or i32 %shl539.i621, %shr540.i622
  store i32 %or541.i623, i32* %C.i53, align 4
  %1220 = load i32, i32* %D.i54, align 4
  %1221 = load i32, i32* %C.i53, align 4
  %add542.i624 = add i32 %1221, %1220
  store i32 %add542.i624, i32* %C.i53, align 4
  %1222 = load i32, i32* %XX15.i71, align 4
  %conv543.i625 = zext i32 %1222 to i64
  %add544.i626 = add nsw i64 %conv543.i625, 1236535329
  %1223 = load i32, i32* %D.i54, align 4
  %1224 = load i32, i32* %A.i51, align 4
  %xor545.i627 = xor i32 %1223, %1224
  %1225 = load i32, i32* %C.i53, align 4
  %and546.i628 = and i32 %xor545.i627, %1225
  %1226 = load i32, i32* %A.i51, align 4
  %xor547.i629 = xor i32 %and546.i628, %1226
  %conv548.i630 = zext i32 %xor547.i629 to i64
  %add549.i631 = add nsw i64 %add544.i626, %conv548.i630
  %1227 = load i32, i32* %B.i52, align 4
  %conv550.i632 = zext i32 %1227 to i64
  %add551.i633 = add nsw i64 %conv550.i632, %add549.i631
  %conv552.i634 = trunc i64 %add551.i633 to i32
  store i32 %conv552.i634, i32* %B.i52, align 4
  %1228 = load i32, i32* %B.i52, align 4
  %shl553.i635 = shl i32 %1228, 22
  %1229 = load i32, i32* %B.i52, align 4
  %shr554.i636 = lshr i32 %1229, 10
  %or555.i637 = or i32 %shl553.i635, %shr554.i636
  store i32 %or555.i637, i32* %B.i52, align 4
  %1230 = load i32, i32* %C.i53, align 4
  %1231 = load i32, i32* %B.i52, align 4
  %add556.i638 = add i32 %1231, %1230
  store i32 %add556.i638, i32* %B.i52, align 4
  %1232 = load i32, i32* %XX1.i57, align 4
  %conv557.i639 = zext i32 %1232 to i64
  %add558.i640 = add nsw i64 %conv557.i639, 4129170786
  %1233 = load i32, i32* %B.i52, align 4
  %1234 = load i32, i32* %C.i53, align 4
  %xor559.i641 = xor i32 %1233, %1234
  %1235 = load i32, i32* %D.i54, align 4
  %and560.i642 = and i32 %xor559.i641, %1235
  %1236 = load i32, i32* %C.i53, align 4
  %xor561.i643 = xor i32 %and560.i642, %1236
  %conv562.i644 = zext i32 %xor561.i643 to i64
  %add563.i645 = add nsw i64 %add558.i640, %conv562.i644
  %1237 = load i32, i32* %A.i51, align 4
  %conv564.i646 = zext i32 %1237 to i64
  %add565.i647 = add nsw i64 %conv564.i646, %add563.i645
  %conv566.i648 = trunc i64 %add565.i647 to i32
  store i32 %conv566.i648, i32* %A.i51, align 4
  %1238 = load i32, i32* %A.i51, align 4
  %shl567.i649 = shl i32 %1238, 5
  %1239 = load i32, i32* %A.i51, align 4
  %shr568.i650 = lshr i32 %1239, 27
  %or569.i651 = or i32 %shl567.i649, %shr568.i650
  store i32 %or569.i651, i32* %A.i51, align 4
  %1240 = load i32, i32* %B.i52, align 4
  %1241 = load i32, i32* %A.i51, align 4
  %add570.i652 = add i32 %1241, %1240
  store i32 %add570.i652, i32* %A.i51, align 4
  %1242 = load i32, i32* %XX6.i62, align 4
  %conv571.i653 = zext i32 %1242 to i64
  %add572.i654 = add nsw i64 %conv571.i653, 3225465664
  %1243 = load i32, i32* %A.i51, align 4
  %1244 = load i32, i32* %B.i52, align 4
  %xor573.i655 = xor i32 %1243, %1244
  %1245 = load i32, i32* %C.i53, align 4
  %and574.i656 = and i32 %xor573.i655, %1245
  %1246 = load i32, i32* %B.i52, align 4
  %xor575.i657 = xor i32 %and574.i656, %1246
  %conv576.i658 = zext i32 %xor575.i657 to i64
  %add577.i659 = add nsw i64 %add572.i654, %conv576.i658
  %1247 = load i32, i32* %D.i54, align 4
  %conv578.i660 = zext i32 %1247 to i64
  %add579.i661 = add nsw i64 %conv578.i660, %add577.i659
  %conv580.i662 = trunc i64 %add579.i661 to i32
  store i32 %conv580.i662, i32* %D.i54, align 4
  %1248 = load i32, i32* %D.i54, align 4
  %shl581.i663 = shl i32 %1248, 9
  %1249 = load i32, i32* %D.i54, align 4
  %shr582.i664 = lshr i32 %1249, 23
  %or583.i665 = or i32 %shl581.i663, %shr582.i664
  store i32 %or583.i665, i32* %D.i54, align 4
  %1250 = load i32, i32* %A.i51, align 4
  %1251 = load i32, i32* %D.i54, align 4
  %add584.i666 = add i32 %1251, %1250
  store i32 %add584.i666, i32* %D.i54, align 4
  %1252 = load i32, i32* %XX11.i67, align 4
  %conv585.i667 = zext i32 %1252 to i64
  %add586.i668 = add nsw i64 %conv585.i667, 643717713
  %1253 = load i32, i32* %D.i54, align 4
  %1254 = load i32, i32* %A.i51, align 4
  %xor587.i669 = xor i32 %1253, %1254
  %1255 = load i32, i32* %B.i52, align 4
  %and588.i670 = and i32 %xor587.i669, %1255
  %1256 = load i32, i32* %A.i51, align 4
  %xor589.i671 = xor i32 %and588.i670, %1256
  %conv590.i672 = zext i32 %xor589.i671 to i64
  %add591.i673 = add nsw i64 %add586.i668, %conv590.i672
  %1257 = load i32, i32* %C.i53, align 4
  %conv592.i674 = zext i32 %1257 to i64
  %add593.i675 = add nsw i64 %conv592.i674, %add591.i673
  %conv594.i676 = trunc i64 %add593.i675 to i32
  store i32 %conv594.i676, i32* %C.i53, align 4
  %1258 = load i32, i32* %C.i53, align 4
  %shl595.i677 = shl i32 %1258, 14
  %1259 = load i32, i32* %C.i53, align 4
  %shr596.i678 = lshr i32 %1259, 18
  %or597.i679 = or i32 %shl595.i677, %shr596.i678
  store i32 %or597.i679, i32* %C.i53, align 4
  %1260 = load i32, i32* %D.i54, align 4
  %1261 = load i32, i32* %C.i53, align 4
  %add598.i680 = add i32 %1261, %1260
  store i32 %add598.i680, i32* %C.i53, align 4
  %1262 = load i32, i32* %XX0.i56, align 4
  %conv599.i681 = zext i32 %1262 to i64
  %add600.i682 = add nsw i64 %conv599.i681, 3921069994
  %1263 = load i32, i32* %C.i53, align 4
  %1264 = load i32, i32* %D.i54, align 4
  %xor601.i683 = xor i32 %1263, %1264
  %1265 = load i32, i32* %A.i51, align 4
  %and602.i684 = and i32 %xor601.i683, %1265
  %1266 = load i32, i32* %D.i54, align 4
  %xor603.i685 = xor i32 %and602.i684, %1266
  %conv604.i686 = zext i32 %xor603.i685 to i64
  %add605.i687 = add nsw i64 %add600.i682, %conv604.i686
  %1267 = load i32, i32* %B.i52, align 4
  %conv606.i688 = zext i32 %1267 to i64
  %add607.i689 = add nsw i64 %conv606.i688, %add605.i687
  %conv608.i690 = trunc i64 %add607.i689 to i32
  store i32 %conv608.i690, i32* %B.i52, align 4
  %1268 = load i32, i32* %B.i52, align 4
  %shl609.i691 = shl i32 %1268, 20
  %1269 = load i32, i32* %B.i52, align 4
  %shr610.i692 = lshr i32 %1269, 12
  %or611.i693 = or i32 %shl609.i691, %shr610.i692
  store i32 %or611.i693, i32* %B.i52, align 4
  %1270 = load i32, i32* %C.i53, align 4
  %1271 = load i32, i32* %B.i52, align 4
  %add612.i694 = add i32 %1271, %1270
  store i32 %add612.i694, i32* %B.i52, align 4
  %1272 = load i32, i32* %XX5.i61, align 4
  %conv613.i695 = zext i32 %1272 to i64
  %add614.i696 = add nsw i64 %conv613.i695, 3593408605
  %1273 = load i32, i32* %B.i52, align 4
  %1274 = load i32, i32* %C.i53, align 4
  %xor615.i697 = xor i32 %1273, %1274
  %1275 = load i32, i32* %D.i54, align 4
  %and616.i698 = and i32 %xor615.i697, %1275
  %1276 = load i32, i32* %C.i53, align 4
  %xor617.i699 = xor i32 %and616.i698, %1276
  %conv618.i700 = zext i32 %xor617.i699 to i64
  %add619.i701 = add nsw i64 %add614.i696, %conv618.i700
  %1277 = load i32, i32* %A.i51, align 4
  %conv620.i702 = zext i32 %1277 to i64
  %add621.i703 = add nsw i64 %conv620.i702, %add619.i701
  %conv622.i704 = trunc i64 %add621.i703 to i32
  store i32 %conv622.i704, i32* %A.i51, align 4
  %1278 = load i32, i32* %A.i51, align 4
  %shl623.i705 = shl i32 %1278, 5
  %1279 = load i32, i32* %A.i51, align 4
  %shr624.i706 = lshr i32 %1279, 27
  %or625.i707 = or i32 %shl623.i705, %shr624.i706
  store i32 %or625.i707, i32* %A.i51, align 4
  %1280 = load i32, i32* %B.i52, align 4
  %1281 = load i32, i32* %A.i51, align 4
  %add626.i708 = add i32 %1281, %1280
  store i32 %add626.i708, i32* %A.i51, align 4
  %1282 = load i32, i32* %XX10.i66, align 4
  %conv627.i709 = zext i32 %1282 to i64
  %add628.i710 = add nsw i64 %conv627.i709, 38016083
  %1283 = load i32, i32* %A.i51, align 4
  %1284 = load i32, i32* %B.i52, align 4
  %xor629.i711 = xor i32 %1283, %1284
  %1285 = load i32, i32* %C.i53, align 4
  %and630.i712 = and i32 %xor629.i711, %1285
  %1286 = load i32, i32* %B.i52, align 4
  %xor631.i713 = xor i32 %and630.i712, %1286
  %conv632.i714 = zext i32 %xor631.i713 to i64
  %add633.i715 = add nsw i64 %add628.i710, %conv632.i714
  %1287 = load i32, i32* %D.i54, align 4
  %conv634.i716 = zext i32 %1287 to i64
  %add635.i717 = add nsw i64 %conv634.i716, %add633.i715
  %conv636.i718 = trunc i64 %add635.i717 to i32
  store i32 %conv636.i718, i32* %D.i54, align 4
  %1288 = load i32, i32* %D.i54, align 4
  %shl637.i719 = shl i32 %1288, 9
  %1289 = load i32, i32* %D.i54, align 4
  %shr638.i720 = lshr i32 %1289, 23
  %or639.i721 = or i32 %shl637.i719, %shr638.i720
  store i32 %or639.i721, i32* %D.i54, align 4
  %1290 = load i32, i32* %A.i51, align 4
  %1291 = load i32, i32* %D.i54, align 4
  %add640.i722 = add i32 %1291, %1290
  store i32 %add640.i722, i32* %D.i54, align 4
  %1292 = load i32, i32* %XX15.i71, align 4
  %conv641.i723 = zext i32 %1292 to i64
  %add642.i724 = add nsw i64 %conv641.i723, 3634488961
  %1293 = load i32, i32* %D.i54, align 4
  %1294 = load i32, i32* %A.i51, align 4
  %xor643.i725 = xor i32 %1293, %1294
  %1295 = load i32, i32* %B.i52, align 4
  %and644.i726 = and i32 %xor643.i725, %1295
  %1296 = load i32, i32* %A.i51, align 4
  %xor645.i727 = xor i32 %and644.i726, %1296
  %conv646.i728 = zext i32 %xor645.i727 to i64
  %add647.i729 = add nsw i64 %add642.i724, %conv646.i728
  %1297 = load i32, i32* %C.i53, align 4
  %conv648.i730 = zext i32 %1297 to i64
  %add649.i731 = add nsw i64 %conv648.i730, %add647.i729
  %conv650.i732 = trunc i64 %add649.i731 to i32
  store i32 %conv650.i732, i32* %C.i53, align 4
  %1298 = load i32, i32* %C.i53, align 4
  %shl651.i733 = shl i32 %1298, 14
  %1299 = load i32, i32* %C.i53, align 4
  %shr652.i734 = lshr i32 %1299, 18
  %or653.i735 = or i32 %shl651.i733, %shr652.i734
  store i32 %or653.i735, i32* %C.i53, align 4
  %1300 = load i32, i32* %D.i54, align 4
  %1301 = load i32, i32* %C.i53, align 4
  %add654.i736 = add i32 %1301, %1300
  store i32 %add654.i736, i32* %C.i53, align 4
  %1302 = load i32, i32* %XX4.i60, align 4
  %conv655.i737 = zext i32 %1302 to i64
  %add656.i738 = add nsw i64 %conv655.i737, 3889429448
  %1303 = load i32, i32* %C.i53, align 4
  %1304 = load i32, i32* %D.i54, align 4
  %xor657.i739 = xor i32 %1303, %1304
  %1305 = load i32, i32* %A.i51, align 4
  %and658.i740 = and i32 %xor657.i739, %1305
  %1306 = load i32, i32* %D.i54, align 4
  %xor659.i741 = xor i32 %and658.i740, %1306
  %conv660.i742 = zext i32 %xor659.i741 to i64
  %add661.i743 = add nsw i64 %add656.i738, %conv660.i742
  %1307 = load i32, i32* %B.i52, align 4
  %conv662.i744 = zext i32 %1307 to i64
  %add663.i745 = add nsw i64 %conv662.i744, %add661.i743
  %conv664.i746 = trunc i64 %add663.i745 to i32
  store i32 %conv664.i746, i32* %B.i52, align 4
  %1308 = load i32, i32* %B.i52, align 4
  %shl665.i747 = shl i32 %1308, 20
  %1309 = load i32, i32* %B.i52, align 4
  %shr666.i748 = lshr i32 %1309, 12
  %or667.i749 = or i32 %shl665.i747, %shr666.i748
  store i32 %or667.i749, i32* %B.i52, align 4
  %1310 = load i32, i32* %C.i53, align 4
  %1311 = load i32, i32* %B.i52, align 4
  %add668.i750 = add i32 %1311, %1310
  store i32 %add668.i750, i32* %B.i52, align 4
  %1312 = load i32, i32* %XX9.i65, align 4
  %conv669.i751 = zext i32 %1312 to i64
  %add670.i752 = add nsw i64 %conv669.i751, 568446438
  %1313 = load i32, i32* %B.i52, align 4
  %1314 = load i32, i32* %C.i53, align 4
  %xor671.i753 = xor i32 %1313, %1314
  %1315 = load i32, i32* %D.i54, align 4
  %and672.i754 = and i32 %xor671.i753, %1315
  %1316 = load i32, i32* %C.i53, align 4
  %xor673.i755 = xor i32 %and672.i754, %1316
  %conv674.i756 = zext i32 %xor673.i755 to i64
  %add675.i757 = add nsw i64 %add670.i752, %conv674.i756
  %1317 = load i32, i32* %A.i51, align 4
  %conv676.i758 = zext i32 %1317 to i64
  %add677.i759 = add nsw i64 %conv676.i758, %add675.i757
  %conv678.i760 = trunc i64 %add677.i759 to i32
  store i32 %conv678.i760, i32* %A.i51, align 4
  %1318 = load i32, i32* %A.i51, align 4
  %shl679.i761 = shl i32 %1318, 5
  %1319 = load i32, i32* %A.i51, align 4
  %shr680.i762 = lshr i32 %1319, 27
  %or681.i763 = or i32 %shl679.i761, %shr680.i762
  store i32 %or681.i763, i32* %A.i51, align 4
  %1320 = load i32, i32* %B.i52, align 4
  %1321 = load i32, i32* %A.i51, align 4
  %add682.i764 = add i32 %1321, %1320
  store i32 %add682.i764, i32* %A.i51, align 4
  %1322 = load i32, i32* %XX14.i70, align 4
  %conv683.i765 = zext i32 %1322 to i64
  %add684.i766 = add nsw i64 %conv683.i765, 3275163606
  %1323 = load i32, i32* %A.i51, align 4
  %1324 = load i32, i32* %B.i52, align 4
  %xor685.i767 = xor i32 %1323, %1324
  %1325 = load i32, i32* %C.i53, align 4
  %and686.i768 = and i32 %xor685.i767, %1325
  %1326 = load i32, i32* %B.i52, align 4
  %xor687.i769 = xor i32 %and686.i768, %1326
  %conv688.i770 = zext i32 %xor687.i769 to i64
  %add689.i771 = add nsw i64 %add684.i766, %conv688.i770
  %1327 = load i32, i32* %D.i54, align 4
  %conv690.i772 = zext i32 %1327 to i64
  %add691.i773 = add nsw i64 %conv690.i772, %add689.i771
  %conv692.i774 = trunc i64 %add691.i773 to i32
  store i32 %conv692.i774, i32* %D.i54, align 4
  %1328 = load i32, i32* %D.i54, align 4
  %shl693.i775 = shl i32 %1328, 9
  %1329 = load i32, i32* %D.i54, align 4
  %shr694.i776 = lshr i32 %1329, 23
  %or695.i777 = or i32 %shl693.i775, %shr694.i776
  store i32 %or695.i777, i32* %D.i54, align 4
  %1330 = load i32, i32* %A.i51, align 4
  %1331 = load i32, i32* %D.i54, align 4
  %add696.i778 = add i32 %1331, %1330
  store i32 %add696.i778, i32* %D.i54, align 4
  %1332 = load i32, i32* %XX3.i59, align 4
  %conv697.i779 = zext i32 %1332 to i64
  %add698.i780 = add nsw i64 %conv697.i779, 4107603335
  %1333 = load i32, i32* %D.i54, align 4
  %1334 = load i32, i32* %A.i51, align 4
  %xor699.i781 = xor i32 %1333, %1334
  %1335 = load i32, i32* %B.i52, align 4
  %and700.i782 = and i32 %xor699.i781, %1335
  %1336 = load i32, i32* %A.i51, align 4
  %xor701.i783 = xor i32 %and700.i782, %1336
  %conv702.i784 = zext i32 %xor701.i783 to i64
  %add703.i785 = add nsw i64 %add698.i780, %conv702.i784
  %1337 = load i32, i32* %C.i53, align 4
  %conv704.i786 = zext i32 %1337 to i64
  %add705.i787 = add nsw i64 %conv704.i786, %add703.i785
  %conv706.i788 = trunc i64 %add705.i787 to i32
  store i32 %conv706.i788, i32* %C.i53, align 4
  %1338 = load i32, i32* %C.i53, align 4
  %shl707.i789 = shl i32 %1338, 14
  %1339 = load i32, i32* %C.i53, align 4
  %shr708.i790 = lshr i32 %1339, 18
  %or709.i791 = or i32 %shl707.i789, %shr708.i790
  store i32 %or709.i791, i32* %C.i53, align 4
  %1340 = load i32, i32* %D.i54, align 4
  %1341 = load i32, i32* %C.i53, align 4
  %add710.i792 = add i32 %1341, %1340
  store i32 %add710.i792, i32* %C.i53, align 4
  %1342 = load i32, i32* %XX8.i64, align 4
  %conv711.i793 = zext i32 %1342 to i64
  %add712.i794 = add nsw i64 %conv711.i793, 1163531501
  %1343 = load i32, i32* %C.i53, align 4
  %1344 = load i32, i32* %D.i54, align 4
  %xor713.i795 = xor i32 %1343, %1344
  %1345 = load i32, i32* %A.i51, align 4
  %and714.i796 = and i32 %xor713.i795, %1345
  %1346 = load i32, i32* %D.i54, align 4
  %xor715.i797 = xor i32 %and714.i796, %1346
  %conv716.i798 = zext i32 %xor715.i797 to i64
  %add717.i799 = add nsw i64 %add712.i794, %conv716.i798
  %1347 = load i32, i32* %B.i52, align 4
  %conv718.i800 = zext i32 %1347 to i64
  %add719.i801 = add nsw i64 %conv718.i800, %add717.i799
  %conv720.i802 = trunc i64 %add719.i801 to i32
  store i32 %conv720.i802, i32* %B.i52, align 4
  %1348 = load i32, i32* %B.i52, align 4
  %shl721.i803 = shl i32 %1348, 20
  %1349 = load i32, i32* %B.i52, align 4
  %shr722.i804 = lshr i32 %1349, 12
  %or723.i805 = or i32 %shl721.i803, %shr722.i804
  store i32 %or723.i805, i32* %B.i52, align 4
  %1350 = load i32, i32* %C.i53, align 4
  %1351 = load i32, i32* %B.i52, align 4
  %add724.i806 = add i32 %1351, %1350
  store i32 %add724.i806, i32* %B.i52, align 4
  %1352 = load i32, i32* %XX13.i69, align 4
  %conv725.i807 = zext i32 %1352 to i64
  %add726.i808 = add nsw i64 %conv725.i807, 2850285829
  %1353 = load i32, i32* %B.i52, align 4
  %1354 = load i32, i32* %C.i53, align 4
  %xor727.i809 = xor i32 %1353, %1354
  %1355 = load i32, i32* %D.i54, align 4
  %and728.i810 = and i32 %xor727.i809, %1355
  %1356 = load i32, i32* %C.i53, align 4
  %xor729.i811 = xor i32 %and728.i810, %1356
  %conv730.i812 = zext i32 %xor729.i811 to i64
  %add731.i813 = add nsw i64 %add726.i808, %conv730.i812
  %1357 = load i32, i32* %A.i51, align 4
  %conv732.i814 = zext i32 %1357 to i64
  %add733.i815 = add nsw i64 %conv732.i814, %add731.i813
  %conv734.i816 = trunc i64 %add733.i815 to i32
  store i32 %conv734.i816, i32* %A.i51, align 4
  %1358 = load i32, i32* %A.i51, align 4
  %shl735.i817 = shl i32 %1358, 5
  %1359 = load i32, i32* %A.i51, align 4
  %shr736.i818 = lshr i32 %1359, 27
  %or737.i819 = or i32 %shl735.i817, %shr736.i818
  store i32 %or737.i819, i32* %A.i51, align 4
  %1360 = load i32, i32* %B.i52, align 4
  %1361 = load i32, i32* %A.i51, align 4
  %add738.i820 = add i32 %1361, %1360
  store i32 %add738.i820, i32* %A.i51, align 4
  %1362 = load i32, i32* %XX2.i58, align 4
  %conv739.i821 = zext i32 %1362 to i64
  %add740.i822 = add nsw i64 %conv739.i821, 4243563512
  %1363 = load i32, i32* %A.i51, align 4
  %1364 = load i32, i32* %B.i52, align 4
  %xor741.i823 = xor i32 %1363, %1364
  %1365 = load i32, i32* %C.i53, align 4
  %and742.i824 = and i32 %xor741.i823, %1365
  %1366 = load i32, i32* %B.i52, align 4
  %xor743.i825 = xor i32 %and742.i824, %1366
  %conv744.i826 = zext i32 %xor743.i825 to i64
  %add745.i827 = add nsw i64 %add740.i822, %conv744.i826
  %1367 = load i32, i32* %D.i54, align 4
  %conv746.i828 = zext i32 %1367 to i64
  %add747.i829 = add nsw i64 %conv746.i828, %add745.i827
  %conv748.i830 = trunc i64 %add747.i829 to i32
  store i32 %conv748.i830, i32* %D.i54, align 4
  %1368 = load i32, i32* %D.i54, align 4
  %shl749.i831 = shl i32 %1368, 9
  %1369 = load i32, i32* %D.i54, align 4
  %shr750.i832 = lshr i32 %1369, 23
  %or751.i833 = or i32 %shl749.i831, %shr750.i832
  store i32 %or751.i833, i32* %D.i54, align 4
  %1370 = load i32, i32* %A.i51, align 4
  %1371 = load i32, i32* %D.i54, align 4
  %add752.i834 = add i32 %1371, %1370
  store i32 %add752.i834, i32* %D.i54, align 4
  %1372 = load i32, i32* %XX7.i63, align 4
  %conv753.i835 = zext i32 %1372 to i64
  %add754.i836 = add nsw i64 %conv753.i835, 1735328473
  %1373 = load i32, i32* %D.i54, align 4
  %1374 = load i32, i32* %A.i51, align 4
  %xor755.i837 = xor i32 %1373, %1374
  %1375 = load i32, i32* %B.i52, align 4
  %and756.i838 = and i32 %xor755.i837, %1375
  %1376 = load i32, i32* %A.i51, align 4
  %xor757.i839 = xor i32 %and756.i838, %1376
  %conv758.i840 = zext i32 %xor757.i839 to i64
  %add759.i841 = add nsw i64 %add754.i836, %conv758.i840
  %1377 = load i32, i32* %C.i53, align 4
  %conv760.i842 = zext i32 %1377 to i64
  %add761.i843 = add nsw i64 %conv760.i842, %add759.i841
  %conv762.i844 = trunc i64 %add761.i843 to i32
  store i32 %conv762.i844, i32* %C.i53, align 4
  %1378 = load i32, i32* %C.i53, align 4
  %shl763.i845 = shl i32 %1378, 14
  %1379 = load i32, i32* %C.i53, align 4
  %shr764.i846 = lshr i32 %1379, 18
  %or765.i847 = or i32 %shl763.i845, %shr764.i846
  store i32 %or765.i847, i32* %C.i53, align 4
  %1380 = load i32, i32* %D.i54, align 4
  %1381 = load i32, i32* %C.i53, align 4
  %add766.i848 = add i32 %1381, %1380
  store i32 %add766.i848, i32* %C.i53, align 4
  %1382 = load i32, i32* %XX12.i68, align 4
  %conv767.i849 = zext i32 %1382 to i64
  %add768.i850 = add nsw i64 %conv767.i849, 2368359562
  %1383 = load i32, i32* %C.i53, align 4
  %1384 = load i32, i32* %D.i54, align 4
  %xor769.i851 = xor i32 %1383, %1384
  %1385 = load i32, i32* %A.i51, align 4
  %and770.i852 = and i32 %xor769.i851, %1385
  %1386 = load i32, i32* %D.i54, align 4
  %xor771.i853 = xor i32 %and770.i852, %1386
  %conv772.i854 = zext i32 %xor771.i853 to i64
  %add773.i855 = add nsw i64 %add768.i850, %conv772.i854
  %1387 = load i32, i32* %B.i52, align 4
  %conv774.i856 = zext i32 %1387 to i64
  %add775.i857 = add nsw i64 %conv774.i856, %add773.i855
  %conv776.i858 = trunc i64 %add775.i857 to i32
  store i32 %conv776.i858, i32* %B.i52, align 4
  %1388 = load i32, i32* %B.i52, align 4
  %shl777.i859 = shl i32 %1388, 20
  %1389 = load i32, i32* %B.i52, align 4
  %shr778.i860 = lshr i32 %1389, 12
  %or779.i861 = or i32 %shl777.i859, %shr778.i860
  store i32 %or779.i861, i32* %B.i52, align 4
  %1390 = load i32, i32* %C.i53, align 4
  %1391 = load i32, i32* %B.i52, align 4
  %add780.i862 = add i32 %1391, %1390
  store i32 %add780.i862, i32* %B.i52, align 4
  %1392 = load i32, i32* %XX5.i61, align 4
  %conv781.i863 = zext i32 %1392 to i64
  %add782.i864 = add nsw i64 %conv781.i863, 4294588738
  %1393 = load i32, i32* %B.i52, align 4
  %1394 = load i32, i32* %C.i53, align 4
  %xor783.i865 = xor i32 %1393, %1394
  %1395 = load i32, i32* %D.i54, align 4
  %xor784.i866 = xor i32 %xor783.i865, %1395
  %conv785.i867 = zext i32 %xor784.i866 to i64
  %add786.i868 = add nsw i64 %add782.i864, %conv785.i867
  %1396 = load i32, i32* %A.i51, align 4
  %conv787.i869 = zext i32 %1396 to i64
  %add788.i870 = add nsw i64 %conv787.i869, %add786.i868
  %conv789.i871 = trunc i64 %add788.i870 to i32
  store i32 %conv789.i871, i32* %A.i51, align 4
  %1397 = load i32, i32* %A.i51, align 4
  %shl790.i872 = shl i32 %1397, 4
  %1398 = load i32, i32* %A.i51, align 4
  %shr791.i873 = lshr i32 %1398, 28
  %or792.i874 = or i32 %shl790.i872, %shr791.i873
  store i32 %or792.i874, i32* %A.i51, align 4
  %1399 = load i32, i32* %B.i52, align 4
  %1400 = load i32, i32* %A.i51, align 4
  %add793.i875 = add i32 %1400, %1399
  store i32 %add793.i875, i32* %A.i51, align 4
  %1401 = load i32, i32* %XX8.i64, align 4
  %conv794.i876 = zext i32 %1401 to i64
  %add795.i877 = add nsw i64 %conv794.i876, 2272392833
  %1402 = load i32, i32* %A.i51, align 4
  %1403 = load i32, i32* %B.i52, align 4
  %xor796.i878 = xor i32 %1402, %1403
  %1404 = load i32, i32* %C.i53, align 4
  %xor797.i879 = xor i32 %xor796.i878, %1404
  %conv798.i880 = zext i32 %xor797.i879 to i64
  %add799.i881 = add nsw i64 %add795.i877, %conv798.i880
  %1405 = load i32, i32* %D.i54, align 4
  %conv800.i882 = zext i32 %1405 to i64
  %add801.i883 = add nsw i64 %conv800.i882, %add799.i881
  %conv802.i884 = trunc i64 %add801.i883 to i32
  store i32 %conv802.i884, i32* %D.i54, align 4
  %1406 = load i32, i32* %D.i54, align 4
  %shl803.i885 = shl i32 %1406, 11
  %1407 = load i32, i32* %D.i54, align 4
  %shr804.i886 = lshr i32 %1407, 21
  %or805.i887 = or i32 %shl803.i885, %shr804.i886
  store i32 %or805.i887, i32* %D.i54, align 4
  %1408 = load i32, i32* %A.i51, align 4
  %1409 = load i32, i32* %D.i54, align 4
  %add806.i888 = add i32 %1409, %1408
  store i32 %add806.i888, i32* %D.i54, align 4
  %1410 = load i32, i32* %XX11.i67, align 4
  %conv807.i889 = zext i32 %1410 to i64
  %add808.i890 = add nsw i64 %conv807.i889, 1839030562
  %1411 = load i32, i32* %D.i54, align 4
  %1412 = load i32, i32* %A.i51, align 4
  %xor809.i891 = xor i32 %1411, %1412
  %1413 = load i32, i32* %B.i52, align 4
  %xor810.i892 = xor i32 %xor809.i891, %1413
  %conv811.i893 = zext i32 %xor810.i892 to i64
  %add812.i894 = add nsw i64 %add808.i890, %conv811.i893
  %1414 = load i32, i32* %C.i53, align 4
  %conv813.i895 = zext i32 %1414 to i64
  %add814.i896 = add nsw i64 %conv813.i895, %add812.i894
  %conv815.i897 = trunc i64 %add814.i896 to i32
  store i32 %conv815.i897, i32* %C.i53, align 4
  %1415 = load i32, i32* %C.i53, align 4
  %shl816.i898 = shl i32 %1415, 16
  %1416 = load i32, i32* %C.i53, align 4
  %shr817.i899 = lshr i32 %1416, 16
  %or818.i900 = or i32 %shl816.i898, %shr817.i899
  store i32 %or818.i900, i32* %C.i53, align 4
  %1417 = load i32, i32* %D.i54, align 4
  %1418 = load i32, i32* %C.i53, align 4
  %add819.i901 = add i32 %1418, %1417
  store i32 %add819.i901, i32* %C.i53, align 4
  %1419 = load i32, i32* %XX14.i70, align 4
  %conv820.i902 = zext i32 %1419 to i64
  %add821.i903 = add nsw i64 %conv820.i902, 4259657740
  %1420 = load i32, i32* %C.i53, align 4
  %1421 = load i32, i32* %D.i54, align 4
  %xor822.i904 = xor i32 %1420, %1421
  %1422 = load i32, i32* %A.i51, align 4
  %xor823.i905 = xor i32 %xor822.i904, %1422
  %conv824.i906 = zext i32 %xor823.i905 to i64
  %add825.i907 = add nsw i64 %add821.i903, %conv824.i906
  %1423 = load i32, i32* %B.i52, align 4
  %conv826.i908 = zext i32 %1423 to i64
  %add827.i909 = add nsw i64 %conv826.i908, %add825.i907
  %conv828.i910 = trunc i64 %add827.i909 to i32
  store i32 %conv828.i910, i32* %B.i52, align 4
  %1424 = load i32, i32* %B.i52, align 4
  %shl829.i911 = shl i32 %1424, 23
  %1425 = load i32, i32* %B.i52, align 4
  %shr830.i912 = lshr i32 %1425, 9
  %or831.i913 = or i32 %shl829.i911, %shr830.i912
  store i32 %or831.i913, i32* %B.i52, align 4
  %1426 = load i32, i32* %C.i53, align 4
  %1427 = load i32, i32* %B.i52, align 4
  %add832.i914 = add i32 %1427, %1426
  store i32 %add832.i914, i32* %B.i52, align 4
  %1428 = load i32, i32* %XX1.i57, align 4
  %conv833.i915 = zext i32 %1428 to i64
  %add834.i916 = add nsw i64 %conv833.i915, 2763975236
  %1429 = load i32, i32* %B.i52, align 4
  %1430 = load i32, i32* %C.i53, align 4
  %xor835.i917 = xor i32 %1429, %1430
  %1431 = load i32, i32* %D.i54, align 4
  %xor836.i918 = xor i32 %xor835.i917, %1431
  %conv837.i919 = zext i32 %xor836.i918 to i64
  %add838.i920 = add nsw i64 %add834.i916, %conv837.i919
  %1432 = load i32, i32* %A.i51, align 4
  %conv839.i921 = zext i32 %1432 to i64
  %add840.i922 = add nsw i64 %conv839.i921, %add838.i920
  %conv841.i923 = trunc i64 %add840.i922 to i32
  store i32 %conv841.i923, i32* %A.i51, align 4
  %1433 = load i32, i32* %A.i51, align 4
  %shl842.i924 = shl i32 %1433, 4
  %1434 = load i32, i32* %A.i51, align 4
  %shr843.i925 = lshr i32 %1434, 28
  %or844.i926 = or i32 %shl842.i924, %shr843.i925
  store i32 %or844.i926, i32* %A.i51, align 4
  %1435 = load i32, i32* %B.i52, align 4
  %1436 = load i32, i32* %A.i51, align 4
  %add845.i927 = add i32 %1436, %1435
  store i32 %add845.i927, i32* %A.i51, align 4
  %1437 = load i32, i32* %XX4.i60, align 4
  %conv846.i928 = zext i32 %1437 to i64
  %add847.i929 = add nsw i64 %conv846.i928, 1272893353
  %1438 = load i32, i32* %A.i51, align 4
  %1439 = load i32, i32* %B.i52, align 4
  %xor848.i930 = xor i32 %1438, %1439
  %1440 = load i32, i32* %C.i53, align 4
  %xor849.i931 = xor i32 %xor848.i930, %1440
  %conv850.i932 = zext i32 %xor849.i931 to i64
  %add851.i933 = add nsw i64 %add847.i929, %conv850.i932
  %1441 = load i32, i32* %D.i54, align 4
  %conv852.i934 = zext i32 %1441 to i64
  %add853.i935 = add nsw i64 %conv852.i934, %add851.i933
  %conv854.i936 = trunc i64 %add853.i935 to i32
  store i32 %conv854.i936, i32* %D.i54, align 4
  %1442 = load i32, i32* %D.i54, align 4
  %shl855.i937 = shl i32 %1442, 11
  %1443 = load i32, i32* %D.i54, align 4
  %shr856.i938 = lshr i32 %1443, 21
  %or857.i939 = or i32 %shl855.i937, %shr856.i938
  store i32 %or857.i939, i32* %D.i54, align 4
  %1444 = load i32, i32* %A.i51, align 4
  %1445 = load i32, i32* %D.i54, align 4
  %add858.i940 = add i32 %1445, %1444
  store i32 %add858.i940, i32* %D.i54, align 4
  %1446 = load i32, i32* %XX7.i63, align 4
  %conv859.i941 = zext i32 %1446 to i64
  %add860.i942 = add nsw i64 %conv859.i941, 4139469664
  %1447 = load i32, i32* %D.i54, align 4
  %1448 = load i32, i32* %A.i51, align 4
  %xor861.i943 = xor i32 %1447, %1448
  %1449 = load i32, i32* %B.i52, align 4
  %xor862.i944 = xor i32 %xor861.i943, %1449
  %conv863.i945 = zext i32 %xor862.i944 to i64
  %add864.i946 = add nsw i64 %add860.i942, %conv863.i945
  %1450 = load i32, i32* %C.i53, align 4
  %conv865.i947 = zext i32 %1450 to i64
  %add866.i948 = add nsw i64 %conv865.i947, %add864.i946
  %conv867.i949 = trunc i64 %add866.i948 to i32
  store i32 %conv867.i949, i32* %C.i53, align 4
  %1451 = load i32, i32* %C.i53, align 4
  %shl868.i950 = shl i32 %1451, 16
  %1452 = load i32, i32* %C.i53, align 4
  %shr869.i951 = lshr i32 %1452, 16
  %or870.i952 = or i32 %shl868.i950, %shr869.i951
  store i32 %or870.i952, i32* %C.i53, align 4
  %1453 = load i32, i32* %D.i54, align 4
  %1454 = load i32, i32* %C.i53, align 4
  %add871.i953 = add i32 %1454, %1453
  store i32 %add871.i953, i32* %C.i53, align 4
  %1455 = load i32, i32* %XX10.i66, align 4
  %conv872.i954 = zext i32 %1455 to i64
  %add873.i955 = add nsw i64 %conv872.i954, 3200236656
  %1456 = load i32, i32* %C.i53, align 4
  %1457 = load i32, i32* %D.i54, align 4
  %xor874.i956 = xor i32 %1456, %1457
  %1458 = load i32, i32* %A.i51, align 4
  %xor875.i957 = xor i32 %xor874.i956, %1458
  %conv876.i958 = zext i32 %xor875.i957 to i64
  %add877.i959 = add nsw i64 %add873.i955, %conv876.i958
  %1459 = load i32, i32* %B.i52, align 4
  %conv878.i960 = zext i32 %1459 to i64
  %add879.i961 = add nsw i64 %conv878.i960, %add877.i959
  %conv880.i962 = trunc i64 %add879.i961 to i32
  store i32 %conv880.i962, i32* %B.i52, align 4
  %1460 = load i32, i32* %B.i52, align 4
  %shl881.i963 = shl i32 %1460, 23
  %1461 = load i32, i32* %B.i52, align 4
  %shr882.i964 = lshr i32 %1461, 9
  %or883.i965 = or i32 %shl881.i963, %shr882.i964
  store i32 %or883.i965, i32* %B.i52, align 4
  %1462 = load i32, i32* %C.i53, align 4
  %1463 = load i32, i32* %B.i52, align 4
  %add884.i966 = add i32 %1463, %1462
  store i32 %add884.i966, i32* %B.i52, align 4
  %1464 = load i32, i32* %XX13.i69, align 4
  %conv885.i967 = zext i32 %1464 to i64
  %add886.i968 = add nsw i64 %conv885.i967, 681279174
  %1465 = load i32, i32* %B.i52, align 4
  %1466 = load i32, i32* %C.i53, align 4
  %xor887.i969 = xor i32 %1465, %1466
  %1467 = load i32, i32* %D.i54, align 4
  %xor888.i970 = xor i32 %xor887.i969, %1467
  %conv889.i971 = zext i32 %xor888.i970 to i64
  %add890.i972 = add nsw i64 %add886.i968, %conv889.i971
  %1468 = load i32, i32* %A.i51, align 4
  %conv891.i973 = zext i32 %1468 to i64
  %add892.i974 = add nsw i64 %conv891.i973, %add890.i972
  %conv893.i975 = trunc i64 %add892.i974 to i32
  store i32 %conv893.i975, i32* %A.i51, align 4
  %1469 = load i32, i32* %A.i51, align 4
  %shl894.i976 = shl i32 %1469, 4
  %1470 = load i32, i32* %A.i51, align 4
  %shr895.i977 = lshr i32 %1470, 28
  %or896.i978 = or i32 %shl894.i976, %shr895.i977
  store i32 %or896.i978, i32* %A.i51, align 4
  %1471 = load i32, i32* %B.i52, align 4
  %1472 = load i32, i32* %A.i51, align 4
  %add897.i979 = add i32 %1472, %1471
  store i32 %add897.i979, i32* %A.i51, align 4
  %1473 = load i32, i32* %XX0.i56, align 4
  %conv898.i980 = zext i32 %1473 to i64
  %add899.i981 = add nsw i64 %conv898.i980, 3936430074
  %1474 = load i32, i32* %A.i51, align 4
  %1475 = load i32, i32* %B.i52, align 4
  %xor900.i982 = xor i32 %1474, %1475
  %1476 = load i32, i32* %C.i53, align 4
  %xor901.i983 = xor i32 %xor900.i982, %1476
  %conv902.i984 = zext i32 %xor901.i983 to i64
  %add903.i985 = add nsw i64 %add899.i981, %conv902.i984
  %1477 = load i32, i32* %D.i54, align 4
  %conv904.i986 = zext i32 %1477 to i64
  %add905.i987 = add nsw i64 %conv904.i986, %add903.i985
  %conv906.i988 = trunc i64 %add905.i987 to i32
  store i32 %conv906.i988, i32* %D.i54, align 4
  %1478 = load i32, i32* %D.i54, align 4
  %shl907.i989 = shl i32 %1478, 11
  %1479 = load i32, i32* %D.i54, align 4
  %shr908.i990 = lshr i32 %1479, 21
  %or909.i991 = or i32 %shl907.i989, %shr908.i990
  store i32 %or909.i991, i32* %D.i54, align 4
  %1480 = load i32, i32* %A.i51, align 4
  %1481 = load i32, i32* %D.i54, align 4
  %add910.i992 = add i32 %1481, %1480
  store i32 %add910.i992, i32* %D.i54, align 4
  %1482 = load i32, i32* %XX3.i59, align 4
  %conv911.i993 = zext i32 %1482 to i64
  %add912.i994 = add nsw i64 %conv911.i993, 3572445317
  %1483 = load i32, i32* %D.i54, align 4
  %1484 = load i32, i32* %A.i51, align 4
  %xor913.i995 = xor i32 %1483, %1484
  %1485 = load i32, i32* %B.i52, align 4
  %xor914.i996 = xor i32 %xor913.i995, %1485
  %conv915.i997 = zext i32 %xor914.i996 to i64
  %add916.i998 = add nsw i64 %add912.i994, %conv915.i997
  %1486 = load i32, i32* %C.i53, align 4
  %conv917.i999 = zext i32 %1486 to i64
  %add918.i1000 = add nsw i64 %conv917.i999, %add916.i998
  %conv919.i1001 = trunc i64 %add918.i1000 to i32
  store i32 %conv919.i1001, i32* %C.i53, align 4
  %1487 = load i32, i32* %C.i53, align 4
  %shl920.i1002 = shl i32 %1487, 16
  %1488 = load i32, i32* %C.i53, align 4
  %shr921.i1003 = lshr i32 %1488, 16
  %or922.i1004 = or i32 %shl920.i1002, %shr921.i1003
  store i32 %or922.i1004, i32* %C.i53, align 4
  %1489 = load i32, i32* %D.i54, align 4
  %1490 = load i32, i32* %C.i53, align 4
  %add923.i1005 = add i32 %1490, %1489
  store i32 %add923.i1005, i32* %C.i53, align 4
  %1491 = load i32, i32* %XX6.i62, align 4
  %conv924.i1006 = zext i32 %1491 to i64
  %add925.i1007 = add nsw i64 %conv924.i1006, 76029189
  %1492 = load i32, i32* %C.i53, align 4
  %1493 = load i32, i32* %D.i54, align 4
  %xor926.i1008 = xor i32 %1492, %1493
  %1494 = load i32, i32* %A.i51, align 4
  %xor927.i1009 = xor i32 %xor926.i1008, %1494
  %conv928.i1010 = zext i32 %xor927.i1009 to i64
  %add929.i1011 = add nsw i64 %add925.i1007, %conv928.i1010
  %1495 = load i32, i32* %B.i52, align 4
  %conv930.i1012 = zext i32 %1495 to i64
  %add931.i1013 = add nsw i64 %conv930.i1012, %add929.i1011
  %conv932.i1014 = trunc i64 %add931.i1013 to i32
  store i32 %conv932.i1014, i32* %B.i52, align 4
  %1496 = load i32, i32* %B.i52, align 4
  %shl933.i1015 = shl i32 %1496, 23
  %1497 = load i32, i32* %B.i52, align 4
  %shr934.i1016 = lshr i32 %1497, 9
  %or935.i1017 = or i32 %shl933.i1015, %shr934.i1016
  store i32 %or935.i1017, i32* %B.i52, align 4
  %1498 = load i32, i32* %C.i53, align 4
  %1499 = load i32, i32* %B.i52, align 4
  %add936.i1018 = add i32 %1499, %1498
  store i32 %add936.i1018, i32* %B.i52, align 4
  %1500 = load i32, i32* %XX9.i65, align 4
  %conv937.i1019 = zext i32 %1500 to i64
  %add938.i1020 = add nsw i64 %conv937.i1019, 3654602809
  %1501 = load i32, i32* %B.i52, align 4
  %1502 = load i32, i32* %C.i53, align 4
  %xor939.i1021 = xor i32 %1501, %1502
  %1503 = load i32, i32* %D.i54, align 4
  %xor940.i1022 = xor i32 %xor939.i1021, %1503
  %conv941.i1023 = zext i32 %xor940.i1022 to i64
  %add942.i1024 = add nsw i64 %add938.i1020, %conv941.i1023
  %1504 = load i32, i32* %A.i51, align 4
  %conv943.i1025 = zext i32 %1504 to i64
  %add944.i1026 = add nsw i64 %conv943.i1025, %add942.i1024
  %conv945.i1027 = trunc i64 %add944.i1026 to i32
  store i32 %conv945.i1027, i32* %A.i51, align 4
  %1505 = load i32, i32* %A.i51, align 4
  %shl946.i1028 = shl i32 %1505, 4
  %1506 = load i32, i32* %A.i51, align 4
  %shr947.i1029 = lshr i32 %1506, 28
  %or948.i1030 = or i32 %shl946.i1028, %shr947.i1029
  store i32 %or948.i1030, i32* %A.i51, align 4
  %1507 = load i32, i32* %B.i52, align 4
  %1508 = load i32, i32* %A.i51, align 4
  %add949.i1031 = add i32 %1508, %1507
  store i32 %add949.i1031, i32* %A.i51, align 4
  %1509 = load i32, i32* %XX12.i68, align 4
  %conv950.i1032 = zext i32 %1509 to i64
  %add951.i1033 = add nsw i64 %conv950.i1032, 3873151461
  %1510 = load i32, i32* %A.i51, align 4
  %1511 = load i32, i32* %B.i52, align 4
  %xor952.i1034 = xor i32 %1510, %1511
  %1512 = load i32, i32* %C.i53, align 4
  %xor953.i1035 = xor i32 %xor952.i1034, %1512
  %conv954.i1036 = zext i32 %xor953.i1035 to i64
  %add955.i1037 = add nsw i64 %add951.i1033, %conv954.i1036
  %1513 = load i32, i32* %D.i54, align 4
  %conv956.i1038 = zext i32 %1513 to i64
  %add957.i1039 = add nsw i64 %conv956.i1038, %add955.i1037
  %conv958.i1040 = trunc i64 %add957.i1039 to i32
  store i32 %conv958.i1040, i32* %D.i54, align 4
  %1514 = load i32, i32* %D.i54, align 4
  %shl959.i1041 = shl i32 %1514, 11
  %1515 = load i32, i32* %D.i54, align 4
  %shr960.i1042 = lshr i32 %1515, 21
  %or961.i1043 = or i32 %shl959.i1041, %shr960.i1042
  store i32 %or961.i1043, i32* %D.i54, align 4
  %1516 = load i32, i32* %A.i51, align 4
  %1517 = load i32, i32* %D.i54, align 4
  %add962.i1044 = add i32 %1517, %1516
  store i32 %add962.i1044, i32* %D.i54, align 4
  %1518 = load i32, i32* %XX15.i71, align 4
  %conv963.i1045 = zext i32 %1518 to i64
  %add964.i1046 = add nsw i64 %conv963.i1045, 530742520
  %1519 = load i32, i32* %D.i54, align 4
  %1520 = load i32, i32* %A.i51, align 4
  %xor965.i1047 = xor i32 %1519, %1520
  %1521 = load i32, i32* %B.i52, align 4
  %xor966.i1048 = xor i32 %xor965.i1047, %1521
  %conv967.i1049 = zext i32 %xor966.i1048 to i64
  %add968.i1050 = add nsw i64 %add964.i1046, %conv967.i1049
  %1522 = load i32, i32* %C.i53, align 4
  %conv969.i1051 = zext i32 %1522 to i64
  %add970.i1052 = add nsw i64 %conv969.i1051, %add968.i1050
  %conv971.i1053 = trunc i64 %add970.i1052 to i32
  store i32 %conv971.i1053, i32* %C.i53, align 4
  %1523 = load i32, i32* %C.i53, align 4
  %shl972.i1054 = shl i32 %1523, 16
  %1524 = load i32, i32* %C.i53, align 4
  %shr973.i1055 = lshr i32 %1524, 16
  %or974.i1056 = or i32 %shl972.i1054, %shr973.i1055
  store i32 %or974.i1056, i32* %C.i53, align 4
  %1525 = load i32, i32* %D.i54, align 4
  %1526 = load i32, i32* %C.i53, align 4
  %add975.i1057 = add i32 %1526, %1525
  store i32 %add975.i1057, i32* %C.i53, align 4
  %1527 = load i32, i32* %XX2.i58, align 4
  %conv976.i1058 = zext i32 %1527 to i64
  %add977.i1059 = add nsw i64 %conv976.i1058, 3299628645
  %1528 = load i32, i32* %C.i53, align 4
  %1529 = load i32, i32* %D.i54, align 4
  %xor978.i1060 = xor i32 %1528, %1529
  %1530 = load i32, i32* %A.i51, align 4
  %xor979.i1061 = xor i32 %xor978.i1060, %1530
  %conv980.i1062 = zext i32 %xor979.i1061 to i64
  %add981.i1063 = add nsw i64 %add977.i1059, %conv980.i1062
  %1531 = load i32, i32* %B.i52, align 4
  %conv982.i1064 = zext i32 %1531 to i64
  %add983.i1065 = add nsw i64 %conv982.i1064, %add981.i1063
  %conv984.i1066 = trunc i64 %add983.i1065 to i32
  store i32 %conv984.i1066, i32* %B.i52, align 4
  %1532 = load i32, i32* %B.i52, align 4
  %shl985.i1067 = shl i32 %1532, 23
  %1533 = load i32, i32* %B.i52, align 4
  %shr986.i1068 = lshr i32 %1533, 9
  %or987.i1069 = or i32 %shl985.i1067, %shr986.i1068
  store i32 %or987.i1069, i32* %B.i52, align 4
  %1534 = load i32, i32* %C.i53, align 4
  %1535 = load i32, i32* %B.i52, align 4
  %add988.i1070 = add i32 %1535, %1534
  store i32 %add988.i1070, i32* %B.i52, align 4
  %1536 = load i32, i32* %XX0.i56, align 4
  %conv989.i1071 = zext i32 %1536 to i64
  %add990.i1072 = add nsw i64 %conv989.i1071, 4096336452
  %1537 = load i32, i32* %D.i54, align 4
  %neg.i1073 = xor i32 %1537, -1
  %1538 = load i32, i32* %B.i52, align 4
  %or991.i1074 = or i32 %neg.i1073, %1538
  %1539 = load i32, i32* %C.i53, align 4
  %xor992.i1075 = xor i32 %or991.i1074, %1539
  %conv993.i1076 = zext i32 %xor992.i1075 to i64
  %add994.i1077 = add nsw i64 %add990.i1072, %conv993.i1076
  %1540 = load i32, i32* %A.i51, align 4
  %conv995.i1078 = zext i32 %1540 to i64
  %add996.i1079 = add nsw i64 %conv995.i1078, %add994.i1077
  %conv997.i1080 = trunc i64 %add996.i1079 to i32
  store i32 %conv997.i1080, i32* %A.i51, align 4
  %1541 = load i32, i32* %A.i51, align 4
  %shl998.i1081 = shl i32 %1541, 6
  %1542 = load i32, i32* %A.i51, align 4
  %shr999.i1082 = lshr i32 %1542, 26
  %or1000.i1083 = or i32 %shl998.i1081, %shr999.i1082
  store i32 %or1000.i1083, i32* %A.i51, align 4
  %1543 = load i32, i32* %B.i52, align 4
  %1544 = load i32, i32* %A.i51, align 4
  %add1001.i1084 = add i32 %1544, %1543
  store i32 %add1001.i1084, i32* %A.i51, align 4
  %1545 = load i32, i32* %XX7.i63, align 4
  %conv1002.i1085 = zext i32 %1545 to i64
  %add1003.i1086 = add nsw i64 %conv1002.i1085, 1126891415
  %1546 = load i32, i32* %C.i53, align 4
  %neg1004.i1087 = xor i32 %1546, -1
  %1547 = load i32, i32* %A.i51, align 4
  %or1005.i1088 = or i32 %neg1004.i1087, %1547
  %1548 = load i32, i32* %B.i52, align 4
  %xor1006.i1089 = xor i32 %or1005.i1088, %1548
  %conv1007.i1090 = zext i32 %xor1006.i1089 to i64
  %add1008.i1091 = add nsw i64 %add1003.i1086, %conv1007.i1090
  %1549 = load i32, i32* %D.i54, align 4
  %conv1009.i1092 = zext i32 %1549 to i64
  %add1010.i1093 = add nsw i64 %conv1009.i1092, %add1008.i1091
  %conv1011.i1094 = trunc i64 %add1010.i1093 to i32
  store i32 %conv1011.i1094, i32* %D.i54, align 4
  %1550 = load i32, i32* %D.i54, align 4
  %shl1012.i1095 = shl i32 %1550, 10
  %1551 = load i32, i32* %D.i54, align 4
  %shr1013.i1096 = lshr i32 %1551, 22
  %or1014.i1097 = or i32 %shl1012.i1095, %shr1013.i1096
  store i32 %or1014.i1097, i32* %D.i54, align 4
  %1552 = load i32, i32* %A.i51, align 4
  %1553 = load i32, i32* %D.i54, align 4
  %add1015.i1098 = add i32 %1553, %1552
  store i32 %add1015.i1098, i32* %D.i54, align 4
  %1554 = load i32, i32* %XX14.i70, align 4
  %conv1016.i1099 = zext i32 %1554 to i64
  %add1017.i1100 = add nsw i64 %conv1016.i1099, 2878612391
  %1555 = load i32, i32* %B.i52, align 4
  %neg1018.i1101 = xor i32 %1555, -1
  %1556 = load i32, i32* %D.i54, align 4
  %or1019.i1102 = or i32 %neg1018.i1101, %1556
  %1557 = load i32, i32* %A.i51, align 4
  %xor1020.i1103 = xor i32 %or1019.i1102, %1557
  %conv1021.i1104 = zext i32 %xor1020.i1103 to i64
  %add1022.i1105 = add nsw i64 %add1017.i1100, %conv1021.i1104
  %1558 = load i32, i32* %C.i53, align 4
  %conv1023.i1106 = zext i32 %1558 to i64
  %add1024.i1107 = add nsw i64 %conv1023.i1106, %add1022.i1105
  %conv1025.i1108 = trunc i64 %add1024.i1107 to i32
  store i32 %conv1025.i1108, i32* %C.i53, align 4
  %1559 = load i32, i32* %C.i53, align 4
  %shl1026.i1109 = shl i32 %1559, 15
  %1560 = load i32, i32* %C.i53, align 4
  %shr1027.i1110 = lshr i32 %1560, 17
  %or1028.i1111 = or i32 %shl1026.i1109, %shr1027.i1110
  store i32 %or1028.i1111, i32* %C.i53, align 4
  %1561 = load i32, i32* %D.i54, align 4
  %1562 = load i32, i32* %C.i53, align 4
  %add1029.i1112 = add i32 %1562, %1561
  store i32 %add1029.i1112, i32* %C.i53, align 4
  %1563 = load i32, i32* %XX5.i61, align 4
  %conv1030.i1113 = zext i32 %1563 to i64
  %add1031.i1114 = add nsw i64 %conv1030.i1113, 4237533241
  %1564 = load i32, i32* %A.i51, align 4
  %neg1032.i1115 = xor i32 %1564, -1
  %1565 = load i32, i32* %C.i53, align 4
  %or1033.i1116 = or i32 %neg1032.i1115, %1565
  %1566 = load i32, i32* %D.i54, align 4
  %xor1034.i1117 = xor i32 %or1033.i1116, %1566
  %conv1035.i1118 = zext i32 %xor1034.i1117 to i64
  %add1036.i1119 = add nsw i64 %add1031.i1114, %conv1035.i1118
  %1567 = load i32, i32* %B.i52, align 4
  %conv1037.i1120 = zext i32 %1567 to i64
  %add1038.i1121 = add nsw i64 %conv1037.i1120, %add1036.i1119
  %conv1039.i1122 = trunc i64 %add1038.i1121 to i32
  store i32 %conv1039.i1122, i32* %B.i52, align 4
  %1568 = load i32, i32* %B.i52, align 4
  %shl1040.i1123 = shl i32 %1568, 21
  %1569 = load i32, i32* %B.i52, align 4
  %shr1041.i1124 = lshr i32 %1569, 11
  %or1042.i1125 = or i32 %shl1040.i1123, %shr1041.i1124
  store i32 %or1042.i1125, i32* %B.i52, align 4
  %1570 = load i32, i32* %C.i53, align 4
  %1571 = load i32, i32* %B.i52, align 4
  %add1043.i1126 = add i32 %1571, %1570
  store i32 %add1043.i1126, i32* %B.i52, align 4
  %1572 = load i32, i32* %XX12.i68, align 4
  %conv1044.i1127 = zext i32 %1572 to i64
  %add1045.i1128 = add nsw i64 %conv1044.i1127, 1700485571
  %1573 = load i32, i32* %D.i54, align 4
  %neg1046.i1129 = xor i32 %1573, -1
  %1574 = load i32, i32* %B.i52, align 4
  %or1047.i1130 = or i32 %neg1046.i1129, %1574
  %1575 = load i32, i32* %C.i53, align 4
  %xor1048.i1131 = xor i32 %or1047.i1130, %1575
  %conv1049.i1132 = zext i32 %xor1048.i1131 to i64
  %add1050.i1133 = add nsw i64 %add1045.i1128, %conv1049.i1132
  %1576 = load i32, i32* %A.i51, align 4
  %conv1051.i1134 = zext i32 %1576 to i64
  %add1052.i1135 = add nsw i64 %conv1051.i1134, %add1050.i1133
  %conv1053.i1136 = trunc i64 %add1052.i1135 to i32
  store i32 %conv1053.i1136, i32* %A.i51, align 4
  %1577 = load i32, i32* %A.i51, align 4
  %shl1054.i1137 = shl i32 %1577, 6
  %1578 = load i32, i32* %A.i51, align 4
  %shr1055.i1138 = lshr i32 %1578, 26
  %or1056.i1139 = or i32 %shl1054.i1137, %shr1055.i1138
  store i32 %or1056.i1139, i32* %A.i51, align 4
  %1579 = load i32, i32* %B.i52, align 4
  %1580 = load i32, i32* %A.i51, align 4
  %add1057.i1140 = add i32 %1580, %1579
  store i32 %add1057.i1140, i32* %A.i51, align 4
  %1581 = load i32, i32* %XX3.i59, align 4
  %conv1058.i1141 = zext i32 %1581 to i64
  %add1059.i1142 = add nsw i64 %conv1058.i1141, 2399980690
  %1582 = load i32, i32* %C.i53, align 4
  %neg1060.i1143 = xor i32 %1582, -1
  %1583 = load i32, i32* %A.i51, align 4
  %or1061.i1144 = or i32 %neg1060.i1143, %1583
  %1584 = load i32, i32* %B.i52, align 4
  %xor1062.i1145 = xor i32 %or1061.i1144, %1584
  %conv1063.i1146 = zext i32 %xor1062.i1145 to i64
  %add1064.i1147 = add nsw i64 %add1059.i1142, %conv1063.i1146
  %1585 = load i32, i32* %D.i54, align 4
  %conv1065.i1148 = zext i32 %1585 to i64
  %add1066.i1149 = add nsw i64 %conv1065.i1148, %add1064.i1147
  %conv1067.i1150 = trunc i64 %add1066.i1149 to i32
  store i32 %conv1067.i1150, i32* %D.i54, align 4
  %1586 = load i32, i32* %D.i54, align 4
  %shl1068.i1151 = shl i32 %1586, 10
  %1587 = load i32, i32* %D.i54, align 4
  %shr1069.i1152 = lshr i32 %1587, 22
  %or1070.i1153 = or i32 %shl1068.i1151, %shr1069.i1152
  store i32 %or1070.i1153, i32* %D.i54, align 4
  %1588 = load i32, i32* %A.i51, align 4
  %1589 = load i32, i32* %D.i54, align 4
  %add1071.i1154 = add i32 %1589, %1588
  store i32 %add1071.i1154, i32* %D.i54, align 4
  %1590 = load i32, i32* %XX10.i66, align 4
  %conv1072.i1155 = zext i32 %1590 to i64
  %add1073.i1156 = add nsw i64 %conv1072.i1155, 4293915773
  %1591 = load i32, i32* %B.i52, align 4
  %neg1074.i1157 = xor i32 %1591, -1
  %1592 = load i32, i32* %D.i54, align 4
  %or1075.i1158 = or i32 %neg1074.i1157, %1592
  %1593 = load i32, i32* %A.i51, align 4
  %xor1076.i1159 = xor i32 %or1075.i1158, %1593
  %conv1077.i1160 = zext i32 %xor1076.i1159 to i64
  %add1078.i1161 = add nsw i64 %add1073.i1156, %conv1077.i1160
  %1594 = load i32, i32* %C.i53, align 4
  %conv1079.i1162 = zext i32 %1594 to i64
  %add1080.i1163 = add nsw i64 %conv1079.i1162, %add1078.i1161
  %conv1081.i1164 = trunc i64 %add1080.i1163 to i32
  store i32 %conv1081.i1164, i32* %C.i53, align 4
  %1595 = load i32, i32* %C.i53, align 4
  %shl1082.i1165 = shl i32 %1595, 15
  %1596 = load i32, i32* %C.i53, align 4
  %shr1083.i1166 = lshr i32 %1596, 17
  %or1084.i1167 = or i32 %shl1082.i1165, %shr1083.i1166
  store i32 %or1084.i1167, i32* %C.i53, align 4
  %1597 = load i32, i32* %D.i54, align 4
  %1598 = load i32, i32* %C.i53, align 4
  %add1085.i1168 = add i32 %1598, %1597
  store i32 %add1085.i1168, i32* %C.i53, align 4
  %1599 = load i32, i32* %XX1.i57, align 4
  %conv1086.i1169 = zext i32 %1599 to i64
  %add1087.i1170 = add nsw i64 %conv1086.i1169, 2240044497
  %1600 = load i32, i32* %A.i51, align 4
  %neg1088.i1171 = xor i32 %1600, -1
  %1601 = load i32, i32* %C.i53, align 4
  %or1089.i1172 = or i32 %neg1088.i1171, %1601
  %1602 = load i32, i32* %D.i54, align 4
  %xor1090.i1173 = xor i32 %or1089.i1172, %1602
  %conv1091.i1174 = zext i32 %xor1090.i1173 to i64
  %add1092.i1175 = add nsw i64 %add1087.i1170, %conv1091.i1174
  %1603 = load i32, i32* %B.i52, align 4
  %conv1093.i1176 = zext i32 %1603 to i64
  %add1094.i1177 = add nsw i64 %conv1093.i1176, %add1092.i1175
  %conv1095.i1178 = trunc i64 %add1094.i1177 to i32
  store i32 %conv1095.i1178, i32* %B.i52, align 4
  %1604 = load i32, i32* %B.i52, align 4
  %shl1096.i1179 = shl i32 %1604, 21
  %1605 = load i32, i32* %B.i52, align 4
  %shr1097.i1180 = lshr i32 %1605, 11
  %or1098.i1181 = or i32 %shl1096.i1179, %shr1097.i1180
  store i32 %or1098.i1181, i32* %B.i52, align 4
  %1606 = load i32, i32* %C.i53, align 4
  %1607 = load i32, i32* %B.i52, align 4
  %add1099.i1182 = add i32 %1607, %1606
  store i32 %add1099.i1182, i32* %B.i52, align 4
  %1608 = load i32, i32* %XX8.i64, align 4
  %conv1100.i1183 = zext i32 %1608 to i64
  %add1101.i1184 = add nsw i64 %conv1100.i1183, 1873313359
  %1609 = load i32, i32* %D.i54, align 4
  %neg1102.i1185 = xor i32 %1609, -1
  %1610 = load i32, i32* %B.i52, align 4
  %or1103.i1186 = or i32 %neg1102.i1185, %1610
  %1611 = load i32, i32* %C.i53, align 4
  %xor1104.i1187 = xor i32 %or1103.i1186, %1611
  %conv1105.i1188 = zext i32 %xor1104.i1187 to i64
  %add1106.i1189 = add nsw i64 %add1101.i1184, %conv1105.i1188
  %1612 = load i32, i32* %A.i51, align 4
  %conv1107.i1190 = zext i32 %1612 to i64
  %add1108.i1191 = add nsw i64 %conv1107.i1190, %add1106.i1189
  %conv1109.i1192 = trunc i64 %add1108.i1191 to i32
  store i32 %conv1109.i1192, i32* %A.i51, align 4
  %1613 = load i32, i32* %A.i51, align 4
  %shl1110.i1193 = shl i32 %1613, 6
  %1614 = load i32, i32* %A.i51, align 4
  %shr1111.i1194 = lshr i32 %1614, 26
  %or1112.i1195 = or i32 %shl1110.i1193, %shr1111.i1194
  store i32 %or1112.i1195, i32* %A.i51, align 4
  %1615 = load i32, i32* %B.i52, align 4
  %1616 = load i32, i32* %A.i51, align 4
  %add1113.i1196 = add i32 %1616, %1615
  store i32 %add1113.i1196, i32* %A.i51, align 4
  %1617 = load i32, i32* %XX15.i71, align 4
  %conv1114.i1197 = zext i32 %1617 to i64
  %add1115.i1198 = add nsw i64 %conv1114.i1197, 4264355552
  %1618 = load i32, i32* %C.i53, align 4
  %neg1116.i1199 = xor i32 %1618, -1
  %1619 = load i32, i32* %A.i51, align 4
  %or1117.i1200 = or i32 %neg1116.i1199, %1619
  %1620 = load i32, i32* %B.i52, align 4
  %xor1118.i1201 = xor i32 %or1117.i1200, %1620
  %conv1119.i1202 = zext i32 %xor1118.i1201 to i64
  %add1120.i1203 = add nsw i64 %add1115.i1198, %conv1119.i1202
  %1621 = load i32, i32* %D.i54, align 4
  %conv1121.i1204 = zext i32 %1621 to i64
  %add1122.i1205 = add nsw i64 %conv1121.i1204, %add1120.i1203
  %conv1123.i1206 = trunc i64 %add1122.i1205 to i32
  store i32 %conv1123.i1206, i32* %D.i54, align 4
  %1622 = load i32, i32* %D.i54, align 4
  %shl1124.i1207 = shl i32 %1622, 10
  %1623 = load i32, i32* %D.i54, align 4
  %shr1125.i1208 = lshr i32 %1623, 22
  %or1126.i1209 = or i32 %shl1124.i1207, %shr1125.i1208
  store i32 %or1126.i1209, i32* %D.i54, align 4
  %1624 = load i32, i32* %A.i51, align 4
  %1625 = load i32, i32* %D.i54, align 4
  %add1127.i1210 = add i32 %1625, %1624
  store i32 %add1127.i1210, i32* %D.i54, align 4
  %1626 = load i32, i32* %XX6.i62, align 4
  %conv1128.i1211 = zext i32 %1626 to i64
  %add1129.i1212 = add nsw i64 %conv1128.i1211, 2734768916
  %1627 = load i32, i32* %B.i52, align 4
  %neg1130.i1213 = xor i32 %1627, -1
  %1628 = load i32, i32* %D.i54, align 4
  %or1131.i1214 = or i32 %neg1130.i1213, %1628
  %1629 = load i32, i32* %A.i51, align 4
  %xor1132.i1215 = xor i32 %or1131.i1214, %1629
  %conv1133.i1216 = zext i32 %xor1132.i1215 to i64
  %add1134.i1217 = add nsw i64 %add1129.i1212, %conv1133.i1216
  %1630 = load i32, i32* %C.i53, align 4
  %conv1135.i1218 = zext i32 %1630 to i64
  %add1136.i1219 = add nsw i64 %conv1135.i1218, %add1134.i1217
  %conv1137.i1220 = trunc i64 %add1136.i1219 to i32
  store i32 %conv1137.i1220, i32* %C.i53, align 4
  %1631 = load i32, i32* %C.i53, align 4
  %shl1138.i1221 = shl i32 %1631, 15
  %1632 = load i32, i32* %C.i53, align 4
  %shr1139.i1222 = lshr i32 %1632, 17
  %or1140.i1223 = or i32 %shl1138.i1221, %shr1139.i1222
  store i32 %or1140.i1223, i32* %C.i53, align 4
  %1633 = load i32, i32* %D.i54, align 4
  %1634 = load i32, i32* %C.i53, align 4
  %add1141.i1224 = add i32 %1634, %1633
  store i32 %add1141.i1224, i32* %C.i53, align 4
  %1635 = load i32, i32* %XX13.i69, align 4
  %conv1142.i1225 = zext i32 %1635 to i64
  %add1143.i1226 = add nsw i64 %conv1142.i1225, 1309151649
  %1636 = load i32, i32* %A.i51, align 4
  %neg1144.i1227 = xor i32 %1636, -1
  %1637 = load i32, i32* %C.i53, align 4
  %or1145.i1228 = or i32 %neg1144.i1227, %1637
  %1638 = load i32, i32* %D.i54, align 4
  %xor1146.i1229 = xor i32 %or1145.i1228, %1638
  %conv1147.i1230 = zext i32 %xor1146.i1229 to i64
  %add1148.i1231 = add nsw i64 %add1143.i1226, %conv1147.i1230
  %1639 = load i32, i32* %B.i52, align 4
  %conv1149.i1232 = zext i32 %1639 to i64
  %add1150.i1233 = add nsw i64 %conv1149.i1232, %add1148.i1231
  %conv1151.i1234 = trunc i64 %add1150.i1233 to i32
  store i32 %conv1151.i1234, i32* %B.i52, align 4
  %1640 = load i32, i32* %B.i52, align 4
  %shl1152.i1235 = shl i32 %1640, 21
  %1641 = load i32, i32* %B.i52, align 4
  %shr1153.i1236 = lshr i32 %1641, 11
  %or1154.i1237 = or i32 %shl1152.i1235, %shr1153.i1236
  store i32 %or1154.i1237, i32* %B.i52, align 4
  %1642 = load i32, i32* %C.i53, align 4
  %1643 = load i32, i32* %B.i52, align 4
  %add1155.i1238 = add i32 %1643, %1642
  store i32 %add1155.i1238, i32* %B.i52, align 4
  %1644 = load i32, i32* %XX4.i60, align 4
  %conv1156.i1239 = zext i32 %1644 to i64
  %add1157.i1240 = add nsw i64 %conv1156.i1239, 4149444226
  %1645 = load i32, i32* %D.i54, align 4
  %neg1158.i1241 = xor i32 %1645, -1
  %1646 = load i32, i32* %B.i52, align 4
  %or1159.i1242 = or i32 %neg1158.i1241, %1646
  %1647 = load i32, i32* %C.i53, align 4
  %xor1160.i1243 = xor i32 %or1159.i1242, %1647
  %conv1161.i1244 = zext i32 %xor1160.i1243 to i64
  %add1162.i1245 = add nsw i64 %add1157.i1240, %conv1161.i1244
  %1648 = load i32, i32* %A.i51, align 4
  %conv1163.i1246 = zext i32 %1648 to i64
  %add1164.i1247 = add nsw i64 %conv1163.i1246, %add1162.i1245
  %conv1165.i1248 = trunc i64 %add1164.i1247 to i32
  store i32 %conv1165.i1248, i32* %A.i51, align 4
  %1649 = load i32, i32* %A.i51, align 4
  %shl1166.i1249 = shl i32 %1649, 6
  %1650 = load i32, i32* %A.i51, align 4
  %shr1167.i1250 = lshr i32 %1650, 26
  %or1168.i1251 = or i32 %shl1166.i1249, %shr1167.i1250
  store i32 %or1168.i1251, i32* %A.i51, align 4
  %1651 = load i32, i32* %B.i52, align 4
  %1652 = load i32, i32* %A.i51, align 4
  %add1169.i1252 = add i32 %1652, %1651
  store i32 %add1169.i1252, i32* %A.i51, align 4
  %1653 = load i32, i32* %XX11.i67, align 4
  %conv1170.i1253 = zext i32 %1653 to i64
  %add1171.i1254 = add nsw i64 %conv1170.i1253, 3174756917
  %1654 = load i32, i32* %C.i53, align 4
  %neg1172.i1255 = xor i32 %1654, -1
  %1655 = load i32, i32* %A.i51, align 4
  %or1173.i1256 = or i32 %neg1172.i1255, %1655
  %1656 = load i32, i32* %B.i52, align 4
  %xor1174.i1257 = xor i32 %or1173.i1256, %1656
  %conv1175.i1258 = zext i32 %xor1174.i1257 to i64
  %add1176.i1259 = add nsw i64 %add1171.i1254, %conv1175.i1258
  %1657 = load i32, i32* %D.i54, align 4
  %conv1177.i1260 = zext i32 %1657 to i64
  %add1178.i1261 = add nsw i64 %conv1177.i1260, %add1176.i1259
  %conv1179.i1262 = trunc i64 %add1178.i1261 to i32
  store i32 %conv1179.i1262, i32* %D.i54, align 4
  %1658 = load i32, i32* %D.i54, align 4
  %shl1180.i1263 = shl i32 %1658, 10
  %1659 = load i32, i32* %D.i54, align 4
  %shr1181.i1264 = lshr i32 %1659, 22
  %or1182.i1265 = or i32 %shl1180.i1263, %shr1181.i1264
  store i32 %or1182.i1265, i32* %D.i54, align 4
  %1660 = load i32, i32* %A.i51, align 4
  %1661 = load i32, i32* %D.i54, align 4
  %add1183.i1266 = add i32 %1661, %1660
  store i32 %add1183.i1266, i32* %D.i54, align 4
  %1662 = load i32, i32* %XX2.i58, align 4
  %conv1184.i1267 = zext i32 %1662 to i64
  %add1185.i1268 = add nsw i64 %conv1184.i1267, 718787259
  %1663 = load i32, i32* %B.i52, align 4
  %neg1186.i1269 = xor i32 %1663, -1
  %1664 = load i32, i32* %D.i54, align 4
  %or1187.i1270 = or i32 %neg1186.i1269, %1664
  %1665 = load i32, i32* %A.i51, align 4
  %xor1188.i1271 = xor i32 %or1187.i1270, %1665
  %conv1189.i1272 = zext i32 %xor1188.i1271 to i64
  %add1190.i1273 = add nsw i64 %add1185.i1268, %conv1189.i1272
  %1666 = load i32, i32* %C.i53, align 4
  %conv1191.i1274 = zext i32 %1666 to i64
  %add1192.i1275 = add nsw i64 %conv1191.i1274, %add1190.i1273
  %conv1193.i1276 = trunc i64 %add1192.i1275 to i32
  store i32 %conv1193.i1276, i32* %C.i53, align 4
  %1667 = load i32, i32* %C.i53, align 4
  %shl1194.i1277 = shl i32 %1667, 15
  %1668 = load i32, i32* %C.i53, align 4
  %shr1195.i1278 = lshr i32 %1668, 17
  %or1196.i1279 = or i32 %shl1194.i1277, %shr1195.i1278
  store i32 %or1196.i1279, i32* %C.i53, align 4
  %1669 = load i32, i32* %D.i54, align 4
  %1670 = load i32, i32* %C.i53, align 4
  %add1197.i1280 = add i32 %1670, %1669
  store i32 %add1197.i1280, i32* %C.i53, align 4
  %1671 = load i32, i32* %XX9.i65, align 4
  %conv1198.i1281 = zext i32 %1671 to i64
  %add1199.i1282 = add nsw i64 %conv1198.i1281, 3951481745
  %1672 = load i32, i32* %A.i51, align 4
  %neg1200.i1283 = xor i32 %1672, -1
  %1673 = load i32, i32* %C.i53, align 4
  %or1201.i1284 = or i32 %neg1200.i1283, %1673
  %1674 = load i32, i32* %D.i54, align 4
  %xor1202.i1285 = xor i32 %or1201.i1284, %1674
  %conv1203.i1286 = zext i32 %xor1202.i1285 to i64
  %add1204.i1287 = add nsw i64 %add1199.i1282, %conv1203.i1286
  %1675 = load i32, i32* %B.i52, align 4
  %conv1205.i1288 = zext i32 %1675 to i64
  %add1206.i1289 = add nsw i64 %conv1205.i1288, %add1204.i1287
  %conv1207.i1290 = trunc i64 %add1206.i1289 to i32
  store i32 %conv1207.i1290, i32* %B.i52, align 4
  %1676 = load i32, i32* %B.i52, align 4
  %shl1208.i1291 = shl i32 %1676, 21
  %1677 = load i32, i32* %B.i52, align 4
  %shr1209.i1292 = lshr i32 %1677, 11
  %or1210.i1293 = or i32 %shl1208.i1291, %shr1209.i1292
  store i32 %or1210.i1293, i32* %B.i52, align 4
  %1678 = load i32, i32* %C.i53, align 4
  %1679 = load i32, i32* %B.i52, align 4
  %add1211.i1294 = add i32 %1679, %1678
  store i32 %add1211.i1294, i32* %B.i52, align 4
  %1680 = load i32, i32* %A.i51, align 4
  %1681 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %A1212.i1295 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1681, i32 0, i32 0
  %1682 = load i32, i32* %A1212.i1295, align 4
  %add1213.i1296 = add i32 %1682, %1680
  store i32 %add1213.i1296, i32* %A1212.i1295, align 4
  store i32 %add1213.i1296, i32* %A.i51, align 4
  %1683 = load i32, i32* %B.i52, align 4
  %1684 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %B1214.i1297 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1684, i32 0, i32 1
  %1685 = load i32, i32* %B1214.i1297, align 4
  %add1215.i1298 = add i32 %1685, %1683
  store i32 %add1215.i1298, i32* %B1214.i1297, align 4
  store i32 %add1215.i1298, i32* %B.i52, align 4
  %1686 = load i32, i32* %C.i53, align 4
  %1687 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %C1216.i1299 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1687, i32 0, i32 2
  %1688 = load i32, i32* %C1216.i1299, align 4
  %add1217.i1300 = add i32 %1688, %1686
  store i32 %add1217.i1300, i32* %C1216.i1299, align 4
  store i32 %add1217.i1300, i32* %C.i53, align 4
  %1689 = load i32, i32* %D.i54, align 4
  %1690 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i47, align 8
  %D1218.i1301 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1690, i32 0, i32 3
  %1691 = load i32, i32* %D1218.i1301, align 4
  %add1219.i1302 = add i32 %1691, %1689
  store i32 %add1219.i1302, i32* %D1218.i1301, align 4
  store i32 %add1219.i1302, i32* %D.i54, align 4
  br label %for.cond.i78

md5_block_data_order.exit1304:                    ; preds = %for.cond.i78
  %1692 = load i64, i64* %n, align 8
  %mul = mul i64 %1692, 64
  store i64 %mul, i64* %n, align 8
  %1693 = load i64, i64* %n, align 8
  %1694 = load i8*, i8** %data, align 8
  %add.ptr36 = getelementptr inbounds i8, i8* %1694, i64 %1693
  store i8* %add.ptr36, i8** %data, align 8
  %1695 = load i64, i64* %n, align 8
  %1696 = load i64, i64* %len.addr, align 8
  %sub37 = sub i64 %1696, %1695
  store i64 %sub37, i64* %len.addr, align 8
  br label %if.end38

if.end38:                                         ; preds = %md5_block_data_order.exit1304, %if.end32
  %1697 = load i64, i64* %len.addr, align 8
  %cmp39 = icmp ne i64 %1697, 0
  br i1 %cmp39, label %if.then41, label %if.end46

if.then41:                                        ; preds = %if.end38
  %1698 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %data42 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1698, i32 0, i32 6
  %arraydecay43 = getelementptr inbounds [16 x i32], [16 x i32]* %data42, i64 0, i64 0
  %1699 = bitcast i32* %arraydecay43 to i8*
  store i8* %1699, i8** %p, align 8
  %1700 = load i64, i64* %len.addr, align 8
  %conv44 = trunc i64 %1700 to i32
  %1701 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %num45 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1701, i32 0, i32 7
  store i32 %conv44, i32* %num45, align 4
  %1702 = load i8*, i8** %p, align 8
  %1703 = load i8*, i8** %data, align 8
  %1704 = load i64, i64* %len.addr, align 8
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1702, i8* align 1 %1703, i64 %1704, i1 false)
  br label %if.end46

if.end46:                                         ; preds = %if.then41, %if.end38
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %if.end46, %if.else, %if.then
  %1705 = load i32, i32* %retval, align 4
  ret i32 %1705
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @md5_block_data_order(%struct.MD5state_st* %c, i8* %data_, i64 %num) #0 {
entry:
  %c.addr = alloca %struct.MD5state_st*, align 8
  %data_.addr = alloca i8*, align 8
  %num.addr = alloca i64, align 8
  %data = alloca i8*, align 8
  %A = alloca i32, align 4
  %B = alloca i32, align 4
  %C = alloca i32, align 4
  %D = alloca i32, align 4
  %l = alloca i32, align 4
  %XX0 = alloca i32, align 4
  %XX1 = alloca i32, align 4
  %XX2 = alloca i32, align 4
  %XX3 = alloca i32, align 4
  %XX4 = alloca i32, align 4
  %XX5 = alloca i32, align 4
  %XX6 = alloca i32, align 4
  %XX7 = alloca i32, align 4
  %XX8 = alloca i32, align 4
  %XX9 = alloca i32, align 4
  %XX10 = alloca i32, align 4
  %XX11 = alloca i32, align 4
  %XX12 = alloca i32, align 4
  %XX13 = alloca i32, align 4
  %XX14 = alloca i32, align 4
  %XX15 = alloca i32, align 4
  store %struct.MD5state_st* %c, %struct.MD5state_st** %c.addr, align 8
  store i8* %data_, i8** %data_.addr, align 8
  store i64 %num, i64* %num.addr, align 8
  %0 = load i8*, i8** %data_.addr, align 8
  store i8* %0, i8** %data, align 8
  %1 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %A1 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1, i32 0, i32 0
  %2 = load i32, i32* %A1, align 4
  store i32 %2, i32* %A, align 4
  %3 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %B2 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %3, i32 0, i32 1
  %4 = load i32, i32* %B2, align 4
  store i32 %4, i32* %B, align 4
  %5 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %C3 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %5, i32 0, i32 2
  %6 = load i32, i32* %C3, align 4
  store i32 %6, i32* %C, align 4
  %7 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %D4 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %7, i32 0, i32 3
  %8 = load i32, i32* %D4, align 4
  store i32 %8, i32* %D, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %9 = load i64, i64* %num.addr, align 8
  %dec = add i64 %9, -1
  store i64 %dec, i64* %num.addr, align 8
  %tobool = icmp ne i64 %9, 0
  br i1 %tobool, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %10 = load i8*, i8** %data, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr, i8** %data, align 8
  %11 = load i8, i8* %10, align 1
  %conv = zext i8 %11 to i64
  %conv5 = trunc i64 %conv to i32
  store i32 %conv5, i32* %l, align 4
  %12 = load i8*, i8** %data, align 8
  %incdec.ptr6 = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr6, i8** %data, align 8
  %13 = load i8, i8* %12, align 1
  %conv7 = zext i8 %13 to i64
  %shl = shl i64 %conv7, 8
  %14 = load i32, i32* %l, align 4
  %conv8 = zext i32 %14 to i64
  %or = or i64 %conv8, %shl
  %conv9 = trunc i64 %or to i32
  store i32 %conv9, i32* %l, align 4
  %15 = load i8*, i8** %data, align 8
  %incdec.ptr10 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr10, i8** %data, align 8
  %16 = load i8, i8* %15, align 1
  %conv11 = zext i8 %16 to i64
  %shl12 = shl i64 %conv11, 16
  %17 = load i32, i32* %l, align 4
  %conv13 = zext i32 %17 to i64
  %or14 = or i64 %conv13, %shl12
  %conv15 = trunc i64 %or14 to i32
  store i32 %conv15, i32* %l, align 4
  %18 = load i8*, i8** %data, align 8
  %incdec.ptr16 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr16, i8** %data, align 8
  %19 = load i8, i8* %18, align 1
  %conv17 = zext i8 %19 to i64
  %shl18 = shl i64 %conv17, 24
  %20 = load i32, i32* %l, align 4
  %conv19 = zext i32 %20 to i64
  %or20 = or i64 %conv19, %shl18
  %conv21 = trunc i64 %or20 to i32
  store i32 %conv21, i32* %l, align 4
  %21 = load i32, i32* %l, align 4
  store i32 %21, i32* %XX0, align 4
  %22 = load i8*, i8** %data, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %incdec.ptr22, i8** %data, align 8
  %23 = load i8, i8* %22, align 1
  %conv23 = zext i8 %23 to i64
  %conv24 = trunc i64 %conv23 to i32
  store i32 %conv24, i32* %l, align 4
  %24 = load i8*, i8** %data, align 8
  %incdec.ptr25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr25, i8** %data, align 8
  %25 = load i8, i8* %24, align 1
  %conv26 = zext i8 %25 to i64
  %shl27 = shl i64 %conv26, 8
  %26 = load i32, i32* %l, align 4
  %conv28 = zext i32 %26 to i64
  %or29 = or i64 %conv28, %shl27
  %conv30 = trunc i64 %or29 to i32
  store i32 %conv30, i32* %l, align 4
  %27 = load i8*, i8** %data, align 8
  %incdec.ptr31 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr31, i8** %data, align 8
  %28 = load i8, i8* %27, align 1
  %conv32 = zext i8 %28 to i64
  %shl33 = shl i64 %conv32, 16
  %29 = load i32, i32* %l, align 4
  %conv34 = zext i32 %29 to i64
  %or35 = or i64 %conv34, %shl33
  %conv36 = trunc i64 %or35 to i32
  store i32 %conv36, i32* %l, align 4
  %30 = load i8*, i8** %data, align 8
  %incdec.ptr37 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr37, i8** %data, align 8
  %31 = load i8, i8* %30, align 1
  %conv38 = zext i8 %31 to i64
  %shl39 = shl i64 %conv38, 24
  %32 = load i32, i32* %l, align 4
  %conv40 = zext i32 %32 to i64
  %or41 = or i64 %conv40, %shl39
  %conv42 = trunc i64 %or41 to i32
  store i32 %conv42, i32* %l, align 4
  %33 = load i32, i32* %l, align 4
  store i32 %33, i32* %XX1, align 4
  %34 = load i32, i32* %XX0, align 4
  %conv43 = zext i32 %34 to i64
  %add = add nsw i64 %conv43, 3614090360
  %35 = load i32, i32* %C, align 4
  %36 = load i32, i32* %D, align 4
  %xor = xor i32 %35, %36
  %37 = load i32, i32* %B, align 4
  %and = and i32 %xor, %37
  %38 = load i32, i32* %D, align 4
  %xor44 = xor i32 %and, %38
  %conv45 = zext i32 %xor44 to i64
  %add46 = add nsw i64 %add, %conv45
  %39 = load i32, i32* %A, align 4
  %conv47 = zext i32 %39 to i64
  %add48 = add nsw i64 %conv47, %add46
  %conv49 = trunc i64 %add48 to i32
  store i32 %conv49, i32* %A, align 4
  %40 = load i32, i32* %A, align 4
  %shl50 = shl i32 %40, 7
  %41 = load i32, i32* %A, align 4
  %shr = lshr i32 %41, 25
  %or51 = or i32 %shl50, %shr
  store i32 %or51, i32* %A, align 4
  %42 = load i32, i32* %B, align 4
  %43 = load i32, i32* %A, align 4
  %add52 = add i32 %43, %42
  store i32 %add52, i32* %A, align 4
  %44 = load i8*, i8** %data, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %incdec.ptr53, i8** %data, align 8
  %45 = load i8, i8* %44, align 1
  %conv54 = zext i8 %45 to i64
  %conv55 = trunc i64 %conv54 to i32
  store i32 %conv55, i32* %l, align 4
  %46 = load i8*, i8** %data, align 8
  %incdec.ptr56 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr56, i8** %data, align 8
  %47 = load i8, i8* %46, align 1
  %conv57 = zext i8 %47 to i64
  %shl58 = shl i64 %conv57, 8
  %48 = load i32, i32* %l, align 4
  %conv59 = zext i32 %48 to i64
  %or60 = or i64 %conv59, %shl58
  %conv61 = trunc i64 %or60 to i32
  store i32 %conv61, i32* %l, align 4
  %49 = load i8*, i8** %data, align 8
  %incdec.ptr62 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %incdec.ptr62, i8** %data, align 8
  %50 = load i8, i8* %49, align 1
  %conv63 = zext i8 %50 to i64
  %shl64 = shl i64 %conv63, 16
  %51 = load i32, i32* %l, align 4
  %conv65 = zext i32 %51 to i64
  %or66 = or i64 %conv65, %shl64
  %conv67 = trunc i64 %or66 to i32
  store i32 %conv67, i32* %l, align 4
  %52 = load i8*, i8** %data, align 8
  %incdec.ptr68 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %incdec.ptr68, i8** %data, align 8
  %53 = load i8, i8* %52, align 1
  %conv69 = zext i8 %53 to i64
  %shl70 = shl i64 %conv69, 24
  %54 = load i32, i32* %l, align 4
  %conv71 = zext i32 %54 to i64
  %or72 = or i64 %conv71, %shl70
  %conv73 = trunc i64 %or72 to i32
  store i32 %conv73, i32* %l, align 4
  %55 = load i32, i32* %l, align 4
  store i32 %55, i32* %XX2, align 4
  %56 = load i32, i32* %XX1, align 4
  %conv74 = zext i32 %56 to i64
  %add75 = add nsw i64 %conv74, 3905402710
  %57 = load i32, i32* %B, align 4
  %58 = load i32, i32* %C, align 4
  %xor76 = xor i32 %57, %58
  %59 = load i32, i32* %A, align 4
  %and77 = and i32 %xor76, %59
  %60 = load i32, i32* %C, align 4
  %xor78 = xor i32 %and77, %60
  %conv79 = zext i32 %xor78 to i64
  %add80 = add nsw i64 %add75, %conv79
  %61 = load i32, i32* %D, align 4
  %conv81 = zext i32 %61 to i64
  %add82 = add nsw i64 %conv81, %add80
  %conv83 = trunc i64 %add82 to i32
  store i32 %conv83, i32* %D, align 4
  %62 = load i32, i32* %D, align 4
  %shl84 = shl i32 %62, 12
  %63 = load i32, i32* %D, align 4
  %shr85 = lshr i32 %63, 20
  %or86 = or i32 %shl84, %shr85
  store i32 %or86, i32* %D, align 4
  %64 = load i32, i32* %A, align 4
  %65 = load i32, i32* %D, align 4
  %add87 = add i32 %65, %64
  store i32 %add87, i32* %D, align 4
  %66 = load i8*, i8** %data, align 8
  %incdec.ptr88 = getelementptr inbounds i8, i8* %66, i32 1
  store i8* %incdec.ptr88, i8** %data, align 8
  %67 = load i8, i8* %66, align 1
  %conv89 = zext i8 %67 to i64
  %conv90 = trunc i64 %conv89 to i32
  store i32 %conv90, i32* %l, align 4
  %68 = load i8*, i8** %data, align 8
  %incdec.ptr91 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr91, i8** %data, align 8
  %69 = load i8, i8* %68, align 1
  %conv92 = zext i8 %69 to i64
  %shl93 = shl i64 %conv92, 8
  %70 = load i32, i32* %l, align 4
  %conv94 = zext i32 %70 to i64
  %or95 = or i64 %conv94, %shl93
  %conv96 = trunc i64 %or95 to i32
  store i32 %conv96, i32* %l, align 4
  %71 = load i8*, i8** %data, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %71, i32 1
  store i8* %incdec.ptr97, i8** %data, align 8
  %72 = load i8, i8* %71, align 1
  %conv98 = zext i8 %72 to i64
  %shl99 = shl i64 %conv98, 16
  %73 = load i32, i32* %l, align 4
  %conv100 = zext i32 %73 to i64
  %or101 = or i64 %conv100, %shl99
  %conv102 = trunc i64 %or101 to i32
  store i32 %conv102, i32* %l, align 4
  %74 = load i8*, i8** %data, align 8
  %incdec.ptr103 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %incdec.ptr103, i8** %data, align 8
  %75 = load i8, i8* %74, align 1
  %conv104 = zext i8 %75 to i64
  %shl105 = shl i64 %conv104, 24
  %76 = load i32, i32* %l, align 4
  %conv106 = zext i32 %76 to i64
  %or107 = or i64 %conv106, %shl105
  %conv108 = trunc i64 %or107 to i32
  store i32 %conv108, i32* %l, align 4
  %77 = load i32, i32* %l, align 4
  store i32 %77, i32* %XX3, align 4
  %78 = load i32, i32* %XX2, align 4
  %conv109 = zext i32 %78 to i64
  %add110 = add nsw i64 %conv109, 606105819
  %79 = load i32, i32* %A, align 4
  %80 = load i32, i32* %B, align 4
  %xor111 = xor i32 %79, %80
  %81 = load i32, i32* %D, align 4
  %and112 = and i32 %xor111, %81
  %82 = load i32, i32* %B, align 4
  %xor113 = xor i32 %and112, %82
  %conv114 = zext i32 %xor113 to i64
  %add115 = add nsw i64 %add110, %conv114
  %83 = load i32, i32* %C, align 4
  %conv116 = zext i32 %83 to i64
  %add117 = add nsw i64 %conv116, %add115
  %conv118 = trunc i64 %add117 to i32
  store i32 %conv118, i32* %C, align 4
  %84 = load i32, i32* %C, align 4
  %shl119 = shl i32 %84, 17
  %85 = load i32, i32* %C, align 4
  %shr120 = lshr i32 %85, 15
  %or121 = or i32 %shl119, %shr120
  store i32 %or121, i32* %C, align 4
  %86 = load i32, i32* %D, align 4
  %87 = load i32, i32* %C, align 4
  %add122 = add i32 %87, %86
  store i32 %add122, i32* %C, align 4
  %88 = load i8*, i8** %data, align 8
  %incdec.ptr123 = getelementptr inbounds i8, i8* %88, i32 1
  store i8* %incdec.ptr123, i8** %data, align 8
  %89 = load i8, i8* %88, align 1
  %conv124 = zext i8 %89 to i64
  %conv125 = trunc i64 %conv124 to i32
  store i32 %conv125, i32* %l, align 4
  %90 = load i8*, i8** %data, align 8
  %incdec.ptr126 = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr126, i8** %data, align 8
  %91 = load i8, i8* %90, align 1
  %conv127 = zext i8 %91 to i64
  %shl128 = shl i64 %conv127, 8
  %92 = load i32, i32* %l, align 4
  %conv129 = zext i32 %92 to i64
  %or130 = or i64 %conv129, %shl128
  %conv131 = trunc i64 %or130 to i32
  store i32 %conv131, i32* %l, align 4
  %93 = load i8*, i8** %data, align 8
  %incdec.ptr132 = getelementptr inbounds i8, i8* %93, i32 1
  store i8* %incdec.ptr132, i8** %data, align 8
  %94 = load i8, i8* %93, align 1
  %conv133 = zext i8 %94 to i64
  %shl134 = shl i64 %conv133, 16
  %95 = load i32, i32* %l, align 4
  %conv135 = zext i32 %95 to i64
  %or136 = or i64 %conv135, %shl134
  %conv137 = trunc i64 %or136 to i32
  store i32 %conv137, i32* %l, align 4
  %96 = load i8*, i8** %data, align 8
  %incdec.ptr138 = getelementptr inbounds i8, i8* %96, i32 1
  store i8* %incdec.ptr138, i8** %data, align 8
  %97 = load i8, i8* %96, align 1
  %conv139 = zext i8 %97 to i64
  %shl140 = shl i64 %conv139, 24
  %98 = load i32, i32* %l, align 4
  %conv141 = zext i32 %98 to i64
  %or142 = or i64 %conv141, %shl140
  %conv143 = trunc i64 %or142 to i32
  store i32 %conv143, i32* %l, align 4
  %99 = load i32, i32* %l, align 4
  store i32 %99, i32* %XX4, align 4
  %100 = load i32, i32* %XX3, align 4
  %conv144 = zext i32 %100 to i64
  %add145 = add nsw i64 %conv144, 3250441966
  %101 = load i32, i32* %D, align 4
  %102 = load i32, i32* %A, align 4
  %xor146 = xor i32 %101, %102
  %103 = load i32, i32* %C, align 4
  %and147 = and i32 %xor146, %103
  %104 = load i32, i32* %A, align 4
  %xor148 = xor i32 %and147, %104
  %conv149 = zext i32 %xor148 to i64
  %add150 = add nsw i64 %add145, %conv149
  %105 = load i32, i32* %B, align 4
  %conv151 = zext i32 %105 to i64
  %add152 = add nsw i64 %conv151, %add150
  %conv153 = trunc i64 %add152 to i32
  store i32 %conv153, i32* %B, align 4
  %106 = load i32, i32* %B, align 4
  %shl154 = shl i32 %106, 22
  %107 = load i32, i32* %B, align 4
  %shr155 = lshr i32 %107, 10
  %or156 = or i32 %shl154, %shr155
  store i32 %or156, i32* %B, align 4
  %108 = load i32, i32* %C, align 4
  %109 = load i32, i32* %B, align 4
  %add157 = add i32 %109, %108
  store i32 %add157, i32* %B, align 4
  %110 = load i8*, i8** %data, align 8
  %incdec.ptr158 = getelementptr inbounds i8, i8* %110, i32 1
  store i8* %incdec.ptr158, i8** %data, align 8
  %111 = load i8, i8* %110, align 1
  %conv159 = zext i8 %111 to i64
  %conv160 = trunc i64 %conv159 to i32
  store i32 %conv160, i32* %l, align 4
  %112 = load i8*, i8** %data, align 8
  %incdec.ptr161 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr161, i8** %data, align 8
  %113 = load i8, i8* %112, align 1
  %conv162 = zext i8 %113 to i64
  %shl163 = shl i64 %conv162, 8
  %114 = load i32, i32* %l, align 4
  %conv164 = zext i32 %114 to i64
  %or165 = or i64 %conv164, %shl163
  %conv166 = trunc i64 %or165 to i32
  store i32 %conv166, i32* %l, align 4
  %115 = load i8*, i8** %data, align 8
  %incdec.ptr167 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %incdec.ptr167, i8** %data, align 8
  %116 = load i8, i8* %115, align 1
  %conv168 = zext i8 %116 to i64
  %shl169 = shl i64 %conv168, 16
  %117 = load i32, i32* %l, align 4
  %conv170 = zext i32 %117 to i64
  %or171 = or i64 %conv170, %shl169
  %conv172 = trunc i64 %or171 to i32
  store i32 %conv172, i32* %l, align 4
  %118 = load i8*, i8** %data, align 8
  %incdec.ptr173 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %incdec.ptr173, i8** %data, align 8
  %119 = load i8, i8* %118, align 1
  %conv174 = zext i8 %119 to i64
  %shl175 = shl i64 %conv174, 24
  %120 = load i32, i32* %l, align 4
  %conv176 = zext i32 %120 to i64
  %or177 = or i64 %conv176, %shl175
  %conv178 = trunc i64 %or177 to i32
  store i32 %conv178, i32* %l, align 4
  %121 = load i32, i32* %l, align 4
  store i32 %121, i32* %XX5, align 4
  %122 = load i32, i32* %XX4, align 4
  %conv179 = zext i32 %122 to i64
  %add180 = add nsw i64 %conv179, 4118548399
  %123 = load i32, i32* %C, align 4
  %124 = load i32, i32* %D, align 4
  %xor181 = xor i32 %123, %124
  %125 = load i32, i32* %B, align 4
  %and182 = and i32 %xor181, %125
  %126 = load i32, i32* %D, align 4
  %xor183 = xor i32 %and182, %126
  %conv184 = zext i32 %xor183 to i64
  %add185 = add nsw i64 %add180, %conv184
  %127 = load i32, i32* %A, align 4
  %conv186 = zext i32 %127 to i64
  %add187 = add nsw i64 %conv186, %add185
  %conv188 = trunc i64 %add187 to i32
  store i32 %conv188, i32* %A, align 4
  %128 = load i32, i32* %A, align 4
  %shl189 = shl i32 %128, 7
  %129 = load i32, i32* %A, align 4
  %shr190 = lshr i32 %129, 25
  %or191 = or i32 %shl189, %shr190
  store i32 %or191, i32* %A, align 4
  %130 = load i32, i32* %B, align 4
  %131 = load i32, i32* %A, align 4
  %add192 = add i32 %131, %130
  store i32 %add192, i32* %A, align 4
  %132 = load i8*, i8** %data, align 8
  %incdec.ptr193 = getelementptr inbounds i8, i8* %132, i32 1
  store i8* %incdec.ptr193, i8** %data, align 8
  %133 = load i8, i8* %132, align 1
  %conv194 = zext i8 %133 to i64
  %conv195 = trunc i64 %conv194 to i32
  store i32 %conv195, i32* %l, align 4
  %134 = load i8*, i8** %data, align 8
  %incdec.ptr196 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr196, i8** %data, align 8
  %135 = load i8, i8* %134, align 1
  %conv197 = zext i8 %135 to i64
  %shl198 = shl i64 %conv197, 8
  %136 = load i32, i32* %l, align 4
  %conv199 = zext i32 %136 to i64
  %or200 = or i64 %conv199, %shl198
  %conv201 = trunc i64 %or200 to i32
  store i32 %conv201, i32* %l, align 4
  %137 = load i8*, i8** %data, align 8
  %incdec.ptr202 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr202, i8** %data, align 8
  %138 = load i8, i8* %137, align 1
  %conv203 = zext i8 %138 to i64
  %shl204 = shl i64 %conv203, 16
  %139 = load i32, i32* %l, align 4
  %conv205 = zext i32 %139 to i64
  %or206 = or i64 %conv205, %shl204
  %conv207 = trunc i64 %or206 to i32
  store i32 %conv207, i32* %l, align 4
  %140 = load i8*, i8** %data, align 8
  %incdec.ptr208 = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr208, i8** %data, align 8
  %141 = load i8, i8* %140, align 1
  %conv209 = zext i8 %141 to i64
  %shl210 = shl i64 %conv209, 24
  %142 = load i32, i32* %l, align 4
  %conv211 = zext i32 %142 to i64
  %or212 = or i64 %conv211, %shl210
  %conv213 = trunc i64 %or212 to i32
  store i32 %conv213, i32* %l, align 4
  %143 = load i32, i32* %l, align 4
  store i32 %143, i32* %XX6, align 4
  %144 = load i32, i32* %XX5, align 4
  %conv214 = zext i32 %144 to i64
  %add215 = add nsw i64 %conv214, 1200080426
  %145 = load i32, i32* %B, align 4
  %146 = load i32, i32* %C, align 4
  %xor216 = xor i32 %145, %146
  %147 = load i32, i32* %A, align 4
  %and217 = and i32 %xor216, %147
  %148 = load i32, i32* %C, align 4
  %xor218 = xor i32 %and217, %148
  %conv219 = zext i32 %xor218 to i64
  %add220 = add nsw i64 %add215, %conv219
  %149 = load i32, i32* %D, align 4
  %conv221 = zext i32 %149 to i64
  %add222 = add nsw i64 %conv221, %add220
  %conv223 = trunc i64 %add222 to i32
  store i32 %conv223, i32* %D, align 4
  %150 = load i32, i32* %D, align 4
  %shl224 = shl i32 %150, 12
  %151 = load i32, i32* %D, align 4
  %shr225 = lshr i32 %151, 20
  %or226 = or i32 %shl224, %shr225
  store i32 %or226, i32* %D, align 4
  %152 = load i32, i32* %A, align 4
  %153 = load i32, i32* %D, align 4
  %add227 = add i32 %153, %152
  store i32 %add227, i32* %D, align 4
  %154 = load i8*, i8** %data, align 8
  %incdec.ptr228 = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr228, i8** %data, align 8
  %155 = load i8, i8* %154, align 1
  %conv229 = zext i8 %155 to i64
  %conv230 = trunc i64 %conv229 to i32
  store i32 %conv230, i32* %l, align 4
  %156 = load i8*, i8** %data, align 8
  %incdec.ptr231 = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr231, i8** %data, align 8
  %157 = load i8, i8* %156, align 1
  %conv232 = zext i8 %157 to i64
  %shl233 = shl i64 %conv232, 8
  %158 = load i32, i32* %l, align 4
  %conv234 = zext i32 %158 to i64
  %or235 = or i64 %conv234, %shl233
  %conv236 = trunc i64 %or235 to i32
  store i32 %conv236, i32* %l, align 4
  %159 = load i8*, i8** %data, align 8
  %incdec.ptr237 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %incdec.ptr237, i8** %data, align 8
  %160 = load i8, i8* %159, align 1
  %conv238 = zext i8 %160 to i64
  %shl239 = shl i64 %conv238, 16
  %161 = load i32, i32* %l, align 4
  %conv240 = zext i32 %161 to i64
  %or241 = or i64 %conv240, %shl239
  %conv242 = trunc i64 %or241 to i32
  store i32 %conv242, i32* %l, align 4
  %162 = load i8*, i8** %data, align 8
  %incdec.ptr243 = getelementptr inbounds i8, i8* %162, i32 1
  store i8* %incdec.ptr243, i8** %data, align 8
  %163 = load i8, i8* %162, align 1
  %conv244 = zext i8 %163 to i64
  %shl245 = shl i64 %conv244, 24
  %164 = load i32, i32* %l, align 4
  %conv246 = zext i32 %164 to i64
  %or247 = or i64 %conv246, %shl245
  %conv248 = trunc i64 %or247 to i32
  store i32 %conv248, i32* %l, align 4
  %165 = load i32, i32* %l, align 4
  store i32 %165, i32* %XX7, align 4
  %166 = load i32, i32* %XX6, align 4
  %conv249 = zext i32 %166 to i64
  %add250 = add nsw i64 %conv249, 2821735955
  %167 = load i32, i32* %A, align 4
  %168 = load i32, i32* %B, align 4
  %xor251 = xor i32 %167, %168
  %169 = load i32, i32* %D, align 4
  %and252 = and i32 %xor251, %169
  %170 = load i32, i32* %B, align 4
  %xor253 = xor i32 %and252, %170
  %conv254 = zext i32 %xor253 to i64
  %add255 = add nsw i64 %add250, %conv254
  %171 = load i32, i32* %C, align 4
  %conv256 = zext i32 %171 to i64
  %add257 = add nsw i64 %conv256, %add255
  %conv258 = trunc i64 %add257 to i32
  store i32 %conv258, i32* %C, align 4
  %172 = load i32, i32* %C, align 4
  %shl259 = shl i32 %172, 17
  %173 = load i32, i32* %C, align 4
  %shr260 = lshr i32 %173, 15
  %or261 = or i32 %shl259, %shr260
  store i32 %or261, i32* %C, align 4
  %174 = load i32, i32* %D, align 4
  %175 = load i32, i32* %C, align 4
  %add262 = add i32 %175, %174
  store i32 %add262, i32* %C, align 4
  %176 = load i8*, i8** %data, align 8
  %incdec.ptr263 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %incdec.ptr263, i8** %data, align 8
  %177 = load i8, i8* %176, align 1
  %conv264 = zext i8 %177 to i64
  %conv265 = trunc i64 %conv264 to i32
  store i32 %conv265, i32* %l, align 4
  %178 = load i8*, i8** %data, align 8
  %incdec.ptr266 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr266, i8** %data, align 8
  %179 = load i8, i8* %178, align 1
  %conv267 = zext i8 %179 to i64
  %shl268 = shl i64 %conv267, 8
  %180 = load i32, i32* %l, align 4
  %conv269 = zext i32 %180 to i64
  %or270 = or i64 %conv269, %shl268
  %conv271 = trunc i64 %or270 to i32
  store i32 %conv271, i32* %l, align 4
  %181 = load i8*, i8** %data, align 8
  %incdec.ptr272 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %incdec.ptr272, i8** %data, align 8
  %182 = load i8, i8* %181, align 1
  %conv273 = zext i8 %182 to i64
  %shl274 = shl i64 %conv273, 16
  %183 = load i32, i32* %l, align 4
  %conv275 = zext i32 %183 to i64
  %or276 = or i64 %conv275, %shl274
  %conv277 = trunc i64 %or276 to i32
  store i32 %conv277, i32* %l, align 4
  %184 = load i8*, i8** %data, align 8
  %incdec.ptr278 = getelementptr inbounds i8, i8* %184, i32 1
  store i8* %incdec.ptr278, i8** %data, align 8
  %185 = load i8, i8* %184, align 1
  %conv279 = zext i8 %185 to i64
  %shl280 = shl i64 %conv279, 24
  %186 = load i32, i32* %l, align 4
  %conv281 = zext i32 %186 to i64
  %or282 = or i64 %conv281, %shl280
  %conv283 = trunc i64 %or282 to i32
  store i32 %conv283, i32* %l, align 4
  %187 = load i32, i32* %l, align 4
  store i32 %187, i32* %XX8, align 4
  %188 = load i32, i32* %XX7, align 4
  %conv284 = zext i32 %188 to i64
  %add285 = add nsw i64 %conv284, 4249261313
  %189 = load i32, i32* %D, align 4
  %190 = load i32, i32* %A, align 4
  %xor286 = xor i32 %189, %190
  %191 = load i32, i32* %C, align 4
  %and287 = and i32 %xor286, %191
  %192 = load i32, i32* %A, align 4
  %xor288 = xor i32 %and287, %192
  %conv289 = zext i32 %xor288 to i64
  %add290 = add nsw i64 %add285, %conv289
  %193 = load i32, i32* %B, align 4
  %conv291 = zext i32 %193 to i64
  %add292 = add nsw i64 %conv291, %add290
  %conv293 = trunc i64 %add292 to i32
  store i32 %conv293, i32* %B, align 4
  %194 = load i32, i32* %B, align 4
  %shl294 = shl i32 %194, 22
  %195 = load i32, i32* %B, align 4
  %shr295 = lshr i32 %195, 10
  %or296 = or i32 %shl294, %shr295
  store i32 %or296, i32* %B, align 4
  %196 = load i32, i32* %C, align 4
  %197 = load i32, i32* %B, align 4
  %add297 = add i32 %197, %196
  store i32 %add297, i32* %B, align 4
  %198 = load i8*, i8** %data, align 8
  %incdec.ptr298 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %incdec.ptr298, i8** %data, align 8
  %199 = load i8, i8* %198, align 1
  %conv299 = zext i8 %199 to i64
  %conv300 = trunc i64 %conv299 to i32
  store i32 %conv300, i32* %l, align 4
  %200 = load i8*, i8** %data, align 8
  %incdec.ptr301 = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %incdec.ptr301, i8** %data, align 8
  %201 = load i8, i8* %200, align 1
  %conv302 = zext i8 %201 to i64
  %shl303 = shl i64 %conv302, 8
  %202 = load i32, i32* %l, align 4
  %conv304 = zext i32 %202 to i64
  %or305 = or i64 %conv304, %shl303
  %conv306 = trunc i64 %or305 to i32
  store i32 %conv306, i32* %l, align 4
  %203 = load i8*, i8** %data, align 8
  %incdec.ptr307 = getelementptr inbounds i8, i8* %203, i32 1
  store i8* %incdec.ptr307, i8** %data, align 8
  %204 = load i8, i8* %203, align 1
  %conv308 = zext i8 %204 to i64
  %shl309 = shl i64 %conv308, 16
  %205 = load i32, i32* %l, align 4
  %conv310 = zext i32 %205 to i64
  %or311 = or i64 %conv310, %shl309
  %conv312 = trunc i64 %or311 to i32
  store i32 %conv312, i32* %l, align 4
  %206 = load i8*, i8** %data, align 8
  %incdec.ptr313 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %incdec.ptr313, i8** %data, align 8
  %207 = load i8, i8* %206, align 1
  %conv314 = zext i8 %207 to i64
  %shl315 = shl i64 %conv314, 24
  %208 = load i32, i32* %l, align 4
  %conv316 = zext i32 %208 to i64
  %or317 = or i64 %conv316, %shl315
  %conv318 = trunc i64 %or317 to i32
  store i32 %conv318, i32* %l, align 4
  %209 = load i32, i32* %l, align 4
  store i32 %209, i32* %XX9, align 4
  %210 = load i32, i32* %XX8, align 4
  %conv319 = zext i32 %210 to i64
  %add320 = add nsw i64 %conv319, 1770035416
  %211 = load i32, i32* %C, align 4
  %212 = load i32, i32* %D, align 4
  %xor321 = xor i32 %211, %212
  %213 = load i32, i32* %B, align 4
  %and322 = and i32 %xor321, %213
  %214 = load i32, i32* %D, align 4
  %xor323 = xor i32 %and322, %214
  %conv324 = zext i32 %xor323 to i64
  %add325 = add nsw i64 %add320, %conv324
  %215 = load i32, i32* %A, align 4
  %conv326 = zext i32 %215 to i64
  %add327 = add nsw i64 %conv326, %add325
  %conv328 = trunc i64 %add327 to i32
  store i32 %conv328, i32* %A, align 4
  %216 = load i32, i32* %A, align 4
  %shl329 = shl i32 %216, 7
  %217 = load i32, i32* %A, align 4
  %shr330 = lshr i32 %217, 25
  %or331 = or i32 %shl329, %shr330
  store i32 %or331, i32* %A, align 4
  %218 = load i32, i32* %B, align 4
  %219 = load i32, i32* %A, align 4
  %add332 = add i32 %219, %218
  store i32 %add332, i32* %A, align 4
  %220 = load i8*, i8** %data, align 8
  %incdec.ptr333 = getelementptr inbounds i8, i8* %220, i32 1
  store i8* %incdec.ptr333, i8** %data, align 8
  %221 = load i8, i8* %220, align 1
  %conv334 = zext i8 %221 to i64
  %conv335 = trunc i64 %conv334 to i32
  store i32 %conv335, i32* %l, align 4
  %222 = load i8*, i8** %data, align 8
  %incdec.ptr336 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr336, i8** %data, align 8
  %223 = load i8, i8* %222, align 1
  %conv337 = zext i8 %223 to i64
  %shl338 = shl i64 %conv337, 8
  %224 = load i32, i32* %l, align 4
  %conv339 = zext i32 %224 to i64
  %or340 = or i64 %conv339, %shl338
  %conv341 = trunc i64 %or340 to i32
  store i32 %conv341, i32* %l, align 4
  %225 = load i8*, i8** %data, align 8
  %incdec.ptr342 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %incdec.ptr342, i8** %data, align 8
  %226 = load i8, i8* %225, align 1
  %conv343 = zext i8 %226 to i64
  %shl344 = shl i64 %conv343, 16
  %227 = load i32, i32* %l, align 4
  %conv345 = zext i32 %227 to i64
  %or346 = or i64 %conv345, %shl344
  %conv347 = trunc i64 %or346 to i32
  store i32 %conv347, i32* %l, align 4
  %228 = load i8*, i8** %data, align 8
  %incdec.ptr348 = getelementptr inbounds i8, i8* %228, i32 1
  store i8* %incdec.ptr348, i8** %data, align 8
  %229 = load i8, i8* %228, align 1
  %conv349 = zext i8 %229 to i64
  %shl350 = shl i64 %conv349, 24
  %230 = load i32, i32* %l, align 4
  %conv351 = zext i32 %230 to i64
  %or352 = or i64 %conv351, %shl350
  %conv353 = trunc i64 %or352 to i32
  store i32 %conv353, i32* %l, align 4
  %231 = load i32, i32* %l, align 4
  store i32 %231, i32* %XX10, align 4
  %232 = load i32, i32* %XX9, align 4
  %conv354 = zext i32 %232 to i64
  %add355 = add nsw i64 %conv354, 2336552879
  %233 = load i32, i32* %B, align 4
  %234 = load i32, i32* %C, align 4
  %xor356 = xor i32 %233, %234
  %235 = load i32, i32* %A, align 4
  %and357 = and i32 %xor356, %235
  %236 = load i32, i32* %C, align 4
  %xor358 = xor i32 %and357, %236
  %conv359 = zext i32 %xor358 to i64
  %add360 = add nsw i64 %add355, %conv359
  %237 = load i32, i32* %D, align 4
  %conv361 = zext i32 %237 to i64
  %add362 = add nsw i64 %conv361, %add360
  %conv363 = trunc i64 %add362 to i32
  store i32 %conv363, i32* %D, align 4
  %238 = load i32, i32* %D, align 4
  %shl364 = shl i32 %238, 12
  %239 = load i32, i32* %D, align 4
  %shr365 = lshr i32 %239, 20
  %or366 = or i32 %shl364, %shr365
  store i32 %or366, i32* %D, align 4
  %240 = load i32, i32* %A, align 4
  %241 = load i32, i32* %D, align 4
  %add367 = add i32 %241, %240
  store i32 %add367, i32* %D, align 4
  %242 = load i8*, i8** %data, align 8
  %incdec.ptr368 = getelementptr inbounds i8, i8* %242, i32 1
  store i8* %incdec.ptr368, i8** %data, align 8
  %243 = load i8, i8* %242, align 1
  %conv369 = zext i8 %243 to i64
  %conv370 = trunc i64 %conv369 to i32
  store i32 %conv370, i32* %l, align 4
  %244 = load i8*, i8** %data, align 8
  %incdec.ptr371 = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr371, i8** %data, align 8
  %245 = load i8, i8* %244, align 1
  %conv372 = zext i8 %245 to i64
  %shl373 = shl i64 %conv372, 8
  %246 = load i32, i32* %l, align 4
  %conv374 = zext i32 %246 to i64
  %or375 = or i64 %conv374, %shl373
  %conv376 = trunc i64 %or375 to i32
  store i32 %conv376, i32* %l, align 4
  %247 = load i8*, i8** %data, align 8
  %incdec.ptr377 = getelementptr inbounds i8, i8* %247, i32 1
  store i8* %incdec.ptr377, i8** %data, align 8
  %248 = load i8, i8* %247, align 1
  %conv378 = zext i8 %248 to i64
  %shl379 = shl i64 %conv378, 16
  %249 = load i32, i32* %l, align 4
  %conv380 = zext i32 %249 to i64
  %or381 = or i64 %conv380, %shl379
  %conv382 = trunc i64 %or381 to i32
  store i32 %conv382, i32* %l, align 4
  %250 = load i8*, i8** %data, align 8
  %incdec.ptr383 = getelementptr inbounds i8, i8* %250, i32 1
  store i8* %incdec.ptr383, i8** %data, align 8
  %251 = load i8, i8* %250, align 1
  %conv384 = zext i8 %251 to i64
  %shl385 = shl i64 %conv384, 24
  %252 = load i32, i32* %l, align 4
  %conv386 = zext i32 %252 to i64
  %or387 = or i64 %conv386, %shl385
  %conv388 = trunc i64 %or387 to i32
  store i32 %conv388, i32* %l, align 4
  %253 = load i32, i32* %l, align 4
  store i32 %253, i32* %XX11, align 4
  %254 = load i32, i32* %XX10, align 4
  %conv389 = zext i32 %254 to i64
  %add390 = add nsw i64 %conv389, 4294925233
  %255 = load i32, i32* %A, align 4
  %256 = load i32, i32* %B, align 4
  %xor391 = xor i32 %255, %256
  %257 = load i32, i32* %D, align 4
  %and392 = and i32 %xor391, %257
  %258 = load i32, i32* %B, align 4
  %xor393 = xor i32 %and392, %258
  %conv394 = zext i32 %xor393 to i64
  %add395 = add nsw i64 %add390, %conv394
  %259 = load i32, i32* %C, align 4
  %conv396 = zext i32 %259 to i64
  %add397 = add nsw i64 %conv396, %add395
  %conv398 = trunc i64 %add397 to i32
  store i32 %conv398, i32* %C, align 4
  %260 = load i32, i32* %C, align 4
  %shl399 = shl i32 %260, 17
  %261 = load i32, i32* %C, align 4
  %shr400 = lshr i32 %261, 15
  %or401 = or i32 %shl399, %shr400
  store i32 %or401, i32* %C, align 4
  %262 = load i32, i32* %D, align 4
  %263 = load i32, i32* %C, align 4
  %add402 = add i32 %263, %262
  store i32 %add402, i32* %C, align 4
  %264 = load i8*, i8** %data, align 8
  %incdec.ptr403 = getelementptr inbounds i8, i8* %264, i32 1
  store i8* %incdec.ptr403, i8** %data, align 8
  %265 = load i8, i8* %264, align 1
  %conv404 = zext i8 %265 to i64
  %conv405 = trunc i64 %conv404 to i32
  store i32 %conv405, i32* %l, align 4
  %266 = load i8*, i8** %data, align 8
  %incdec.ptr406 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr406, i8** %data, align 8
  %267 = load i8, i8* %266, align 1
  %conv407 = zext i8 %267 to i64
  %shl408 = shl i64 %conv407, 8
  %268 = load i32, i32* %l, align 4
  %conv409 = zext i32 %268 to i64
  %or410 = or i64 %conv409, %shl408
  %conv411 = trunc i64 %or410 to i32
  store i32 %conv411, i32* %l, align 4
  %269 = load i8*, i8** %data, align 8
  %incdec.ptr412 = getelementptr inbounds i8, i8* %269, i32 1
  store i8* %incdec.ptr412, i8** %data, align 8
  %270 = load i8, i8* %269, align 1
  %conv413 = zext i8 %270 to i64
  %shl414 = shl i64 %conv413, 16
  %271 = load i32, i32* %l, align 4
  %conv415 = zext i32 %271 to i64
  %or416 = or i64 %conv415, %shl414
  %conv417 = trunc i64 %or416 to i32
  store i32 %conv417, i32* %l, align 4
  %272 = load i8*, i8** %data, align 8
  %incdec.ptr418 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %incdec.ptr418, i8** %data, align 8
  %273 = load i8, i8* %272, align 1
  %conv419 = zext i8 %273 to i64
  %shl420 = shl i64 %conv419, 24
  %274 = load i32, i32* %l, align 4
  %conv421 = zext i32 %274 to i64
  %or422 = or i64 %conv421, %shl420
  %conv423 = trunc i64 %or422 to i32
  store i32 %conv423, i32* %l, align 4
  %275 = load i32, i32* %l, align 4
  store i32 %275, i32* %XX12, align 4
  %276 = load i32, i32* %XX11, align 4
  %conv424 = zext i32 %276 to i64
  %add425 = add nsw i64 %conv424, 2304563134
  %277 = load i32, i32* %D, align 4
  %278 = load i32, i32* %A, align 4
  %xor426 = xor i32 %277, %278
  %279 = load i32, i32* %C, align 4
  %and427 = and i32 %xor426, %279
  %280 = load i32, i32* %A, align 4
  %xor428 = xor i32 %and427, %280
  %conv429 = zext i32 %xor428 to i64
  %add430 = add nsw i64 %add425, %conv429
  %281 = load i32, i32* %B, align 4
  %conv431 = zext i32 %281 to i64
  %add432 = add nsw i64 %conv431, %add430
  %conv433 = trunc i64 %add432 to i32
  store i32 %conv433, i32* %B, align 4
  %282 = load i32, i32* %B, align 4
  %shl434 = shl i32 %282, 22
  %283 = load i32, i32* %B, align 4
  %shr435 = lshr i32 %283, 10
  %or436 = or i32 %shl434, %shr435
  store i32 %or436, i32* %B, align 4
  %284 = load i32, i32* %C, align 4
  %285 = load i32, i32* %B, align 4
  %add437 = add i32 %285, %284
  store i32 %add437, i32* %B, align 4
  %286 = load i8*, i8** %data, align 8
  %incdec.ptr438 = getelementptr inbounds i8, i8* %286, i32 1
  store i8* %incdec.ptr438, i8** %data, align 8
  %287 = load i8, i8* %286, align 1
  %conv439 = zext i8 %287 to i64
  %conv440 = trunc i64 %conv439 to i32
  store i32 %conv440, i32* %l, align 4
  %288 = load i8*, i8** %data, align 8
  %incdec.ptr441 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr441, i8** %data, align 8
  %289 = load i8, i8* %288, align 1
  %conv442 = zext i8 %289 to i64
  %shl443 = shl i64 %conv442, 8
  %290 = load i32, i32* %l, align 4
  %conv444 = zext i32 %290 to i64
  %or445 = or i64 %conv444, %shl443
  %conv446 = trunc i64 %or445 to i32
  store i32 %conv446, i32* %l, align 4
  %291 = load i8*, i8** %data, align 8
  %incdec.ptr447 = getelementptr inbounds i8, i8* %291, i32 1
  store i8* %incdec.ptr447, i8** %data, align 8
  %292 = load i8, i8* %291, align 1
  %conv448 = zext i8 %292 to i64
  %shl449 = shl i64 %conv448, 16
  %293 = load i32, i32* %l, align 4
  %conv450 = zext i32 %293 to i64
  %or451 = or i64 %conv450, %shl449
  %conv452 = trunc i64 %or451 to i32
  store i32 %conv452, i32* %l, align 4
  %294 = load i8*, i8** %data, align 8
  %incdec.ptr453 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %incdec.ptr453, i8** %data, align 8
  %295 = load i8, i8* %294, align 1
  %conv454 = zext i8 %295 to i64
  %shl455 = shl i64 %conv454, 24
  %296 = load i32, i32* %l, align 4
  %conv456 = zext i32 %296 to i64
  %or457 = or i64 %conv456, %shl455
  %conv458 = trunc i64 %or457 to i32
  store i32 %conv458, i32* %l, align 4
  %297 = load i32, i32* %l, align 4
  store i32 %297, i32* %XX13, align 4
  %298 = load i32, i32* %XX12, align 4
  %conv459 = zext i32 %298 to i64
  %add460 = add nsw i64 %conv459, 1804603682
  %299 = load i32, i32* %C, align 4
  %300 = load i32, i32* %D, align 4
  %xor461 = xor i32 %299, %300
  %301 = load i32, i32* %B, align 4
  %and462 = and i32 %xor461, %301
  %302 = load i32, i32* %D, align 4
  %xor463 = xor i32 %and462, %302
  %conv464 = zext i32 %xor463 to i64
  %add465 = add nsw i64 %add460, %conv464
  %303 = load i32, i32* %A, align 4
  %conv466 = zext i32 %303 to i64
  %add467 = add nsw i64 %conv466, %add465
  %conv468 = trunc i64 %add467 to i32
  store i32 %conv468, i32* %A, align 4
  %304 = load i32, i32* %A, align 4
  %shl469 = shl i32 %304, 7
  %305 = load i32, i32* %A, align 4
  %shr470 = lshr i32 %305, 25
  %or471 = or i32 %shl469, %shr470
  store i32 %or471, i32* %A, align 4
  %306 = load i32, i32* %B, align 4
  %307 = load i32, i32* %A, align 4
  %add472 = add i32 %307, %306
  store i32 %add472, i32* %A, align 4
  %308 = load i8*, i8** %data, align 8
  %incdec.ptr473 = getelementptr inbounds i8, i8* %308, i32 1
  store i8* %incdec.ptr473, i8** %data, align 8
  %309 = load i8, i8* %308, align 1
  %conv474 = zext i8 %309 to i64
  %conv475 = trunc i64 %conv474 to i32
  store i32 %conv475, i32* %l, align 4
  %310 = load i8*, i8** %data, align 8
  %incdec.ptr476 = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %incdec.ptr476, i8** %data, align 8
  %311 = load i8, i8* %310, align 1
  %conv477 = zext i8 %311 to i64
  %shl478 = shl i64 %conv477, 8
  %312 = load i32, i32* %l, align 4
  %conv479 = zext i32 %312 to i64
  %or480 = or i64 %conv479, %shl478
  %conv481 = trunc i64 %or480 to i32
  store i32 %conv481, i32* %l, align 4
  %313 = load i8*, i8** %data, align 8
  %incdec.ptr482 = getelementptr inbounds i8, i8* %313, i32 1
  store i8* %incdec.ptr482, i8** %data, align 8
  %314 = load i8, i8* %313, align 1
  %conv483 = zext i8 %314 to i64
  %shl484 = shl i64 %conv483, 16
  %315 = load i32, i32* %l, align 4
  %conv485 = zext i32 %315 to i64
  %or486 = or i64 %conv485, %shl484
  %conv487 = trunc i64 %or486 to i32
  store i32 %conv487, i32* %l, align 4
  %316 = load i8*, i8** %data, align 8
  %incdec.ptr488 = getelementptr inbounds i8, i8* %316, i32 1
  store i8* %incdec.ptr488, i8** %data, align 8
  %317 = load i8, i8* %316, align 1
  %conv489 = zext i8 %317 to i64
  %shl490 = shl i64 %conv489, 24
  %318 = load i32, i32* %l, align 4
  %conv491 = zext i32 %318 to i64
  %or492 = or i64 %conv491, %shl490
  %conv493 = trunc i64 %or492 to i32
  store i32 %conv493, i32* %l, align 4
  %319 = load i32, i32* %l, align 4
  store i32 %319, i32* %XX14, align 4
  %320 = load i32, i32* %XX13, align 4
  %conv494 = zext i32 %320 to i64
  %add495 = add nsw i64 %conv494, 4254626195
  %321 = load i32, i32* %B, align 4
  %322 = load i32, i32* %C, align 4
  %xor496 = xor i32 %321, %322
  %323 = load i32, i32* %A, align 4
  %and497 = and i32 %xor496, %323
  %324 = load i32, i32* %C, align 4
  %xor498 = xor i32 %and497, %324
  %conv499 = zext i32 %xor498 to i64
  %add500 = add nsw i64 %add495, %conv499
  %325 = load i32, i32* %D, align 4
  %conv501 = zext i32 %325 to i64
  %add502 = add nsw i64 %conv501, %add500
  %conv503 = trunc i64 %add502 to i32
  store i32 %conv503, i32* %D, align 4
  %326 = load i32, i32* %D, align 4
  %shl504 = shl i32 %326, 12
  %327 = load i32, i32* %D, align 4
  %shr505 = lshr i32 %327, 20
  %or506 = or i32 %shl504, %shr505
  store i32 %or506, i32* %D, align 4
  %328 = load i32, i32* %A, align 4
  %329 = load i32, i32* %D, align 4
  %add507 = add i32 %329, %328
  store i32 %add507, i32* %D, align 4
  %330 = load i8*, i8** %data, align 8
  %incdec.ptr508 = getelementptr inbounds i8, i8* %330, i32 1
  store i8* %incdec.ptr508, i8** %data, align 8
  %331 = load i8, i8* %330, align 1
  %conv509 = zext i8 %331 to i64
  %conv510 = trunc i64 %conv509 to i32
  store i32 %conv510, i32* %l, align 4
  %332 = load i8*, i8** %data, align 8
  %incdec.ptr511 = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %incdec.ptr511, i8** %data, align 8
  %333 = load i8, i8* %332, align 1
  %conv512 = zext i8 %333 to i64
  %shl513 = shl i64 %conv512, 8
  %334 = load i32, i32* %l, align 4
  %conv514 = zext i32 %334 to i64
  %or515 = or i64 %conv514, %shl513
  %conv516 = trunc i64 %or515 to i32
  store i32 %conv516, i32* %l, align 4
  %335 = load i8*, i8** %data, align 8
  %incdec.ptr517 = getelementptr inbounds i8, i8* %335, i32 1
  store i8* %incdec.ptr517, i8** %data, align 8
  %336 = load i8, i8* %335, align 1
  %conv518 = zext i8 %336 to i64
  %shl519 = shl i64 %conv518, 16
  %337 = load i32, i32* %l, align 4
  %conv520 = zext i32 %337 to i64
  %or521 = or i64 %conv520, %shl519
  %conv522 = trunc i64 %or521 to i32
  store i32 %conv522, i32* %l, align 4
  %338 = load i8*, i8** %data, align 8
  %incdec.ptr523 = getelementptr inbounds i8, i8* %338, i32 1
  store i8* %incdec.ptr523, i8** %data, align 8
  %339 = load i8, i8* %338, align 1
  %conv524 = zext i8 %339 to i64
  %shl525 = shl i64 %conv524, 24
  %340 = load i32, i32* %l, align 4
  %conv526 = zext i32 %340 to i64
  %or527 = or i64 %conv526, %shl525
  %conv528 = trunc i64 %or527 to i32
  store i32 %conv528, i32* %l, align 4
  %341 = load i32, i32* %l, align 4
  store i32 %341, i32* %XX15, align 4
  %342 = load i32, i32* %XX14, align 4
  %conv529 = zext i32 %342 to i64
  %add530 = add nsw i64 %conv529, 2792965006
  %343 = load i32, i32* %A, align 4
  %344 = load i32, i32* %B, align 4
  %xor531 = xor i32 %343, %344
  %345 = load i32, i32* %D, align 4
  %and532 = and i32 %xor531, %345
  %346 = load i32, i32* %B, align 4
  %xor533 = xor i32 %and532, %346
  %conv534 = zext i32 %xor533 to i64
  %add535 = add nsw i64 %add530, %conv534
  %347 = load i32, i32* %C, align 4
  %conv536 = zext i32 %347 to i64
  %add537 = add nsw i64 %conv536, %add535
  %conv538 = trunc i64 %add537 to i32
  store i32 %conv538, i32* %C, align 4
  %348 = load i32, i32* %C, align 4
  %shl539 = shl i32 %348, 17
  %349 = load i32, i32* %C, align 4
  %shr540 = lshr i32 %349, 15
  %or541 = or i32 %shl539, %shr540
  store i32 %or541, i32* %C, align 4
  %350 = load i32, i32* %D, align 4
  %351 = load i32, i32* %C, align 4
  %add542 = add i32 %351, %350
  store i32 %add542, i32* %C, align 4
  %352 = load i32, i32* %XX15, align 4
  %conv543 = zext i32 %352 to i64
  %add544 = add nsw i64 %conv543, 1236535329
  %353 = load i32, i32* %D, align 4
  %354 = load i32, i32* %A, align 4
  %xor545 = xor i32 %353, %354
  %355 = load i32, i32* %C, align 4
  %and546 = and i32 %xor545, %355
  %356 = load i32, i32* %A, align 4
  %xor547 = xor i32 %and546, %356
  %conv548 = zext i32 %xor547 to i64
  %add549 = add nsw i64 %add544, %conv548
  %357 = load i32, i32* %B, align 4
  %conv550 = zext i32 %357 to i64
  %add551 = add nsw i64 %conv550, %add549
  %conv552 = trunc i64 %add551 to i32
  store i32 %conv552, i32* %B, align 4
  %358 = load i32, i32* %B, align 4
  %shl553 = shl i32 %358, 22
  %359 = load i32, i32* %B, align 4
  %shr554 = lshr i32 %359, 10
  %or555 = or i32 %shl553, %shr554
  store i32 %or555, i32* %B, align 4
  %360 = load i32, i32* %C, align 4
  %361 = load i32, i32* %B, align 4
  %add556 = add i32 %361, %360
  store i32 %add556, i32* %B, align 4
  %362 = load i32, i32* %XX1, align 4
  %conv557 = zext i32 %362 to i64
  %add558 = add nsw i64 %conv557, 4129170786
  %363 = load i32, i32* %B, align 4
  %364 = load i32, i32* %C, align 4
  %xor559 = xor i32 %363, %364
  %365 = load i32, i32* %D, align 4
  %and560 = and i32 %xor559, %365
  %366 = load i32, i32* %C, align 4
  %xor561 = xor i32 %and560, %366
  %conv562 = zext i32 %xor561 to i64
  %add563 = add nsw i64 %add558, %conv562
  %367 = load i32, i32* %A, align 4
  %conv564 = zext i32 %367 to i64
  %add565 = add nsw i64 %conv564, %add563
  %conv566 = trunc i64 %add565 to i32
  store i32 %conv566, i32* %A, align 4
  %368 = load i32, i32* %A, align 4
  %shl567 = shl i32 %368, 5
  %369 = load i32, i32* %A, align 4
  %shr568 = lshr i32 %369, 27
  %or569 = or i32 %shl567, %shr568
  store i32 %or569, i32* %A, align 4
  %370 = load i32, i32* %B, align 4
  %371 = load i32, i32* %A, align 4
  %add570 = add i32 %371, %370
  store i32 %add570, i32* %A, align 4
  %372 = load i32, i32* %XX6, align 4
  %conv571 = zext i32 %372 to i64
  %add572 = add nsw i64 %conv571, 3225465664
  %373 = load i32, i32* %A, align 4
  %374 = load i32, i32* %B, align 4
  %xor573 = xor i32 %373, %374
  %375 = load i32, i32* %C, align 4
  %and574 = and i32 %xor573, %375
  %376 = load i32, i32* %B, align 4
  %xor575 = xor i32 %and574, %376
  %conv576 = zext i32 %xor575 to i64
  %add577 = add nsw i64 %add572, %conv576
  %377 = load i32, i32* %D, align 4
  %conv578 = zext i32 %377 to i64
  %add579 = add nsw i64 %conv578, %add577
  %conv580 = trunc i64 %add579 to i32
  store i32 %conv580, i32* %D, align 4
  %378 = load i32, i32* %D, align 4
  %shl581 = shl i32 %378, 9
  %379 = load i32, i32* %D, align 4
  %shr582 = lshr i32 %379, 23
  %or583 = or i32 %shl581, %shr582
  store i32 %or583, i32* %D, align 4
  %380 = load i32, i32* %A, align 4
  %381 = load i32, i32* %D, align 4
  %add584 = add i32 %381, %380
  store i32 %add584, i32* %D, align 4
  %382 = load i32, i32* %XX11, align 4
  %conv585 = zext i32 %382 to i64
  %add586 = add nsw i64 %conv585, 643717713
  %383 = load i32, i32* %D, align 4
  %384 = load i32, i32* %A, align 4
  %xor587 = xor i32 %383, %384
  %385 = load i32, i32* %B, align 4
  %and588 = and i32 %xor587, %385
  %386 = load i32, i32* %A, align 4
  %xor589 = xor i32 %and588, %386
  %conv590 = zext i32 %xor589 to i64
  %add591 = add nsw i64 %add586, %conv590
  %387 = load i32, i32* %C, align 4
  %conv592 = zext i32 %387 to i64
  %add593 = add nsw i64 %conv592, %add591
  %conv594 = trunc i64 %add593 to i32
  store i32 %conv594, i32* %C, align 4
  %388 = load i32, i32* %C, align 4
  %shl595 = shl i32 %388, 14
  %389 = load i32, i32* %C, align 4
  %shr596 = lshr i32 %389, 18
  %or597 = or i32 %shl595, %shr596
  store i32 %or597, i32* %C, align 4
  %390 = load i32, i32* %D, align 4
  %391 = load i32, i32* %C, align 4
  %add598 = add i32 %391, %390
  store i32 %add598, i32* %C, align 4
  %392 = load i32, i32* %XX0, align 4
  %conv599 = zext i32 %392 to i64
  %add600 = add nsw i64 %conv599, 3921069994
  %393 = load i32, i32* %C, align 4
  %394 = load i32, i32* %D, align 4
  %xor601 = xor i32 %393, %394
  %395 = load i32, i32* %A, align 4
  %and602 = and i32 %xor601, %395
  %396 = load i32, i32* %D, align 4
  %xor603 = xor i32 %and602, %396
  %conv604 = zext i32 %xor603 to i64
  %add605 = add nsw i64 %add600, %conv604
  %397 = load i32, i32* %B, align 4
  %conv606 = zext i32 %397 to i64
  %add607 = add nsw i64 %conv606, %add605
  %conv608 = trunc i64 %add607 to i32
  store i32 %conv608, i32* %B, align 4
  %398 = load i32, i32* %B, align 4
  %shl609 = shl i32 %398, 20
  %399 = load i32, i32* %B, align 4
  %shr610 = lshr i32 %399, 12
  %or611 = or i32 %shl609, %shr610
  store i32 %or611, i32* %B, align 4
  %400 = load i32, i32* %C, align 4
  %401 = load i32, i32* %B, align 4
  %add612 = add i32 %401, %400
  store i32 %add612, i32* %B, align 4
  %402 = load i32, i32* %XX5, align 4
  %conv613 = zext i32 %402 to i64
  %add614 = add nsw i64 %conv613, 3593408605
  %403 = load i32, i32* %B, align 4
  %404 = load i32, i32* %C, align 4
  %xor615 = xor i32 %403, %404
  %405 = load i32, i32* %D, align 4
  %and616 = and i32 %xor615, %405
  %406 = load i32, i32* %C, align 4
  %xor617 = xor i32 %and616, %406
  %conv618 = zext i32 %xor617 to i64
  %add619 = add nsw i64 %add614, %conv618
  %407 = load i32, i32* %A, align 4
  %conv620 = zext i32 %407 to i64
  %add621 = add nsw i64 %conv620, %add619
  %conv622 = trunc i64 %add621 to i32
  store i32 %conv622, i32* %A, align 4
  %408 = load i32, i32* %A, align 4
  %shl623 = shl i32 %408, 5
  %409 = load i32, i32* %A, align 4
  %shr624 = lshr i32 %409, 27
  %or625 = or i32 %shl623, %shr624
  store i32 %or625, i32* %A, align 4
  %410 = load i32, i32* %B, align 4
  %411 = load i32, i32* %A, align 4
  %add626 = add i32 %411, %410
  store i32 %add626, i32* %A, align 4
  %412 = load i32, i32* %XX10, align 4
  %conv627 = zext i32 %412 to i64
  %add628 = add nsw i64 %conv627, 38016083
  %413 = load i32, i32* %A, align 4
  %414 = load i32, i32* %B, align 4
  %xor629 = xor i32 %413, %414
  %415 = load i32, i32* %C, align 4
  %and630 = and i32 %xor629, %415
  %416 = load i32, i32* %B, align 4
  %xor631 = xor i32 %and630, %416
  %conv632 = zext i32 %xor631 to i64
  %add633 = add nsw i64 %add628, %conv632
  %417 = load i32, i32* %D, align 4
  %conv634 = zext i32 %417 to i64
  %add635 = add nsw i64 %conv634, %add633
  %conv636 = trunc i64 %add635 to i32
  store i32 %conv636, i32* %D, align 4
  %418 = load i32, i32* %D, align 4
  %shl637 = shl i32 %418, 9
  %419 = load i32, i32* %D, align 4
  %shr638 = lshr i32 %419, 23
  %or639 = or i32 %shl637, %shr638
  store i32 %or639, i32* %D, align 4
  %420 = load i32, i32* %A, align 4
  %421 = load i32, i32* %D, align 4
  %add640 = add i32 %421, %420
  store i32 %add640, i32* %D, align 4
  %422 = load i32, i32* %XX15, align 4
  %conv641 = zext i32 %422 to i64
  %add642 = add nsw i64 %conv641, 3634488961
  %423 = load i32, i32* %D, align 4
  %424 = load i32, i32* %A, align 4
  %xor643 = xor i32 %423, %424
  %425 = load i32, i32* %B, align 4
  %and644 = and i32 %xor643, %425
  %426 = load i32, i32* %A, align 4
  %xor645 = xor i32 %and644, %426
  %conv646 = zext i32 %xor645 to i64
  %add647 = add nsw i64 %add642, %conv646
  %427 = load i32, i32* %C, align 4
  %conv648 = zext i32 %427 to i64
  %add649 = add nsw i64 %conv648, %add647
  %conv650 = trunc i64 %add649 to i32
  store i32 %conv650, i32* %C, align 4
  %428 = load i32, i32* %C, align 4
  %shl651 = shl i32 %428, 14
  %429 = load i32, i32* %C, align 4
  %shr652 = lshr i32 %429, 18
  %or653 = or i32 %shl651, %shr652
  store i32 %or653, i32* %C, align 4
  %430 = load i32, i32* %D, align 4
  %431 = load i32, i32* %C, align 4
  %add654 = add i32 %431, %430
  store i32 %add654, i32* %C, align 4
  %432 = load i32, i32* %XX4, align 4
  %conv655 = zext i32 %432 to i64
  %add656 = add nsw i64 %conv655, 3889429448
  %433 = load i32, i32* %C, align 4
  %434 = load i32, i32* %D, align 4
  %xor657 = xor i32 %433, %434
  %435 = load i32, i32* %A, align 4
  %and658 = and i32 %xor657, %435
  %436 = load i32, i32* %D, align 4
  %xor659 = xor i32 %and658, %436
  %conv660 = zext i32 %xor659 to i64
  %add661 = add nsw i64 %add656, %conv660
  %437 = load i32, i32* %B, align 4
  %conv662 = zext i32 %437 to i64
  %add663 = add nsw i64 %conv662, %add661
  %conv664 = trunc i64 %add663 to i32
  store i32 %conv664, i32* %B, align 4
  %438 = load i32, i32* %B, align 4
  %shl665 = shl i32 %438, 20
  %439 = load i32, i32* %B, align 4
  %shr666 = lshr i32 %439, 12
  %or667 = or i32 %shl665, %shr666
  store i32 %or667, i32* %B, align 4
  %440 = load i32, i32* %C, align 4
  %441 = load i32, i32* %B, align 4
  %add668 = add i32 %441, %440
  store i32 %add668, i32* %B, align 4
  %442 = load i32, i32* %XX9, align 4
  %conv669 = zext i32 %442 to i64
  %add670 = add nsw i64 %conv669, 568446438
  %443 = load i32, i32* %B, align 4
  %444 = load i32, i32* %C, align 4
  %xor671 = xor i32 %443, %444
  %445 = load i32, i32* %D, align 4
  %and672 = and i32 %xor671, %445
  %446 = load i32, i32* %C, align 4
  %xor673 = xor i32 %and672, %446
  %conv674 = zext i32 %xor673 to i64
  %add675 = add nsw i64 %add670, %conv674
  %447 = load i32, i32* %A, align 4
  %conv676 = zext i32 %447 to i64
  %add677 = add nsw i64 %conv676, %add675
  %conv678 = trunc i64 %add677 to i32
  store i32 %conv678, i32* %A, align 4
  %448 = load i32, i32* %A, align 4
  %shl679 = shl i32 %448, 5
  %449 = load i32, i32* %A, align 4
  %shr680 = lshr i32 %449, 27
  %or681 = or i32 %shl679, %shr680
  store i32 %or681, i32* %A, align 4
  %450 = load i32, i32* %B, align 4
  %451 = load i32, i32* %A, align 4
  %add682 = add i32 %451, %450
  store i32 %add682, i32* %A, align 4
  %452 = load i32, i32* %XX14, align 4
  %conv683 = zext i32 %452 to i64
  %add684 = add nsw i64 %conv683, 3275163606
  %453 = load i32, i32* %A, align 4
  %454 = load i32, i32* %B, align 4
  %xor685 = xor i32 %453, %454
  %455 = load i32, i32* %C, align 4
  %and686 = and i32 %xor685, %455
  %456 = load i32, i32* %B, align 4
  %xor687 = xor i32 %and686, %456
  %conv688 = zext i32 %xor687 to i64
  %add689 = add nsw i64 %add684, %conv688
  %457 = load i32, i32* %D, align 4
  %conv690 = zext i32 %457 to i64
  %add691 = add nsw i64 %conv690, %add689
  %conv692 = trunc i64 %add691 to i32
  store i32 %conv692, i32* %D, align 4
  %458 = load i32, i32* %D, align 4
  %shl693 = shl i32 %458, 9
  %459 = load i32, i32* %D, align 4
  %shr694 = lshr i32 %459, 23
  %or695 = or i32 %shl693, %shr694
  store i32 %or695, i32* %D, align 4
  %460 = load i32, i32* %A, align 4
  %461 = load i32, i32* %D, align 4
  %add696 = add i32 %461, %460
  store i32 %add696, i32* %D, align 4
  %462 = load i32, i32* %XX3, align 4
  %conv697 = zext i32 %462 to i64
  %add698 = add nsw i64 %conv697, 4107603335
  %463 = load i32, i32* %D, align 4
  %464 = load i32, i32* %A, align 4
  %xor699 = xor i32 %463, %464
  %465 = load i32, i32* %B, align 4
  %and700 = and i32 %xor699, %465
  %466 = load i32, i32* %A, align 4
  %xor701 = xor i32 %and700, %466
  %conv702 = zext i32 %xor701 to i64
  %add703 = add nsw i64 %add698, %conv702
  %467 = load i32, i32* %C, align 4
  %conv704 = zext i32 %467 to i64
  %add705 = add nsw i64 %conv704, %add703
  %conv706 = trunc i64 %add705 to i32
  store i32 %conv706, i32* %C, align 4
  %468 = load i32, i32* %C, align 4
  %shl707 = shl i32 %468, 14
  %469 = load i32, i32* %C, align 4
  %shr708 = lshr i32 %469, 18
  %or709 = or i32 %shl707, %shr708
  store i32 %or709, i32* %C, align 4
  %470 = load i32, i32* %D, align 4
  %471 = load i32, i32* %C, align 4
  %add710 = add i32 %471, %470
  store i32 %add710, i32* %C, align 4
  %472 = load i32, i32* %XX8, align 4
  %conv711 = zext i32 %472 to i64
  %add712 = add nsw i64 %conv711, 1163531501
  %473 = load i32, i32* %C, align 4
  %474 = load i32, i32* %D, align 4
  %xor713 = xor i32 %473, %474
  %475 = load i32, i32* %A, align 4
  %and714 = and i32 %xor713, %475
  %476 = load i32, i32* %D, align 4
  %xor715 = xor i32 %and714, %476
  %conv716 = zext i32 %xor715 to i64
  %add717 = add nsw i64 %add712, %conv716
  %477 = load i32, i32* %B, align 4
  %conv718 = zext i32 %477 to i64
  %add719 = add nsw i64 %conv718, %add717
  %conv720 = trunc i64 %add719 to i32
  store i32 %conv720, i32* %B, align 4
  %478 = load i32, i32* %B, align 4
  %shl721 = shl i32 %478, 20
  %479 = load i32, i32* %B, align 4
  %shr722 = lshr i32 %479, 12
  %or723 = or i32 %shl721, %shr722
  store i32 %or723, i32* %B, align 4
  %480 = load i32, i32* %C, align 4
  %481 = load i32, i32* %B, align 4
  %add724 = add i32 %481, %480
  store i32 %add724, i32* %B, align 4
  %482 = load i32, i32* %XX13, align 4
  %conv725 = zext i32 %482 to i64
  %add726 = add nsw i64 %conv725, 2850285829
  %483 = load i32, i32* %B, align 4
  %484 = load i32, i32* %C, align 4
  %xor727 = xor i32 %483, %484
  %485 = load i32, i32* %D, align 4
  %and728 = and i32 %xor727, %485
  %486 = load i32, i32* %C, align 4
  %xor729 = xor i32 %and728, %486
  %conv730 = zext i32 %xor729 to i64
  %add731 = add nsw i64 %add726, %conv730
  %487 = load i32, i32* %A, align 4
  %conv732 = zext i32 %487 to i64
  %add733 = add nsw i64 %conv732, %add731
  %conv734 = trunc i64 %add733 to i32
  store i32 %conv734, i32* %A, align 4
  %488 = load i32, i32* %A, align 4
  %shl735 = shl i32 %488, 5
  %489 = load i32, i32* %A, align 4
  %shr736 = lshr i32 %489, 27
  %or737 = or i32 %shl735, %shr736
  store i32 %or737, i32* %A, align 4
  %490 = load i32, i32* %B, align 4
  %491 = load i32, i32* %A, align 4
  %add738 = add i32 %491, %490
  store i32 %add738, i32* %A, align 4
  %492 = load i32, i32* %XX2, align 4
  %conv739 = zext i32 %492 to i64
  %add740 = add nsw i64 %conv739, 4243563512
  %493 = load i32, i32* %A, align 4
  %494 = load i32, i32* %B, align 4
  %xor741 = xor i32 %493, %494
  %495 = load i32, i32* %C, align 4
  %and742 = and i32 %xor741, %495
  %496 = load i32, i32* %B, align 4
  %xor743 = xor i32 %and742, %496
  %conv744 = zext i32 %xor743 to i64
  %add745 = add nsw i64 %add740, %conv744
  %497 = load i32, i32* %D, align 4
  %conv746 = zext i32 %497 to i64
  %add747 = add nsw i64 %conv746, %add745
  %conv748 = trunc i64 %add747 to i32
  store i32 %conv748, i32* %D, align 4
  %498 = load i32, i32* %D, align 4
  %shl749 = shl i32 %498, 9
  %499 = load i32, i32* %D, align 4
  %shr750 = lshr i32 %499, 23
  %or751 = or i32 %shl749, %shr750
  store i32 %or751, i32* %D, align 4
  %500 = load i32, i32* %A, align 4
  %501 = load i32, i32* %D, align 4
  %add752 = add i32 %501, %500
  store i32 %add752, i32* %D, align 4
  %502 = load i32, i32* %XX7, align 4
  %conv753 = zext i32 %502 to i64
  %add754 = add nsw i64 %conv753, 1735328473
  %503 = load i32, i32* %D, align 4
  %504 = load i32, i32* %A, align 4
  %xor755 = xor i32 %503, %504
  %505 = load i32, i32* %B, align 4
  %and756 = and i32 %xor755, %505
  %506 = load i32, i32* %A, align 4
  %xor757 = xor i32 %and756, %506
  %conv758 = zext i32 %xor757 to i64
  %add759 = add nsw i64 %add754, %conv758
  %507 = load i32, i32* %C, align 4
  %conv760 = zext i32 %507 to i64
  %add761 = add nsw i64 %conv760, %add759
  %conv762 = trunc i64 %add761 to i32
  store i32 %conv762, i32* %C, align 4
  %508 = load i32, i32* %C, align 4
  %shl763 = shl i32 %508, 14
  %509 = load i32, i32* %C, align 4
  %shr764 = lshr i32 %509, 18
  %or765 = or i32 %shl763, %shr764
  store i32 %or765, i32* %C, align 4
  %510 = load i32, i32* %D, align 4
  %511 = load i32, i32* %C, align 4
  %add766 = add i32 %511, %510
  store i32 %add766, i32* %C, align 4
  %512 = load i32, i32* %XX12, align 4
  %conv767 = zext i32 %512 to i64
  %add768 = add nsw i64 %conv767, 2368359562
  %513 = load i32, i32* %C, align 4
  %514 = load i32, i32* %D, align 4
  %xor769 = xor i32 %513, %514
  %515 = load i32, i32* %A, align 4
  %and770 = and i32 %xor769, %515
  %516 = load i32, i32* %D, align 4
  %xor771 = xor i32 %and770, %516
  %conv772 = zext i32 %xor771 to i64
  %add773 = add nsw i64 %add768, %conv772
  %517 = load i32, i32* %B, align 4
  %conv774 = zext i32 %517 to i64
  %add775 = add nsw i64 %conv774, %add773
  %conv776 = trunc i64 %add775 to i32
  store i32 %conv776, i32* %B, align 4
  %518 = load i32, i32* %B, align 4
  %shl777 = shl i32 %518, 20
  %519 = load i32, i32* %B, align 4
  %shr778 = lshr i32 %519, 12
  %or779 = or i32 %shl777, %shr778
  store i32 %or779, i32* %B, align 4
  %520 = load i32, i32* %C, align 4
  %521 = load i32, i32* %B, align 4
  %add780 = add i32 %521, %520
  store i32 %add780, i32* %B, align 4
  %522 = load i32, i32* %XX5, align 4
  %conv781 = zext i32 %522 to i64
  %add782 = add nsw i64 %conv781, 4294588738
  %523 = load i32, i32* %B, align 4
  %524 = load i32, i32* %C, align 4
  %xor783 = xor i32 %523, %524
  %525 = load i32, i32* %D, align 4
  %xor784 = xor i32 %xor783, %525
  %conv785 = zext i32 %xor784 to i64
  %add786 = add nsw i64 %add782, %conv785
  %526 = load i32, i32* %A, align 4
  %conv787 = zext i32 %526 to i64
  %add788 = add nsw i64 %conv787, %add786
  %conv789 = trunc i64 %add788 to i32
  store i32 %conv789, i32* %A, align 4
  %527 = load i32, i32* %A, align 4
  %shl790 = shl i32 %527, 4
  %528 = load i32, i32* %A, align 4
  %shr791 = lshr i32 %528, 28
  %or792 = or i32 %shl790, %shr791
  store i32 %or792, i32* %A, align 4
  %529 = load i32, i32* %B, align 4
  %530 = load i32, i32* %A, align 4
  %add793 = add i32 %530, %529
  store i32 %add793, i32* %A, align 4
  %531 = load i32, i32* %XX8, align 4
  %conv794 = zext i32 %531 to i64
  %add795 = add nsw i64 %conv794, 2272392833
  %532 = load i32, i32* %A, align 4
  %533 = load i32, i32* %B, align 4
  %xor796 = xor i32 %532, %533
  %534 = load i32, i32* %C, align 4
  %xor797 = xor i32 %xor796, %534
  %conv798 = zext i32 %xor797 to i64
  %add799 = add nsw i64 %add795, %conv798
  %535 = load i32, i32* %D, align 4
  %conv800 = zext i32 %535 to i64
  %add801 = add nsw i64 %conv800, %add799
  %conv802 = trunc i64 %add801 to i32
  store i32 %conv802, i32* %D, align 4
  %536 = load i32, i32* %D, align 4
  %shl803 = shl i32 %536, 11
  %537 = load i32, i32* %D, align 4
  %shr804 = lshr i32 %537, 21
  %or805 = or i32 %shl803, %shr804
  store i32 %or805, i32* %D, align 4
  %538 = load i32, i32* %A, align 4
  %539 = load i32, i32* %D, align 4
  %add806 = add i32 %539, %538
  store i32 %add806, i32* %D, align 4
  %540 = load i32, i32* %XX11, align 4
  %conv807 = zext i32 %540 to i64
  %add808 = add nsw i64 %conv807, 1839030562
  %541 = load i32, i32* %D, align 4
  %542 = load i32, i32* %A, align 4
  %xor809 = xor i32 %541, %542
  %543 = load i32, i32* %B, align 4
  %xor810 = xor i32 %xor809, %543
  %conv811 = zext i32 %xor810 to i64
  %add812 = add nsw i64 %add808, %conv811
  %544 = load i32, i32* %C, align 4
  %conv813 = zext i32 %544 to i64
  %add814 = add nsw i64 %conv813, %add812
  %conv815 = trunc i64 %add814 to i32
  store i32 %conv815, i32* %C, align 4
  %545 = load i32, i32* %C, align 4
  %shl816 = shl i32 %545, 16
  %546 = load i32, i32* %C, align 4
  %shr817 = lshr i32 %546, 16
  %or818 = or i32 %shl816, %shr817
  store i32 %or818, i32* %C, align 4
  %547 = load i32, i32* %D, align 4
  %548 = load i32, i32* %C, align 4
  %add819 = add i32 %548, %547
  store i32 %add819, i32* %C, align 4
  %549 = load i32, i32* %XX14, align 4
  %conv820 = zext i32 %549 to i64
  %add821 = add nsw i64 %conv820, 4259657740
  %550 = load i32, i32* %C, align 4
  %551 = load i32, i32* %D, align 4
  %xor822 = xor i32 %550, %551
  %552 = load i32, i32* %A, align 4
  %xor823 = xor i32 %xor822, %552
  %conv824 = zext i32 %xor823 to i64
  %add825 = add nsw i64 %add821, %conv824
  %553 = load i32, i32* %B, align 4
  %conv826 = zext i32 %553 to i64
  %add827 = add nsw i64 %conv826, %add825
  %conv828 = trunc i64 %add827 to i32
  store i32 %conv828, i32* %B, align 4
  %554 = load i32, i32* %B, align 4
  %shl829 = shl i32 %554, 23
  %555 = load i32, i32* %B, align 4
  %shr830 = lshr i32 %555, 9
  %or831 = or i32 %shl829, %shr830
  store i32 %or831, i32* %B, align 4
  %556 = load i32, i32* %C, align 4
  %557 = load i32, i32* %B, align 4
  %add832 = add i32 %557, %556
  store i32 %add832, i32* %B, align 4
  %558 = load i32, i32* %XX1, align 4
  %conv833 = zext i32 %558 to i64
  %add834 = add nsw i64 %conv833, 2763975236
  %559 = load i32, i32* %B, align 4
  %560 = load i32, i32* %C, align 4
  %xor835 = xor i32 %559, %560
  %561 = load i32, i32* %D, align 4
  %xor836 = xor i32 %xor835, %561
  %conv837 = zext i32 %xor836 to i64
  %add838 = add nsw i64 %add834, %conv837
  %562 = load i32, i32* %A, align 4
  %conv839 = zext i32 %562 to i64
  %add840 = add nsw i64 %conv839, %add838
  %conv841 = trunc i64 %add840 to i32
  store i32 %conv841, i32* %A, align 4
  %563 = load i32, i32* %A, align 4
  %shl842 = shl i32 %563, 4
  %564 = load i32, i32* %A, align 4
  %shr843 = lshr i32 %564, 28
  %or844 = or i32 %shl842, %shr843
  store i32 %or844, i32* %A, align 4
  %565 = load i32, i32* %B, align 4
  %566 = load i32, i32* %A, align 4
  %add845 = add i32 %566, %565
  store i32 %add845, i32* %A, align 4
  %567 = load i32, i32* %XX4, align 4
  %conv846 = zext i32 %567 to i64
  %add847 = add nsw i64 %conv846, 1272893353
  %568 = load i32, i32* %A, align 4
  %569 = load i32, i32* %B, align 4
  %xor848 = xor i32 %568, %569
  %570 = load i32, i32* %C, align 4
  %xor849 = xor i32 %xor848, %570
  %conv850 = zext i32 %xor849 to i64
  %add851 = add nsw i64 %add847, %conv850
  %571 = load i32, i32* %D, align 4
  %conv852 = zext i32 %571 to i64
  %add853 = add nsw i64 %conv852, %add851
  %conv854 = trunc i64 %add853 to i32
  store i32 %conv854, i32* %D, align 4
  %572 = load i32, i32* %D, align 4
  %shl855 = shl i32 %572, 11
  %573 = load i32, i32* %D, align 4
  %shr856 = lshr i32 %573, 21
  %or857 = or i32 %shl855, %shr856
  store i32 %or857, i32* %D, align 4
  %574 = load i32, i32* %A, align 4
  %575 = load i32, i32* %D, align 4
  %add858 = add i32 %575, %574
  store i32 %add858, i32* %D, align 4
  %576 = load i32, i32* %XX7, align 4
  %conv859 = zext i32 %576 to i64
  %add860 = add nsw i64 %conv859, 4139469664
  %577 = load i32, i32* %D, align 4
  %578 = load i32, i32* %A, align 4
  %xor861 = xor i32 %577, %578
  %579 = load i32, i32* %B, align 4
  %xor862 = xor i32 %xor861, %579
  %conv863 = zext i32 %xor862 to i64
  %add864 = add nsw i64 %add860, %conv863
  %580 = load i32, i32* %C, align 4
  %conv865 = zext i32 %580 to i64
  %add866 = add nsw i64 %conv865, %add864
  %conv867 = trunc i64 %add866 to i32
  store i32 %conv867, i32* %C, align 4
  %581 = load i32, i32* %C, align 4
  %shl868 = shl i32 %581, 16
  %582 = load i32, i32* %C, align 4
  %shr869 = lshr i32 %582, 16
  %or870 = or i32 %shl868, %shr869
  store i32 %or870, i32* %C, align 4
  %583 = load i32, i32* %D, align 4
  %584 = load i32, i32* %C, align 4
  %add871 = add i32 %584, %583
  store i32 %add871, i32* %C, align 4
  %585 = load i32, i32* %XX10, align 4
  %conv872 = zext i32 %585 to i64
  %add873 = add nsw i64 %conv872, 3200236656
  %586 = load i32, i32* %C, align 4
  %587 = load i32, i32* %D, align 4
  %xor874 = xor i32 %586, %587
  %588 = load i32, i32* %A, align 4
  %xor875 = xor i32 %xor874, %588
  %conv876 = zext i32 %xor875 to i64
  %add877 = add nsw i64 %add873, %conv876
  %589 = load i32, i32* %B, align 4
  %conv878 = zext i32 %589 to i64
  %add879 = add nsw i64 %conv878, %add877
  %conv880 = trunc i64 %add879 to i32
  store i32 %conv880, i32* %B, align 4
  %590 = load i32, i32* %B, align 4
  %shl881 = shl i32 %590, 23
  %591 = load i32, i32* %B, align 4
  %shr882 = lshr i32 %591, 9
  %or883 = or i32 %shl881, %shr882
  store i32 %or883, i32* %B, align 4
  %592 = load i32, i32* %C, align 4
  %593 = load i32, i32* %B, align 4
  %add884 = add i32 %593, %592
  store i32 %add884, i32* %B, align 4
  %594 = load i32, i32* %XX13, align 4
  %conv885 = zext i32 %594 to i64
  %add886 = add nsw i64 %conv885, 681279174
  %595 = load i32, i32* %B, align 4
  %596 = load i32, i32* %C, align 4
  %xor887 = xor i32 %595, %596
  %597 = load i32, i32* %D, align 4
  %xor888 = xor i32 %xor887, %597
  %conv889 = zext i32 %xor888 to i64
  %add890 = add nsw i64 %add886, %conv889
  %598 = load i32, i32* %A, align 4
  %conv891 = zext i32 %598 to i64
  %add892 = add nsw i64 %conv891, %add890
  %conv893 = trunc i64 %add892 to i32
  store i32 %conv893, i32* %A, align 4
  %599 = load i32, i32* %A, align 4
  %shl894 = shl i32 %599, 4
  %600 = load i32, i32* %A, align 4
  %shr895 = lshr i32 %600, 28
  %or896 = or i32 %shl894, %shr895
  store i32 %or896, i32* %A, align 4
  %601 = load i32, i32* %B, align 4
  %602 = load i32, i32* %A, align 4
  %add897 = add i32 %602, %601
  store i32 %add897, i32* %A, align 4
  %603 = load i32, i32* %XX0, align 4
  %conv898 = zext i32 %603 to i64
  %add899 = add nsw i64 %conv898, 3936430074
  %604 = load i32, i32* %A, align 4
  %605 = load i32, i32* %B, align 4
  %xor900 = xor i32 %604, %605
  %606 = load i32, i32* %C, align 4
  %xor901 = xor i32 %xor900, %606
  %conv902 = zext i32 %xor901 to i64
  %add903 = add nsw i64 %add899, %conv902
  %607 = load i32, i32* %D, align 4
  %conv904 = zext i32 %607 to i64
  %add905 = add nsw i64 %conv904, %add903
  %conv906 = trunc i64 %add905 to i32
  store i32 %conv906, i32* %D, align 4
  %608 = load i32, i32* %D, align 4
  %shl907 = shl i32 %608, 11
  %609 = load i32, i32* %D, align 4
  %shr908 = lshr i32 %609, 21
  %or909 = or i32 %shl907, %shr908
  store i32 %or909, i32* %D, align 4
  %610 = load i32, i32* %A, align 4
  %611 = load i32, i32* %D, align 4
  %add910 = add i32 %611, %610
  store i32 %add910, i32* %D, align 4
  %612 = load i32, i32* %XX3, align 4
  %conv911 = zext i32 %612 to i64
  %add912 = add nsw i64 %conv911, 3572445317
  %613 = load i32, i32* %D, align 4
  %614 = load i32, i32* %A, align 4
  %xor913 = xor i32 %613, %614
  %615 = load i32, i32* %B, align 4
  %xor914 = xor i32 %xor913, %615
  %conv915 = zext i32 %xor914 to i64
  %add916 = add nsw i64 %add912, %conv915
  %616 = load i32, i32* %C, align 4
  %conv917 = zext i32 %616 to i64
  %add918 = add nsw i64 %conv917, %add916
  %conv919 = trunc i64 %add918 to i32
  store i32 %conv919, i32* %C, align 4
  %617 = load i32, i32* %C, align 4
  %shl920 = shl i32 %617, 16
  %618 = load i32, i32* %C, align 4
  %shr921 = lshr i32 %618, 16
  %or922 = or i32 %shl920, %shr921
  store i32 %or922, i32* %C, align 4
  %619 = load i32, i32* %D, align 4
  %620 = load i32, i32* %C, align 4
  %add923 = add i32 %620, %619
  store i32 %add923, i32* %C, align 4
  %621 = load i32, i32* %XX6, align 4
  %conv924 = zext i32 %621 to i64
  %add925 = add nsw i64 %conv924, 76029189
  %622 = load i32, i32* %C, align 4
  %623 = load i32, i32* %D, align 4
  %xor926 = xor i32 %622, %623
  %624 = load i32, i32* %A, align 4
  %xor927 = xor i32 %xor926, %624
  %conv928 = zext i32 %xor927 to i64
  %add929 = add nsw i64 %add925, %conv928
  %625 = load i32, i32* %B, align 4
  %conv930 = zext i32 %625 to i64
  %add931 = add nsw i64 %conv930, %add929
  %conv932 = trunc i64 %add931 to i32
  store i32 %conv932, i32* %B, align 4
  %626 = load i32, i32* %B, align 4
  %shl933 = shl i32 %626, 23
  %627 = load i32, i32* %B, align 4
  %shr934 = lshr i32 %627, 9
  %or935 = or i32 %shl933, %shr934
  store i32 %or935, i32* %B, align 4
  %628 = load i32, i32* %C, align 4
  %629 = load i32, i32* %B, align 4
  %add936 = add i32 %629, %628
  store i32 %add936, i32* %B, align 4
  %630 = load i32, i32* %XX9, align 4
  %conv937 = zext i32 %630 to i64
  %add938 = add nsw i64 %conv937, 3654602809
  %631 = load i32, i32* %B, align 4
  %632 = load i32, i32* %C, align 4
  %xor939 = xor i32 %631, %632
  %633 = load i32, i32* %D, align 4
  %xor940 = xor i32 %xor939, %633
  %conv941 = zext i32 %xor940 to i64
  %add942 = add nsw i64 %add938, %conv941
  %634 = load i32, i32* %A, align 4
  %conv943 = zext i32 %634 to i64
  %add944 = add nsw i64 %conv943, %add942
  %conv945 = trunc i64 %add944 to i32
  store i32 %conv945, i32* %A, align 4
  %635 = load i32, i32* %A, align 4
  %shl946 = shl i32 %635, 4
  %636 = load i32, i32* %A, align 4
  %shr947 = lshr i32 %636, 28
  %or948 = or i32 %shl946, %shr947
  store i32 %or948, i32* %A, align 4
  %637 = load i32, i32* %B, align 4
  %638 = load i32, i32* %A, align 4
  %add949 = add i32 %638, %637
  store i32 %add949, i32* %A, align 4
  %639 = load i32, i32* %XX12, align 4
  %conv950 = zext i32 %639 to i64
  %add951 = add nsw i64 %conv950, 3873151461
  %640 = load i32, i32* %A, align 4
  %641 = load i32, i32* %B, align 4
  %xor952 = xor i32 %640, %641
  %642 = load i32, i32* %C, align 4
  %xor953 = xor i32 %xor952, %642
  %conv954 = zext i32 %xor953 to i64
  %add955 = add nsw i64 %add951, %conv954
  %643 = load i32, i32* %D, align 4
  %conv956 = zext i32 %643 to i64
  %add957 = add nsw i64 %conv956, %add955
  %conv958 = trunc i64 %add957 to i32
  store i32 %conv958, i32* %D, align 4
  %644 = load i32, i32* %D, align 4
  %shl959 = shl i32 %644, 11
  %645 = load i32, i32* %D, align 4
  %shr960 = lshr i32 %645, 21
  %or961 = or i32 %shl959, %shr960
  store i32 %or961, i32* %D, align 4
  %646 = load i32, i32* %A, align 4
  %647 = load i32, i32* %D, align 4
  %add962 = add i32 %647, %646
  store i32 %add962, i32* %D, align 4
  %648 = load i32, i32* %XX15, align 4
  %conv963 = zext i32 %648 to i64
  %add964 = add nsw i64 %conv963, 530742520
  %649 = load i32, i32* %D, align 4
  %650 = load i32, i32* %A, align 4
  %xor965 = xor i32 %649, %650
  %651 = load i32, i32* %B, align 4
  %xor966 = xor i32 %xor965, %651
  %conv967 = zext i32 %xor966 to i64
  %add968 = add nsw i64 %add964, %conv967
  %652 = load i32, i32* %C, align 4
  %conv969 = zext i32 %652 to i64
  %add970 = add nsw i64 %conv969, %add968
  %conv971 = trunc i64 %add970 to i32
  store i32 %conv971, i32* %C, align 4
  %653 = load i32, i32* %C, align 4
  %shl972 = shl i32 %653, 16
  %654 = load i32, i32* %C, align 4
  %shr973 = lshr i32 %654, 16
  %or974 = or i32 %shl972, %shr973
  store i32 %or974, i32* %C, align 4
  %655 = load i32, i32* %D, align 4
  %656 = load i32, i32* %C, align 4
  %add975 = add i32 %656, %655
  store i32 %add975, i32* %C, align 4
  %657 = load i32, i32* %XX2, align 4
  %conv976 = zext i32 %657 to i64
  %add977 = add nsw i64 %conv976, 3299628645
  %658 = load i32, i32* %C, align 4
  %659 = load i32, i32* %D, align 4
  %xor978 = xor i32 %658, %659
  %660 = load i32, i32* %A, align 4
  %xor979 = xor i32 %xor978, %660
  %conv980 = zext i32 %xor979 to i64
  %add981 = add nsw i64 %add977, %conv980
  %661 = load i32, i32* %B, align 4
  %conv982 = zext i32 %661 to i64
  %add983 = add nsw i64 %conv982, %add981
  %conv984 = trunc i64 %add983 to i32
  store i32 %conv984, i32* %B, align 4
  %662 = load i32, i32* %B, align 4
  %shl985 = shl i32 %662, 23
  %663 = load i32, i32* %B, align 4
  %shr986 = lshr i32 %663, 9
  %or987 = or i32 %shl985, %shr986
  store i32 %or987, i32* %B, align 4
  %664 = load i32, i32* %C, align 4
  %665 = load i32, i32* %B, align 4
  %add988 = add i32 %665, %664
  store i32 %add988, i32* %B, align 4
  %666 = load i32, i32* %XX0, align 4
  %conv989 = zext i32 %666 to i64
  %add990 = add nsw i64 %conv989, 4096336452
  %667 = load i32, i32* %D, align 4
  %neg = xor i32 %667, -1
  %668 = load i32, i32* %B, align 4
  %or991 = or i32 %neg, %668
  %669 = load i32, i32* %C, align 4
  %xor992 = xor i32 %or991, %669
  %conv993 = zext i32 %xor992 to i64
  %add994 = add nsw i64 %add990, %conv993
  %670 = load i32, i32* %A, align 4
  %conv995 = zext i32 %670 to i64
  %add996 = add nsw i64 %conv995, %add994
  %conv997 = trunc i64 %add996 to i32
  store i32 %conv997, i32* %A, align 4
  %671 = load i32, i32* %A, align 4
  %shl998 = shl i32 %671, 6
  %672 = load i32, i32* %A, align 4
  %shr999 = lshr i32 %672, 26
  %or1000 = or i32 %shl998, %shr999
  store i32 %or1000, i32* %A, align 4
  %673 = load i32, i32* %B, align 4
  %674 = load i32, i32* %A, align 4
  %add1001 = add i32 %674, %673
  store i32 %add1001, i32* %A, align 4
  %675 = load i32, i32* %XX7, align 4
  %conv1002 = zext i32 %675 to i64
  %add1003 = add nsw i64 %conv1002, 1126891415
  %676 = load i32, i32* %C, align 4
  %neg1004 = xor i32 %676, -1
  %677 = load i32, i32* %A, align 4
  %or1005 = or i32 %neg1004, %677
  %678 = load i32, i32* %B, align 4
  %xor1006 = xor i32 %or1005, %678
  %conv1007 = zext i32 %xor1006 to i64
  %add1008 = add nsw i64 %add1003, %conv1007
  %679 = load i32, i32* %D, align 4
  %conv1009 = zext i32 %679 to i64
  %add1010 = add nsw i64 %conv1009, %add1008
  %conv1011 = trunc i64 %add1010 to i32
  store i32 %conv1011, i32* %D, align 4
  %680 = load i32, i32* %D, align 4
  %shl1012 = shl i32 %680, 10
  %681 = load i32, i32* %D, align 4
  %shr1013 = lshr i32 %681, 22
  %or1014 = or i32 %shl1012, %shr1013
  store i32 %or1014, i32* %D, align 4
  %682 = load i32, i32* %A, align 4
  %683 = load i32, i32* %D, align 4
  %add1015 = add i32 %683, %682
  store i32 %add1015, i32* %D, align 4
  %684 = load i32, i32* %XX14, align 4
  %conv1016 = zext i32 %684 to i64
  %add1017 = add nsw i64 %conv1016, 2878612391
  %685 = load i32, i32* %B, align 4
  %neg1018 = xor i32 %685, -1
  %686 = load i32, i32* %D, align 4
  %or1019 = or i32 %neg1018, %686
  %687 = load i32, i32* %A, align 4
  %xor1020 = xor i32 %or1019, %687
  %conv1021 = zext i32 %xor1020 to i64
  %add1022 = add nsw i64 %add1017, %conv1021
  %688 = load i32, i32* %C, align 4
  %conv1023 = zext i32 %688 to i64
  %add1024 = add nsw i64 %conv1023, %add1022
  %conv1025 = trunc i64 %add1024 to i32
  store i32 %conv1025, i32* %C, align 4
  %689 = load i32, i32* %C, align 4
  %shl1026 = shl i32 %689, 15
  %690 = load i32, i32* %C, align 4
  %shr1027 = lshr i32 %690, 17
  %or1028 = or i32 %shl1026, %shr1027
  store i32 %or1028, i32* %C, align 4
  %691 = load i32, i32* %D, align 4
  %692 = load i32, i32* %C, align 4
  %add1029 = add i32 %692, %691
  store i32 %add1029, i32* %C, align 4
  %693 = load i32, i32* %XX5, align 4
  %conv1030 = zext i32 %693 to i64
  %add1031 = add nsw i64 %conv1030, 4237533241
  %694 = load i32, i32* %A, align 4
  %neg1032 = xor i32 %694, -1
  %695 = load i32, i32* %C, align 4
  %or1033 = or i32 %neg1032, %695
  %696 = load i32, i32* %D, align 4
  %xor1034 = xor i32 %or1033, %696
  %conv1035 = zext i32 %xor1034 to i64
  %add1036 = add nsw i64 %add1031, %conv1035
  %697 = load i32, i32* %B, align 4
  %conv1037 = zext i32 %697 to i64
  %add1038 = add nsw i64 %conv1037, %add1036
  %conv1039 = trunc i64 %add1038 to i32
  store i32 %conv1039, i32* %B, align 4
  %698 = load i32, i32* %B, align 4
  %shl1040 = shl i32 %698, 21
  %699 = load i32, i32* %B, align 4
  %shr1041 = lshr i32 %699, 11
  %or1042 = or i32 %shl1040, %shr1041
  store i32 %or1042, i32* %B, align 4
  %700 = load i32, i32* %C, align 4
  %701 = load i32, i32* %B, align 4
  %add1043 = add i32 %701, %700
  store i32 %add1043, i32* %B, align 4
  %702 = load i32, i32* %XX12, align 4
  %conv1044 = zext i32 %702 to i64
  %add1045 = add nsw i64 %conv1044, 1700485571
  %703 = load i32, i32* %D, align 4
  %neg1046 = xor i32 %703, -1
  %704 = load i32, i32* %B, align 4
  %or1047 = or i32 %neg1046, %704
  %705 = load i32, i32* %C, align 4
  %xor1048 = xor i32 %or1047, %705
  %conv1049 = zext i32 %xor1048 to i64
  %add1050 = add nsw i64 %add1045, %conv1049
  %706 = load i32, i32* %A, align 4
  %conv1051 = zext i32 %706 to i64
  %add1052 = add nsw i64 %conv1051, %add1050
  %conv1053 = trunc i64 %add1052 to i32
  store i32 %conv1053, i32* %A, align 4
  %707 = load i32, i32* %A, align 4
  %shl1054 = shl i32 %707, 6
  %708 = load i32, i32* %A, align 4
  %shr1055 = lshr i32 %708, 26
  %or1056 = or i32 %shl1054, %shr1055
  store i32 %or1056, i32* %A, align 4
  %709 = load i32, i32* %B, align 4
  %710 = load i32, i32* %A, align 4
  %add1057 = add i32 %710, %709
  store i32 %add1057, i32* %A, align 4
  %711 = load i32, i32* %XX3, align 4
  %conv1058 = zext i32 %711 to i64
  %add1059 = add nsw i64 %conv1058, 2399980690
  %712 = load i32, i32* %C, align 4
  %neg1060 = xor i32 %712, -1
  %713 = load i32, i32* %A, align 4
  %or1061 = or i32 %neg1060, %713
  %714 = load i32, i32* %B, align 4
  %xor1062 = xor i32 %or1061, %714
  %conv1063 = zext i32 %xor1062 to i64
  %add1064 = add nsw i64 %add1059, %conv1063
  %715 = load i32, i32* %D, align 4
  %conv1065 = zext i32 %715 to i64
  %add1066 = add nsw i64 %conv1065, %add1064
  %conv1067 = trunc i64 %add1066 to i32
  store i32 %conv1067, i32* %D, align 4
  %716 = load i32, i32* %D, align 4
  %shl1068 = shl i32 %716, 10
  %717 = load i32, i32* %D, align 4
  %shr1069 = lshr i32 %717, 22
  %or1070 = or i32 %shl1068, %shr1069
  store i32 %or1070, i32* %D, align 4
  %718 = load i32, i32* %A, align 4
  %719 = load i32, i32* %D, align 4
  %add1071 = add i32 %719, %718
  store i32 %add1071, i32* %D, align 4
  %720 = load i32, i32* %XX10, align 4
  %conv1072 = zext i32 %720 to i64
  %add1073 = add nsw i64 %conv1072, 4293915773
  %721 = load i32, i32* %B, align 4
  %neg1074 = xor i32 %721, -1
  %722 = load i32, i32* %D, align 4
  %or1075 = or i32 %neg1074, %722
  %723 = load i32, i32* %A, align 4
  %xor1076 = xor i32 %or1075, %723
  %conv1077 = zext i32 %xor1076 to i64
  %add1078 = add nsw i64 %add1073, %conv1077
  %724 = load i32, i32* %C, align 4
  %conv1079 = zext i32 %724 to i64
  %add1080 = add nsw i64 %conv1079, %add1078
  %conv1081 = trunc i64 %add1080 to i32
  store i32 %conv1081, i32* %C, align 4
  %725 = load i32, i32* %C, align 4
  %shl1082 = shl i32 %725, 15
  %726 = load i32, i32* %C, align 4
  %shr1083 = lshr i32 %726, 17
  %or1084 = or i32 %shl1082, %shr1083
  store i32 %or1084, i32* %C, align 4
  %727 = load i32, i32* %D, align 4
  %728 = load i32, i32* %C, align 4
  %add1085 = add i32 %728, %727
  store i32 %add1085, i32* %C, align 4
  %729 = load i32, i32* %XX1, align 4
  %conv1086 = zext i32 %729 to i64
  %add1087 = add nsw i64 %conv1086, 2240044497
  %730 = load i32, i32* %A, align 4
  %neg1088 = xor i32 %730, -1
  %731 = load i32, i32* %C, align 4
  %or1089 = or i32 %neg1088, %731
  %732 = load i32, i32* %D, align 4
  %xor1090 = xor i32 %or1089, %732
  %conv1091 = zext i32 %xor1090 to i64
  %add1092 = add nsw i64 %add1087, %conv1091
  %733 = load i32, i32* %B, align 4
  %conv1093 = zext i32 %733 to i64
  %add1094 = add nsw i64 %conv1093, %add1092
  %conv1095 = trunc i64 %add1094 to i32
  store i32 %conv1095, i32* %B, align 4
  %734 = load i32, i32* %B, align 4
  %shl1096 = shl i32 %734, 21
  %735 = load i32, i32* %B, align 4
  %shr1097 = lshr i32 %735, 11
  %or1098 = or i32 %shl1096, %shr1097
  store i32 %or1098, i32* %B, align 4
  %736 = load i32, i32* %C, align 4
  %737 = load i32, i32* %B, align 4
  %add1099 = add i32 %737, %736
  store i32 %add1099, i32* %B, align 4
  %738 = load i32, i32* %XX8, align 4
  %conv1100 = zext i32 %738 to i64
  %add1101 = add nsw i64 %conv1100, 1873313359
  %739 = load i32, i32* %D, align 4
  %neg1102 = xor i32 %739, -1
  %740 = load i32, i32* %B, align 4
  %or1103 = or i32 %neg1102, %740
  %741 = load i32, i32* %C, align 4
  %xor1104 = xor i32 %or1103, %741
  %conv1105 = zext i32 %xor1104 to i64
  %add1106 = add nsw i64 %add1101, %conv1105
  %742 = load i32, i32* %A, align 4
  %conv1107 = zext i32 %742 to i64
  %add1108 = add nsw i64 %conv1107, %add1106
  %conv1109 = trunc i64 %add1108 to i32
  store i32 %conv1109, i32* %A, align 4
  %743 = load i32, i32* %A, align 4
  %shl1110 = shl i32 %743, 6
  %744 = load i32, i32* %A, align 4
  %shr1111 = lshr i32 %744, 26
  %or1112 = or i32 %shl1110, %shr1111
  store i32 %or1112, i32* %A, align 4
  %745 = load i32, i32* %B, align 4
  %746 = load i32, i32* %A, align 4
  %add1113 = add i32 %746, %745
  store i32 %add1113, i32* %A, align 4
  %747 = load i32, i32* %XX15, align 4
  %conv1114 = zext i32 %747 to i64
  %add1115 = add nsw i64 %conv1114, 4264355552
  %748 = load i32, i32* %C, align 4
  %neg1116 = xor i32 %748, -1
  %749 = load i32, i32* %A, align 4
  %or1117 = or i32 %neg1116, %749
  %750 = load i32, i32* %B, align 4
  %xor1118 = xor i32 %or1117, %750
  %conv1119 = zext i32 %xor1118 to i64
  %add1120 = add nsw i64 %add1115, %conv1119
  %751 = load i32, i32* %D, align 4
  %conv1121 = zext i32 %751 to i64
  %add1122 = add nsw i64 %conv1121, %add1120
  %conv1123 = trunc i64 %add1122 to i32
  store i32 %conv1123, i32* %D, align 4
  %752 = load i32, i32* %D, align 4
  %shl1124 = shl i32 %752, 10
  %753 = load i32, i32* %D, align 4
  %shr1125 = lshr i32 %753, 22
  %or1126 = or i32 %shl1124, %shr1125
  store i32 %or1126, i32* %D, align 4
  %754 = load i32, i32* %A, align 4
  %755 = load i32, i32* %D, align 4
  %add1127 = add i32 %755, %754
  store i32 %add1127, i32* %D, align 4
  %756 = load i32, i32* %XX6, align 4
  %conv1128 = zext i32 %756 to i64
  %add1129 = add nsw i64 %conv1128, 2734768916
  %757 = load i32, i32* %B, align 4
  %neg1130 = xor i32 %757, -1
  %758 = load i32, i32* %D, align 4
  %or1131 = or i32 %neg1130, %758
  %759 = load i32, i32* %A, align 4
  %xor1132 = xor i32 %or1131, %759
  %conv1133 = zext i32 %xor1132 to i64
  %add1134 = add nsw i64 %add1129, %conv1133
  %760 = load i32, i32* %C, align 4
  %conv1135 = zext i32 %760 to i64
  %add1136 = add nsw i64 %conv1135, %add1134
  %conv1137 = trunc i64 %add1136 to i32
  store i32 %conv1137, i32* %C, align 4
  %761 = load i32, i32* %C, align 4
  %shl1138 = shl i32 %761, 15
  %762 = load i32, i32* %C, align 4
  %shr1139 = lshr i32 %762, 17
  %or1140 = or i32 %shl1138, %shr1139
  store i32 %or1140, i32* %C, align 4
  %763 = load i32, i32* %D, align 4
  %764 = load i32, i32* %C, align 4
  %add1141 = add i32 %764, %763
  store i32 %add1141, i32* %C, align 4
  %765 = load i32, i32* %XX13, align 4
  %conv1142 = zext i32 %765 to i64
  %add1143 = add nsw i64 %conv1142, 1309151649
  %766 = load i32, i32* %A, align 4
  %neg1144 = xor i32 %766, -1
  %767 = load i32, i32* %C, align 4
  %or1145 = or i32 %neg1144, %767
  %768 = load i32, i32* %D, align 4
  %xor1146 = xor i32 %or1145, %768
  %conv1147 = zext i32 %xor1146 to i64
  %add1148 = add nsw i64 %add1143, %conv1147
  %769 = load i32, i32* %B, align 4
  %conv1149 = zext i32 %769 to i64
  %add1150 = add nsw i64 %conv1149, %add1148
  %conv1151 = trunc i64 %add1150 to i32
  store i32 %conv1151, i32* %B, align 4
  %770 = load i32, i32* %B, align 4
  %shl1152 = shl i32 %770, 21
  %771 = load i32, i32* %B, align 4
  %shr1153 = lshr i32 %771, 11
  %or1154 = or i32 %shl1152, %shr1153
  store i32 %or1154, i32* %B, align 4
  %772 = load i32, i32* %C, align 4
  %773 = load i32, i32* %B, align 4
  %add1155 = add i32 %773, %772
  store i32 %add1155, i32* %B, align 4
  %774 = load i32, i32* %XX4, align 4
  %conv1156 = zext i32 %774 to i64
  %add1157 = add nsw i64 %conv1156, 4149444226
  %775 = load i32, i32* %D, align 4
  %neg1158 = xor i32 %775, -1
  %776 = load i32, i32* %B, align 4
  %or1159 = or i32 %neg1158, %776
  %777 = load i32, i32* %C, align 4
  %xor1160 = xor i32 %or1159, %777
  %conv1161 = zext i32 %xor1160 to i64
  %add1162 = add nsw i64 %add1157, %conv1161
  %778 = load i32, i32* %A, align 4
  %conv1163 = zext i32 %778 to i64
  %add1164 = add nsw i64 %conv1163, %add1162
  %conv1165 = trunc i64 %add1164 to i32
  store i32 %conv1165, i32* %A, align 4
  %779 = load i32, i32* %A, align 4
  %shl1166 = shl i32 %779, 6
  %780 = load i32, i32* %A, align 4
  %shr1167 = lshr i32 %780, 26
  %or1168 = or i32 %shl1166, %shr1167
  store i32 %or1168, i32* %A, align 4
  %781 = load i32, i32* %B, align 4
  %782 = load i32, i32* %A, align 4
  %add1169 = add i32 %782, %781
  store i32 %add1169, i32* %A, align 4
  %783 = load i32, i32* %XX11, align 4
  %conv1170 = zext i32 %783 to i64
  %add1171 = add nsw i64 %conv1170, 3174756917
  %784 = load i32, i32* %C, align 4
  %neg1172 = xor i32 %784, -1
  %785 = load i32, i32* %A, align 4
  %or1173 = or i32 %neg1172, %785
  %786 = load i32, i32* %B, align 4
  %xor1174 = xor i32 %or1173, %786
  %conv1175 = zext i32 %xor1174 to i64
  %add1176 = add nsw i64 %add1171, %conv1175
  %787 = load i32, i32* %D, align 4
  %conv1177 = zext i32 %787 to i64
  %add1178 = add nsw i64 %conv1177, %add1176
  %conv1179 = trunc i64 %add1178 to i32
  store i32 %conv1179, i32* %D, align 4
  %788 = load i32, i32* %D, align 4
  %shl1180 = shl i32 %788, 10
  %789 = load i32, i32* %D, align 4
  %shr1181 = lshr i32 %789, 22
  %or1182 = or i32 %shl1180, %shr1181
  store i32 %or1182, i32* %D, align 4
  %790 = load i32, i32* %A, align 4
  %791 = load i32, i32* %D, align 4
  %add1183 = add i32 %791, %790
  store i32 %add1183, i32* %D, align 4
  %792 = load i32, i32* %XX2, align 4
  %conv1184 = zext i32 %792 to i64
  %add1185 = add nsw i64 %conv1184, 718787259
  %793 = load i32, i32* %B, align 4
  %neg1186 = xor i32 %793, -1
  %794 = load i32, i32* %D, align 4
  %or1187 = or i32 %neg1186, %794
  %795 = load i32, i32* %A, align 4
  %xor1188 = xor i32 %or1187, %795
  %conv1189 = zext i32 %xor1188 to i64
  %add1190 = add nsw i64 %add1185, %conv1189
  %796 = load i32, i32* %C, align 4
  %conv1191 = zext i32 %796 to i64
  %add1192 = add nsw i64 %conv1191, %add1190
  %conv1193 = trunc i64 %add1192 to i32
  store i32 %conv1193, i32* %C, align 4
  %797 = load i32, i32* %C, align 4
  %shl1194 = shl i32 %797, 15
  %798 = load i32, i32* %C, align 4
  %shr1195 = lshr i32 %798, 17
  %or1196 = or i32 %shl1194, %shr1195
  store i32 %or1196, i32* %C, align 4
  %799 = load i32, i32* %D, align 4
  %800 = load i32, i32* %C, align 4
  %add1197 = add i32 %800, %799
  store i32 %add1197, i32* %C, align 4
  %801 = load i32, i32* %XX9, align 4
  %conv1198 = zext i32 %801 to i64
  %add1199 = add nsw i64 %conv1198, 3951481745
  %802 = load i32, i32* %A, align 4
  %neg1200 = xor i32 %802, -1
  %803 = load i32, i32* %C, align 4
  %or1201 = or i32 %neg1200, %803
  %804 = load i32, i32* %D, align 4
  %xor1202 = xor i32 %or1201, %804
  %conv1203 = zext i32 %xor1202 to i64
  %add1204 = add nsw i64 %add1199, %conv1203
  %805 = load i32, i32* %B, align 4
  %conv1205 = zext i32 %805 to i64
  %add1206 = add nsw i64 %conv1205, %add1204
  %conv1207 = trunc i64 %add1206 to i32
  store i32 %conv1207, i32* %B, align 4
  %806 = load i32, i32* %B, align 4
  %shl1208 = shl i32 %806, 21
  %807 = load i32, i32* %B, align 4
  %shr1209 = lshr i32 %807, 11
  %or1210 = or i32 %shl1208, %shr1209
  store i32 %or1210, i32* %B, align 4
  %808 = load i32, i32* %C, align 4
  %809 = load i32, i32* %B, align 4
  %add1211 = add i32 %809, %808
  store i32 %add1211, i32* %B, align 4
  %810 = load i32, i32* %A, align 4
  %811 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %A1212 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %811, i32 0, i32 0
  %812 = load i32, i32* %A1212, align 4
  %add1213 = add i32 %812, %810
  store i32 %add1213, i32* %A1212, align 4
  store i32 %add1213, i32* %A, align 4
  %813 = load i32, i32* %B, align 4
  %814 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %B1214 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %814, i32 0, i32 1
  %815 = load i32, i32* %B1214, align 4
  %add1215 = add i32 %815, %813
  store i32 %add1215, i32* %B1214, align 4
  store i32 %add1215, i32* %B, align 4
  %816 = load i32, i32* %C, align 4
  %817 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %C1216 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %817, i32 0, i32 2
  %818 = load i32, i32* %C1216, align 4
  %add1217 = add i32 %818, %816
  store i32 %add1217, i32* %C1216, align 4
  store i32 %add1217, i32* %C, align 4
  %819 = load i32, i32* %D, align 4
  %820 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %D1218 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %820, i32 0, i32 3
  %821 = load i32, i32* %D1218, align 4
  %add1219 = add i32 %821, %819
  store i32 %add1219, i32* %D1218, align 4
  store i32 %add1219, i32* %D, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @MD5_Transform(%struct.MD5state_st* %c, i8* %data) #0 {
entry:
  %c.addr.i = alloca %struct.MD5state_st*, align 8
  %data_.addr.i = alloca i8*, align 8
  %num.addr.i = alloca i64, align 8
  %data.i = alloca i8*, align 8
  %A.i = alloca i32, align 4
  %B.i = alloca i32, align 4
  %C.i = alloca i32, align 4
  %D.i = alloca i32, align 4
  %l.i = alloca i32, align 4
  %XX0.i = alloca i32, align 4
  %XX1.i = alloca i32, align 4
  %XX2.i = alloca i32, align 4
  %XX3.i = alloca i32, align 4
  %XX4.i = alloca i32, align 4
  %XX5.i = alloca i32, align 4
  %XX6.i = alloca i32, align 4
  %XX7.i = alloca i32, align 4
  %XX8.i = alloca i32, align 4
  %XX9.i = alloca i32, align 4
  %XX10.i = alloca i32, align 4
  %XX11.i = alloca i32, align 4
  %XX12.i = alloca i32, align 4
  %XX13.i = alloca i32, align 4
  %XX14.i = alloca i32, align 4
  %XX15.i = alloca i32, align 4
  %c.addr = alloca %struct.MD5state_st*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.MD5state_st* %c, %struct.MD5state_st** %c.addr, align 8
  store i8* %data, i8** %data.addr, align 8
  %0 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %1 = load i8*, i8** %data.addr, align 8
  store %struct.MD5state_st* %0, %struct.MD5state_st** %c.addr.i, align 8
  store i8* %1, i8** %data_.addr.i, align 8
  store i64 1, i64* %num.addr.i, align 8
  %2 = load i8*, i8** %data_.addr.i, align 8
  store i8* %2, i8** %data.i, align 8
  %3 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %A1.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %3, i32 0, i32 0
  %4 = load i32, i32* %A1.i, align 4
  store i32 %4, i32* %A.i, align 4
  %5 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %B2.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %5, i32 0, i32 1
  %6 = load i32, i32* %B2.i, align 4
  store i32 %6, i32* %B.i, align 4
  %7 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %C3.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %7, i32 0, i32 2
  %8 = load i32, i32* %C3.i, align 4
  store i32 %8, i32* %C.i, align 4
  %9 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %D4.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %9, i32 0, i32 3
  %10 = load i32, i32* %D4.i, align 4
  store i32 %10, i32* %D.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %entry
  %11 = load i64, i64* %num.addr.i, align 8
  %dec.i = add i64 %11, -1
  store i64 %dec.i, i64* %num.addr.i, align 8
  %tobool.i = icmp ne i64 %11, 0
  br i1 %tobool.i, label %for.body.i, label %md5_block_data_order.exit

for.body.i:                                       ; preds = %for.cond.i
  %12 = load i8*, i8** %data.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, i8* %12, i32 1
  store i8* %incdec.ptr.i, i8** %data.i, align 8
  %13 = load i8, i8* %12, align 1
  %conv.i = zext i8 %13 to i64
  %conv5.i = trunc i64 %conv.i to i32
  store i32 %conv5.i, i32* %l.i, align 4
  %14 = load i8*, i8** %data.i, align 8
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %incdec.ptr6.i, i8** %data.i, align 8
  %15 = load i8, i8* %14, align 1
  %conv7.i = zext i8 %15 to i64
  %shl.i = shl i64 %conv7.i, 8
  %16 = load i32, i32* %l.i, align 4
  %conv8.i = zext i32 %16 to i64
  %or.i = or i64 %conv8.i, %shl.i
  %conv9.i = trunc i64 %or.i to i32
  store i32 %conv9.i, i32* %l.i, align 4
  %17 = load i8*, i8** %data.i, align 8
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %incdec.ptr10.i, i8** %data.i, align 8
  %18 = load i8, i8* %17, align 1
  %conv11.i = zext i8 %18 to i64
  %shl12.i = shl i64 %conv11.i, 16
  %19 = load i32, i32* %l.i, align 4
  %conv13.i = zext i32 %19 to i64
  %or14.i = or i64 %conv13.i, %shl12.i
  %conv15.i = trunc i64 %or14.i to i32
  store i32 %conv15.i, i32* %l.i, align 4
  %20 = load i8*, i8** %data.i, align 8
  %incdec.ptr16.i = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %incdec.ptr16.i, i8** %data.i, align 8
  %21 = load i8, i8* %20, align 1
  %conv17.i = zext i8 %21 to i64
  %shl18.i = shl i64 %conv17.i, 24
  %22 = load i32, i32* %l.i, align 4
  %conv19.i = zext i32 %22 to i64
  %or20.i = or i64 %conv19.i, %shl18.i
  %conv21.i = trunc i64 %or20.i to i32
  store i32 %conv21.i, i32* %l.i, align 4
  %23 = load i32, i32* %l.i, align 4
  store i32 %23, i32* %XX0.i, align 4
  %24 = load i8*, i8** %data.i, align 8
  %incdec.ptr22.i = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr22.i, i8** %data.i, align 8
  %25 = load i8, i8* %24, align 1
  %conv23.i = zext i8 %25 to i64
  %conv24.i = trunc i64 %conv23.i to i32
  store i32 %conv24.i, i32* %l.i, align 4
  %26 = load i8*, i8** %data.i, align 8
  %incdec.ptr25.i = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %incdec.ptr25.i, i8** %data.i, align 8
  %27 = load i8, i8* %26, align 1
  %conv26.i = zext i8 %27 to i64
  %shl27.i = shl i64 %conv26.i, 8
  %28 = load i32, i32* %l.i, align 4
  %conv28.i = zext i32 %28 to i64
  %or29.i = or i64 %conv28.i, %shl27.i
  %conv30.i = trunc i64 %or29.i to i32
  store i32 %conv30.i, i32* %l.i, align 4
  %29 = load i8*, i8** %data.i, align 8
  %incdec.ptr31.i = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr31.i, i8** %data.i, align 8
  %30 = load i8, i8* %29, align 1
  %conv32.i = zext i8 %30 to i64
  %shl33.i = shl i64 %conv32.i, 16
  %31 = load i32, i32* %l.i, align 4
  %conv34.i = zext i32 %31 to i64
  %or35.i = or i64 %conv34.i, %shl33.i
  %conv36.i = trunc i64 %or35.i to i32
  store i32 %conv36.i, i32* %l.i, align 4
  %32 = load i8*, i8** %data.i, align 8
  %incdec.ptr37.i = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr37.i, i8** %data.i, align 8
  %33 = load i8, i8* %32, align 1
  %conv38.i = zext i8 %33 to i64
  %shl39.i = shl i64 %conv38.i, 24
  %34 = load i32, i32* %l.i, align 4
  %conv40.i = zext i32 %34 to i64
  %or41.i = or i64 %conv40.i, %shl39.i
  %conv42.i = trunc i64 %or41.i to i32
  store i32 %conv42.i, i32* %l.i, align 4
  %35 = load i32, i32* %l.i, align 4
  store i32 %35, i32* %XX1.i, align 4
  %36 = load i32, i32* %XX0.i, align 4
  %conv43.i = zext i32 %36 to i64
  %add.i = add nsw i64 %conv43.i, 3614090360
  %37 = load i32, i32* %C.i, align 4
  %38 = load i32, i32* %D.i, align 4
  %xor.i = xor i32 %37, %38
  %39 = load i32, i32* %B.i, align 4
  %and.i = and i32 %xor.i, %39
  %40 = load i32, i32* %D.i, align 4
  %xor44.i = xor i32 %and.i, %40
  %conv45.i = zext i32 %xor44.i to i64
  %add46.i = add nsw i64 %add.i, %conv45.i
  %41 = load i32, i32* %A.i, align 4
  %conv47.i = zext i32 %41 to i64
  %add48.i = add nsw i64 %conv47.i, %add46.i
  %conv49.i = trunc i64 %add48.i to i32
  store i32 %conv49.i, i32* %A.i, align 4
  %42 = load i32, i32* %A.i, align 4
  %shl50.i = shl i32 %42, 7
  %43 = load i32, i32* %A.i, align 4
  %shr.i = lshr i32 %43, 25
  %or51.i = or i32 %shl50.i, %shr.i
  store i32 %or51.i, i32* %A.i, align 4
  %44 = load i32, i32* %B.i, align 4
  %45 = load i32, i32* %A.i, align 4
  %add52.i = add i32 %45, %44
  store i32 %add52.i, i32* %A.i, align 4
  %46 = load i8*, i8** %data.i, align 8
  %incdec.ptr53.i = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %incdec.ptr53.i, i8** %data.i, align 8
  %47 = load i8, i8* %46, align 1
  %conv54.i = zext i8 %47 to i64
  %conv55.i = trunc i64 %conv54.i to i32
  store i32 %conv55.i, i32* %l.i, align 4
  %48 = load i8*, i8** %data.i, align 8
  %incdec.ptr56.i = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %incdec.ptr56.i, i8** %data.i, align 8
  %49 = load i8, i8* %48, align 1
  %conv57.i = zext i8 %49 to i64
  %shl58.i = shl i64 %conv57.i, 8
  %50 = load i32, i32* %l.i, align 4
  %conv59.i = zext i32 %50 to i64
  %or60.i = or i64 %conv59.i, %shl58.i
  %conv61.i = trunc i64 %or60.i to i32
  store i32 %conv61.i, i32* %l.i, align 4
  %51 = load i8*, i8** %data.i, align 8
  %incdec.ptr62.i = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %incdec.ptr62.i, i8** %data.i, align 8
  %52 = load i8, i8* %51, align 1
  %conv63.i = zext i8 %52 to i64
  %shl64.i = shl i64 %conv63.i, 16
  %53 = load i32, i32* %l.i, align 4
  %conv65.i = zext i32 %53 to i64
  %or66.i = or i64 %conv65.i, %shl64.i
  %conv67.i = trunc i64 %or66.i to i32
  store i32 %conv67.i, i32* %l.i, align 4
  %54 = load i8*, i8** %data.i, align 8
  %incdec.ptr68.i = getelementptr inbounds i8, i8* %54, i32 1
  store i8* %incdec.ptr68.i, i8** %data.i, align 8
  %55 = load i8, i8* %54, align 1
  %conv69.i = zext i8 %55 to i64
  %shl70.i = shl i64 %conv69.i, 24
  %56 = load i32, i32* %l.i, align 4
  %conv71.i = zext i32 %56 to i64
  %or72.i = or i64 %conv71.i, %shl70.i
  %conv73.i = trunc i64 %or72.i to i32
  store i32 %conv73.i, i32* %l.i, align 4
  %57 = load i32, i32* %l.i, align 4
  store i32 %57, i32* %XX2.i, align 4
  %58 = load i32, i32* %XX1.i, align 4
  %conv74.i = zext i32 %58 to i64
  %add75.i = add nsw i64 %conv74.i, 3905402710
  %59 = load i32, i32* %B.i, align 4
  %60 = load i32, i32* %C.i, align 4
  %xor76.i = xor i32 %59, %60
  %61 = load i32, i32* %A.i, align 4
  %and77.i = and i32 %xor76.i, %61
  %62 = load i32, i32* %C.i, align 4
  %xor78.i = xor i32 %and77.i, %62
  %conv79.i = zext i32 %xor78.i to i64
  %add80.i = add nsw i64 %add75.i, %conv79.i
  %63 = load i32, i32* %D.i, align 4
  %conv81.i = zext i32 %63 to i64
  %add82.i = add nsw i64 %conv81.i, %add80.i
  %conv83.i = trunc i64 %add82.i to i32
  store i32 %conv83.i, i32* %D.i, align 4
  %64 = load i32, i32* %D.i, align 4
  %shl84.i = shl i32 %64, 12
  %65 = load i32, i32* %D.i, align 4
  %shr85.i = lshr i32 %65, 20
  %or86.i = or i32 %shl84.i, %shr85.i
  store i32 %or86.i, i32* %D.i, align 4
  %66 = load i32, i32* %A.i, align 4
  %67 = load i32, i32* %D.i, align 4
  %add87.i = add i32 %67, %66
  store i32 %add87.i, i32* %D.i, align 4
  %68 = load i8*, i8** %data.i, align 8
  %incdec.ptr88.i = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %incdec.ptr88.i, i8** %data.i, align 8
  %69 = load i8, i8* %68, align 1
  %conv89.i = zext i8 %69 to i64
  %conv90.i = trunc i64 %conv89.i to i32
  store i32 %conv90.i, i32* %l.i, align 4
  %70 = load i8*, i8** %data.i, align 8
  %incdec.ptr91.i = getelementptr inbounds i8, i8* %70, i32 1
  store i8* %incdec.ptr91.i, i8** %data.i, align 8
  %71 = load i8, i8* %70, align 1
  %conv92.i = zext i8 %71 to i64
  %shl93.i = shl i64 %conv92.i, 8
  %72 = load i32, i32* %l.i, align 4
  %conv94.i = zext i32 %72 to i64
  %or95.i = or i64 %conv94.i, %shl93.i
  %conv96.i = trunc i64 %or95.i to i32
  store i32 %conv96.i, i32* %l.i, align 4
  %73 = load i8*, i8** %data.i, align 8
  %incdec.ptr97.i = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %incdec.ptr97.i, i8** %data.i, align 8
  %74 = load i8, i8* %73, align 1
  %conv98.i = zext i8 %74 to i64
  %shl99.i = shl i64 %conv98.i, 16
  %75 = load i32, i32* %l.i, align 4
  %conv100.i = zext i32 %75 to i64
  %or101.i = or i64 %conv100.i, %shl99.i
  %conv102.i = trunc i64 %or101.i to i32
  store i32 %conv102.i, i32* %l.i, align 4
  %76 = load i8*, i8** %data.i, align 8
  %incdec.ptr103.i = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %incdec.ptr103.i, i8** %data.i, align 8
  %77 = load i8, i8* %76, align 1
  %conv104.i = zext i8 %77 to i64
  %shl105.i = shl i64 %conv104.i, 24
  %78 = load i32, i32* %l.i, align 4
  %conv106.i = zext i32 %78 to i64
  %or107.i = or i64 %conv106.i, %shl105.i
  %conv108.i = trunc i64 %or107.i to i32
  store i32 %conv108.i, i32* %l.i, align 4
  %79 = load i32, i32* %l.i, align 4
  store i32 %79, i32* %XX3.i, align 4
  %80 = load i32, i32* %XX2.i, align 4
  %conv109.i = zext i32 %80 to i64
  %add110.i = add nsw i64 %conv109.i, 606105819
  %81 = load i32, i32* %A.i, align 4
  %82 = load i32, i32* %B.i, align 4
  %xor111.i = xor i32 %81, %82
  %83 = load i32, i32* %D.i, align 4
  %and112.i = and i32 %xor111.i, %83
  %84 = load i32, i32* %B.i, align 4
  %xor113.i = xor i32 %and112.i, %84
  %conv114.i = zext i32 %xor113.i to i64
  %add115.i = add nsw i64 %add110.i, %conv114.i
  %85 = load i32, i32* %C.i, align 4
  %conv116.i = zext i32 %85 to i64
  %add117.i = add nsw i64 %conv116.i, %add115.i
  %conv118.i = trunc i64 %add117.i to i32
  store i32 %conv118.i, i32* %C.i, align 4
  %86 = load i32, i32* %C.i, align 4
  %shl119.i = shl i32 %86, 17
  %87 = load i32, i32* %C.i, align 4
  %shr120.i = lshr i32 %87, 15
  %or121.i = or i32 %shl119.i, %shr120.i
  store i32 %or121.i, i32* %C.i, align 4
  %88 = load i32, i32* %D.i, align 4
  %89 = load i32, i32* %C.i, align 4
  %add122.i = add i32 %89, %88
  store i32 %add122.i, i32* %C.i, align 4
  %90 = load i8*, i8** %data.i, align 8
  %incdec.ptr123.i = getelementptr inbounds i8, i8* %90, i32 1
  store i8* %incdec.ptr123.i, i8** %data.i, align 8
  %91 = load i8, i8* %90, align 1
  %conv124.i = zext i8 %91 to i64
  %conv125.i = trunc i64 %conv124.i to i32
  store i32 %conv125.i, i32* %l.i, align 4
  %92 = load i8*, i8** %data.i, align 8
  %incdec.ptr126.i = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %incdec.ptr126.i, i8** %data.i, align 8
  %93 = load i8, i8* %92, align 1
  %conv127.i = zext i8 %93 to i64
  %shl128.i = shl i64 %conv127.i, 8
  %94 = load i32, i32* %l.i, align 4
  %conv129.i = zext i32 %94 to i64
  %or130.i = or i64 %conv129.i, %shl128.i
  %conv131.i = trunc i64 %or130.i to i32
  store i32 %conv131.i, i32* %l.i, align 4
  %95 = load i8*, i8** %data.i, align 8
  %incdec.ptr132.i = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %incdec.ptr132.i, i8** %data.i, align 8
  %96 = load i8, i8* %95, align 1
  %conv133.i = zext i8 %96 to i64
  %shl134.i = shl i64 %conv133.i, 16
  %97 = load i32, i32* %l.i, align 4
  %conv135.i = zext i32 %97 to i64
  %or136.i = or i64 %conv135.i, %shl134.i
  %conv137.i = trunc i64 %or136.i to i32
  store i32 %conv137.i, i32* %l.i, align 4
  %98 = load i8*, i8** %data.i, align 8
  %incdec.ptr138.i = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %incdec.ptr138.i, i8** %data.i, align 8
  %99 = load i8, i8* %98, align 1
  %conv139.i = zext i8 %99 to i64
  %shl140.i = shl i64 %conv139.i, 24
  %100 = load i32, i32* %l.i, align 4
  %conv141.i = zext i32 %100 to i64
  %or142.i = or i64 %conv141.i, %shl140.i
  %conv143.i = trunc i64 %or142.i to i32
  store i32 %conv143.i, i32* %l.i, align 4
  %101 = load i32, i32* %l.i, align 4
  store i32 %101, i32* %XX4.i, align 4
  %102 = load i32, i32* %XX3.i, align 4
  %conv144.i = zext i32 %102 to i64
  %add145.i = add nsw i64 %conv144.i, 3250441966
  %103 = load i32, i32* %D.i, align 4
  %104 = load i32, i32* %A.i, align 4
  %xor146.i = xor i32 %103, %104
  %105 = load i32, i32* %C.i, align 4
  %and147.i = and i32 %xor146.i, %105
  %106 = load i32, i32* %A.i, align 4
  %xor148.i = xor i32 %and147.i, %106
  %conv149.i = zext i32 %xor148.i to i64
  %add150.i = add nsw i64 %add145.i, %conv149.i
  %107 = load i32, i32* %B.i, align 4
  %conv151.i = zext i32 %107 to i64
  %add152.i = add nsw i64 %conv151.i, %add150.i
  %conv153.i = trunc i64 %add152.i to i32
  store i32 %conv153.i, i32* %B.i, align 4
  %108 = load i32, i32* %B.i, align 4
  %shl154.i = shl i32 %108, 22
  %109 = load i32, i32* %B.i, align 4
  %shr155.i = lshr i32 %109, 10
  %or156.i = or i32 %shl154.i, %shr155.i
  store i32 %or156.i, i32* %B.i, align 4
  %110 = load i32, i32* %C.i, align 4
  %111 = load i32, i32* %B.i, align 4
  %add157.i = add i32 %111, %110
  store i32 %add157.i, i32* %B.i, align 4
  %112 = load i8*, i8** %data.i, align 8
  %incdec.ptr158.i = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %incdec.ptr158.i, i8** %data.i, align 8
  %113 = load i8, i8* %112, align 1
  %conv159.i = zext i8 %113 to i64
  %conv160.i = trunc i64 %conv159.i to i32
  store i32 %conv160.i, i32* %l.i, align 4
  %114 = load i8*, i8** %data.i, align 8
  %incdec.ptr161.i = getelementptr inbounds i8, i8* %114, i32 1
  store i8* %incdec.ptr161.i, i8** %data.i, align 8
  %115 = load i8, i8* %114, align 1
  %conv162.i = zext i8 %115 to i64
  %shl163.i = shl i64 %conv162.i, 8
  %116 = load i32, i32* %l.i, align 4
  %conv164.i = zext i32 %116 to i64
  %or165.i = or i64 %conv164.i, %shl163.i
  %conv166.i = trunc i64 %or165.i to i32
  store i32 %conv166.i, i32* %l.i, align 4
  %117 = load i8*, i8** %data.i, align 8
  %incdec.ptr167.i = getelementptr inbounds i8, i8* %117, i32 1
  store i8* %incdec.ptr167.i, i8** %data.i, align 8
  %118 = load i8, i8* %117, align 1
  %conv168.i = zext i8 %118 to i64
  %shl169.i = shl i64 %conv168.i, 16
  %119 = load i32, i32* %l.i, align 4
  %conv170.i = zext i32 %119 to i64
  %or171.i = or i64 %conv170.i, %shl169.i
  %conv172.i = trunc i64 %or171.i to i32
  store i32 %conv172.i, i32* %l.i, align 4
  %120 = load i8*, i8** %data.i, align 8
  %incdec.ptr173.i = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %incdec.ptr173.i, i8** %data.i, align 8
  %121 = load i8, i8* %120, align 1
  %conv174.i = zext i8 %121 to i64
  %shl175.i = shl i64 %conv174.i, 24
  %122 = load i32, i32* %l.i, align 4
  %conv176.i = zext i32 %122 to i64
  %or177.i = or i64 %conv176.i, %shl175.i
  %conv178.i = trunc i64 %or177.i to i32
  store i32 %conv178.i, i32* %l.i, align 4
  %123 = load i32, i32* %l.i, align 4
  store i32 %123, i32* %XX5.i, align 4
  %124 = load i32, i32* %XX4.i, align 4
  %conv179.i = zext i32 %124 to i64
  %add180.i = add nsw i64 %conv179.i, 4118548399
  %125 = load i32, i32* %C.i, align 4
  %126 = load i32, i32* %D.i, align 4
  %xor181.i = xor i32 %125, %126
  %127 = load i32, i32* %B.i, align 4
  %and182.i = and i32 %xor181.i, %127
  %128 = load i32, i32* %D.i, align 4
  %xor183.i = xor i32 %and182.i, %128
  %conv184.i = zext i32 %xor183.i to i64
  %add185.i = add nsw i64 %add180.i, %conv184.i
  %129 = load i32, i32* %A.i, align 4
  %conv186.i = zext i32 %129 to i64
  %add187.i = add nsw i64 %conv186.i, %add185.i
  %conv188.i = trunc i64 %add187.i to i32
  store i32 %conv188.i, i32* %A.i, align 4
  %130 = load i32, i32* %A.i, align 4
  %shl189.i = shl i32 %130, 7
  %131 = load i32, i32* %A.i, align 4
  %shr190.i = lshr i32 %131, 25
  %or191.i = or i32 %shl189.i, %shr190.i
  store i32 %or191.i, i32* %A.i, align 4
  %132 = load i32, i32* %B.i, align 4
  %133 = load i32, i32* %A.i, align 4
  %add192.i = add i32 %133, %132
  store i32 %add192.i, i32* %A.i, align 4
  %134 = load i8*, i8** %data.i, align 8
  %incdec.ptr193.i = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %incdec.ptr193.i, i8** %data.i, align 8
  %135 = load i8, i8* %134, align 1
  %conv194.i = zext i8 %135 to i64
  %conv195.i = trunc i64 %conv194.i to i32
  store i32 %conv195.i, i32* %l.i, align 4
  %136 = load i8*, i8** %data.i, align 8
  %incdec.ptr196.i = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %incdec.ptr196.i, i8** %data.i, align 8
  %137 = load i8, i8* %136, align 1
  %conv197.i = zext i8 %137 to i64
  %shl198.i = shl i64 %conv197.i, 8
  %138 = load i32, i32* %l.i, align 4
  %conv199.i = zext i32 %138 to i64
  %or200.i = or i64 %conv199.i, %shl198.i
  %conv201.i = trunc i64 %or200.i to i32
  store i32 %conv201.i, i32* %l.i, align 4
  %139 = load i8*, i8** %data.i, align 8
  %incdec.ptr202.i = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %incdec.ptr202.i, i8** %data.i, align 8
  %140 = load i8, i8* %139, align 1
  %conv203.i = zext i8 %140 to i64
  %shl204.i = shl i64 %conv203.i, 16
  %141 = load i32, i32* %l.i, align 4
  %conv205.i = zext i32 %141 to i64
  %or206.i = or i64 %conv205.i, %shl204.i
  %conv207.i = trunc i64 %or206.i to i32
  store i32 %conv207.i, i32* %l.i, align 4
  %142 = load i8*, i8** %data.i, align 8
  %incdec.ptr208.i = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %incdec.ptr208.i, i8** %data.i, align 8
  %143 = load i8, i8* %142, align 1
  %conv209.i = zext i8 %143 to i64
  %shl210.i = shl i64 %conv209.i, 24
  %144 = load i32, i32* %l.i, align 4
  %conv211.i = zext i32 %144 to i64
  %or212.i = or i64 %conv211.i, %shl210.i
  %conv213.i = trunc i64 %or212.i to i32
  store i32 %conv213.i, i32* %l.i, align 4
  %145 = load i32, i32* %l.i, align 4
  store i32 %145, i32* %XX6.i, align 4
  %146 = load i32, i32* %XX5.i, align 4
  %conv214.i = zext i32 %146 to i64
  %add215.i = add nsw i64 %conv214.i, 1200080426
  %147 = load i32, i32* %B.i, align 4
  %148 = load i32, i32* %C.i, align 4
  %xor216.i = xor i32 %147, %148
  %149 = load i32, i32* %A.i, align 4
  %and217.i = and i32 %xor216.i, %149
  %150 = load i32, i32* %C.i, align 4
  %xor218.i = xor i32 %and217.i, %150
  %conv219.i = zext i32 %xor218.i to i64
  %add220.i = add nsw i64 %add215.i, %conv219.i
  %151 = load i32, i32* %D.i, align 4
  %conv221.i = zext i32 %151 to i64
  %add222.i = add nsw i64 %conv221.i, %add220.i
  %conv223.i = trunc i64 %add222.i to i32
  store i32 %conv223.i, i32* %D.i, align 4
  %152 = load i32, i32* %D.i, align 4
  %shl224.i = shl i32 %152, 12
  %153 = load i32, i32* %D.i, align 4
  %shr225.i = lshr i32 %153, 20
  %or226.i = or i32 %shl224.i, %shr225.i
  store i32 %or226.i, i32* %D.i, align 4
  %154 = load i32, i32* %A.i, align 4
  %155 = load i32, i32* %D.i, align 4
  %add227.i = add i32 %155, %154
  store i32 %add227.i, i32* %D.i, align 4
  %156 = load i8*, i8** %data.i, align 8
  %incdec.ptr228.i = getelementptr inbounds i8, i8* %156, i32 1
  store i8* %incdec.ptr228.i, i8** %data.i, align 8
  %157 = load i8, i8* %156, align 1
  %conv229.i = zext i8 %157 to i64
  %conv230.i = trunc i64 %conv229.i to i32
  store i32 %conv230.i, i32* %l.i, align 4
  %158 = load i8*, i8** %data.i, align 8
  %incdec.ptr231.i = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %incdec.ptr231.i, i8** %data.i, align 8
  %159 = load i8, i8* %158, align 1
  %conv232.i = zext i8 %159 to i64
  %shl233.i = shl i64 %conv232.i, 8
  %160 = load i32, i32* %l.i, align 4
  %conv234.i = zext i32 %160 to i64
  %or235.i = or i64 %conv234.i, %shl233.i
  %conv236.i = trunc i64 %or235.i to i32
  store i32 %conv236.i, i32* %l.i, align 4
  %161 = load i8*, i8** %data.i, align 8
  %incdec.ptr237.i = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %incdec.ptr237.i, i8** %data.i, align 8
  %162 = load i8, i8* %161, align 1
  %conv238.i = zext i8 %162 to i64
  %shl239.i = shl i64 %conv238.i, 16
  %163 = load i32, i32* %l.i, align 4
  %conv240.i = zext i32 %163 to i64
  %or241.i = or i64 %conv240.i, %shl239.i
  %conv242.i = trunc i64 %or241.i to i32
  store i32 %conv242.i, i32* %l.i, align 4
  %164 = load i8*, i8** %data.i, align 8
  %incdec.ptr243.i = getelementptr inbounds i8, i8* %164, i32 1
  store i8* %incdec.ptr243.i, i8** %data.i, align 8
  %165 = load i8, i8* %164, align 1
  %conv244.i = zext i8 %165 to i64
  %shl245.i = shl i64 %conv244.i, 24
  %166 = load i32, i32* %l.i, align 4
  %conv246.i = zext i32 %166 to i64
  %or247.i = or i64 %conv246.i, %shl245.i
  %conv248.i = trunc i64 %or247.i to i32
  store i32 %conv248.i, i32* %l.i, align 4
  %167 = load i32, i32* %l.i, align 4
  store i32 %167, i32* %XX7.i, align 4
  %168 = load i32, i32* %XX6.i, align 4
  %conv249.i = zext i32 %168 to i64
  %add250.i = add nsw i64 %conv249.i, 2821735955
  %169 = load i32, i32* %A.i, align 4
  %170 = load i32, i32* %B.i, align 4
  %xor251.i = xor i32 %169, %170
  %171 = load i32, i32* %D.i, align 4
  %and252.i = and i32 %xor251.i, %171
  %172 = load i32, i32* %B.i, align 4
  %xor253.i = xor i32 %and252.i, %172
  %conv254.i = zext i32 %xor253.i to i64
  %add255.i = add nsw i64 %add250.i, %conv254.i
  %173 = load i32, i32* %C.i, align 4
  %conv256.i = zext i32 %173 to i64
  %add257.i = add nsw i64 %conv256.i, %add255.i
  %conv258.i = trunc i64 %add257.i to i32
  store i32 %conv258.i, i32* %C.i, align 4
  %174 = load i32, i32* %C.i, align 4
  %shl259.i = shl i32 %174, 17
  %175 = load i32, i32* %C.i, align 4
  %shr260.i = lshr i32 %175, 15
  %or261.i = or i32 %shl259.i, %shr260.i
  store i32 %or261.i, i32* %C.i, align 4
  %176 = load i32, i32* %D.i, align 4
  %177 = load i32, i32* %C.i, align 4
  %add262.i = add i32 %177, %176
  store i32 %add262.i, i32* %C.i, align 4
  %178 = load i8*, i8** %data.i, align 8
  %incdec.ptr263.i = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %incdec.ptr263.i, i8** %data.i, align 8
  %179 = load i8, i8* %178, align 1
  %conv264.i = zext i8 %179 to i64
  %conv265.i = trunc i64 %conv264.i to i32
  store i32 %conv265.i, i32* %l.i, align 4
  %180 = load i8*, i8** %data.i, align 8
  %incdec.ptr266.i = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %incdec.ptr266.i, i8** %data.i, align 8
  %181 = load i8, i8* %180, align 1
  %conv267.i = zext i8 %181 to i64
  %shl268.i = shl i64 %conv267.i, 8
  %182 = load i32, i32* %l.i, align 4
  %conv269.i = zext i32 %182 to i64
  %or270.i = or i64 %conv269.i, %shl268.i
  %conv271.i = trunc i64 %or270.i to i32
  store i32 %conv271.i, i32* %l.i, align 4
  %183 = load i8*, i8** %data.i, align 8
  %incdec.ptr272.i = getelementptr inbounds i8, i8* %183, i32 1
  store i8* %incdec.ptr272.i, i8** %data.i, align 8
  %184 = load i8, i8* %183, align 1
  %conv273.i = zext i8 %184 to i64
  %shl274.i = shl i64 %conv273.i, 16
  %185 = load i32, i32* %l.i, align 4
  %conv275.i = zext i32 %185 to i64
  %or276.i = or i64 %conv275.i, %shl274.i
  %conv277.i = trunc i64 %or276.i to i32
  store i32 %conv277.i, i32* %l.i, align 4
  %186 = load i8*, i8** %data.i, align 8
  %incdec.ptr278.i = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %incdec.ptr278.i, i8** %data.i, align 8
  %187 = load i8, i8* %186, align 1
  %conv279.i = zext i8 %187 to i64
  %shl280.i = shl i64 %conv279.i, 24
  %188 = load i32, i32* %l.i, align 4
  %conv281.i = zext i32 %188 to i64
  %or282.i = or i64 %conv281.i, %shl280.i
  %conv283.i = trunc i64 %or282.i to i32
  store i32 %conv283.i, i32* %l.i, align 4
  %189 = load i32, i32* %l.i, align 4
  store i32 %189, i32* %XX8.i, align 4
  %190 = load i32, i32* %XX7.i, align 4
  %conv284.i = zext i32 %190 to i64
  %add285.i = add nsw i64 %conv284.i, 4249261313
  %191 = load i32, i32* %D.i, align 4
  %192 = load i32, i32* %A.i, align 4
  %xor286.i = xor i32 %191, %192
  %193 = load i32, i32* %C.i, align 4
  %and287.i = and i32 %xor286.i, %193
  %194 = load i32, i32* %A.i, align 4
  %xor288.i = xor i32 %and287.i, %194
  %conv289.i = zext i32 %xor288.i to i64
  %add290.i = add nsw i64 %add285.i, %conv289.i
  %195 = load i32, i32* %B.i, align 4
  %conv291.i = zext i32 %195 to i64
  %add292.i = add nsw i64 %conv291.i, %add290.i
  %conv293.i = trunc i64 %add292.i to i32
  store i32 %conv293.i, i32* %B.i, align 4
  %196 = load i32, i32* %B.i, align 4
  %shl294.i = shl i32 %196, 22
  %197 = load i32, i32* %B.i, align 4
  %shr295.i = lshr i32 %197, 10
  %or296.i = or i32 %shl294.i, %shr295.i
  store i32 %or296.i, i32* %B.i, align 4
  %198 = load i32, i32* %C.i, align 4
  %199 = load i32, i32* %B.i, align 4
  %add297.i = add i32 %199, %198
  store i32 %add297.i, i32* %B.i, align 4
  %200 = load i8*, i8** %data.i, align 8
  %incdec.ptr298.i = getelementptr inbounds i8, i8* %200, i32 1
  store i8* %incdec.ptr298.i, i8** %data.i, align 8
  %201 = load i8, i8* %200, align 1
  %conv299.i = zext i8 %201 to i64
  %conv300.i = trunc i64 %conv299.i to i32
  store i32 %conv300.i, i32* %l.i, align 4
  %202 = load i8*, i8** %data.i, align 8
  %incdec.ptr301.i = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %incdec.ptr301.i, i8** %data.i, align 8
  %203 = load i8, i8* %202, align 1
  %conv302.i = zext i8 %203 to i64
  %shl303.i = shl i64 %conv302.i, 8
  %204 = load i32, i32* %l.i, align 4
  %conv304.i = zext i32 %204 to i64
  %or305.i = or i64 %conv304.i, %shl303.i
  %conv306.i = trunc i64 %or305.i to i32
  store i32 %conv306.i, i32* %l.i, align 4
  %205 = load i8*, i8** %data.i, align 8
  %incdec.ptr307.i = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %incdec.ptr307.i, i8** %data.i, align 8
  %206 = load i8, i8* %205, align 1
  %conv308.i = zext i8 %206 to i64
  %shl309.i = shl i64 %conv308.i, 16
  %207 = load i32, i32* %l.i, align 4
  %conv310.i = zext i32 %207 to i64
  %or311.i = or i64 %conv310.i, %shl309.i
  %conv312.i = trunc i64 %or311.i to i32
  store i32 %conv312.i, i32* %l.i, align 4
  %208 = load i8*, i8** %data.i, align 8
  %incdec.ptr313.i = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %incdec.ptr313.i, i8** %data.i, align 8
  %209 = load i8, i8* %208, align 1
  %conv314.i = zext i8 %209 to i64
  %shl315.i = shl i64 %conv314.i, 24
  %210 = load i32, i32* %l.i, align 4
  %conv316.i = zext i32 %210 to i64
  %or317.i = or i64 %conv316.i, %shl315.i
  %conv318.i = trunc i64 %or317.i to i32
  store i32 %conv318.i, i32* %l.i, align 4
  %211 = load i32, i32* %l.i, align 4
  store i32 %211, i32* %XX9.i, align 4
  %212 = load i32, i32* %XX8.i, align 4
  %conv319.i = zext i32 %212 to i64
  %add320.i = add nsw i64 %conv319.i, 1770035416
  %213 = load i32, i32* %C.i, align 4
  %214 = load i32, i32* %D.i, align 4
  %xor321.i = xor i32 %213, %214
  %215 = load i32, i32* %B.i, align 4
  %and322.i = and i32 %xor321.i, %215
  %216 = load i32, i32* %D.i, align 4
  %xor323.i = xor i32 %and322.i, %216
  %conv324.i = zext i32 %xor323.i to i64
  %add325.i = add nsw i64 %add320.i, %conv324.i
  %217 = load i32, i32* %A.i, align 4
  %conv326.i = zext i32 %217 to i64
  %add327.i = add nsw i64 %conv326.i, %add325.i
  %conv328.i = trunc i64 %add327.i to i32
  store i32 %conv328.i, i32* %A.i, align 4
  %218 = load i32, i32* %A.i, align 4
  %shl329.i = shl i32 %218, 7
  %219 = load i32, i32* %A.i, align 4
  %shr330.i = lshr i32 %219, 25
  %or331.i = or i32 %shl329.i, %shr330.i
  store i32 %or331.i, i32* %A.i, align 4
  %220 = load i32, i32* %B.i, align 4
  %221 = load i32, i32* %A.i, align 4
  %add332.i = add i32 %221, %220
  store i32 %add332.i, i32* %A.i, align 4
  %222 = load i8*, i8** %data.i, align 8
  %incdec.ptr333.i = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %incdec.ptr333.i, i8** %data.i, align 8
  %223 = load i8, i8* %222, align 1
  %conv334.i = zext i8 %223 to i64
  %conv335.i = trunc i64 %conv334.i to i32
  store i32 %conv335.i, i32* %l.i, align 4
  %224 = load i8*, i8** %data.i, align 8
  %incdec.ptr336.i = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %incdec.ptr336.i, i8** %data.i, align 8
  %225 = load i8, i8* %224, align 1
  %conv337.i = zext i8 %225 to i64
  %shl338.i = shl i64 %conv337.i, 8
  %226 = load i32, i32* %l.i, align 4
  %conv339.i = zext i32 %226 to i64
  %or340.i = or i64 %conv339.i, %shl338.i
  %conv341.i = trunc i64 %or340.i to i32
  store i32 %conv341.i, i32* %l.i, align 4
  %227 = load i8*, i8** %data.i, align 8
  %incdec.ptr342.i = getelementptr inbounds i8, i8* %227, i32 1
  store i8* %incdec.ptr342.i, i8** %data.i, align 8
  %228 = load i8, i8* %227, align 1
  %conv343.i = zext i8 %228 to i64
  %shl344.i = shl i64 %conv343.i, 16
  %229 = load i32, i32* %l.i, align 4
  %conv345.i = zext i32 %229 to i64
  %or346.i = or i64 %conv345.i, %shl344.i
  %conv347.i = trunc i64 %or346.i to i32
  store i32 %conv347.i, i32* %l.i, align 4
  %230 = load i8*, i8** %data.i, align 8
  %incdec.ptr348.i = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %incdec.ptr348.i, i8** %data.i, align 8
  %231 = load i8, i8* %230, align 1
  %conv349.i = zext i8 %231 to i64
  %shl350.i = shl i64 %conv349.i, 24
  %232 = load i32, i32* %l.i, align 4
  %conv351.i = zext i32 %232 to i64
  %or352.i = or i64 %conv351.i, %shl350.i
  %conv353.i = trunc i64 %or352.i to i32
  store i32 %conv353.i, i32* %l.i, align 4
  %233 = load i32, i32* %l.i, align 4
  store i32 %233, i32* %XX10.i, align 4
  %234 = load i32, i32* %XX9.i, align 4
  %conv354.i = zext i32 %234 to i64
  %add355.i = add nsw i64 %conv354.i, 2336552879
  %235 = load i32, i32* %B.i, align 4
  %236 = load i32, i32* %C.i, align 4
  %xor356.i = xor i32 %235, %236
  %237 = load i32, i32* %A.i, align 4
  %and357.i = and i32 %xor356.i, %237
  %238 = load i32, i32* %C.i, align 4
  %xor358.i = xor i32 %and357.i, %238
  %conv359.i = zext i32 %xor358.i to i64
  %add360.i = add nsw i64 %add355.i, %conv359.i
  %239 = load i32, i32* %D.i, align 4
  %conv361.i = zext i32 %239 to i64
  %add362.i = add nsw i64 %conv361.i, %add360.i
  %conv363.i = trunc i64 %add362.i to i32
  store i32 %conv363.i, i32* %D.i, align 4
  %240 = load i32, i32* %D.i, align 4
  %shl364.i = shl i32 %240, 12
  %241 = load i32, i32* %D.i, align 4
  %shr365.i = lshr i32 %241, 20
  %or366.i = or i32 %shl364.i, %shr365.i
  store i32 %or366.i, i32* %D.i, align 4
  %242 = load i32, i32* %A.i, align 4
  %243 = load i32, i32* %D.i, align 4
  %add367.i = add i32 %243, %242
  store i32 %add367.i, i32* %D.i, align 4
  %244 = load i8*, i8** %data.i, align 8
  %incdec.ptr368.i = getelementptr inbounds i8, i8* %244, i32 1
  store i8* %incdec.ptr368.i, i8** %data.i, align 8
  %245 = load i8, i8* %244, align 1
  %conv369.i = zext i8 %245 to i64
  %conv370.i = trunc i64 %conv369.i to i32
  store i32 %conv370.i, i32* %l.i, align 4
  %246 = load i8*, i8** %data.i, align 8
  %incdec.ptr371.i = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %incdec.ptr371.i, i8** %data.i, align 8
  %247 = load i8, i8* %246, align 1
  %conv372.i = zext i8 %247 to i64
  %shl373.i = shl i64 %conv372.i, 8
  %248 = load i32, i32* %l.i, align 4
  %conv374.i = zext i32 %248 to i64
  %or375.i = or i64 %conv374.i, %shl373.i
  %conv376.i = trunc i64 %or375.i to i32
  store i32 %conv376.i, i32* %l.i, align 4
  %249 = load i8*, i8** %data.i, align 8
  %incdec.ptr377.i = getelementptr inbounds i8, i8* %249, i32 1
  store i8* %incdec.ptr377.i, i8** %data.i, align 8
  %250 = load i8, i8* %249, align 1
  %conv378.i = zext i8 %250 to i64
  %shl379.i = shl i64 %conv378.i, 16
  %251 = load i32, i32* %l.i, align 4
  %conv380.i = zext i32 %251 to i64
  %or381.i = or i64 %conv380.i, %shl379.i
  %conv382.i = trunc i64 %or381.i to i32
  store i32 %conv382.i, i32* %l.i, align 4
  %252 = load i8*, i8** %data.i, align 8
  %incdec.ptr383.i = getelementptr inbounds i8, i8* %252, i32 1
  store i8* %incdec.ptr383.i, i8** %data.i, align 8
  %253 = load i8, i8* %252, align 1
  %conv384.i = zext i8 %253 to i64
  %shl385.i = shl i64 %conv384.i, 24
  %254 = load i32, i32* %l.i, align 4
  %conv386.i = zext i32 %254 to i64
  %or387.i = or i64 %conv386.i, %shl385.i
  %conv388.i = trunc i64 %or387.i to i32
  store i32 %conv388.i, i32* %l.i, align 4
  %255 = load i32, i32* %l.i, align 4
  store i32 %255, i32* %XX11.i, align 4
  %256 = load i32, i32* %XX10.i, align 4
  %conv389.i = zext i32 %256 to i64
  %add390.i = add nsw i64 %conv389.i, 4294925233
  %257 = load i32, i32* %A.i, align 4
  %258 = load i32, i32* %B.i, align 4
  %xor391.i = xor i32 %257, %258
  %259 = load i32, i32* %D.i, align 4
  %and392.i = and i32 %xor391.i, %259
  %260 = load i32, i32* %B.i, align 4
  %xor393.i = xor i32 %and392.i, %260
  %conv394.i = zext i32 %xor393.i to i64
  %add395.i = add nsw i64 %add390.i, %conv394.i
  %261 = load i32, i32* %C.i, align 4
  %conv396.i = zext i32 %261 to i64
  %add397.i = add nsw i64 %conv396.i, %add395.i
  %conv398.i = trunc i64 %add397.i to i32
  store i32 %conv398.i, i32* %C.i, align 4
  %262 = load i32, i32* %C.i, align 4
  %shl399.i = shl i32 %262, 17
  %263 = load i32, i32* %C.i, align 4
  %shr400.i = lshr i32 %263, 15
  %or401.i = or i32 %shl399.i, %shr400.i
  store i32 %or401.i, i32* %C.i, align 4
  %264 = load i32, i32* %D.i, align 4
  %265 = load i32, i32* %C.i, align 4
  %add402.i = add i32 %265, %264
  store i32 %add402.i, i32* %C.i, align 4
  %266 = load i8*, i8** %data.i, align 8
  %incdec.ptr403.i = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %incdec.ptr403.i, i8** %data.i, align 8
  %267 = load i8, i8* %266, align 1
  %conv404.i = zext i8 %267 to i64
  %conv405.i = trunc i64 %conv404.i to i32
  store i32 %conv405.i, i32* %l.i, align 4
  %268 = load i8*, i8** %data.i, align 8
  %incdec.ptr406.i = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %incdec.ptr406.i, i8** %data.i, align 8
  %269 = load i8, i8* %268, align 1
  %conv407.i = zext i8 %269 to i64
  %shl408.i = shl i64 %conv407.i, 8
  %270 = load i32, i32* %l.i, align 4
  %conv409.i = zext i32 %270 to i64
  %or410.i = or i64 %conv409.i, %shl408.i
  %conv411.i = trunc i64 %or410.i to i32
  store i32 %conv411.i, i32* %l.i, align 4
  %271 = load i8*, i8** %data.i, align 8
  %incdec.ptr412.i = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %incdec.ptr412.i, i8** %data.i, align 8
  %272 = load i8, i8* %271, align 1
  %conv413.i = zext i8 %272 to i64
  %shl414.i = shl i64 %conv413.i, 16
  %273 = load i32, i32* %l.i, align 4
  %conv415.i = zext i32 %273 to i64
  %or416.i = or i64 %conv415.i, %shl414.i
  %conv417.i = trunc i64 %or416.i to i32
  store i32 %conv417.i, i32* %l.i, align 4
  %274 = load i8*, i8** %data.i, align 8
  %incdec.ptr418.i = getelementptr inbounds i8, i8* %274, i32 1
  store i8* %incdec.ptr418.i, i8** %data.i, align 8
  %275 = load i8, i8* %274, align 1
  %conv419.i = zext i8 %275 to i64
  %shl420.i = shl i64 %conv419.i, 24
  %276 = load i32, i32* %l.i, align 4
  %conv421.i = zext i32 %276 to i64
  %or422.i = or i64 %conv421.i, %shl420.i
  %conv423.i = trunc i64 %or422.i to i32
  store i32 %conv423.i, i32* %l.i, align 4
  %277 = load i32, i32* %l.i, align 4
  store i32 %277, i32* %XX12.i, align 4
  %278 = load i32, i32* %XX11.i, align 4
  %conv424.i = zext i32 %278 to i64
  %add425.i = add nsw i64 %conv424.i, 2304563134
  %279 = load i32, i32* %D.i, align 4
  %280 = load i32, i32* %A.i, align 4
  %xor426.i = xor i32 %279, %280
  %281 = load i32, i32* %C.i, align 4
  %and427.i = and i32 %xor426.i, %281
  %282 = load i32, i32* %A.i, align 4
  %xor428.i = xor i32 %and427.i, %282
  %conv429.i = zext i32 %xor428.i to i64
  %add430.i = add nsw i64 %add425.i, %conv429.i
  %283 = load i32, i32* %B.i, align 4
  %conv431.i = zext i32 %283 to i64
  %add432.i = add nsw i64 %conv431.i, %add430.i
  %conv433.i = trunc i64 %add432.i to i32
  store i32 %conv433.i, i32* %B.i, align 4
  %284 = load i32, i32* %B.i, align 4
  %shl434.i = shl i32 %284, 22
  %285 = load i32, i32* %B.i, align 4
  %shr435.i = lshr i32 %285, 10
  %or436.i = or i32 %shl434.i, %shr435.i
  store i32 %or436.i, i32* %B.i, align 4
  %286 = load i32, i32* %C.i, align 4
  %287 = load i32, i32* %B.i, align 4
  %add437.i = add i32 %287, %286
  store i32 %add437.i, i32* %B.i, align 4
  %288 = load i8*, i8** %data.i, align 8
  %incdec.ptr438.i = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %incdec.ptr438.i, i8** %data.i, align 8
  %289 = load i8, i8* %288, align 1
  %conv439.i = zext i8 %289 to i64
  %conv440.i = trunc i64 %conv439.i to i32
  store i32 %conv440.i, i32* %l.i, align 4
  %290 = load i8*, i8** %data.i, align 8
  %incdec.ptr441.i = getelementptr inbounds i8, i8* %290, i32 1
  store i8* %incdec.ptr441.i, i8** %data.i, align 8
  %291 = load i8, i8* %290, align 1
  %conv442.i = zext i8 %291 to i64
  %shl443.i = shl i64 %conv442.i, 8
  %292 = load i32, i32* %l.i, align 4
  %conv444.i = zext i32 %292 to i64
  %or445.i = or i64 %conv444.i, %shl443.i
  %conv446.i = trunc i64 %or445.i to i32
  store i32 %conv446.i, i32* %l.i, align 4
  %293 = load i8*, i8** %data.i, align 8
  %incdec.ptr447.i = getelementptr inbounds i8, i8* %293, i32 1
  store i8* %incdec.ptr447.i, i8** %data.i, align 8
  %294 = load i8, i8* %293, align 1
  %conv448.i = zext i8 %294 to i64
  %shl449.i = shl i64 %conv448.i, 16
  %295 = load i32, i32* %l.i, align 4
  %conv450.i = zext i32 %295 to i64
  %or451.i = or i64 %conv450.i, %shl449.i
  %conv452.i = trunc i64 %or451.i to i32
  store i32 %conv452.i, i32* %l.i, align 4
  %296 = load i8*, i8** %data.i, align 8
  %incdec.ptr453.i = getelementptr inbounds i8, i8* %296, i32 1
  store i8* %incdec.ptr453.i, i8** %data.i, align 8
  %297 = load i8, i8* %296, align 1
  %conv454.i = zext i8 %297 to i64
  %shl455.i = shl i64 %conv454.i, 24
  %298 = load i32, i32* %l.i, align 4
  %conv456.i = zext i32 %298 to i64
  %or457.i = or i64 %conv456.i, %shl455.i
  %conv458.i = trunc i64 %or457.i to i32
  store i32 %conv458.i, i32* %l.i, align 4
  %299 = load i32, i32* %l.i, align 4
  store i32 %299, i32* %XX13.i, align 4
  %300 = load i32, i32* %XX12.i, align 4
  %conv459.i = zext i32 %300 to i64
  %add460.i = add nsw i64 %conv459.i, 1804603682
  %301 = load i32, i32* %C.i, align 4
  %302 = load i32, i32* %D.i, align 4
  %xor461.i = xor i32 %301, %302
  %303 = load i32, i32* %B.i, align 4
  %and462.i = and i32 %xor461.i, %303
  %304 = load i32, i32* %D.i, align 4
  %xor463.i = xor i32 %and462.i, %304
  %conv464.i = zext i32 %xor463.i to i64
  %add465.i = add nsw i64 %add460.i, %conv464.i
  %305 = load i32, i32* %A.i, align 4
  %conv466.i = zext i32 %305 to i64
  %add467.i = add nsw i64 %conv466.i, %add465.i
  %conv468.i = trunc i64 %add467.i to i32
  store i32 %conv468.i, i32* %A.i, align 4
  %306 = load i32, i32* %A.i, align 4
  %shl469.i = shl i32 %306, 7
  %307 = load i32, i32* %A.i, align 4
  %shr470.i = lshr i32 %307, 25
  %or471.i = or i32 %shl469.i, %shr470.i
  store i32 %or471.i, i32* %A.i, align 4
  %308 = load i32, i32* %B.i, align 4
  %309 = load i32, i32* %A.i, align 4
  %add472.i = add i32 %309, %308
  store i32 %add472.i, i32* %A.i, align 4
  %310 = load i8*, i8** %data.i, align 8
  %incdec.ptr473.i = getelementptr inbounds i8, i8* %310, i32 1
  store i8* %incdec.ptr473.i, i8** %data.i, align 8
  %311 = load i8, i8* %310, align 1
  %conv474.i = zext i8 %311 to i64
  %conv475.i = trunc i64 %conv474.i to i32
  store i32 %conv475.i, i32* %l.i, align 4
  %312 = load i8*, i8** %data.i, align 8
  %incdec.ptr476.i = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %incdec.ptr476.i, i8** %data.i, align 8
  %313 = load i8, i8* %312, align 1
  %conv477.i = zext i8 %313 to i64
  %shl478.i = shl i64 %conv477.i, 8
  %314 = load i32, i32* %l.i, align 4
  %conv479.i = zext i32 %314 to i64
  %or480.i = or i64 %conv479.i, %shl478.i
  %conv481.i = trunc i64 %or480.i to i32
  store i32 %conv481.i, i32* %l.i, align 4
  %315 = load i8*, i8** %data.i, align 8
  %incdec.ptr482.i = getelementptr inbounds i8, i8* %315, i32 1
  store i8* %incdec.ptr482.i, i8** %data.i, align 8
  %316 = load i8, i8* %315, align 1
  %conv483.i = zext i8 %316 to i64
  %shl484.i = shl i64 %conv483.i, 16
  %317 = load i32, i32* %l.i, align 4
  %conv485.i = zext i32 %317 to i64
  %or486.i = or i64 %conv485.i, %shl484.i
  %conv487.i = trunc i64 %or486.i to i32
  store i32 %conv487.i, i32* %l.i, align 4
  %318 = load i8*, i8** %data.i, align 8
  %incdec.ptr488.i = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %incdec.ptr488.i, i8** %data.i, align 8
  %319 = load i8, i8* %318, align 1
  %conv489.i = zext i8 %319 to i64
  %shl490.i = shl i64 %conv489.i, 24
  %320 = load i32, i32* %l.i, align 4
  %conv491.i = zext i32 %320 to i64
  %or492.i = or i64 %conv491.i, %shl490.i
  %conv493.i = trunc i64 %or492.i to i32
  store i32 %conv493.i, i32* %l.i, align 4
  %321 = load i32, i32* %l.i, align 4
  store i32 %321, i32* %XX14.i, align 4
  %322 = load i32, i32* %XX13.i, align 4
  %conv494.i = zext i32 %322 to i64
  %add495.i = add nsw i64 %conv494.i, 4254626195
  %323 = load i32, i32* %B.i, align 4
  %324 = load i32, i32* %C.i, align 4
  %xor496.i = xor i32 %323, %324
  %325 = load i32, i32* %A.i, align 4
  %and497.i = and i32 %xor496.i, %325
  %326 = load i32, i32* %C.i, align 4
  %xor498.i = xor i32 %and497.i, %326
  %conv499.i = zext i32 %xor498.i to i64
  %add500.i = add nsw i64 %add495.i, %conv499.i
  %327 = load i32, i32* %D.i, align 4
  %conv501.i = zext i32 %327 to i64
  %add502.i = add nsw i64 %conv501.i, %add500.i
  %conv503.i = trunc i64 %add502.i to i32
  store i32 %conv503.i, i32* %D.i, align 4
  %328 = load i32, i32* %D.i, align 4
  %shl504.i = shl i32 %328, 12
  %329 = load i32, i32* %D.i, align 4
  %shr505.i = lshr i32 %329, 20
  %or506.i = or i32 %shl504.i, %shr505.i
  store i32 %or506.i, i32* %D.i, align 4
  %330 = load i32, i32* %A.i, align 4
  %331 = load i32, i32* %D.i, align 4
  %add507.i = add i32 %331, %330
  store i32 %add507.i, i32* %D.i, align 4
  %332 = load i8*, i8** %data.i, align 8
  %incdec.ptr508.i = getelementptr inbounds i8, i8* %332, i32 1
  store i8* %incdec.ptr508.i, i8** %data.i, align 8
  %333 = load i8, i8* %332, align 1
  %conv509.i = zext i8 %333 to i64
  %conv510.i = trunc i64 %conv509.i to i32
  store i32 %conv510.i, i32* %l.i, align 4
  %334 = load i8*, i8** %data.i, align 8
  %incdec.ptr511.i = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %incdec.ptr511.i, i8** %data.i, align 8
  %335 = load i8, i8* %334, align 1
  %conv512.i = zext i8 %335 to i64
  %shl513.i = shl i64 %conv512.i, 8
  %336 = load i32, i32* %l.i, align 4
  %conv514.i = zext i32 %336 to i64
  %or515.i = or i64 %conv514.i, %shl513.i
  %conv516.i = trunc i64 %or515.i to i32
  store i32 %conv516.i, i32* %l.i, align 4
  %337 = load i8*, i8** %data.i, align 8
  %incdec.ptr517.i = getelementptr inbounds i8, i8* %337, i32 1
  store i8* %incdec.ptr517.i, i8** %data.i, align 8
  %338 = load i8, i8* %337, align 1
  %conv518.i = zext i8 %338 to i64
  %shl519.i = shl i64 %conv518.i, 16
  %339 = load i32, i32* %l.i, align 4
  %conv520.i = zext i32 %339 to i64
  %or521.i = or i64 %conv520.i, %shl519.i
  %conv522.i = trunc i64 %or521.i to i32
  store i32 %conv522.i, i32* %l.i, align 4
  %340 = load i8*, i8** %data.i, align 8
  %incdec.ptr523.i = getelementptr inbounds i8, i8* %340, i32 1
  store i8* %incdec.ptr523.i, i8** %data.i, align 8
  %341 = load i8, i8* %340, align 1
  %conv524.i = zext i8 %341 to i64
  %shl525.i = shl i64 %conv524.i, 24
  %342 = load i32, i32* %l.i, align 4
  %conv526.i = zext i32 %342 to i64
  %or527.i = or i64 %conv526.i, %shl525.i
  %conv528.i = trunc i64 %or527.i to i32
  store i32 %conv528.i, i32* %l.i, align 4
  %343 = load i32, i32* %l.i, align 4
  store i32 %343, i32* %XX15.i, align 4
  %344 = load i32, i32* %XX14.i, align 4
  %conv529.i = zext i32 %344 to i64
  %add530.i = add nsw i64 %conv529.i, 2792965006
  %345 = load i32, i32* %A.i, align 4
  %346 = load i32, i32* %B.i, align 4
  %xor531.i = xor i32 %345, %346
  %347 = load i32, i32* %D.i, align 4
  %and532.i = and i32 %xor531.i, %347
  %348 = load i32, i32* %B.i, align 4
  %xor533.i = xor i32 %and532.i, %348
  %conv534.i = zext i32 %xor533.i to i64
  %add535.i = add nsw i64 %add530.i, %conv534.i
  %349 = load i32, i32* %C.i, align 4
  %conv536.i = zext i32 %349 to i64
  %add537.i = add nsw i64 %conv536.i, %add535.i
  %conv538.i = trunc i64 %add537.i to i32
  store i32 %conv538.i, i32* %C.i, align 4
  %350 = load i32, i32* %C.i, align 4
  %shl539.i = shl i32 %350, 17
  %351 = load i32, i32* %C.i, align 4
  %shr540.i = lshr i32 %351, 15
  %or541.i = or i32 %shl539.i, %shr540.i
  store i32 %or541.i, i32* %C.i, align 4
  %352 = load i32, i32* %D.i, align 4
  %353 = load i32, i32* %C.i, align 4
  %add542.i = add i32 %353, %352
  store i32 %add542.i, i32* %C.i, align 4
  %354 = load i32, i32* %XX15.i, align 4
  %conv543.i = zext i32 %354 to i64
  %add544.i = add nsw i64 %conv543.i, 1236535329
  %355 = load i32, i32* %D.i, align 4
  %356 = load i32, i32* %A.i, align 4
  %xor545.i = xor i32 %355, %356
  %357 = load i32, i32* %C.i, align 4
  %and546.i = and i32 %xor545.i, %357
  %358 = load i32, i32* %A.i, align 4
  %xor547.i = xor i32 %and546.i, %358
  %conv548.i = zext i32 %xor547.i to i64
  %add549.i = add nsw i64 %add544.i, %conv548.i
  %359 = load i32, i32* %B.i, align 4
  %conv550.i = zext i32 %359 to i64
  %add551.i = add nsw i64 %conv550.i, %add549.i
  %conv552.i = trunc i64 %add551.i to i32
  store i32 %conv552.i, i32* %B.i, align 4
  %360 = load i32, i32* %B.i, align 4
  %shl553.i = shl i32 %360, 22
  %361 = load i32, i32* %B.i, align 4
  %shr554.i = lshr i32 %361, 10
  %or555.i = or i32 %shl553.i, %shr554.i
  store i32 %or555.i, i32* %B.i, align 4
  %362 = load i32, i32* %C.i, align 4
  %363 = load i32, i32* %B.i, align 4
  %add556.i = add i32 %363, %362
  store i32 %add556.i, i32* %B.i, align 4
  %364 = load i32, i32* %XX1.i, align 4
  %conv557.i = zext i32 %364 to i64
  %add558.i = add nsw i64 %conv557.i, 4129170786
  %365 = load i32, i32* %B.i, align 4
  %366 = load i32, i32* %C.i, align 4
  %xor559.i = xor i32 %365, %366
  %367 = load i32, i32* %D.i, align 4
  %and560.i = and i32 %xor559.i, %367
  %368 = load i32, i32* %C.i, align 4
  %xor561.i = xor i32 %and560.i, %368
  %conv562.i = zext i32 %xor561.i to i64
  %add563.i = add nsw i64 %add558.i, %conv562.i
  %369 = load i32, i32* %A.i, align 4
  %conv564.i = zext i32 %369 to i64
  %add565.i = add nsw i64 %conv564.i, %add563.i
  %conv566.i = trunc i64 %add565.i to i32
  store i32 %conv566.i, i32* %A.i, align 4
  %370 = load i32, i32* %A.i, align 4
  %shl567.i = shl i32 %370, 5
  %371 = load i32, i32* %A.i, align 4
  %shr568.i = lshr i32 %371, 27
  %or569.i = or i32 %shl567.i, %shr568.i
  store i32 %or569.i, i32* %A.i, align 4
  %372 = load i32, i32* %B.i, align 4
  %373 = load i32, i32* %A.i, align 4
  %add570.i = add i32 %373, %372
  store i32 %add570.i, i32* %A.i, align 4
  %374 = load i32, i32* %XX6.i, align 4
  %conv571.i = zext i32 %374 to i64
  %add572.i = add nsw i64 %conv571.i, 3225465664
  %375 = load i32, i32* %A.i, align 4
  %376 = load i32, i32* %B.i, align 4
  %xor573.i = xor i32 %375, %376
  %377 = load i32, i32* %C.i, align 4
  %and574.i = and i32 %xor573.i, %377
  %378 = load i32, i32* %B.i, align 4
  %xor575.i = xor i32 %and574.i, %378
  %conv576.i = zext i32 %xor575.i to i64
  %add577.i = add nsw i64 %add572.i, %conv576.i
  %379 = load i32, i32* %D.i, align 4
  %conv578.i = zext i32 %379 to i64
  %add579.i = add nsw i64 %conv578.i, %add577.i
  %conv580.i = trunc i64 %add579.i to i32
  store i32 %conv580.i, i32* %D.i, align 4
  %380 = load i32, i32* %D.i, align 4
  %shl581.i = shl i32 %380, 9
  %381 = load i32, i32* %D.i, align 4
  %shr582.i = lshr i32 %381, 23
  %or583.i = or i32 %shl581.i, %shr582.i
  store i32 %or583.i, i32* %D.i, align 4
  %382 = load i32, i32* %A.i, align 4
  %383 = load i32, i32* %D.i, align 4
  %add584.i = add i32 %383, %382
  store i32 %add584.i, i32* %D.i, align 4
  %384 = load i32, i32* %XX11.i, align 4
  %conv585.i = zext i32 %384 to i64
  %add586.i = add nsw i64 %conv585.i, 643717713
  %385 = load i32, i32* %D.i, align 4
  %386 = load i32, i32* %A.i, align 4
  %xor587.i = xor i32 %385, %386
  %387 = load i32, i32* %B.i, align 4
  %and588.i = and i32 %xor587.i, %387
  %388 = load i32, i32* %A.i, align 4
  %xor589.i = xor i32 %and588.i, %388
  %conv590.i = zext i32 %xor589.i to i64
  %add591.i = add nsw i64 %add586.i, %conv590.i
  %389 = load i32, i32* %C.i, align 4
  %conv592.i = zext i32 %389 to i64
  %add593.i = add nsw i64 %conv592.i, %add591.i
  %conv594.i = trunc i64 %add593.i to i32
  store i32 %conv594.i, i32* %C.i, align 4
  %390 = load i32, i32* %C.i, align 4
  %shl595.i = shl i32 %390, 14
  %391 = load i32, i32* %C.i, align 4
  %shr596.i = lshr i32 %391, 18
  %or597.i = or i32 %shl595.i, %shr596.i
  store i32 %or597.i, i32* %C.i, align 4
  %392 = load i32, i32* %D.i, align 4
  %393 = load i32, i32* %C.i, align 4
  %add598.i = add i32 %393, %392
  store i32 %add598.i, i32* %C.i, align 4
  %394 = load i32, i32* %XX0.i, align 4
  %conv599.i = zext i32 %394 to i64
  %add600.i = add nsw i64 %conv599.i, 3921069994
  %395 = load i32, i32* %C.i, align 4
  %396 = load i32, i32* %D.i, align 4
  %xor601.i = xor i32 %395, %396
  %397 = load i32, i32* %A.i, align 4
  %and602.i = and i32 %xor601.i, %397
  %398 = load i32, i32* %D.i, align 4
  %xor603.i = xor i32 %and602.i, %398
  %conv604.i = zext i32 %xor603.i to i64
  %add605.i = add nsw i64 %add600.i, %conv604.i
  %399 = load i32, i32* %B.i, align 4
  %conv606.i = zext i32 %399 to i64
  %add607.i = add nsw i64 %conv606.i, %add605.i
  %conv608.i = trunc i64 %add607.i to i32
  store i32 %conv608.i, i32* %B.i, align 4
  %400 = load i32, i32* %B.i, align 4
  %shl609.i = shl i32 %400, 20
  %401 = load i32, i32* %B.i, align 4
  %shr610.i = lshr i32 %401, 12
  %or611.i = or i32 %shl609.i, %shr610.i
  store i32 %or611.i, i32* %B.i, align 4
  %402 = load i32, i32* %C.i, align 4
  %403 = load i32, i32* %B.i, align 4
  %add612.i = add i32 %403, %402
  store i32 %add612.i, i32* %B.i, align 4
  %404 = load i32, i32* %XX5.i, align 4
  %conv613.i = zext i32 %404 to i64
  %add614.i = add nsw i64 %conv613.i, 3593408605
  %405 = load i32, i32* %B.i, align 4
  %406 = load i32, i32* %C.i, align 4
  %xor615.i = xor i32 %405, %406
  %407 = load i32, i32* %D.i, align 4
  %and616.i = and i32 %xor615.i, %407
  %408 = load i32, i32* %C.i, align 4
  %xor617.i = xor i32 %and616.i, %408
  %conv618.i = zext i32 %xor617.i to i64
  %add619.i = add nsw i64 %add614.i, %conv618.i
  %409 = load i32, i32* %A.i, align 4
  %conv620.i = zext i32 %409 to i64
  %add621.i = add nsw i64 %conv620.i, %add619.i
  %conv622.i = trunc i64 %add621.i to i32
  store i32 %conv622.i, i32* %A.i, align 4
  %410 = load i32, i32* %A.i, align 4
  %shl623.i = shl i32 %410, 5
  %411 = load i32, i32* %A.i, align 4
  %shr624.i = lshr i32 %411, 27
  %or625.i = or i32 %shl623.i, %shr624.i
  store i32 %or625.i, i32* %A.i, align 4
  %412 = load i32, i32* %B.i, align 4
  %413 = load i32, i32* %A.i, align 4
  %add626.i = add i32 %413, %412
  store i32 %add626.i, i32* %A.i, align 4
  %414 = load i32, i32* %XX10.i, align 4
  %conv627.i = zext i32 %414 to i64
  %add628.i = add nsw i64 %conv627.i, 38016083
  %415 = load i32, i32* %A.i, align 4
  %416 = load i32, i32* %B.i, align 4
  %xor629.i = xor i32 %415, %416
  %417 = load i32, i32* %C.i, align 4
  %and630.i = and i32 %xor629.i, %417
  %418 = load i32, i32* %B.i, align 4
  %xor631.i = xor i32 %and630.i, %418
  %conv632.i = zext i32 %xor631.i to i64
  %add633.i = add nsw i64 %add628.i, %conv632.i
  %419 = load i32, i32* %D.i, align 4
  %conv634.i = zext i32 %419 to i64
  %add635.i = add nsw i64 %conv634.i, %add633.i
  %conv636.i = trunc i64 %add635.i to i32
  store i32 %conv636.i, i32* %D.i, align 4
  %420 = load i32, i32* %D.i, align 4
  %shl637.i = shl i32 %420, 9
  %421 = load i32, i32* %D.i, align 4
  %shr638.i = lshr i32 %421, 23
  %or639.i = or i32 %shl637.i, %shr638.i
  store i32 %or639.i, i32* %D.i, align 4
  %422 = load i32, i32* %A.i, align 4
  %423 = load i32, i32* %D.i, align 4
  %add640.i = add i32 %423, %422
  store i32 %add640.i, i32* %D.i, align 4
  %424 = load i32, i32* %XX15.i, align 4
  %conv641.i = zext i32 %424 to i64
  %add642.i = add nsw i64 %conv641.i, 3634488961
  %425 = load i32, i32* %D.i, align 4
  %426 = load i32, i32* %A.i, align 4
  %xor643.i = xor i32 %425, %426
  %427 = load i32, i32* %B.i, align 4
  %and644.i = and i32 %xor643.i, %427
  %428 = load i32, i32* %A.i, align 4
  %xor645.i = xor i32 %and644.i, %428
  %conv646.i = zext i32 %xor645.i to i64
  %add647.i = add nsw i64 %add642.i, %conv646.i
  %429 = load i32, i32* %C.i, align 4
  %conv648.i = zext i32 %429 to i64
  %add649.i = add nsw i64 %conv648.i, %add647.i
  %conv650.i = trunc i64 %add649.i to i32
  store i32 %conv650.i, i32* %C.i, align 4
  %430 = load i32, i32* %C.i, align 4
  %shl651.i = shl i32 %430, 14
  %431 = load i32, i32* %C.i, align 4
  %shr652.i = lshr i32 %431, 18
  %or653.i = or i32 %shl651.i, %shr652.i
  store i32 %or653.i, i32* %C.i, align 4
  %432 = load i32, i32* %D.i, align 4
  %433 = load i32, i32* %C.i, align 4
  %add654.i = add i32 %433, %432
  store i32 %add654.i, i32* %C.i, align 4
  %434 = load i32, i32* %XX4.i, align 4
  %conv655.i = zext i32 %434 to i64
  %add656.i = add nsw i64 %conv655.i, 3889429448
  %435 = load i32, i32* %C.i, align 4
  %436 = load i32, i32* %D.i, align 4
  %xor657.i = xor i32 %435, %436
  %437 = load i32, i32* %A.i, align 4
  %and658.i = and i32 %xor657.i, %437
  %438 = load i32, i32* %D.i, align 4
  %xor659.i = xor i32 %and658.i, %438
  %conv660.i = zext i32 %xor659.i to i64
  %add661.i = add nsw i64 %add656.i, %conv660.i
  %439 = load i32, i32* %B.i, align 4
  %conv662.i = zext i32 %439 to i64
  %add663.i = add nsw i64 %conv662.i, %add661.i
  %conv664.i = trunc i64 %add663.i to i32
  store i32 %conv664.i, i32* %B.i, align 4
  %440 = load i32, i32* %B.i, align 4
  %shl665.i = shl i32 %440, 20
  %441 = load i32, i32* %B.i, align 4
  %shr666.i = lshr i32 %441, 12
  %or667.i = or i32 %shl665.i, %shr666.i
  store i32 %or667.i, i32* %B.i, align 4
  %442 = load i32, i32* %C.i, align 4
  %443 = load i32, i32* %B.i, align 4
  %add668.i = add i32 %443, %442
  store i32 %add668.i, i32* %B.i, align 4
  %444 = load i32, i32* %XX9.i, align 4
  %conv669.i = zext i32 %444 to i64
  %add670.i = add nsw i64 %conv669.i, 568446438
  %445 = load i32, i32* %B.i, align 4
  %446 = load i32, i32* %C.i, align 4
  %xor671.i = xor i32 %445, %446
  %447 = load i32, i32* %D.i, align 4
  %and672.i = and i32 %xor671.i, %447
  %448 = load i32, i32* %C.i, align 4
  %xor673.i = xor i32 %and672.i, %448
  %conv674.i = zext i32 %xor673.i to i64
  %add675.i = add nsw i64 %add670.i, %conv674.i
  %449 = load i32, i32* %A.i, align 4
  %conv676.i = zext i32 %449 to i64
  %add677.i = add nsw i64 %conv676.i, %add675.i
  %conv678.i = trunc i64 %add677.i to i32
  store i32 %conv678.i, i32* %A.i, align 4
  %450 = load i32, i32* %A.i, align 4
  %shl679.i = shl i32 %450, 5
  %451 = load i32, i32* %A.i, align 4
  %shr680.i = lshr i32 %451, 27
  %or681.i = or i32 %shl679.i, %shr680.i
  store i32 %or681.i, i32* %A.i, align 4
  %452 = load i32, i32* %B.i, align 4
  %453 = load i32, i32* %A.i, align 4
  %add682.i = add i32 %453, %452
  store i32 %add682.i, i32* %A.i, align 4
  %454 = load i32, i32* %XX14.i, align 4
  %conv683.i = zext i32 %454 to i64
  %add684.i = add nsw i64 %conv683.i, 3275163606
  %455 = load i32, i32* %A.i, align 4
  %456 = load i32, i32* %B.i, align 4
  %xor685.i = xor i32 %455, %456
  %457 = load i32, i32* %C.i, align 4
  %and686.i = and i32 %xor685.i, %457
  %458 = load i32, i32* %B.i, align 4
  %xor687.i = xor i32 %and686.i, %458
  %conv688.i = zext i32 %xor687.i to i64
  %add689.i = add nsw i64 %add684.i, %conv688.i
  %459 = load i32, i32* %D.i, align 4
  %conv690.i = zext i32 %459 to i64
  %add691.i = add nsw i64 %conv690.i, %add689.i
  %conv692.i = trunc i64 %add691.i to i32
  store i32 %conv692.i, i32* %D.i, align 4
  %460 = load i32, i32* %D.i, align 4
  %shl693.i = shl i32 %460, 9
  %461 = load i32, i32* %D.i, align 4
  %shr694.i = lshr i32 %461, 23
  %or695.i = or i32 %shl693.i, %shr694.i
  store i32 %or695.i, i32* %D.i, align 4
  %462 = load i32, i32* %A.i, align 4
  %463 = load i32, i32* %D.i, align 4
  %add696.i = add i32 %463, %462
  store i32 %add696.i, i32* %D.i, align 4
  %464 = load i32, i32* %XX3.i, align 4
  %conv697.i = zext i32 %464 to i64
  %add698.i = add nsw i64 %conv697.i, 4107603335
  %465 = load i32, i32* %D.i, align 4
  %466 = load i32, i32* %A.i, align 4
  %xor699.i = xor i32 %465, %466
  %467 = load i32, i32* %B.i, align 4
  %and700.i = and i32 %xor699.i, %467
  %468 = load i32, i32* %A.i, align 4
  %xor701.i = xor i32 %and700.i, %468
  %conv702.i = zext i32 %xor701.i to i64
  %add703.i = add nsw i64 %add698.i, %conv702.i
  %469 = load i32, i32* %C.i, align 4
  %conv704.i = zext i32 %469 to i64
  %add705.i = add nsw i64 %conv704.i, %add703.i
  %conv706.i = trunc i64 %add705.i to i32
  store i32 %conv706.i, i32* %C.i, align 4
  %470 = load i32, i32* %C.i, align 4
  %shl707.i = shl i32 %470, 14
  %471 = load i32, i32* %C.i, align 4
  %shr708.i = lshr i32 %471, 18
  %or709.i = or i32 %shl707.i, %shr708.i
  store i32 %or709.i, i32* %C.i, align 4
  %472 = load i32, i32* %D.i, align 4
  %473 = load i32, i32* %C.i, align 4
  %add710.i = add i32 %473, %472
  store i32 %add710.i, i32* %C.i, align 4
  %474 = load i32, i32* %XX8.i, align 4
  %conv711.i = zext i32 %474 to i64
  %add712.i = add nsw i64 %conv711.i, 1163531501
  %475 = load i32, i32* %C.i, align 4
  %476 = load i32, i32* %D.i, align 4
  %xor713.i = xor i32 %475, %476
  %477 = load i32, i32* %A.i, align 4
  %and714.i = and i32 %xor713.i, %477
  %478 = load i32, i32* %D.i, align 4
  %xor715.i = xor i32 %and714.i, %478
  %conv716.i = zext i32 %xor715.i to i64
  %add717.i = add nsw i64 %add712.i, %conv716.i
  %479 = load i32, i32* %B.i, align 4
  %conv718.i = zext i32 %479 to i64
  %add719.i = add nsw i64 %conv718.i, %add717.i
  %conv720.i = trunc i64 %add719.i to i32
  store i32 %conv720.i, i32* %B.i, align 4
  %480 = load i32, i32* %B.i, align 4
  %shl721.i = shl i32 %480, 20
  %481 = load i32, i32* %B.i, align 4
  %shr722.i = lshr i32 %481, 12
  %or723.i = or i32 %shl721.i, %shr722.i
  store i32 %or723.i, i32* %B.i, align 4
  %482 = load i32, i32* %C.i, align 4
  %483 = load i32, i32* %B.i, align 4
  %add724.i = add i32 %483, %482
  store i32 %add724.i, i32* %B.i, align 4
  %484 = load i32, i32* %XX13.i, align 4
  %conv725.i = zext i32 %484 to i64
  %add726.i = add nsw i64 %conv725.i, 2850285829
  %485 = load i32, i32* %B.i, align 4
  %486 = load i32, i32* %C.i, align 4
  %xor727.i = xor i32 %485, %486
  %487 = load i32, i32* %D.i, align 4
  %and728.i = and i32 %xor727.i, %487
  %488 = load i32, i32* %C.i, align 4
  %xor729.i = xor i32 %and728.i, %488
  %conv730.i = zext i32 %xor729.i to i64
  %add731.i = add nsw i64 %add726.i, %conv730.i
  %489 = load i32, i32* %A.i, align 4
  %conv732.i = zext i32 %489 to i64
  %add733.i = add nsw i64 %conv732.i, %add731.i
  %conv734.i = trunc i64 %add733.i to i32
  store i32 %conv734.i, i32* %A.i, align 4
  %490 = load i32, i32* %A.i, align 4
  %shl735.i = shl i32 %490, 5
  %491 = load i32, i32* %A.i, align 4
  %shr736.i = lshr i32 %491, 27
  %or737.i = or i32 %shl735.i, %shr736.i
  store i32 %or737.i, i32* %A.i, align 4
  %492 = load i32, i32* %B.i, align 4
  %493 = load i32, i32* %A.i, align 4
  %add738.i = add i32 %493, %492
  store i32 %add738.i, i32* %A.i, align 4
  %494 = load i32, i32* %XX2.i, align 4
  %conv739.i = zext i32 %494 to i64
  %add740.i = add nsw i64 %conv739.i, 4243563512
  %495 = load i32, i32* %A.i, align 4
  %496 = load i32, i32* %B.i, align 4
  %xor741.i = xor i32 %495, %496
  %497 = load i32, i32* %C.i, align 4
  %and742.i = and i32 %xor741.i, %497
  %498 = load i32, i32* %B.i, align 4
  %xor743.i = xor i32 %and742.i, %498
  %conv744.i = zext i32 %xor743.i to i64
  %add745.i = add nsw i64 %add740.i, %conv744.i
  %499 = load i32, i32* %D.i, align 4
  %conv746.i = zext i32 %499 to i64
  %add747.i = add nsw i64 %conv746.i, %add745.i
  %conv748.i = trunc i64 %add747.i to i32
  store i32 %conv748.i, i32* %D.i, align 4
  %500 = load i32, i32* %D.i, align 4
  %shl749.i = shl i32 %500, 9
  %501 = load i32, i32* %D.i, align 4
  %shr750.i = lshr i32 %501, 23
  %or751.i = or i32 %shl749.i, %shr750.i
  store i32 %or751.i, i32* %D.i, align 4
  %502 = load i32, i32* %A.i, align 4
  %503 = load i32, i32* %D.i, align 4
  %add752.i = add i32 %503, %502
  store i32 %add752.i, i32* %D.i, align 4
  %504 = load i32, i32* %XX7.i, align 4
  %conv753.i = zext i32 %504 to i64
  %add754.i = add nsw i64 %conv753.i, 1735328473
  %505 = load i32, i32* %D.i, align 4
  %506 = load i32, i32* %A.i, align 4
  %xor755.i = xor i32 %505, %506
  %507 = load i32, i32* %B.i, align 4
  %and756.i = and i32 %xor755.i, %507
  %508 = load i32, i32* %A.i, align 4
  %xor757.i = xor i32 %and756.i, %508
  %conv758.i = zext i32 %xor757.i to i64
  %add759.i = add nsw i64 %add754.i, %conv758.i
  %509 = load i32, i32* %C.i, align 4
  %conv760.i = zext i32 %509 to i64
  %add761.i = add nsw i64 %conv760.i, %add759.i
  %conv762.i = trunc i64 %add761.i to i32
  store i32 %conv762.i, i32* %C.i, align 4
  %510 = load i32, i32* %C.i, align 4
  %shl763.i = shl i32 %510, 14
  %511 = load i32, i32* %C.i, align 4
  %shr764.i = lshr i32 %511, 18
  %or765.i = or i32 %shl763.i, %shr764.i
  store i32 %or765.i, i32* %C.i, align 4
  %512 = load i32, i32* %D.i, align 4
  %513 = load i32, i32* %C.i, align 4
  %add766.i = add i32 %513, %512
  store i32 %add766.i, i32* %C.i, align 4
  %514 = load i32, i32* %XX12.i, align 4
  %conv767.i = zext i32 %514 to i64
  %add768.i = add nsw i64 %conv767.i, 2368359562
  %515 = load i32, i32* %C.i, align 4
  %516 = load i32, i32* %D.i, align 4
  %xor769.i = xor i32 %515, %516
  %517 = load i32, i32* %A.i, align 4
  %and770.i = and i32 %xor769.i, %517
  %518 = load i32, i32* %D.i, align 4
  %xor771.i = xor i32 %and770.i, %518
  %conv772.i = zext i32 %xor771.i to i64
  %add773.i = add nsw i64 %add768.i, %conv772.i
  %519 = load i32, i32* %B.i, align 4
  %conv774.i = zext i32 %519 to i64
  %add775.i = add nsw i64 %conv774.i, %add773.i
  %conv776.i = trunc i64 %add775.i to i32
  store i32 %conv776.i, i32* %B.i, align 4
  %520 = load i32, i32* %B.i, align 4
  %shl777.i = shl i32 %520, 20
  %521 = load i32, i32* %B.i, align 4
  %shr778.i = lshr i32 %521, 12
  %or779.i = or i32 %shl777.i, %shr778.i
  store i32 %or779.i, i32* %B.i, align 4
  %522 = load i32, i32* %C.i, align 4
  %523 = load i32, i32* %B.i, align 4
  %add780.i = add i32 %523, %522
  store i32 %add780.i, i32* %B.i, align 4
  %524 = load i32, i32* %XX5.i, align 4
  %conv781.i = zext i32 %524 to i64
  %add782.i = add nsw i64 %conv781.i, 4294588738
  %525 = load i32, i32* %B.i, align 4
  %526 = load i32, i32* %C.i, align 4
  %xor783.i = xor i32 %525, %526
  %527 = load i32, i32* %D.i, align 4
  %xor784.i = xor i32 %xor783.i, %527
  %conv785.i = zext i32 %xor784.i to i64
  %add786.i = add nsw i64 %add782.i, %conv785.i
  %528 = load i32, i32* %A.i, align 4
  %conv787.i = zext i32 %528 to i64
  %add788.i = add nsw i64 %conv787.i, %add786.i
  %conv789.i = trunc i64 %add788.i to i32
  store i32 %conv789.i, i32* %A.i, align 4
  %529 = load i32, i32* %A.i, align 4
  %shl790.i = shl i32 %529, 4
  %530 = load i32, i32* %A.i, align 4
  %shr791.i = lshr i32 %530, 28
  %or792.i = or i32 %shl790.i, %shr791.i
  store i32 %or792.i, i32* %A.i, align 4
  %531 = load i32, i32* %B.i, align 4
  %532 = load i32, i32* %A.i, align 4
  %add793.i = add i32 %532, %531
  store i32 %add793.i, i32* %A.i, align 4
  %533 = load i32, i32* %XX8.i, align 4
  %conv794.i = zext i32 %533 to i64
  %add795.i = add nsw i64 %conv794.i, 2272392833
  %534 = load i32, i32* %A.i, align 4
  %535 = load i32, i32* %B.i, align 4
  %xor796.i = xor i32 %534, %535
  %536 = load i32, i32* %C.i, align 4
  %xor797.i = xor i32 %xor796.i, %536
  %conv798.i = zext i32 %xor797.i to i64
  %add799.i = add nsw i64 %add795.i, %conv798.i
  %537 = load i32, i32* %D.i, align 4
  %conv800.i = zext i32 %537 to i64
  %add801.i = add nsw i64 %conv800.i, %add799.i
  %conv802.i = trunc i64 %add801.i to i32
  store i32 %conv802.i, i32* %D.i, align 4
  %538 = load i32, i32* %D.i, align 4
  %shl803.i = shl i32 %538, 11
  %539 = load i32, i32* %D.i, align 4
  %shr804.i = lshr i32 %539, 21
  %or805.i = or i32 %shl803.i, %shr804.i
  store i32 %or805.i, i32* %D.i, align 4
  %540 = load i32, i32* %A.i, align 4
  %541 = load i32, i32* %D.i, align 4
  %add806.i = add i32 %541, %540
  store i32 %add806.i, i32* %D.i, align 4
  %542 = load i32, i32* %XX11.i, align 4
  %conv807.i = zext i32 %542 to i64
  %add808.i = add nsw i64 %conv807.i, 1839030562
  %543 = load i32, i32* %D.i, align 4
  %544 = load i32, i32* %A.i, align 4
  %xor809.i = xor i32 %543, %544
  %545 = load i32, i32* %B.i, align 4
  %xor810.i = xor i32 %xor809.i, %545
  %conv811.i = zext i32 %xor810.i to i64
  %add812.i = add nsw i64 %add808.i, %conv811.i
  %546 = load i32, i32* %C.i, align 4
  %conv813.i = zext i32 %546 to i64
  %add814.i = add nsw i64 %conv813.i, %add812.i
  %conv815.i = trunc i64 %add814.i to i32
  store i32 %conv815.i, i32* %C.i, align 4
  %547 = load i32, i32* %C.i, align 4
  %shl816.i = shl i32 %547, 16
  %548 = load i32, i32* %C.i, align 4
  %shr817.i = lshr i32 %548, 16
  %or818.i = or i32 %shl816.i, %shr817.i
  store i32 %or818.i, i32* %C.i, align 4
  %549 = load i32, i32* %D.i, align 4
  %550 = load i32, i32* %C.i, align 4
  %add819.i = add i32 %550, %549
  store i32 %add819.i, i32* %C.i, align 4
  %551 = load i32, i32* %XX14.i, align 4
  %conv820.i = zext i32 %551 to i64
  %add821.i = add nsw i64 %conv820.i, 4259657740
  %552 = load i32, i32* %C.i, align 4
  %553 = load i32, i32* %D.i, align 4
  %xor822.i = xor i32 %552, %553
  %554 = load i32, i32* %A.i, align 4
  %xor823.i = xor i32 %xor822.i, %554
  %conv824.i = zext i32 %xor823.i to i64
  %add825.i = add nsw i64 %add821.i, %conv824.i
  %555 = load i32, i32* %B.i, align 4
  %conv826.i = zext i32 %555 to i64
  %add827.i = add nsw i64 %conv826.i, %add825.i
  %conv828.i = trunc i64 %add827.i to i32
  store i32 %conv828.i, i32* %B.i, align 4
  %556 = load i32, i32* %B.i, align 4
  %shl829.i = shl i32 %556, 23
  %557 = load i32, i32* %B.i, align 4
  %shr830.i = lshr i32 %557, 9
  %or831.i = or i32 %shl829.i, %shr830.i
  store i32 %or831.i, i32* %B.i, align 4
  %558 = load i32, i32* %C.i, align 4
  %559 = load i32, i32* %B.i, align 4
  %add832.i = add i32 %559, %558
  store i32 %add832.i, i32* %B.i, align 4
  %560 = load i32, i32* %XX1.i, align 4
  %conv833.i = zext i32 %560 to i64
  %add834.i = add nsw i64 %conv833.i, 2763975236
  %561 = load i32, i32* %B.i, align 4
  %562 = load i32, i32* %C.i, align 4
  %xor835.i = xor i32 %561, %562
  %563 = load i32, i32* %D.i, align 4
  %xor836.i = xor i32 %xor835.i, %563
  %conv837.i = zext i32 %xor836.i to i64
  %add838.i = add nsw i64 %add834.i, %conv837.i
  %564 = load i32, i32* %A.i, align 4
  %conv839.i = zext i32 %564 to i64
  %add840.i = add nsw i64 %conv839.i, %add838.i
  %conv841.i = trunc i64 %add840.i to i32
  store i32 %conv841.i, i32* %A.i, align 4
  %565 = load i32, i32* %A.i, align 4
  %shl842.i = shl i32 %565, 4
  %566 = load i32, i32* %A.i, align 4
  %shr843.i = lshr i32 %566, 28
  %or844.i = or i32 %shl842.i, %shr843.i
  store i32 %or844.i, i32* %A.i, align 4
  %567 = load i32, i32* %B.i, align 4
  %568 = load i32, i32* %A.i, align 4
  %add845.i = add i32 %568, %567
  store i32 %add845.i, i32* %A.i, align 4
  %569 = load i32, i32* %XX4.i, align 4
  %conv846.i = zext i32 %569 to i64
  %add847.i = add nsw i64 %conv846.i, 1272893353
  %570 = load i32, i32* %A.i, align 4
  %571 = load i32, i32* %B.i, align 4
  %xor848.i = xor i32 %570, %571
  %572 = load i32, i32* %C.i, align 4
  %xor849.i = xor i32 %xor848.i, %572
  %conv850.i = zext i32 %xor849.i to i64
  %add851.i = add nsw i64 %add847.i, %conv850.i
  %573 = load i32, i32* %D.i, align 4
  %conv852.i = zext i32 %573 to i64
  %add853.i = add nsw i64 %conv852.i, %add851.i
  %conv854.i = trunc i64 %add853.i to i32
  store i32 %conv854.i, i32* %D.i, align 4
  %574 = load i32, i32* %D.i, align 4
  %shl855.i = shl i32 %574, 11
  %575 = load i32, i32* %D.i, align 4
  %shr856.i = lshr i32 %575, 21
  %or857.i = or i32 %shl855.i, %shr856.i
  store i32 %or857.i, i32* %D.i, align 4
  %576 = load i32, i32* %A.i, align 4
  %577 = load i32, i32* %D.i, align 4
  %add858.i = add i32 %577, %576
  store i32 %add858.i, i32* %D.i, align 4
  %578 = load i32, i32* %XX7.i, align 4
  %conv859.i = zext i32 %578 to i64
  %add860.i = add nsw i64 %conv859.i, 4139469664
  %579 = load i32, i32* %D.i, align 4
  %580 = load i32, i32* %A.i, align 4
  %xor861.i = xor i32 %579, %580
  %581 = load i32, i32* %B.i, align 4
  %xor862.i = xor i32 %xor861.i, %581
  %conv863.i = zext i32 %xor862.i to i64
  %add864.i = add nsw i64 %add860.i, %conv863.i
  %582 = load i32, i32* %C.i, align 4
  %conv865.i = zext i32 %582 to i64
  %add866.i = add nsw i64 %conv865.i, %add864.i
  %conv867.i = trunc i64 %add866.i to i32
  store i32 %conv867.i, i32* %C.i, align 4
  %583 = load i32, i32* %C.i, align 4
  %shl868.i = shl i32 %583, 16
  %584 = load i32, i32* %C.i, align 4
  %shr869.i = lshr i32 %584, 16
  %or870.i = or i32 %shl868.i, %shr869.i
  store i32 %or870.i, i32* %C.i, align 4
  %585 = load i32, i32* %D.i, align 4
  %586 = load i32, i32* %C.i, align 4
  %add871.i = add i32 %586, %585
  store i32 %add871.i, i32* %C.i, align 4
  %587 = load i32, i32* %XX10.i, align 4
  %conv872.i = zext i32 %587 to i64
  %add873.i = add nsw i64 %conv872.i, 3200236656
  %588 = load i32, i32* %C.i, align 4
  %589 = load i32, i32* %D.i, align 4
  %xor874.i = xor i32 %588, %589
  %590 = load i32, i32* %A.i, align 4
  %xor875.i = xor i32 %xor874.i, %590
  %conv876.i = zext i32 %xor875.i to i64
  %add877.i = add nsw i64 %add873.i, %conv876.i
  %591 = load i32, i32* %B.i, align 4
  %conv878.i = zext i32 %591 to i64
  %add879.i = add nsw i64 %conv878.i, %add877.i
  %conv880.i = trunc i64 %add879.i to i32
  store i32 %conv880.i, i32* %B.i, align 4
  %592 = load i32, i32* %B.i, align 4
  %shl881.i = shl i32 %592, 23
  %593 = load i32, i32* %B.i, align 4
  %shr882.i = lshr i32 %593, 9
  %or883.i = or i32 %shl881.i, %shr882.i
  store i32 %or883.i, i32* %B.i, align 4
  %594 = load i32, i32* %C.i, align 4
  %595 = load i32, i32* %B.i, align 4
  %add884.i = add i32 %595, %594
  store i32 %add884.i, i32* %B.i, align 4
  %596 = load i32, i32* %XX13.i, align 4
  %conv885.i = zext i32 %596 to i64
  %add886.i = add nsw i64 %conv885.i, 681279174
  %597 = load i32, i32* %B.i, align 4
  %598 = load i32, i32* %C.i, align 4
  %xor887.i = xor i32 %597, %598
  %599 = load i32, i32* %D.i, align 4
  %xor888.i = xor i32 %xor887.i, %599
  %conv889.i = zext i32 %xor888.i to i64
  %add890.i = add nsw i64 %add886.i, %conv889.i
  %600 = load i32, i32* %A.i, align 4
  %conv891.i = zext i32 %600 to i64
  %add892.i = add nsw i64 %conv891.i, %add890.i
  %conv893.i = trunc i64 %add892.i to i32
  store i32 %conv893.i, i32* %A.i, align 4
  %601 = load i32, i32* %A.i, align 4
  %shl894.i = shl i32 %601, 4
  %602 = load i32, i32* %A.i, align 4
  %shr895.i = lshr i32 %602, 28
  %or896.i = or i32 %shl894.i, %shr895.i
  store i32 %or896.i, i32* %A.i, align 4
  %603 = load i32, i32* %B.i, align 4
  %604 = load i32, i32* %A.i, align 4
  %add897.i = add i32 %604, %603
  store i32 %add897.i, i32* %A.i, align 4
  %605 = load i32, i32* %XX0.i, align 4
  %conv898.i = zext i32 %605 to i64
  %add899.i = add nsw i64 %conv898.i, 3936430074
  %606 = load i32, i32* %A.i, align 4
  %607 = load i32, i32* %B.i, align 4
  %xor900.i = xor i32 %606, %607
  %608 = load i32, i32* %C.i, align 4
  %xor901.i = xor i32 %xor900.i, %608
  %conv902.i = zext i32 %xor901.i to i64
  %add903.i = add nsw i64 %add899.i, %conv902.i
  %609 = load i32, i32* %D.i, align 4
  %conv904.i = zext i32 %609 to i64
  %add905.i = add nsw i64 %conv904.i, %add903.i
  %conv906.i = trunc i64 %add905.i to i32
  store i32 %conv906.i, i32* %D.i, align 4
  %610 = load i32, i32* %D.i, align 4
  %shl907.i = shl i32 %610, 11
  %611 = load i32, i32* %D.i, align 4
  %shr908.i = lshr i32 %611, 21
  %or909.i = or i32 %shl907.i, %shr908.i
  store i32 %or909.i, i32* %D.i, align 4
  %612 = load i32, i32* %A.i, align 4
  %613 = load i32, i32* %D.i, align 4
  %add910.i = add i32 %613, %612
  store i32 %add910.i, i32* %D.i, align 4
  %614 = load i32, i32* %XX3.i, align 4
  %conv911.i = zext i32 %614 to i64
  %add912.i = add nsw i64 %conv911.i, 3572445317
  %615 = load i32, i32* %D.i, align 4
  %616 = load i32, i32* %A.i, align 4
  %xor913.i = xor i32 %615, %616
  %617 = load i32, i32* %B.i, align 4
  %xor914.i = xor i32 %xor913.i, %617
  %conv915.i = zext i32 %xor914.i to i64
  %add916.i = add nsw i64 %add912.i, %conv915.i
  %618 = load i32, i32* %C.i, align 4
  %conv917.i = zext i32 %618 to i64
  %add918.i = add nsw i64 %conv917.i, %add916.i
  %conv919.i = trunc i64 %add918.i to i32
  store i32 %conv919.i, i32* %C.i, align 4
  %619 = load i32, i32* %C.i, align 4
  %shl920.i = shl i32 %619, 16
  %620 = load i32, i32* %C.i, align 4
  %shr921.i = lshr i32 %620, 16
  %or922.i = or i32 %shl920.i, %shr921.i
  store i32 %or922.i, i32* %C.i, align 4
  %621 = load i32, i32* %D.i, align 4
  %622 = load i32, i32* %C.i, align 4
  %add923.i = add i32 %622, %621
  store i32 %add923.i, i32* %C.i, align 4
  %623 = load i32, i32* %XX6.i, align 4
  %conv924.i = zext i32 %623 to i64
  %add925.i = add nsw i64 %conv924.i, 76029189
  %624 = load i32, i32* %C.i, align 4
  %625 = load i32, i32* %D.i, align 4
  %xor926.i = xor i32 %624, %625
  %626 = load i32, i32* %A.i, align 4
  %xor927.i = xor i32 %xor926.i, %626
  %conv928.i = zext i32 %xor927.i to i64
  %add929.i = add nsw i64 %add925.i, %conv928.i
  %627 = load i32, i32* %B.i, align 4
  %conv930.i = zext i32 %627 to i64
  %add931.i = add nsw i64 %conv930.i, %add929.i
  %conv932.i = trunc i64 %add931.i to i32
  store i32 %conv932.i, i32* %B.i, align 4
  %628 = load i32, i32* %B.i, align 4
  %shl933.i = shl i32 %628, 23
  %629 = load i32, i32* %B.i, align 4
  %shr934.i = lshr i32 %629, 9
  %or935.i = or i32 %shl933.i, %shr934.i
  store i32 %or935.i, i32* %B.i, align 4
  %630 = load i32, i32* %C.i, align 4
  %631 = load i32, i32* %B.i, align 4
  %add936.i = add i32 %631, %630
  store i32 %add936.i, i32* %B.i, align 4
  %632 = load i32, i32* %XX9.i, align 4
  %conv937.i = zext i32 %632 to i64
  %add938.i = add nsw i64 %conv937.i, 3654602809
  %633 = load i32, i32* %B.i, align 4
  %634 = load i32, i32* %C.i, align 4
  %xor939.i = xor i32 %633, %634
  %635 = load i32, i32* %D.i, align 4
  %xor940.i = xor i32 %xor939.i, %635
  %conv941.i = zext i32 %xor940.i to i64
  %add942.i = add nsw i64 %add938.i, %conv941.i
  %636 = load i32, i32* %A.i, align 4
  %conv943.i = zext i32 %636 to i64
  %add944.i = add nsw i64 %conv943.i, %add942.i
  %conv945.i = trunc i64 %add944.i to i32
  store i32 %conv945.i, i32* %A.i, align 4
  %637 = load i32, i32* %A.i, align 4
  %shl946.i = shl i32 %637, 4
  %638 = load i32, i32* %A.i, align 4
  %shr947.i = lshr i32 %638, 28
  %or948.i = or i32 %shl946.i, %shr947.i
  store i32 %or948.i, i32* %A.i, align 4
  %639 = load i32, i32* %B.i, align 4
  %640 = load i32, i32* %A.i, align 4
  %add949.i = add i32 %640, %639
  store i32 %add949.i, i32* %A.i, align 4
  %641 = load i32, i32* %XX12.i, align 4
  %conv950.i = zext i32 %641 to i64
  %add951.i = add nsw i64 %conv950.i, 3873151461
  %642 = load i32, i32* %A.i, align 4
  %643 = load i32, i32* %B.i, align 4
  %xor952.i = xor i32 %642, %643
  %644 = load i32, i32* %C.i, align 4
  %xor953.i = xor i32 %xor952.i, %644
  %conv954.i = zext i32 %xor953.i to i64
  %add955.i = add nsw i64 %add951.i, %conv954.i
  %645 = load i32, i32* %D.i, align 4
  %conv956.i = zext i32 %645 to i64
  %add957.i = add nsw i64 %conv956.i, %add955.i
  %conv958.i = trunc i64 %add957.i to i32
  store i32 %conv958.i, i32* %D.i, align 4
  %646 = load i32, i32* %D.i, align 4
  %shl959.i = shl i32 %646, 11
  %647 = load i32, i32* %D.i, align 4
  %shr960.i = lshr i32 %647, 21
  %or961.i = or i32 %shl959.i, %shr960.i
  store i32 %or961.i, i32* %D.i, align 4
  %648 = load i32, i32* %A.i, align 4
  %649 = load i32, i32* %D.i, align 4
  %add962.i = add i32 %649, %648
  store i32 %add962.i, i32* %D.i, align 4
  %650 = load i32, i32* %XX15.i, align 4
  %conv963.i = zext i32 %650 to i64
  %add964.i = add nsw i64 %conv963.i, 530742520
  %651 = load i32, i32* %D.i, align 4
  %652 = load i32, i32* %A.i, align 4
  %xor965.i = xor i32 %651, %652
  %653 = load i32, i32* %B.i, align 4
  %xor966.i = xor i32 %xor965.i, %653
  %conv967.i = zext i32 %xor966.i to i64
  %add968.i = add nsw i64 %add964.i, %conv967.i
  %654 = load i32, i32* %C.i, align 4
  %conv969.i = zext i32 %654 to i64
  %add970.i = add nsw i64 %conv969.i, %add968.i
  %conv971.i = trunc i64 %add970.i to i32
  store i32 %conv971.i, i32* %C.i, align 4
  %655 = load i32, i32* %C.i, align 4
  %shl972.i = shl i32 %655, 16
  %656 = load i32, i32* %C.i, align 4
  %shr973.i = lshr i32 %656, 16
  %or974.i = or i32 %shl972.i, %shr973.i
  store i32 %or974.i, i32* %C.i, align 4
  %657 = load i32, i32* %D.i, align 4
  %658 = load i32, i32* %C.i, align 4
  %add975.i = add i32 %658, %657
  store i32 %add975.i, i32* %C.i, align 4
  %659 = load i32, i32* %XX2.i, align 4
  %conv976.i = zext i32 %659 to i64
  %add977.i = add nsw i64 %conv976.i, 3299628645
  %660 = load i32, i32* %C.i, align 4
  %661 = load i32, i32* %D.i, align 4
  %xor978.i = xor i32 %660, %661
  %662 = load i32, i32* %A.i, align 4
  %xor979.i = xor i32 %xor978.i, %662
  %conv980.i = zext i32 %xor979.i to i64
  %add981.i = add nsw i64 %add977.i, %conv980.i
  %663 = load i32, i32* %B.i, align 4
  %conv982.i = zext i32 %663 to i64
  %add983.i = add nsw i64 %conv982.i, %add981.i
  %conv984.i = trunc i64 %add983.i to i32
  store i32 %conv984.i, i32* %B.i, align 4
  %664 = load i32, i32* %B.i, align 4
  %shl985.i = shl i32 %664, 23
  %665 = load i32, i32* %B.i, align 4
  %shr986.i = lshr i32 %665, 9
  %or987.i = or i32 %shl985.i, %shr986.i
  store i32 %or987.i, i32* %B.i, align 4
  %666 = load i32, i32* %C.i, align 4
  %667 = load i32, i32* %B.i, align 4
  %add988.i = add i32 %667, %666
  store i32 %add988.i, i32* %B.i, align 4
  %668 = load i32, i32* %XX0.i, align 4
  %conv989.i = zext i32 %668 to i64
  %add990.i = add nsw i64 %conv989.i, 4096336452
  %669 = load i32, i32* %D.i, align 4
  %neg.i = xor i32 %669, -1
  %670 = load i32, i32* %B.i, align 4
  %or991.i = or i32 %neg.i, %670
  %671 = load i32, i32* %C.i, align 4
  %xor992.i = xor i32 %or991.i, %671
  %conv993.i = zext i32 %xor992.i to i64
  %add994.i = add nsw i64 %add990.i, %conv993.i
  %672 = load i32, i32* %A.i, align 4
  %conv995.i = zext i32 %672 to i64
  %add996.i = add nsw i64 %conv995.i, %add994.i
  %conv997.i = trunc i64 %add996.i to i32
  store i32 %conv997.i, i32* %A.i, align 4
  %673 = load i32, i32* %A.i, align 4
  %shl998.i = shl i32 %673, 6
  %674 = load i32, i32* %A.i, align 4
  %shr999.i = lshr i32 %674, 26
  %or1000.i = or i32 %shl998.i, %shr999.i
  store i32 %or1000.i, i32* %A.i, align 4
  %675 = load i32, i32* %B.i, align 4
  %676 = load i32, i32* %A.i, align 4
  %add1001.i = add i32 %676, %675
  store i32 %add1001.i, i32* %A.i, align 4
  %677 = load i32, i32* %XX7.i, align 4
  %conv1002.i = zext i32 %677 to i64
  %add1003.i = add nsw i64 %conv1002.i, 1126891415
  %678 = load i32, i32* %C.i, align 4
  %neg1004.i = xor i32 %678, -1
  %679 = load i32, i32* %A.i, align 4
  %or1005.i = or i32 %neg1004.i, %679
  %680 = load i32, i32* %B.i, align 4
  %xor1006.i = xor i32 %or1005.i, %680
  %conv1007.i = zext i32 %xor1006.i to i64
  %add1008.i = add nsw i64 %add1003.i, %conv1007.i
  %681 = load i32, i32* %D.i, align 4
  %conv1009.i = zext i32 %681 to i64
  %add1010.i = add nsw i64 %conv1009.i, %add1008.i
  %conv1011.i = trunc i64 %add1010.i to i32
  store i32 %conv1011.i, i32* %D.i, align 4
  %682 = load i32, i32* %D.i, align 4
  %shl1012.i = shl i32 %682, 10
  %683 = load i32, i32* %D.i, align 4
  %shr1013.i = lshr i32 %683, 22
  %or1014.i = or i32 %shl1012.i, %shr1013.i
  store i32 %or1014.i, i32* %D.i, align 4
  %684 = load i32, i32* %A.i, align 4
  %685 = load i32, i32* %D.i, align 4
  %add1015.i = add i32 %685, %684
  store i32 %add1015.i, i32* %D.i, align 4
  %686 = load i32, i32* %XX14.i, align 4
  %conv1016.i = zext i32 %686 to i64
  %add1017.i = add nsw i64 %conv1016.i, 2878612391
  %687 = load i32, i32* %B.i, align 4
  %neg1018.i = xor i32 %687, -1
  %688 = load i32, i32* %D.i, align 4
  %or1019.i = or i32 %neg1018.i, %688
  %689 = load i32, i32* %A.i, align 4
  %xor1020.i = xor i32 %or1019.i, %689
  %conv1021.i = zext i32 %xor1020.i to i64
  %add1022.i = add nsw i64 %add1017.i, %conv1021.i
  %690 = load i32, i32* %C.i, align 4
  %conv1023.i = zext i32 %690 to i64
  %add1024.i = add nsw i64 %conv1023.i, %add1022.i
  %conv1025.i = trunc i64 %add1024.i to i32
  store i32 %conv1025.i, i32* %C.i, align 4
  %691 = load i32, i32* %C.i, align 4
  %shl1026.i = shl i32 %691, 15
  %692 = load i32, i32* %C.i, align 4
  %shr1027.i = lshr i32 %692, 17
  %or1028.i = or i32 %shl1026.i, %shr1027.i
  store i32 %or1028.i, i32* %C.i, align 4
  %693 = load i32, i32* %D.i, align 4
  %694 = load i32, i32* %C.i, align 4
  %add1029.i = add i32 %694, %693
  store i32 %add1029.i, i32* %C.i, align 4
  %695 = load i32, i32* %XX5.i, align 4
  %conv1030.i = zext i32 %695 to i64
  %add1031.i = add nsw i64 %conv1030.i, 4237533241
  %696 = load i32, i32* %A.i, align 4
  %neg1032.i = xor i32 %696, -1
  %697 = load i32, i32* %C.i, align 4
  %or1033.i = or i32 %neg1032.i, %697
  %698 = load i32, i32* %D.i, align 4
  %xor1034.i = xor i32 %or1033.i, %698
  %conv1035.i = zext i32 %xor1034.i to i64
  %add1036.i = add nsw i64 %add1031.i, %conv1035.i
  %699 = load i32, i32* %B.i, align 4
  %conv1037.i = zext i32 %699 to i64
  %add1038.i = add nsw i64 %conv1037.i, %add1036.i
  %conv1039.i = trunc i64 %add1038.i to i32
  store i32 %conv1039.i, i32* %B.i, align 4
  %700 = load i32, i32* %B.i, align 4
  %shl1040.i = shl i32 %700, 21
  %701 = load i32, i32* %B.i, align 4
  %shr1041.i = lshr i32 %701, 11
  %or1042.i = or i32 %shl1040.i, %shr1041.i
  store i32 %or1042.i, i32* %B.i, align 4
  %702 = load i32, i32* %C.i, align 4
  %703 = load i32, i32* %B.i, align 4
  %add1043.i = add i32 %703, %702
  store i32 %add1043.i, i32* %B.i, align 4
  %704 = load i32, i32* %XX12.i, align 4
  %conv1044.i = zext i32 %704 to i64
  %add1045.i = add nsw i64 %conv1044.i, 1700485571
  %705 = load i32, i32* %D.i, align 4
  %neg1046.i = xor i32 %705, -1
  %706 = load i32, i32* %B.i, align 4
  %or1047.i = or i32 %neg1046.i, %706
  %707 = load i32, i32* %C.i, align 4
  %xor1048.i = xor i32 %or1047.i, %707
  %conv1049.i = zext i32 %xor1048.i to i64
  %add1050.i = add nsw i64 %add1045.i, %conv1049.i
  %708 = load i32, i32* %A.i, align 4
  %conv1051.i = zext i32 %708 to i64
  %add1052.i = add nsw i64 %conv1051.i, %add1050.i
  %conv1053.i = trunc i64 %add1052.i to i32
  store i32 %conv1053.i, i32* %A.i, align 4
  %709 = load i32, i32* %A.i, align 4
  %shl1054.i = shl i32 %709, 6
  %710 = load i32, i32* %A.i, align 4
  %shr1055.i = lshr i32 %710, 26
  %or1056.i = or i32 %shl1054.i, %shr1055.i
  store i32 %or1056.i, i32* %A.i, align 4
  %711 = load i32, i32* %B.i, align 4
  %712 = load i32, i32* %A.i, align 4
  %add1057.i = add i32 %712, %711
  store i32 %add1057.i, i32* %A.i, align 4
  %713 = load i32, i32* %XX3.i, align 4
  %conv1058.i = zext i32 %713 to i64
  %add1059.i = add nsw i64 %conv1058.i, 2399980690
  %714 = load i32, i32* %C.i, align 4
  %neg1060.i = xor i32 %714, -1
  %715 = load i32, i32* %A.i, align 4
  %or1061.i = or i32 %neg1060.i, %715
  %716 = load i32, i32* %B.i, align 4
  %xor1062.i = xor i32 %or1061.i, %716
  %conv1063.i = zext i32 %xor1062.i to i64
  %add1064.i = add nsw i64 %add1059.i, %conv1063.i
  %717 = load i32, i32* %D.i, align 4
  %conv1065.i = zext i32 %717 to i64
  %add1066.i = add nsw i64 %conv1065.i, %add1064.i
  %conv1067.i = trunc i64 %add1066.i to i32
  store i32 %conv1067.i, i32* %D.i, align 4
  %718 = load i32, i32* %D.i, align 4
  %shl1068.i = shl i32 %718, 10
  %719 = load i32, i32* %D.i, align 4
  %shr1069.i = lshr i32 %719, 22
  %or1070.i = or i32 %shl1068.i, %shr1069.i
  store i32 %or1070.i, i32* %D.i, align 4
  %720 = load i32, i32* %A.i, align 4
  %721 = load i32, i32* %D.i, align 4
  %add1071.i = add i32 %721, %720
  store i32 %add1071.i, i32* %D.i, align 4
  %722 = load i32, i32* %XX10.i, align 4
  %conv1072.i = zext i32 %722 to i64
  %add1073.i = add nsw i64 %conv1072.i, 4293915773
  %723 = load i32, i32* %B.i, align 4
  %neg1074.i = xor i32 %723, -1
  %724 = load i32, i32* %D.i, align 4
  %or1075.i = or i32 %neg1074.i, %724
  %725 = load i32, i32* %A.i, align 4
  %xor1076.i = xor i32 %or1075.i, %725
  %conv1077.i = zext i32 %xor1076.i to i64
  %add1078.i = add nsw i64 %add1073.i, %conv1077.i
  %726 = load i32, i32* %C.i, align 4
  %conv1079.i = zext i32 %726 to i64
  %add1080.i = add nsw i64 %conv1079.i, %add1078.i
  %conv1081.i = trunc i64 %add1080.i to i32
  store i32 %conv1081.i, i32* %C.i, align 4
  %727 = load i32, i32* %C.i, align 4
  %shl1082.i = shl i32 %727, 15
  %728 = load i32, i32* %C.i, align 4
  %shr1083.i = lshr i32 %728, 17
  %or1084.i = or i32 %shl1082.i, %shr1083.i
  store i32 %or1084.i, i32* %C.i, align 4
  %729 = load i32, i32* %D.i, align 4
  %730 = load i32, i32* %C.i, align 4
  %add1085.i = add i32 %730, %729
  store i32 %add1085.i, i32* %C.i, align 4
  %731 = load i32, i32* %XX1.i, align 4
  %conv1086.i = zext i32 %731 to i64
  %add1087.i = add nsw i64 %conv1086.i, 2240044497
  %732 = load i32, i32* %A.i, align 4
  %neg1088.i = xor i32 %732, -1
  %733 = load i32, i32* %C.i, align 4
  %or1089.i = or i32 %neg1088.i, %733
  %734 = load i32, i32* %D.i, align 4
  %xor1090.i = xor i32 %or1089.i, %734
  %conv1091.i = zext i32 %xor1090.i to i64
  %add1092.i = add nsw i64 %add1087.i, %conv1091.i
  %735 = load i32, i32* %B.i, align 4
  %conv1093.i = zext i32 %735 to i64
  %add1094.i = add nsw i64 %conv1093.i, %add1092.i
  %conv1095.i = trunc i64 %add1094.i to i32
  store i32 %conv1095.i, i32* %B.i, align 4
  %736 = load i32, i32* %B.i, align 4
  %shl1096.i = shl i32 %736, 21
  %737 = load i32, i32* %B.i, align 4
  %shr1097.i = lshr i32 %737, 11
  %or1098.i = or i32 %shl1096.i, %shr1097.i
  store i32 %or1098.i, i32* %B.i, align 4
  %738 = load i32, i32* %C.i, align 4
  %739 = load i32, i32* %B.i, align 4
  %add1099.i = add i32 %739, %738
  store i32 %add1099.i, i32* %B.i, align 4
  %740 = load i32, i32* %XX8.i, align 4
  %conv1100.i = zext i32 %740 to i64
  %add1101.i = add nsw i64 %conv1100.i, 1873313359
  %741 = load i32, i32* %D.i, align 4
  %neg1102.i = xor i32 %741, -1
  %742 = load i32, i32* %B.i, align 4
  %or1103.i = or i32 %neg1102.i, %742
  %743 = load i32, i32* %C.i, align 4
  %xor1104.i = xor i32 %or1103.i, %743
  %conv1105.i = zext i32 %xor1104.i to i64
  %add1106.i = add nsw i64 %add1101.i, %conv1105.i
  %744 = load i32, i32* %A.i, align 4
  %conv1107.i = zext i32 %744 to i64
  %add1108.i = add nsw i64 %conv1107.i, %add1106.i
  %conv1109.i = trunc i64 %add1108.i to i32
  store i32 %conv1109.i, i32* %A.i, align 4
  %745 = load i32, i32* %A.i, align 4
  %shl1110.i = shl i32 %745, 6
  %746 = load i32, i32* %A.i, align 4
  %shr1111.i = lshr i32 %746, 26
  %or1112.i = or i32 %shl1110.i, %shr1111.i
  store i32 %or1112.i, i32* %A.i, align 4
  %747 = load i32, i32* %B.i, align 4
  %748 = load i32, i32* %A.i, align 4
  %add1113.i = add i32 %748, %747
  store i32 %add1113.i, i32* %A.i, align 4
  %749 = load i32, i32* %XX15.i, align 4
  %conv1114.i = zext i32 %749 to i64
  %add1115.i = add nsw i64 %conv1114.i, 4264355552
  %750 = load i32, i32* %C.i, align 4
  %neg1116.i = xor i32 %750, -1
  %751 = load i32, i32* %A.i, align 4
  %or1117.i = or i32 %neg1116.i, %751
  %752 = load i32, i32* %B.i, align 4
  %xor1118.i = xor i32 %or1117.i, %752
  %conv1119.i = zext i32 %xor1118.i to i64
  %add1120.i = add nsw i64 %add1115.i, %conv1119.i
  %753 = load i32, i32* %D.i, align 4
  %conv1121.i = zext i32 %753 to i64
  %add1122.i = add nsw i64 %conv1121.i, %add1120.i
  %conv1123.i = trunc i64 %add1122.i to i32
  store i32 %conv1123.i, i32* %D.i, align 4
  %754 = load i32, i32* %D.i, align 4
  %shl1124.i = shl i32 %754, 10
  %755 = load i32, i32* %D.i, align 4
  %shr1125.i = lshr i32 %755, 22
  %or1126.i = or i32 %shl1124.i, %shr1125.i
  store i32 %or1126.i, i32* %D.i, align 4
  %756 = load i32, i32* %A.i, align 4
  %757 = load i32, i32* %D.i, align 4
  %add1127.i = add i32 %757, %756
  store i32 %add1127.i, i32* %D.i, align 4
  %758 = load i32, i32* %XX6.i, align 4
  %conv1128.i = zext i32 %758 to i64
  %add1129.i = add nsw i64 %conv1128.i, 2734768916
  %759 = load i32, i32* %B.i, align 4
  %neg1130.i = xor i32 %759, -1
  %760 = load i32, i32* %D.i, align 4
  %or1131.i = or i32 %neg1130.i, %760
  %761 = load i32, i32* %A.i, align 4
  %xor1132.i = xor i32 %or1131.i, %761
  %conv1133.i = zext i32 %xor1132.i to i64
  %add1134.i = add nsw i64 %add1129.i, %conv1133.i
  %762 = load i32, i32* %C.i, align 4
  %conv1135.i = zext i32 %762 to i64
  %add1136.i = add nsw i64 %conv1135.i, %add1134.i
  %conv1137.i = trunc i64 %add1136.i to i32
  store i32 %conv1137.i, i32* %C.i, align 4
  %763 = load i32, i32* %C.i, align 4
  %shl1138.i = shl i32 %763, 15
  %764 = load i32, i32* %C.i, align 4
  %shr1139.i = lshr i32 %764, 17
  %or1140.i = or i32 %shl1138.i, %shr1139.i
  store i32 %or1140.i, i32* %C.i, align 4
  %765 = load i32, i32* %D.i, align 4
  %766 = load i32, i32* %C.i, align 4
  %add1141.i = add i32 %766, %765
  store i32 %add1141.i, i32* %C.i, align 4
  %767 = load i32, i32* %XX13.i, align 4
  %conv1142.i = zext i32 %767 to i64
  %add1143.i = add nsw i64 %conv1142.i, 1309151649
  %768 = load i32, i32* %A.i, align 4
  %neg1144.i = xor i32 %768, -1
  %769 = load i32, i32* %C.i, align 4
  %or1145.i = or i32 %neg1144.i, %769
  %770 = load i32, i32* %D.i, align 4
  %xor1146.i = xor i32 %or1145.i, %770
  %conv1147.i = zext i32 %xor1146.i to i64
  %add1148.i = add nsw i64 %add1143.i, %conv1147.i
  %771 = load i32, i32* %B.i, align 4
  %conv1149.i = zext i32 %771 to i64
  %add1150.i = add nsw i64 %conv1149.i, %add1148.i
  %conv1151.i = trunc i64 %add1150.i to i32
  store i32 %conv1151.i, i32* %B.i, align 4
  %772 = load i32, i32* %B.i, align 4
  %shl1152.i = shl i32 %772, 21
  %773 = load i32, i32* %B.i, align 4
  %shr1153.i = lshr i32 %773, 11
  %or1154.i = or i32 %shl1152.i, %shr1153.i
  store i32 %or1154.i, i32* %B.i, align 4
  %774 = load i32, i32* %C.i, align 4
  %775 = load i32, i32* %B.i, align 4
  %add1155.i = add i32 %775, %774
  store i32 %add1155.i, i32* %B.i, align 4
  %776 = load i32, i32* %XX4.i, align 4
  %conv1156.i = zext i32 %776 to i64
  %add1157.i = add nsw i64 %conv1156.i, 4149444226
  %777 = load i32, i32* %D.i, align 4
  %neg1158.i = xor i32 %777, -1
  %778 = load i32, i32* %B.i, align 4
  %or1159.i = or i32 %neg1158.i, %778
  %779 = load i32, i32* %C.i, align 4
  %xor1160.i = xor i32 %or1159.i, %779
  %conv1161.i = zext i32 %xor1160.i to i64
  %add1162.i = add nsw i64 %add1157.i, %conv1161.i
  %780 = load i32, i32* %A.i, align 4
  %conv1163.i = zext i32 %780 to i64
  %add1164.i = add nsw i64 %conv1163.i, %add1162.i
  %conv1165.i = trunc i64 %add1164.i to i32
  store i32 %conv1165.i, i32* %A.i, align 4
  %781 = load i32, i32* %A.i, align 4
  %shl1166.i = shl i32 %781, 6
  %782 = load i32, i32* %A.i, align 4
  %shr1167.i = lshr i32 %782, 26
  %or1168.i = or i32 %shl1166.i, %shr1167.i
  store i32 %or1168.i, i32* %A.i, align 4
  %783 = load i32, i32* %B.i, align 4
  %784 = load i32, i32* %A.i, align 4
  %add1169.i = add i32 %784, %783
  store i32 %add1169.i, i32* %A.i, align 4
  %785 = load i32, i32* %XX11.i, align 4
  %conv1170.i = zext i32 %785 to i64
  %add1171.i = add nsw i64 %conv1170.i, 3174756917
  %786 = load i32, i32* %C.i, align 4
  %neg1172.i = xor i32 %786, -1
  %787 = load i32, i32* %A.i, align 4
  %or1173.i = or i32 %neg1172.i, %787
  %788 = load i32, i32* %B.i, align 4
  %xor1174.i = xor i32 %or1173.i, %788
  %conv1175.i = zext i32 %xor1174.i to i64
  %add1176.i = add nsw i64 %add1171.i, %conv1175.i
  %789 = load i32, i32* %D.i, align 4
  %conv1177.i = zext i32 %789 to i64
  %add1178.i = add nsw i64 %conv1177.i, %add1176.i
  %conv1179.i = trunc i64 %add1178.i to i32
  store i32 %conv1179.i, i32* %D.i, align 4
  %790 = load i32, i32* %D.i, align 4
  %shl1180.i = shl i32 %790, 10
  %791 = load i32, i32* %D.i, align 4
  %shr1181.i = lshr i32 %791, 22
  %or1182.i = or i32 %shl1180.i, %shr1181.i
  store i32 %or1182.i, i32* %D.i, align 4
  %792 = load i32, i32* %A.i, align 4
  %793 = load i32, i32* %D.i, align 4
  %add1183.i = add i32 %793, %792
  store i32 %add1183.i, i32* %D.i, align 4
  %794 = load i32, i32* %XX2.i, align 4
  %conv1184.i = zext i32 %794 to i64
  %add1185.i = add nsw i64 %conv1184.i, 718787259
  %795 = load i32, i32* %B.i, align 4
  %neg1186.i = xor i32 %795, -1
  %796 = load i32, i32* %D.i, align 4
  %or1187.i = or i32 %neg1186.i, %796
  %797 = load i32, i32* %A.i, align 4
  %xor1188.i = xor i32 %or1187.i, %797
  %conv1189.i = zext i32 %xor1188.i to i64
  %add1190.i = add nsw i64 %add1185.i, %conv1189.i
  %798 = load i32, i32* %C.i, align 4
  %conv1191.i = zext i32 %798 to i64
  %add1192.i = add nsw i64 %conv1191.i, %add1190.i
  %conv1193.i = trunc i64 %add1192.i to i32
  store i32 %conv1193.i, i32* %C.i, align 4
  %799 = load i32, i32* %C.i, align 4
  %shl1194.i = shl i32 %799, 15
  %800 = load i32, i32* %C.i, align 4
  %shr1195.i = lshr i32 %800, 17
  %or1196.i = or i32 %shl1194.i, %shr1195.i
  store i32 %or1196.i, i32* %C.i, align 4
  %801 = load i32, i32* %D.i, align 4
  %802 = load i32, i32* %C.i, align 4
  %add1197.i = add i32 %802, %801
  store i32 %add1197.i, i32* %C.i, align 4
  %803 = load i32, i32* %XX9.i, align 4
  %conv1198.i = zext i32 %803 to i64
  %add1199.i = add nsw i64 %conv1198.i, 3951481745
  %804 = load i32, i32* %A.i, align 4
  %neg1200.i = xor i32 %804, -1
  %805 = load i32, i32* %C.i, align 4
  %or1201.i = or i32 %neg1200.i, %805
  %806 = load i32, i32* %D.i, align 4
  %xor1202.i = xor i32 %or1201.i, %806
  %conv1203.i = zext i32 %xor1202.i to i64
  %add1204.i = add nsw i64 %add1199.i, %conv1203.i
  %807 = load i32, i32* %B.i, align 4
  %conv1205.i = zext i32 %807 to i64
  %add1206.i = add nsw i64 %conv1205.i, %add1204.i
  %conv1207.i = trunc i64 %add1206.i to i32
  store i32 %conv1207.i, i32* %B.i, align 4
  %808 = load i32, i32* %B.i, align 4
  %shl1208.i = shl i32 %808, 21
  %809 = load i32, i32* %B.i, align 4
  %shr1209.i = lshr i32 %809, 11
  %or1210.i = or i32 %shl1208.i, %shr1209.i
  store i32 %or1210.i, i32* %B.i, align 4
  %810 = load i32, i32* %C.i, align 4
  %811 = load i32, i32* %B.i, align 4
  %add1211.i = add i32 %811, %810
  store i32 %add1211.i, i32* %B.i, align 4
  %812 = load i32, i32* %A.i, align 4
  %813 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %A1212.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %813, i32 0, i32 0
  %814 = load i32, i32* %A1212.i, align 4
  %add1213.i = add i32 %814, %812
  store i32 %add1213.i, i32* %A1212.i, align 4
  store i32 %add1213.i, i32* %A.i, align 4
  %815 = load i32, i32* %B.i, align 4
  %816 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %B1214.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %816, i32 0, i32 1
  %817 = load i32, i32* %B1214.i, align 4
  %add1215.i = add i32 %817, %815
  store i32 %add1215.i, i32* %B1214.i, align 4
  store i32 %add1215.i, i32* %B.i, align 4
  %818 = load i32, i32* %C.i, align 4
  %819 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %C1216.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %819, i32 0, i32 2
  %820 = load i32, i32* %C1216.i, align 4
  %add1217.i = add i32 %820, %818
  store i32 %add1217.i, i32* %C1216.i, align 4
  store i32 %add1217.i, i32* %C.i, align 4
  %821 = load i32, i32* %D.i, align 4
  %822 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %D1218.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %822, i32 0, i32 3
  %823 = load i32, i32* %D1218.i, align 4
  %add1219.i = add i32 %823, %821
  store i32 %add1219.i, i32* %D1218.i, align 4
  store i32 %add1219.i, i32* %D.i, align 4
  br label %for.cond.i

md5_block_data_order.exit:                        ; preds = %for.cond.i
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @MD5_Final(i8* %md, %struct.MD5state_st* %c) #0 {
entry:
  %c.addr.i106 = alloca %struct.MD5state_st*, align 8
  %data_.addr.i107 = alloca i8*, align 8
  %num.addr.i108 = alloca i64, align 8
  %data.i109 = alloca i8*, align 8
  %A.i110 = alloca i32, align 4
  %B.i111 = alloca i32, align 4
  %C.i112 = alloca i32, align 4
  %D.i113 = alloca i32, align 4
  %l.i114 = alloca i32, align 4
  %XX0.i115 = alloca i32, align 4
  %XX1.i116 = alloca i32, align 4
  %XX2.i117 = alloca i32, align 4
  %XX3.i118 = alloca i32, align 4
  %XX4.i119 = alloca i32, align 4
  %XX5.i120 = alloca i32, align 4
  %XX6.i121 = alloca i32, align 4
  %XX7.i122 = alloca i32, align 4
  %XX8.i123 = alloca i32, align 4
  %XX9.i124 = alloca i32, align 4
  %XX10.i125 = alloca i32, align 4
  %XX11.i126 = alloca i32, align 4
  %XX12.i127 = alloca i32, align 4
  %XX13.i128 = alloca i32, align 4
  %XX14.i129 = alloca i32, align 4
  %XX15.i130 = alloca i32, align 4
  %c.addr.i = alloca %struct.MD5state_st*, align 8
  %data_.addr.i = alloca i8*, align 8
  %num.addr.i = alloca i64, align 8
  %data.i = alloca i8*, align 8
  %A.i = alloca i32, align 4
  %B.i = alloca i32, align 4
  %C.i = alloca i32, align 4
  %D.i = alloca i32, align 4
  %l.i = alloca i32, align 4
  %XX0.i = alloca i32, align 4
  %XX1.i = alloca i32, align 4
  %XX2.i = alloca i32, align 4
  %XX3.i = alloca i32, align 4
  %XX4.i = alloca i32, align 4
  %XX5.i = alloca i32, align 4
  %XX6.i = alloca i32, align 4
  %XX7.i = alloca i32, align 4
  %XX8.i = alloca i32, align 4
  %XX9.i = alloca i32, align 4
  %XX10.i = alloca i32, align 4
  %XX11.i = alloca i32, align 4
  %XX12.i = alloca i32, align 4
  %XX13.i = alloca i32, align 4
  %XX14.i = alloca i32, align 4
  %XX15.i = alloca i32, align 4
  %md.addr = alloca i8*, align 8
  %c.addr = alloca %struct.MD5state_st*, align 8
  %p = alloca i8*, align 8
  %n = alloca i64, align 8
  %ll = alloca i64, align 8
  store i8* %md, i8** %md.addr, align 8
  store %struct.MD5state_st* %c, %struct.MD5state_st** %c.addr, align 8
  %0 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %data = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %0, i32 0, i32 6
  %arraydecay = getelementptr inbounds [16 x i32], [16 x i32]* %data, i64 0, i64 0
  %1 = bitcast i32* %arraydecay to i8*
  store i8* %1, i8** %p, align 8
  %2 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %num = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %2, i32 0, i32 7
  %3 = load i32, i32* %num, align 4
  %conv = zext i32 %3 to i64
  store i64 %conv, i64* %n, align 8
  %4 = load i8*, i8** %p, align 8
  %5 = load i64, i64* %n, align 8
  %arrayidx = getelementptr inbounds i8, i8* %4, i64 %5
  store i8 -128, i8* %arrayidx, align 1
  %6 = load i64, i64* %n, align 8
  %inc = add i64 %6, 1
  store i64 %inc, i64* %n, align 8
  %7 = load i64, i64* %n, align 8
  %cmp = icmp ugt i64 %7, 56
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = load i8*, i8** %p, align 8
  %9 = load i64, i64* %n, align 8
  %add.ptr = getelementptr inbounds i8, i8* %8, i64 %9
  %10 = load i64, i64* %n, align 8
  %sub = sub i64 64, %10
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr, i8 0, i64 %sub, i1 false)
  store i64 0, i64* %n, align 8
  %11 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %12 = load i8*, i8** %p, align 8
  store %struct.MD5state_st* %11, %struct.MD5state_st** %c.addr.i, align 8
  store i8* %12, i8** %data_.addr.i, align 8
  store i64 1, i64* %num.addr.i, align 8
  %13 = load i8*, i8** %data_.addr.i, align 8
  store i8* %13, i8** %data.i, align 8
  %14 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %A1.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %14, i32 0, i32 0
  %15 = load i32, i32* %A1.i, align 4
  store i32 %15, i32* %A.i, align 4
  %16 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %B2.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %16, i32 0, i32 1
  %17 = load i32, i32* %B2.i, align 4
  store i32 %17, i32* %B.i, align 4
  %18 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %C3.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %18, i32 0, i32 2
  %19 = load i32, i32* %C3.i, align 4
  store i32 %19, i32* %C.i, align 4
  %20 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %D4.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %20, i32 0, i32 3
  %21 = load i32, i32* %D4.i, align 4
  store i32 %21, i32* %D.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.then
  %22 = load i64, i64* %num.addr.i, align 8
  %dec.i = add i64 %22, -1
  store i64 %dec.i, i64* %num.addr.i, align 8
  %tobool.i = icmp ne i64 %22, 0
  br i1 %tobool.i, label %for.body.i, label %md5_block_data_order.exit

for.body.i:                                       ; preds = %for.cond.i
  %23 = load i8*, i8** %data.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %incdec.ptr.i, i8** %data.i, align 8
  %24 = load i8, i8* %23, align 1
  %conv.i = zext i8 %24 to i64
  %conv5.i = trunc i64 %conv.i to i32
  store i32 %conv5.i, i32* %l.i, align 4
  %25 = load i8*, i8** %data.i, align 8
  %incdec.ptr6.i = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %incdec.ptr6.i, i8** %data.i, align 8
  %26 = load i8, i8* %25, align 1
  %conv7.i = zext i8 %26 to i64
  %shl.i = shl i64 %conv7.i, 8
  %27 = load i32, i32* %l.i, align 4
  %conv8.i = zext i32 %27 to i64
  %or.i = or i64 %conv8.i, %shl.i
  %conv9.i = trunc i64 %or.i to i32
  store i32 %conv9.i, i32* %l.i, align 4
  %28 = load i8*, i8** %data.i, align 8
  %incdec.ptr10.i = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %incdec.ptr10.i, i8** %data.i, align 8
  %29 = load i8, i8* %28, align 1
  %conv11.i = zext i8 %29 to i64
  %shl12.i = shl i64 %conv11.i, 16
  %30 = load i32, i32* %l.i, align 4
  %conv13.i = zext i32 %30 to i64
  %or14.i = or i64 %conv13.i, %shl12.i
  %conv15.i = trunc i64 %or14.i to i32
  store i32 %conv15.i, i32* %l.i, align 4
  %31 = load i8*, i8** %data.i, align 8
  %incdec.ptr16.i = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %incdec.ptr16.i, i8** %data.i, align 8
  %32 = load i8, i8* %31, align 1
  %conv17.i = zext i8 %32 to i64
  %shl18.i = shl i64 %conv17.i, 24
  %33 = load i32, i32* %l.i, align 4
  %conv19.i = zext i32 %33 to i64
  %or20.i = or i64 %conv19.i, %shl18.i
  %conv21.i = trunc i64 %or20.i to i32
  store i32 %conv21.i, i32* %l.i, align 4
  %34 = load i32, i32* %l.i, align 4
  store i32 %34, i32* %XX0.i, align 4
  %35 = load i8*, i8** %data.i, align 8
  %incdec.ptr22.i = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr22.i, i8** %data.i, align 8
  %36 = load i8, i8* %35, align 1
  %conv23.i = zext i8 %36 to i64
  %conv24.i = trunc i64 %conv23.i to i32
  store i32 %conv24.i, i32* %l.i, align 4
  %37 = load i8*, i8** %data.i, align 8
  %incdec.ptr25.i = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %incdec.ptr25.i, i8** %data.i, align 8
  %38 = load i8, i8* %37, align 1
  %conv26.i = zext i8 %38 to i64
  %shl27.i = shl i64 %conv26.i, 8
  %39 = load i32, i32* %l.i, align 4
  %conv28.i = zext i32 %39 to i64
  %or29.i = or i64 %conv28.i, %shl27.i
  %conv30.i = trunc i64 %or29.i to i32
  store i32 %conv30.i, i32* %l.i, align 4
  %40 = load i8*, i8** %data.i, align 8
  %incdec.ptr31.i = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %incdec.ptr31.i, i8** %data.i, align 8
  %41 = load i8, i8* %40, align 1
  %conv32.i = zext i8 %41 to i64
  %shl33.i = shl i64 %conv32.i, 16
  %42 = load i32, i32* %l.i, align 4
  %conv34.i = zext i32 %42 to i64
  %or35.i = or i64 %conv34.i, %shl33.i
  %conv36.i = trunc i64 %or35.i to i32
  store i32 %conv36.i, i32* %l.i, align 4
  %43 = load i8*, i8** %data.i, align 8
  %incdec.ptr37.i = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %incdec.ptr37.i, i8** %data.i, align 8
  %44 = load i8, i8* %43, align 1
  %conv38.i = zext i8 %44 to i64
  %shl39.i = shl i64 %conv38.i, 24
  %45 = load i32, i32* %l.i, align 4
  %conv40.i = zext i32 %45 to i64
  %or41.i = or i64 %conv40.i, %shl39.i
  %conv42.i = trunc i64 %or41.i to i32
  store i32 %conv42.i, i32* %l.i, align 4
  %46 = load i32, i32* %l.i, align 4
  store i32 %46, i32* %XX1.i, align 4
  %47 = load i32, i32* %XX0.i, align 4
  %conv43.i = zext i32 %47 to i64
  %add.i = add nsw i64 %conv43.i, 3614090360
  %48 = load i32, i32* %C.i, align 4
  %49 = load i32, i32* %D.i, align 4
  %xor.i = xor i32 %48, %49
  %50 = load i32, i32* %B.i, align 4
  %and.i = and i32 %xor.i, %50
  %51 = load i32, i32* %D.i, align 4
  %xor44.i = xor i32 %and.i, %51
  %conv45.i = zext i32 %xor44.i to i64
  %add46.i = add nsw i64 %add.i, %conv45.i
  %52 = load i32, i32* %A.i, align 4
  %conv47.i = zext i32 %52 to i64
  %add48.i = add nsw i64 %conv47.i, %add46.i
  %conv49.i = trunc i64 %add48.i to i32
  store i32 %conv49.i, i32* %A.i, align 4
  %53 = load i32, i32* %A.i, align 4
  %shl50.i = shl i32 %53, 7
  %54 = load i32, i32* %A.i, align 4
  %shr.i = lshr i32 %54, 25
  %or51.i = or i32 %shl50.i, %shr.i
  store i32 %or51.i, i32* %A.i, align 4
  %55 = load i32, i32* %B.i, align 4
  %56 = load i32, i32* %A.i, align 4
  %add52.i = add i32 %56, %55
  store i32 %add52.i, i32* %A.i, align 4
  %57 = load i8*, i8** %data.i, align 8
  %incdec.ptr53.i = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %incdec.ptr53.i, i8** %data.i, align 8
  %58 = load i8, i8* %57, align 1
  %conv54.i = zext i8 %58 to i64
  %conv55.i = trunc i64 %conv54.i to i32
  store i32 %conv55.i, i32* %l.i, align 4
  %59 = load i8*, i8** %data.i, align 8
  %incdec.ptr56.i = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %incdec.ptr56.i, i8** %data.i, align 8
  %60 = load i8, i8* %59, align 1
  %conv57.i = zext i8 %60 to i64
  %shl58.i = shl i64 %conv57.i, 8
  %61 = load i32, i32* %l.i, align 4
  %conv59.i = zext i32 %61 to i64
  %or60.i = or i64 %conv59.i, %shl58.i
  %conv61.i = trunc i64 %or60.i to i32
  store i32 %conv61.i, i32* %l.i, align 4
  %62 = load i8*, i8** %data.i, align 8
  %incdec.ptr62.i = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %incdec.ptr62.i, i8** %data.i, align 8
  %63 = load i8, i8* %62, align 1
  %conv63.i = zext i8 %63 to i64
  %shl64.i = shl i64 %conv63.i, 16
  %64 = load i32, i32* %l.i, align 4
  %conv65.i = zext i32 %64 to i64
  %or66.i = or i64 %conv65.i, %shl64.i
  %conv67.i = trunc i64 %or66.i to i32
  store i32 %conv67.i, i32* %l.i, align 4
  %65 = load i8*, i8** %data.i, align 8
  %incdec.ptr68.i = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %incdec.ptr68.i, i8** %data.i, align 8
  %66 = load i8, i8* %65, align 1
  %conv69.i = zext i8 %66 to i64
  %shl70.i = shl i64 %conv69.i, 24
  %67 = load i32, i32* %l.i, align 4
  %conv71.i = zext i32 %67 to i64
  %or72.i = or i64 %conv71.i, %shl70.i
  %conv73.i = trunc i64 %or72.i to i32
  store i32 %conv73.i, i32* %l.i, align 4
  %68 = load i32, i32* %l.i, align 4
  store i32 %68, i32* %XX2.i, align 4
  %69 = load i32, i32* %XX1.i, align 4
  %conv74.i = zext i32 %69 to i64
  %add75.i = add nsw i64 %conv74.i, 3905402710
  %70 = load i32, i32* %B.i, align 4
  %71 = load i32, i32* %C.i, align 4
  %xor76.i = xor i32 %70, %71
  %72 = load i32, i32* %A.i, align 4
  %and77.i = and i32 %xor76.i, %72
  %73 = load i32, i32* %C.i, align 4
  %xor78.i = xor i32 %and77.i, %73
  %conv79.i = zext i32 %xor78.i to i64
  %add80.i = add nsw i64 %add75.i, %conv79.i
  %74 = load i32, i32* %D.i, align 4
  %conv81.i = zext i32 %74 to i64
  %add82.i = add nsw i64 %conv81.i, %add80.i
  %conv83.i = trunc i64 %add82.i to i32
  store i32 %conv83.i, i32* %D.i, align 4
  %75 = load i32, i32* %D.i, align 4
  %shl84.i = shl i32 %75, 12
  %76 = load i32, i32* %D.i, align 4
  %shr85.i = lshr i32 %76, 20
  %or86.i = or i32 %shl84.i, %shr85.i
  store i32 %or86.i, i32* %D.i, align 4
  %77 = load i32, i32* %A.i, align 4
  %78 = load i32, i32* %D.i, align 4
  %add87.i = add i32 %78, %77
  store i32 %add87.i, i32* %D.i, align 4
  %79 = load i8*, i8** %data.i, align 8
  %incdec.ptr88.i = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %incdec.ptr88.i, i8** %data.i, align 8
  %80 = load i8, i8* %79, align 1
  %conv89.i = zext i8 %80 to i64
  %conv90.i = trunc i64 %conv89.i to i32
  store i32 %conv90.i, i32* %l.i, align 4
  %81 = load i8*, i8** %data.i, align 8
  %incdec.ptr91.i = getelementptr inbounds i8, i8* %81, i32 1
  store i8* %incdec.ptr91.i, i8** %data.i, align 8
  %82 = load i8, i8* %81, align 1
  %conv92.i = zext i8 %82 to i64
  %shl93.i = shl i64 %conv92.i, 8
  %83 = load i32, i32* %l.i, align 4
  %conv94.i = zext i32 %83 to i64
  %or95.i = or i64 %conv94.i, %shl93.i
  %conv96.i = trunc i64 %or95.i to i32
  store i32 %conv96.i, i32* %l.i, align 4
  %84 = load i8*, i8** %data.i, align 8
  %incdec.ptr97.i = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %incdec.ptr97.i, i8** %data.i, align 8
  %85 = load i8, i8* %84, align 1
  %conv98.i = zext i8 %85 to i64
  %shl99.i = shl i64 %conv98.i, 16
  %86 = load i32, i32* %l.i, align 4
  %conv100.i = zext i32 %86 to i64
  %or101.i = or i64 %conv100.i, %shl99.i
  %conv102.i = trunc i64 %or101.i to i32
  store i32 %conv102.i, i32* %l.i, align 4
  %87 = load i8*, i8** %data.i, align 8
  %incdec.ptr103.i = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %incdec.ptr103.i, i8** %data.i, align 8
  %88 = load i8, i8* %87, align 1
  %conv104.i = zext i8 %88 to i64
  %shl105.i = shl i64 %conv104.i, 24
  %89 = load i32, i32* %l.i, align 4
  %conv106.i = zext i32 %89 to i64
  %or107.i = or i64 %conv106.i, %shl105.i
  %conv108.i = trunc i64 %or107.i to i32
  store i32 %conv108.i, i32* %l.i, align 4
  %90 = load i32, i32* %l.i, align 4
  store i32 %90, i32* %XX3.i, align 4
  %91 = load i32, i32* %XX2.i, align 4
  %conv109.i = zext i32 %91 to i64
  %add110.i = add nsw i64 %conv109.i, 606105819
  %92 = load i32, i32* %A.i, align 4
  %93 = load i32, i32* %B.i, align 4
  %xor111.i = xor i32 %92, %93
  %94 = load i32, i32* %D.i, align 4
  %and112.i = and i32 %xor111.i, %94
  %95 = load i32, i32* %B.i, align 4
  %xor113.i = xor i32 %and112.i, %95
  %conv114.i = zext i32 %xor113.i to i64
  %add115.i = add nsw i64 %add110.i, %conv114.i
  %96 = load i32, i32* %C.i, align 4
  %conv116.i = zext i32 %96 to i64
  %add117.i = add nsw i64 %conv116.i, %add115.i
  %conv118.i = trunc i64 %add117.i to i32
  store i32 %conv118.i, i32* %C.i, align 4
  %97 = load i32, i32* %C.i, align 4
  %shl119.i = shl i32 %97, 17
  %98 = load i32, i32* %C.i, align 4
  %shr120.i = lshr i32 %98, 15
  %or121.i = or i32 %shl119.i, %shr120.i
  store i32 %or121.i, i32* %C.i, align 4
  %99 = load i32, i32* %D.i, align 4
  %100 = load i32, i32* %C.i, align 4
  %add122.i = add i32 %100, %99
  store i32 %add122.i, i32* %C.i, align 4
  %101 = load i8*, i8** %data.i, align 8
  %incdec.ptr123.i = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %incdec.ptr123.i, i8** %data.i, align 8
  %102 = load i8, i8* %101, align 1
  %conv124.i = zext i8 %102 to i64
  %conv125.i = trunc i64 %conv124.i to i32
  store i32 %conv125.i, i32* %l.i, align 4
  %103 = load i8*, i8** %data.i, align 8
  %incdec.ptr126.i = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %incdec.ptr126.i, i8** %data.i, align 8
  %104 = load i8, i8* %103, align 1
  %conv127.i = zext i8 %104 to i64
  %shl128.i = shl i64 %conv127.i, 8
  %105 = load i32, i32* %l.i, align 4
  %conv129.i = zext i32 %105 to i64
  %or130.i = or i64 %conv129.i, %shl128.i
  %conv131.i = trunc i64 %or130.i to i32
  store i32 %conv131.i, i32* %l.i, align 4
  %106 = load i8*, i8** %data.i, align 8
  %incdec.ptr132.i = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %incdec.ptr132.i, i8** %data.i, align 8
  %107 = load i8, i8* %106, align 1
  %conv133.i = zext i8 %107 to i64
  %shl134.i = shl i64 %conv133.i, 16
  %108 = load i32, i32* %l.i, align 4
  %conv135.i = zext i32 %108 to i64
  %or136.i = or i64 %conv135.i, %shl134.i
  %conv137.i = trunc i64 %or136.i to i32
  store i32 %conv137.i, i32* %l.i, align 4
  %109 = load i8*, i8** %data.i, align 8
  %incdec.ptr138.i = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %incdec.ptr138.i, i8** %data.i, align 8
  %110 = load i8, i8* %109, align 1
  %conv139.i = zext i8 %110 to i64
  %shl140.i = shl i64 %conv139.i, 24
  %111 = load i32, i32* %l.i, align 4
  %conv141.i = zext i32 %111 to i64
  %or142.i = or i64 %conv141.i, %shl140.i
  %conv143.i = trunc i64 %or142.i to i32
  store i32 %conv143.i, i32* %l.i, align 4
  %112 = load i32, i32* %l.i, align 4
  store i32 %112, i32* %XX4.i, align 4
  %113 = load i32, i32* %XX3.i, align 4
  %conv144.i = zext i32 %113 to i64
  %add145.i = add nsw i64 %conv144.i, 3250441966
  %114 = load i32, i32* %D.i, align 4
  %115 = load i32, i32* %A.i, align 4
  %xor146.i = xor i32 %114, %115
  %116 = load i32, i32* %C.i, align 4
  %and147.i = and i32 %xor146.i, %116
  %117 = load i32, i32* %A.i, align 4
  %xor148.i = xor i32 %and147.i, %117
  %conv149.i = zext i32 %xor148.i to i64
  %add150.i = add nsw i64 %add145.i, %conv149.i
  %118 = load i32, i32* %B.i, align 4
  %conv151.i = zext i32 %118 to i64
  %add152.i = add nsw i64 %conv151.i, %add150.i
  %conv153.i = trunc i64 %add152.i to i32
  store i32 %conv153.i, i32* %B.i, align 4
  %119 = load i32, i32* %B.i, align 4
  %shl154.i = shl i32 %119, 22
  %120 = load i32, i32* %B.i, align 4
  %shr155.i = lshr i32 %120, 10
  %or156.i = or i32 %shl154.i, %shr155.i
  store i32 %or156.i, i32* %B.i, align 4
  %121 = load i32, i32* %C.i, align 4
  %122 = load i32, i32* %B.i, align 4
  %add157.i = add i32 %122, %121
  store i32 %add157.i, i32* %B.i, align 4
  %123 = load i8*, i8** %data.i, align 8
  %incdec.ptr158.i = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %incdec.ptr158.i, i8** %data.i, align 8
  %124 = load i8, i8* %123, align 1
  %conv159.i = zext i8 %124 to i64
  %conv160.i = trunc i64 %conv159.i to i32
  store i32 %conv160.i, i32* %l.i, align 4
  %125 = load i8*, i8** %data.i, align 8
  %incdec.ptr161.i = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %incdec.ptr161.i, i8** %data.i, align 8
  %126 = load i8, i8* %125, align 1
  %conv162.i = zext i8 %126 to i64
  %shl163.i = shl i64 %conv162.i, 8
  %127 = load i32, i32* %l.i, align 4
  %conv164.i = zext i32 %127 to i64
  %or165.i = or i64 %conv164.i, %shl163.i
  %conv166.i = trunc i64 %or165.i to i32
  store i32 %conv166.i, i32* %l.i, align 4
  %128 = load i8*, i8** %data.i, align 8
  %incdec.ptr167.i = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %incdec.ptr167.i, i8** %data.i, align 8
  %129 = load i8, i8* %128, align 1
  %conv168.i = zext i8 %129 to i64
  %shl169.i = shl i64 %conv168.i, 16
  %130 = load i32, i32* %l.i, align 4
  %conv170.i = zext i32 %130 to i64
  %or171.i = or i64 %conv170.i, %shl169.i
  %conv172.i = trunc i64 %or171.i to i32
  store i32 %conv172.i, i32* %l.i, align 4
  %131 = load i8*, i8** %data.i, align 8
  %incdec.ptr173.i = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %incdec.ptr173.i, i8** %data.i, align 8
  %132 = load i8, i8* %131, align 1
  %conv174.i = zext i8 %132 to i64
  %shl175.i = shl i64 %conv174.i, 24
  %133 = load i32, i32* %l.i, align 4
  %conv176.i = zext i32 %133 to i64
  %or177.i = or i64 %conv176.i, %shl175.i
  %conv178.i = trunc i64 %or177.i to i32
  store i32 %conv178.i, i32* %l.i, align 4
  %134 = load i32, i32* %l.i, align 4
  store i32 %134, i32* %XX5.i, align 4
  %135 = load i32, i32* %XX4.i, align 4
  %conv179.i = zext i32 %135 to i64
  %add180.i = add nsw i64 %conv179.i, 4118548399
  %136 = load i32, i32* %C.i, align 4
  %137 = load i32, i32* %D.i, align 4
  %xor181.i = xor i32 %136, %137
  %138 = load i32, i32* %B.i, align 4
  %and182.i = and i32 %xor181.i, %138
  %139 = load i32, i32* %D.i, align 4
  %xor183.i = xor i32 %and182.i, %139
  %conv184.i = zext i32 %xor183.i to i64
  %add185.i = add nsw i64 %add180.i, %conv184.i
  %140 = load i32, i32* %A.i, align 4
  %conv186.i = zext i32 %140 to i64
  %add187.i = add nsw i64 %conv186.i, %add185.i
  %conv188.i = trunc i64 %add187.i to i32
  store i32 %conv188.i, i32* %A.i, align 4
  %141 = load i32, i32* %A.i, align 4
  %shl189.i = shl i32 %141, 7
  %142 = load i32, i32* %A.i, align 4
  %shr190.i = lshr i32 %142, 25
  %or191.i = or i32 %shl189.i, %shr190.i
  store i32 %or191.i, i32* %A.i, align 4
  %143 = load i32, i32* %B.i, align 4
  %144 = load i32, i32* %A.i, align 4
  %add192.i = add i32 %144, %143
  store i32 %add192.i, i32* %A.i, align 4
  %145 = load i8*, i8** %data.i, align 8
  %incdec.ptr193.i = getelementptr inbounds i8, i8* %145, i32 1
  store i8* %incdec.ptr193.i, i8** %data.i, align 8
  %146 = load i8, i8* %145, align 1
  %conv194.i = zext i8 %146 to i64
  %conv195.i = trunc i64 %conv194.i to i32
  store i32 %conv195.i, i32* %l.i, align 4
  %147 = load i8*, i8** %data.i, align 8
  %incdec.ptr196.i = getelementptr inbounds i8, i8* %147, i32 1
  store i8* %incdec.ptr196.i, i8** %data.i, align 8
  %148 = load i8, i8* %147, align 1
  %conv197.i = zext i8 %148 to i64
  %shl198.i = shl i64 %conv197.i, 8
  %149 = load i32, i32* %l.i, align 4
  %conv199.i = zext i32 %149 to i64
  %or200.i = or i64 %conv199.i, %shl198.i
  %conv201.i = trunc i64 %or200.i to i32
  store i32 %conv201.i, i32* %l.i, align 4
  %150 = load i8*, i8** %data.i, align 8
  %incdec.ptr202.i = getelementptr inbounds i8, i8* %150, i32 1
  store i8* %incdec.ptr202.i, i8** %data.i, align 8
  %151 = load i8, i8* %150, align 1
  %conv203.i = zext i8 %151 to i64
  %shl204.i = shl i64 %conv203.i, 16
  %152 = load i32, i32* %l.i, align 4
  %conv205.i = zext i32 %152 to i64
  %or206.i = or i64 %conv205.i, %shl204.i
  %conv207.i = trunc i64 %or206.i to i32
  store i32 %conv207.i, i32* %l.i, align 4
  %153 = load i8*, i8** %data.i, align 8
  %incdec.ptr208.i = getelementptr inbounds i8, i8* %153, i32 1
  store i8* %incdec.ptr208.i, i8** %data.i, align 8
  %154 = load i8, i8* %153, align 1
  %conv209.i = zext i8 %154 to i64
  %shl210.i = shl i64 %conv209.i, 24
  %155 = load i32, i32* %l.i, align 4
  %conv211.i = zext i32 %155 to i64
  %or212.i = or i64 %conv211.i, %shl210.i
  %conv213.i = trunc i64 %or212.i to i32
  store i32 %conv213.i, i32* %l.i, align 4
  %156 = load i32, i32* %l.i, align 4
  store i32 %156, i32* %XX6.i, align 4
  %157 = load i32, i32* %XX5.i, align 4
  %conv214.i = zext i32 %157 to i64
  %add215.i = add nsw i64 %conv214.i, 1200080426
  %158 = load i32, i32* %B.i, align 4
  %159 = load i32, i32* %C.i, align 4
  %xor216.i = xor i32 %158, %159
  %160 = load i32, i32* %A.i, align 4
  %and217.i = and i32 %xor216.i, %160
  %161 = load i32, i32* %C.i, align 4
  %xor218.i = xor i32 %and217.i, %161
  %conv219.i = zext i32 %xor218.i to i64
  %add220.i = add nsw i64 %add215.i, %conv219.i
  %162 = load i32, i32* %D.i, align 4
  %conv221.i = zext i32 %162 to i64
  %add222.i = add nsw i64 %conv221.i, %add220.i
  %conv223.i = trunc i64 %add222.i to i32
  store i32 %conv223.i, i32* %D.i, align 4
  %163 = load i32, i32* %D.i, align 4
  %shl224.i = shl i32 %163, 12
  %164 = load i32, i32* %D.i, align 4
  %shr225.i = lshr i32 %164, 20
  %or226.i = or i32 %shl224.i, %shr225.i
  store i32 %or226.i, i32* %D.i, align 4
  %165 = load i32, i32* %A.i, align 4
  %166 = load i32, i32* %D.i, align 4
  %add227.i = add i32 %166, %165
  store i32 %add227.i, i32* %D.i, align 4
  %167 = load i8*, i8** %data.i, align 8
  %incdec.ptr228.i = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %incdec.ptr228.i, i8** %data.i, align 8
  %168 = load i8, i8* %167, align 1
  %conv229.i = zext i8 %168 to i64
  %conv230.i = trunc i64 %conv229.i to i32
  store i32 %conv230.i, i32* %l.i, align 4
  %169 = load i8*, i8** %data.i, align 8
  %incdec.ptr231.i = getelementptr inbounds i8, i8* %169, i32 1
  store i8* %incdec.ptr231.i, i8** %data.i, align 8
  %170 = load i8, i8* %169, align 1
  %conv232.i = zext i8 %170 to i64
  %shl233.i = shl i64 %conv232.i, 8
  %171 = load i32, i32* %l.i, align 4
  %conv234.i = zext i32 %171 to i64
  %or235.i = or i64 %conv234.i, %shl233.i
  %conv236.i = trunc i64 %or235.i to i32
  store i32 %conv236.i, i32* %l.i, align 4
  %172 = load i8*, i8** %data.i, align 8
  %incdec.ptr237.i = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %incdec.ptr237.i, i8** %data.i, align 8
  %173 = load i8, i8* %172, align 1
  %conv238.i = zext i8 %173 to i64
  %shl239.i = shl i64 %conv238.i, 16
  %174 = load i32, i32* %l.i, align 4
  %conv240.i = zext i32 %174 to i64
  %or241.i = or i64 %conv240.i, %shl239.i
  %conv242.i = trunc i64 %or241.i to i32
  store i32 %conv242.i, i32* %l.i, align 4
  %175 = load i8*, i8** %data.i, align 8
  %incdec.ptr243.i = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %incdec.ptr243.i, i8** %data.i, align 8
  %176 = load i8, i8* %175, align 1
  %conv244.i = zext i8 %176 to i64
  %shl245.i = shl i64 %conv244.i, 24
  %177 = load i32, i32* %l.i, align 4
  %conv246.i = zext i32 %177 to i64
  %or247.i = or i64 %conv246.i, %shl245.i
  %conv248.i = trunc i64 %or247.i to i32
  store i32 %conv248.i, i32* %l.i, align 4
  %178 = load i32, i32* %l.i, align 4
  store i32 %178, i32* %XX7.i, align 4
  %179 = load i32, i32* %XX6.i, align 4
  %conv249.i = zext i32 %179 to i64
  %add250.i = add nsw i64 %conv249.i, 2821735955
  %180 = load i32, i32* %A.i, align 4
  %181 = load i32, i32* %B.i, align 4
  %xor251.i = xor i32 %180, %181
  %182 = load i32, i32* %D.i, align 4
  %and252.i = and i32 %xor251.i, %182
  %183 = load i32, i32* %B.i, align 4
  %xor253.i = xor i32 %and252.i, %183
  %conv254.i = zext i32 %xor253.i to i64
  %add255.i = add nsw i64 %add250.i, %conv254.i
  %184 = load i32, i32* %C.i, align 4
  %conv256.i = zext i32 %184 to i64
  %add257.i = add nsw i64 %conv256.i, %add255.i
  %conv258.i = trunc i64 %add257.i to i32
  store i32 %conv258.i, i32* %C.i, align 4
  %185 = load i32, i32* %C.i, align 4
  %shl259.i = shl i32 %185, 17
  %186 = load i32, i32* %C.i, align 4
  %shr260.i = lshr i32 %186, 15
  %or261.i = or i32 %shl259.i, %shr260.i
  store i32 %or261.i, i32* %C.i, align 4
  %187 = load i32, i32* %D.i, align 4
  %188 = load i32, i32* %C.i, align 4
  %add262.i = add i32 %188, %187
  store i32 %add262.i, i32* %C.i, align 4
  %189 = load i8*, i8** %data.i, align 8
  %incdec.ptr263.i = getelementptr inbounds i8, i8* %189, i32 1
  store i8* %incdec.ptr263.i, i8** %data.i, align 8
  %190 = load i8, i8* %189, align 1
  %conv264.i = zext i8 %190 to i64
  %conv265.i = trunc i64 %conv264.i to i32
  store i32 %conv265.i, i32* %l.i, align 4
  %191 = load i8*, i8** %data.i, align 8
  %incdec.ptr266.i = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %incdec.ptr266.i, i8** %data.i, align 8
  %192 = load i8, i8* %191, align 1
  %conv267.i = zext i8 %192 to i64
  %shl268.i = shl i64 %conv267.i, 8
  %193 = load i32, i32* %l.i, align 4
  %conv269.i = zext i32 %193 to i64
  %or270.i = or i64 %conv269.i, %shl268.i
  %conv271.i = trunc i64 %or270.i to i32
  store i32 %conv271.i, i32* %l.i, align 4
  %194 = load i8*, i8** %data.i, align 8
  %incdec.ptr272.i = getelementptr inbounds i8, i8* %194, i32 1
  store i8* %incdec.ptr272.i, i8** %data.i, align 8
  %195 = load i8, i8* %194, align 1
  %conv273.i = zext i8 %195 to i64
  %shl274.i = shl i64 %conv273.i, 16
  %196 = load i32, i32* %l.i, align 4
  %conv275.i = zext i32 %196 to i64
  %or276.i = or i64 %conv275.i, %shl274.i
  %conv277.i = trunc i64 %or276.i to i32
  store i32 %conv277.i, i32* %l.i, align 4
  %197 = load i8*, i8** %data.i, align 8
  %incdec.ptr278.i = getelementptr inbounds i8, i8* %197, i32 1
  store i8* %incdec.ptr278.i, i8** %data.i, align 8
  %198 = load i8, i8* %197, align 1
  %conv279.i = zext i8 %198 to i64
  %shl280.i = shl i64 %conv279.i, 24
  %199 = load i32, i32* %l.i, align 4
  %conv281.i = zext i32 %199 to i64
  %or282.i = or i64 %conv281.i, %shl280.i
  %conv283.i = trunc i64 %or282.i to i32
  store i32 %conv283.i, i32* %l.i, align 4
  %200 = load i32, i32* %l.i, align 4
  store i32 %200, i32* %XX8.i, align 4
  %201 = load i32, i32* %XX7.i, align 4
  %conv284.i = zext i32 %201 to i64
  %add285.i = add nsw i64 %conv284.i, 4249261313
  %202 = load i32, i32* %D.i, align 4
  %203 = load i32, i32* %A.i, align 4
  %xor286.i = xor i32 %202, %203
  %204 = load i32, i32* %C.i, align 4
  %and287.i = and i32 %xor286.i, %204
  %205 = load i32, i32* %A.i, align 4
  %xor288.i = xor i32 %and287.i, %205
  %conv289.i = zext i32 %xor288.i to i64
  %add290.i = add nsw i64 %add285.i, %conv289.i
  %206 = load i32, i32* %B.i, align 4
  %conv291.i = zext i32 %206 to i64
  %add292.i = add nsw i64 %conv291.i, %add290.i
  %conv293.i = trunc i64 %add292.i to i32
  store i32 %conv293.i, i32* %B.i, align 4
  %207 = load i32, i32* %B.i, align 4
  %shl294.i = shl i32 %207, 22
  %208 = load i32, i32* %B.i, align 4
  %shr295.i = lshr i32 %208, 10
  %or296.i = or i32 %shl294.i, %shr295.i
  store i32 %or296.i, i32* %B.i, align 4
  %209 = load i32, i32* %C.i, align 4
  %210 = load i32, i32* %B.i, align 4
  %add297.i = add i32 %210, %209
  store i32 %add297.i, i32* %B.i, align 4
  %211 = load i8*, i8** %data.i, align 8
  %incdec.ptr298.i = getelementptr inbounds i8, i8* %211, i32 1
  store i8* %incdec.ptr298.i, i8** %data.i, align 8
  %212 = load i8, i8* %211, align 1
  %conv299.i = zext i8 %212 to i64
  %conv300.i = trunc i64 %conv299.i to i32
  store i32 %conv300.i, i32* %l.i, align 4
  %213 = load i8*, i8** %data.i, align 8
  %incdec.ptr301.i = getelementptr inbounds i8, i8* %213, i32 1
  store i8* %incdec.ptr301.i, i8** %data.i, align 8
  %214 = load i8, i8* %213, align 1
  %conv302.i = zext i8 %214 to i64
  %shl303.i = shl i64 %conv302.i, 8
  %215 = load i32, i32* %l.i, align 4
  %conv304.i = zext i32 %215 to i64
  %or305.i = or i64 %conv304.i, %shl303.i
  %conv306.i = trunc i64 %or305.i to i32
  store i32 %conv306.i, i32* %l.i, align 4
  %216 = load i8*, i8** %data.i, align 8
  %incdec.ptr307.i = getelementptr inbounds i8, i8* %216, i32 1
  store i8* %incdec.ptr307.i, i8** %data.i, align 8
  %217 = load i8, i8* %216, align 1
  %conv308.i = zext i8 %217 to i64
  %shl309.i = shl i64 %conv308.i, 16
  %218 = load i32, i32* %l.i, align 4
  %conv310.i = zext i32 %218 to i64
  %or311.i = or i64 %conv310.i, %shl309.i
  %conv312.i = trunc i64 %or311.i to i32
  store i32 %conv312.i, i32* %l.i, align 4
  %219 = load i8*, i8** %data.i, align 8
  %incdec.ptr313.i = getelementptr inbounds i8, i8* %219, i32 1
  store i8* %incdec.ptr313.i, i8** %data.i, align 8
  %220 = load i8, i8* %219, align 1
  %conv314.i = zext i8 %220 to i64
  %shl315.i = shl i64 %conv314.i, 24
  %221 = load i32, i32* %l.i, align 4
  %conv316.i = zext i32 %221 to i64
  %or317.i = or i64 %conv316.i, %shl315.i
  %conv318.i = trunc i64 %or317.i to i32
  store i32 %conv318.i, i32* %l.i, align 4
  %222 = load i32, i32* %l.i, align 4
  store i32 %222, i32* %XX9.i, align 4
  %223 = load i32, i32* %XX8.i, align 4
  %conv319.i = zext i32 %223 to i64
  %add320.i = add nsw i64 %conv319.i, 1770035416
  %224 = load i32, i32* %C.i, align 4
  %225 = load i32, i32* %D.i, align 4
  %xor321.i = xor i32 %224, %225
  %226 = load i32, i32* %B.i, align 4
  %and322.i = and i32 %xor321.i, %226
  %227 = load i32, i32* %D.i, align 4
  %xor323.i = xor i32 %and322.i, %227
  %conv324.i = zext i32 %xor323.i to i64
  %add325.i = add nsw i64 %add320.i, %conv324.i
  %228 = load i32, i32* %A.i, align 4
  %conv326.i = zext i32 %228 to i64
  %add327.i = add nsw i64 %conv326.i, %add325.i
  %conv328.i = trunc i64 %add327.i to i32
  store i32 %conv328.i, i32* %A.i, align 4
  %229 = load i32, i32* %A.i, align 4
  %shl329.i = shl i32 %229, 7
  %230 = load i32, i32* %A.i, align 4
  %shr330.i = lshr i32 %230, 25
  %or331.i = or i32 %shl329.i, %shr330.i
  store i32 %or331.i, i32* %A.i, align 4
  %231 = load i32, i32* %B.i, align 4
  %232 = load i32, i32* %A.i, align 4
  %add332.i = add i32 %232, %231
  store i32 %add332.i, i32* %A.i, align 4
  %233 = load i8*, i8** %data.i, align 8
  %incdec.ptr333.i = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %incdec.ptr333.i, i8** %data.i, align 8
  %234 = load i8, i8* %233, align 1
  %conv334.i = zext i8 %234 to i64
  %conv335.i = trunc i64 %conv334.i to i32
  store i32 %conv335.i, i32* %l.i, align 4
  %235 = load i8*, i8** %data.i, align 8
  %incdec.ptr336.i = getelementptr inbounds i8, i8* %235, i32 1
  store i8* %incdec.ptr336.i, i8** %data.i, align 8
  %236 = load i8, i8* %235, align 1
  %conv337.i = zext i8 %236 to i64
  %shl338.i = shl i64 %conv337.i, 8
  %237 = load i32, i32* %l.i, align 4
  %conv339.i = zext i32 %237 to i64
  %or340.i = or i64 %conv339.i, %shl338.i
  %conv341.i = trunc i64 %or340.i to i32
  store i32 %conv341.i, i32* %l.i, align 4
  %238 = load i8*, i8** %data.i, align 8
  %incdec.ptr342.i = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %incdec.ptr342.i, i8** %data.i, align 8
  %239 = load i8, i8* %238, align 1
  %conv343.i = zext i8 %239 to i64
  %shl344.i = shl i64 %conv343.i, 16
  %240 = load i32, i32* %l.i, align 4
  %conv345.i = zext i32 %240 to i64
  %or346.i = or i64 %conv345.i, %shl344.i
  %conv347.i = trunc i64 %or346.i to i32
  store i32 %conv347.i, i32* %l.i, align 4
  %241 = load i8*, i8** %data.i, align 8
  %incdec.ptr348.i = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %incdec.ptr348.i, i8** %data.i, align 8
  %242 = load i8, i8* %241, align 1
  %conv349.i = zext i8 %242 to i64
  %shl350.i = shl i64 %conv349.i, 24
  %243 = load i32, i32* %l.i, align 4
  %conv351.i = zext i32 %243 to i64
  %or352.i = or i64 %conv351.i, %shl350.i
  %conv353.i = trunc i64 %or352.i to i32
  store i32 %conv353.i, i32* %l.i, align 4
  %244 = load i32, i32* %l.i, align 4
  store i32 %244, i32* %XX10.i, align 4
  %245 = load i32, i32* %XX9.i, align 4
  %conv354.i = zext i32 %245 to i64
  %add355.i = add nsw i64 %conv354.i, 2336552879
  %246 = load i32, i32* %B.i, align 4
  %247 = load i32, i32* %C.i, align 4
  %xor356.i = xor i32 %246, %247
  %248 = load i32, i32* %A.i, align 4
  %and357.i = and i32 %xor356.i, %248
  %249 = load i32, i32* %C.i, align 4
  %xor358.i = xor i32 %and357.i, %249
  %conv359.i = zext i32 %xor358.i to i64
  %add360.i = add nsw i64 %add355.i, %conv359.i
  %250 = load i32, i32* %D.i, align 4
  %conv361.i = zext i32 %250 to i64
  %add362.i = add nsw i64 %conv361.i, %add360.i
  %conv363.i = trunc i64 %add362.i to i32
  store i32 %conv363.i, i32* %D.i, align 4
  %251 = load i32, i32* %D.i, align 4
  %shl364.i = shl i32 %251, 12
  %252 = load i32, i32* %D.i, align 4
  %shr365.i = lshr i32 %252, 20
  %or366.i = or i32 %shl364.i, %shr365.i
  store i32 %or366.i, i32* %D.i, align 4
  %253 = load i32, i32* %A.i, align 4
  %254 = load i32, i32* %D.i, align 4
  %add367.i = add i32 %254, %253
  store i32 %add367.i, i32* %D.i, align 4
  %255 = load i8*, i8** %data.i, align 8
  %incdec.ptr368.i = getelementptr inbounds i8, i8* %255, i32 1
  store i8* %incdec.ptr368.i, i8** %data.i, align 8
  %256 = load i8, i8* %255, align 1
  %conv369.i = zext i8 %256 to i64
  %conv370.i = trunc i64 %conv369.i to i32
  store i32 %conv370.i, i32* %l.i, align 4
  %257 = load i8*, i8** %data.i, align 8
  %incdec.ptr371.i = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %incdec.ptr371.i, i8** %data.i, align 8
  %258 = load i8, i8* %257, align 1
  %conv372.i = zext i8 %258 to i64
  %shl373.i = shl i64 %conv372.i, 8
  %259 = load i32, i32* %l.i, align 4
  %conv374.i = zext i32 %259 to i64
  %or375.i = or i64 %conv374.i, %shl373.i
  %conv376.i = trunc i64 %or375.i to i32
  store i32 %conv376.i, i32* %l.i, align 4
  %260 = load i8*, i8** %data.i, align 8
  %incdec.ptr377.i = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %incdec.ptr377.i, i8** %data.i, align 8
  %261 = load i8, i8* %260, align 1
  %conv378.i = zext i8 %261 to i64
  %shl379.i = shl i64 %conv378.i, 16
  %262 = load i32, i32* %l.i, align 4
  %conv380.i = zext i32 %262 to i64
  %or381.i = or i64 %conv380.i, %shl379.i
  %conv382.i = trunc i64 %or381.i to i32
  store i32 %conv382.i, i32* %l.i, align 4
  %263 = load i8*, i8** %data.i, align 8
  %incdec.ptr383.i = getelementptr inbounds i8, i8* %263, i32 1
  store i8* %incdec.ptr383.i, i8** %data.i, align 8
  %264 = load i8, i8* %263, align 1
  %conv384.i = zext i8 %264 to i64
  %shl385.i = shl i64 %conv384.i, 24
  %265 = load i32, i32* %l.i, align 4
  %conv386.i = zext i32 %265 to i64
  %or387.i = or i64 %conv386.i, %shl385.i
  %conv388.i = trunc i64 %or387.i to i32
  store i32 %conv388.i, i32* %l.i, align 4
  %266 = load i32, i32* %l.i, align 4
  store i32 %266, i32* %XX11.i, align 4
  %267 = load i32, i32* %XX10.i, align 4
  %conv389.i = zext i32 %267 to i64
  %add390.i = add nsw i64 %conv389.i, 4294925233
  %268 = load i32, i32* %A.i, align 4
  %269 = load i32, i32* %B.i, align 4
  %xor391.i = xor i32 %268, %269
  %270 = load i32, i32* %D.i, align 4
  %and392.i = and i32 %xor391.i, %270
  %271 = load i32, i32* %B.i, align 4
  %xor393.i = xor i32 %and392.i, %271
  %conv394.i = zext i32 %xor393.i to i64
  %add395.i = add nsw i64 %add390.i, %conv394.i
  %272 = load i32, i32* %C.i, align 4
  %conv396.i = zext i32 %272 to i64
  %add397.i = add nsw i64 %conv396.i, %add395.i
  %conv398.i = trunc i64 %add397.i to i32
  store i32 %conv398.i, i32* %C.i, align 4
  %273 = load i32, i32* %C.i, align 4
  %shl399.i = shl i32 %273, 17
  %274 = load i32, i32* %C.i, align 4
  %shr400.i = lshr i32 %274, 15
  %or401.i = or i32 %shl399.i, %shr400.i
  store i32 %or401.i, i32* %C.i, align 4
  %275 = load i32, i32* %D.i, align 4
  %276 = load i32, i32* %C.i, align 4
  %add402.i = add i32 %276, %275
  store i32 %add402.i, i32* %C.i, align 4
  %277 = load i8*, i8** %data.i, align 8
  %incdec.ptr403.i = getelementptr inbounds i8, i8* %277, i32 1
  store i8* %incdec.ptr403.i, i8** %data.i, align 8
  %278 = load i8, i8* %277, align 1
  %conv404.i = zext i8 %278 to i64
  %conv405.i = trunc i64 %conv404.i to i32
  store i32 %conv405.i, i32* %l.i, align 4
  %279 = load i8*, i8** %data.i, align 8
  %incdec.ptr406.i = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %incdec.ptr406.i, i8** %data.i, align 8
  %280 = load i8, i8* %279, align 1
  %conv407.i = zext i8 %280 to i64
  %shl408.i = shl i64 %conv407.i, 8
  %281 = load i32, i32* %l.i, align 4
  %conv409.i = zext i32 %281 to i64
  %or410.i = or i64 %conv409.i, %shl408.i
  %conv411.i = trunc i64 %or410.i to i32
  store i32 %conv411.i, i32* %l.i, align 4
  %282 = load i8*, i8** %data.i, align 8
  %incdec.ptr412.i = getelementptr inbounds i8, i8* %282, i32 1
  store i8* %incdec.ptr412.i, i8** %data.i, align 8
  %283 = load i8, i8* %282, align 1
  %conv413.i = zext i8 %283 to i64
  %shl414.i = shl i64 %conv413.i, 16
  %284 = load i32, i32* %l.i, align 4
  %conv415.i = zext i32 %284 to i64
  %or416.i = or i64 %conv415.i, %shl414.i
  %conv417.i = trunc i64 %or416.i to i32
  store i32 %conv417.i, i32* %l.i, align 4
  %285 = load i8*, i8** %data.i, align 8
  %incdec.ptr418.i = getelementptr inbounds i8, i8* %285, i32 1
  store i8* %incdec.ptr418.i, i8** %data.i, align 8
  %286 = load i8, i8* %285, align 1
  %conv419.i = zext i8 %286 to i64
  %shl420.i = shl i64 %conv419.i, 24
  %287 = load i32, i32* %l.i, align 4
  %conv421.i = zext i32 %287 to i64
  %or422.i = or i64 %conv421.i, %shl420.i
  %conv423.i = trunc i64 %or422.i to i32
  store i32 %conv423.i, i32* %l.i, align 4
  %288 = load i32, i32* %l.i, align 4
  store i32 %288, i32* %XX12.i, align 4
  %289 = load i32, i32* %XX11.i, align 4
  %conv424.i = zext i32 %289 to i64
  %add425.i = add nsw i64 %conv424.i, 2304563134
  %290 = load i32, i32* %D.i, align 4
  %291 = load i32, i32* %A.i, align 4
  %xor426.i = xor i32 %290, %291
  %292 = load i32, i32* %C.i, align 4
  %and427.i = and i32 %xor426.i, %292
  %293 = load i32, i32* %A.i, align 4
  %xor428.i = xor i32 %and427.i, %293
  %conv429.i = zext i32 %xor428.i to i64
  %add430.i = add nsw i64 %add425.i, %conv429.i
  %294 = load i32, i32* %B.i, align 4
  %conv431.i = zext i32 %294 to i64
  %add432.i = add nsw i64 %conv431.i, %add430.i
  %conv433.i = trunc i64 %add432.i to i32
  store i32 %conv433.i, i32* %B.i, align 4
  %295 = load i32, i32* %B.i, align 4
  %shl434.i = shl i32 %295, 22
  %296 = load i32, i32* %B.i, align 4
  %shr435.i = lshr i32 %296, 10
  %or436.i = or i32 %shl434.i, %shr435.i
  store i32 %or436.i, i32* %B.i, align 4
  %297 = load i32, i32* %C.i, align 4
  %298 = load i32, i32* %B.i, align 4
  %add437.i = add i32 %298, %297
  store i32 %add437.i, i32* %B.i, align 4
  %299 = load i8*, i8** %data.i, align 8
  %incdec.ptr438.i = getelementptr inbounds i8, i8* %299, i32 1
  store i8* %incdec.ptr438.i, i8** %data.i, align 8
  %300 = load i8, i8* %299, align 1
  %conv439.i = zext i8 %300 to i64
  %conv440.i = trunc i64 %conv439.i to i32
  store i32 %conv440.i, i32* %l.i, align 4
  %301 = load i8*, i8** %data.i, align 8
  %incdec.ptr441.i = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %incdec.ptr441.i, i8** %data.i, align 8
  %302 = load i8, i8* %301, align 1
  %conv442.i = zext i8 %302 to i64
  %shl443.i = shl i64 %conv442.i, 8
  %303 = load i32, i32* %l.i, align 4
  %conv444.i = zext i32 %303 to i64
  %or445.i = or i64 %conv444.i, %shl443.i
  %conv446.i = trunc i64 %or445.i to i32
  store i32 %conv446.i, i32* %l.i, align 4
  %304 = load i8*, i8** %data.i, align 8
  %incdec.ptr447.i = getelementptr inbounds i8, i8* %304, i32 1
  store i8* %incdec.ptr447.i, i8** %data.i, align 8
  %305 = load i8, i8* %304, align 1
  %conv448.i = zext i8 %305 to i64
  %shl449.i = shl i64 %conv448.i, 16
  %306 = load i32, i32* %l.i, align 4
  %conv450.i = zext i32 %306 to i64
  %or451.i = or i64 %conv450.i, %shl449.i
  %conv452.i = trunc i64 %or451.i to i32
  store i32 %conv452.i, i32* %l.i, align 4
  %307 = load i8*, i8** %data.i, align 8
  %incdec.ptr453.i = getelementptr inbounds i8, i8* %307, i32 1
  store i8* %incdec.ptr453.i, i8** %data.i, align 8
  %308 = load i8, i8* %307, align 1
  %conv454.i = zext i8 %308 to i64
  %shl455.i = shl i64 %conv454.i, 24
  %309 = load i32, i32* %l.i, align 4
  %conv456.i = zext i32 %309 to i64
  %or457.i = or i64 %conv456.i, %shl455.i
  %conv458.i = trunc i64 %or457.i to i32
  store i32 %conv458.i, i32* %l.i, align 4
  %310 = load i32, i32* %l.i, align 4
  store i32 %310, i32* %XX13.i, align 4
  %311 = load i32, i32* %XX12.i, align 4
  %conv459.i = zext i32 %311 to i64
  %add460.i = add nsw i64 %conv459.i, 1804603682
  %312 = load i32, i32* %C.i, align 4
  %313 = load i32, i32* %D.i, align 4
  %xor461.i = xor i32 %312, %313
  %314 = load i32, i32* %B.i, align 4
  %and462.i = and i32 %xor461.i, %314
  %315 = load i32, i32* %D.i, align 4
  %xor463.i = xor i32 %and462.i, %315
  %conv464.i = zext i32 %xor463.i to i64
  %add465.i = add nsw i64 %add460.i, %conv464.i
  %316 = load i32, i32* %A.i, align 4
  %conv466.i = zext i32 %316 to i64
  %add467.i = add nsw i64 %conv466.i, %add465.i
  %conv468.i = trunc i64 %add467.i to i32
  store i32 %conv468.i, i32* %A.i, align 4
  %317 = load i32, i32* %A.i, align 4
  %shl469.i = shl i32 %317, 7
  %318 = load i32, i32* %A.i, align 4
  %shr470.i = lshr i32 %318, 25
  %or471.i = or i32 %shl469.i, %shr470.i
  store i32 %or471.i, i32* %A.i, align 4
  %319 = load i32, i32* %B.i, align 4
  %320 = load i32, i32* %A.i, align 4
  %add472.i = add i32 %320, %319
  store i32 %add472.i, i32* %A.i, align 4
  %321 = load i8*, i8** %data.i, align 8
  %incdec.ptr473.i = getelementptr inbounds i8, i8* %321, i32 1
  store i8* %incdec.ptr473.i, i8** %data.i, align 8
  %322 = load i8, i8* %321, align 1
  %conv474.i = zext i8 %322 to i64
  %conv475.i = trunc i64 %conv474.i to i32
  store i32 %conv475.i, i32* %l.i, align 4
  %323 = load i8*, i8** %data.i, align 8
  %incdec.ptr476.i = getelementptr inbounds i8, i8* %323, i32 1
  store i8* %incdec.ptr476.i, i8** %data.i, align 8
  %324 = load i8, i8* %323, align 1
  %conv477.i = zext i8 %324 to i64
  %shl478.i = shl i64 %conv477.i, 8
  %325 = load i32, i32* %l.i, align 4
  %conv479.i = zext i32 %325 to i64
  %or480.i = or i64 %conv479.i, %shl478.i
  %conv481.i = trunc i64 %or480.i to i32
  store i32 %conv481.i, i32* %l.i, align 4
  %326 = load i8*, i8** %data.i, align 8
  %incdec.ptr482.i = getelementptr inbounds i8, i8* %326, i32 1
  store i8* %incdec.ptr482.i, i8** %data.i, align 8
  %327 = load i8, i8* %326, align 1
  %conv483.i = zext i8 %327 to i64
  %shl484.i = shl i64 %conv483.i, 16
  %328 = load i32, i32* %l.i, align 4
  %conv485.i = zext i32 %328 to i64
  %or486.i = or i64 %conv485.i, %shl484.i
  %conv487.i = trunc i64 %or486.i to i32
  store i32 %conv487.i, i32* %l.i, align 4
  %329 = load i8*, i8** %data.i, align 8
  %incdec.ptr488.i = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %incdec.ptr488.i, i8** %data.i, align 8
  %330 = load i8, i8* %329, align 1
  %conv489.i = zext i8 %330 to i64
  %shl490.i = shl i64 %conv489.i, 24
  %331 = load i32, i32* %l.i, align 4
  %conv491.i = zext i32 %331 to i64
  %or492.i = or i64 %conv491.i, %shl490.i
  %conv493.i = trunc i64 %or492.i to i32
  store i32 %conv493.i, i32* %l.i, align 4
  %332 = load i32, i32* %l.i, align 4
  store i32 %332, i32* %XX14.i, align 4
  %333 = load i32, i32* %XX13.i, align 4
  %conv494.i = zext i32 %333 to i64
  %add495.i = add nsw i64 %conv494.i, 4254626195
  %334 = load i32, i32* %B.i, align 4
  %335 = load i32, i32* %C.i, align 4
  %xor496.i = xor i32 %334, %335
  %336 = load i32, i32* %A.i, align 4
  %and497.i = and i32 %xor496.i, %336
  %337 = load i32, i32* %C.i, align 4
  %xor498.i = xor i32 %and497.i, %337
  %conv499.i = zext i32 %xor498.i to i64
  %add500.i = add nsw i64 %add495.i, %conv499.i
  %338 = load i32, i32* %D.i, align 4
  %conv501.i = zext i32 %338 to i64
  %add502.i = add nsw i64 %conv501.i, %add500.i
  %conv503.i = trunc i64 %add502.i to i32
  store i32 %conv503.i, i32* %D.i, align 4
  %339 = load i32, i32* %D.i, align 4
  %shl504.i = shl i32 %339, 12
  %340 = load i32, i32* %D.i, align 4
  %shr505.i = lshr i32 %340, 20
  %or506.i = or i32 %shl504.i, %shr505.i
  store i32 %or506.i, i32* %D.i, align 4
  %341 = load i32, i32* %A.i, align 4
  %342 = load i32, i32* %D.i, align 4
  %add507.i = add i32 %342, %341
  store i32 %add507.i, i32* %D.i, align 4
  %343 = load i8*, i8** %data.i, align 8
  %incdec.ptr508.i = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %incdec.ptr508.i, i8** %data.i, align 8
  %344 = load i8, i8* %343, align 1
  %conv509.i = zext i8 %344 to i64
  %conv510.i = trunc i64 %conv509.i to i32
  store i32 %conv510.i, i32* %l.i, align 4
  %345 = load i8*, i8** %data.i, align 8
  %incdec.ptr511.i = getelementptr inbounds i8, i8* %345, i32 1
  store i8* %incdec.ptr511.i, i8** %data.i, align 8
  %346 = load i8, i8* %345, align 1
  %conv512.i = zext i8 %346 to i64
  %shl513.i = shl i64 %conv512.i, 8
  %347 = load i32, i32* %l.i, align 4
  %conv514.i = zext i32 %347 to i64
  %or515.i = or i64 %conv514.i, %shl513.i
  %conv516.i = trunc i64 %or515.i to i32
  store i32 %conv516.i, i32* %l.i, align 4
  %348 = load i8*, i8** %data.i, align 8
  %incdec.ptr517.i = getelementptr inbounds i8, i8* %348, i32 1
  store i8* %incdec.ptr517.i, i8** %data.i, align 8
  %349 = load i8, i8* %348, align 1
  %conv518.i = zext i8 %349 to i64
  %shl519.i = shl i64 %conv518.i, 16
  %350 = load i32, i32* %l.i, align 4
  %conv520.i = zext i32 %350 to i64
  %or521.i = or i64 %conv520.i, %shl519.i
  %conv522.i = trunc i64 %or521.i to i32
  store i32 %conv522.i, i32* %l.i, align 4
  %351 = load i8*, i8** %data.i, align 8
  %incdec.ptr523.i = getelementptr inbounds i8, i8* %351, i32 1
  store i8* %incdec.ptr523.i, i8** %data.i, align 8
  %352 = load i8, i8* %351, align 1
  %conv524.i = zext i8 %352 to i64
  %shl525.i = shl i64 %conv524.i, 24
  %353 = load i32, i32* %l.i, align 4
  %conv526.i = zext i32 %353 to i64
  %or527.i = or i64 %conv526.i, %shl525.i
  %conv528.i = trunc i64 %or527.i to i32
  store i32 %conv528.i, i32* %l.i, align 4
  %354 = load i32, i32* %l.i, align 4
  store i32 %354, i32* %XX15.i, align 4
  %355 = load i32, i32* %XX14.i, align 4
  %conv529.i = zext i32 %355 to i64
  %add530.i = add nsw i64 %conv529.i, 2792965006
  %356 = load i32, i32* %A.i, align 4
  %357 = load i32, i32* %B.i, align 4
  %xor531.i = xor i32 %356, %357
  %358 = load i32, i32* %D.i, align 4
  %and532.i = and i32 %xor531.i, %358
  %359 = load i32, i32* %B.i, align 4
  %xor533.i = xor i32 %and532.i, %359
  %conv534.i = zext i32 %xor533.i to i64
  %add535.i = add nsw i64 %add530.i, %conv534.i
  %360 = load i32, i32* %C.i, align 4
  %conv536.i = zext i32 %360 to i64
  %add537.i = add nsw i64 %conv536.i, %add535.i
  %conv538.i = trunc i64 %add537.i to i32
  store i32 %conv538.i, i32* %C.i, align 4
  %361 = load i32, i32* %C.i, align 4
  %shl539.i = shl i32 %361, 17
  %362 = load i32, i32* %C.i, align 4
  %shr540.i = lshr i32 %362, 15
  %or541.i = or i32 %shl539.i, %shr540.i
  store i32 %or541.i, i32* %C.i, align 4
  %363 = load i32, i32* %D.i, align 4
  %364 = load i32, i32* %C.i, align 4
  %add542.i = add i32 %364, %363
  store i32 %add542.i, i32* %C.i, align 4
  %365 = load i32, i32* %XX15.i, align 4
  %conv543.i = zext i32 %365 to i64
  %add544.i = add nsw i64 %conv543.i, 1236535329
  %366 = load i32, i32* %D.i, align 4
  %367 = load i32, i32* %A.i, align 4
  %xor545.i = xor i32 %366, %367
  %368 = load i32, i32* %C.i, align 4
  %and546.i = and i32 %xor545.i, %368
  %369 = load i32, i32* %A.i, align 4
  %xor547.i = xor i32 %and546.i, %369
  %conv548.i = zext i32 %xor547.i to i64
  %add549.i = add nsw i64 %add544.i, %conv548.i
  %370 = load i32, i32* %B.i, align 4
  %conv550.i = zext i32 %370 to i64
  %add551.i = add nsw i64 %conv550.i, %add549.i
  %conv552.i = trunc i64 %add551.i to i32
  store i32 %conv552.i, i32* %B.i, align 4
  %371 = load i32, i32* %B.i, align 4
  %shl553.i = shl i32 %371, 22
  %372 = load i32, i32* %B.i, align 4
  %shr554.i = lshr i32 %372, 10
  %or555.i = or i32 %shl553.i, %shr554.i
  store i32 %or555.i, i32* %B.i, align 4
  %373 = load i32, i32* %C.i, align 4
  %374 = load i32, i32* %B.i, align 4
  %add556.i = add i32 %374, %373
  store i32 %add556.i, i32* %B.i, align 4
  %375 = load i32, i32* %XX1.i, align 4
  %conv557.i = zext i32 %375 to i64
  %add558.i = add nsw i64 %conv557.i, 4129170786
  %376 = load i32, i32* %B.i, align 4
  %377 = load i32, i32* %C.i, align 4
  %xor559.i = xor i32 %376, %377
  %378 = load i32, i32* %D.i, align 4
  %and560.i = and i32 %xor559.i, %378
  %379 = load i32, i32* %C.i, align 4
  %xor561.i = xor i32 %and560.i, %379
  %conv562.i = zext i32 %xor561.i to i64
  %add563.i = add nsw i64 %add558.i, %conv562.i
  %380 = load i32, i32* %A.i, align 4
  %conv564.i = zext i32 %380 to i64
  %add565.i = add nsw i64 %conv564.i, %add563.i
  %conv566.i = trunc i64 %add565.i to i32
  store i32 %conv566.i, i32* %A.i, align 4
  %381 = load i32, i32* %A.i, align 4
  %shl567.i = shl i32 %381, 5
  %382 = load i32, i32* %A.i, align 4
  %shr568.i = lshr i32 %382, 27
  %or569.i = or i32 %shl567.i, %shr568.i
  store i32 %or569.i, i32* %A.i, align 4
  %383 = load i32, i32* %B.i, align 4
  %384 = load i32, i32* %A.i, align 4
  %add570.i = add i32 %384, %383
  store i32 %add570.i, i32* %A.i, align 4
  %385 = load i32, i32* %XX6.i, align 4
  %conv571.i = zext i32 %385 to i64
  %add572.i = add nsw i64 %conv571.i, 3225465664
  %386 = load i32, i32* %A.i, align 4
  %387 = load i32, i32* %B.i, align 4
  %xor573.i = xor i32 %386, %387
  %388 = load i32, i32* %C.i, align 4
  %and574.i = and i32 %xor573.i, %388
  %389 = load i32, i32* %B.i, align 4
  %xor575.i = xor i32 %and574.i, %389
  %conv576.i = zext i32 %xor575.i to i64
  %add577.i = add nsw i64 %add572.i, %conv576.i
  %390 = load i32, i32* %D.i, align 4
  %conv578.i = zext i32 %390 to i64
  %add579.i = add nsw i64 %conv578.i, %add577.i
  %conv580.i = trunc i64 %add579.i to i32
  store i32 %conv580.i, i32* %D.i, align 4
  %391 = load i32, i32* %D.i, align 4
  %shl581.i = shl i32 %391, 9
  %392 = load i32, i32* %D.i, align 4
  %shr582.i = lshr i32 %392, 23
  %or583.i = or i32 %shl581.i, %shr582.i
  store i32 %or583.i, i32* %D.i, align 4
  %393 = load i32, i32* %A.i, align 4
  %394 = load i32, i32* %D.i, align 4
  %add584.i = add i32 %394, %393
  store i32 %add584.i, i32* %D.i, align 4
  %395 = load i32, i32* %XX11.i, align 4
  %conv585.i = zext i32 %395 to i64
  %add586.i = add nsw i64 %conv585.i, 643717713
  %396 = load i32, i32* %D.i, align 4
  %397 = load i32, i32* %A.i, align 4
  %xor587.i = xor i32 %396, %397
  %398 = load i32, i32* %B.i, align 4
  %and588.i = and i32 %xor587.i, %398
  %399 = load i32, i32* %A.i, align 4
  %xor589.i = xor i32 %and588.i, %399
  %conv590.i = zext i32 %xor589.i to i64
  %add591.i = add nsw i64 %add586.i, %conv590.i
  %400 = load i32, i32* %C.i, align 4
  %conv592.i = zext i32 %400 to i64
  %add593.i = add nsw i64 %conv592.i, %add591.i
  %conv594.i = trunc i64 %add593.i to i32
  store i32 %conv594.i, i32* %C.i, align 4
  %401 = load i32, i32* %C.i, align 4
  %shl595.i = shl i32 %401, 14
  %402 = load i32, i32* %C.i, align 4
  %shr596.i = lshr i32 %402, 18
  %or597.i = or i32 %shl595.i, %shr596.i
  store i32 %or597.i, i32* %C.i, align 4
  %403 = load i32, i32* %D.i, align 4
  %404 = load i32, i32* %C.i, align 4
  %add598.i = add i32 %404, %403
  store i32 %add598.i, i32* %C.i, align 4
  %405 = load i32, i32* %XX0.i, align 4
  %conv599.i = zext i32 %405 to i64
  %add600.i = add nsw i64 %conv599.i, 3921069994
  %406 = load i32, i32* %C.i, align 4
  %407 = load i32, i32* %D.i, align 4
  %xor601.i = xor i32 %406, %407
  %408 = load i32, i32* %A.i, align 4
  %and602.i = and i32 %xor601.i, %408
  %409 = load i32, i32* %D.i, align 4
  %xor603.i = xor i32 %and602.i, %409
  %conv604.i = zext i32 %xor603.i to i64
  %add605.i = add nsw i64 %add600.i, %conv604.i
  %410 = load i32, i32* %B.i, align 4
  %conv606.i = zext i32 %410 to i64
  %add607.i = add nsw i64 %conv606.i, %add605.i
  %conv608.i = trunc i64 %add607.i to i32
  store i32 %conv608.i, i32* %B.i, align 4
  %411 = load i32, i32* %B.i, align 4
  %shl609.i = shl i32 %411, 20
  %412 = load i32, i32* %B.i, align 4
  %shr610.i = lshr i32 %412, 12
  %or611.i = or i32 %shl609.i, %shr610.i
  store i32 %or611.i, i32* %B.i, align 4
  %413 = load i32, i32* %C.i, align 4
  %414 = load i32, i32* %B.i, align 4
  %add612.i = add i32 %414, %413
  store i32 %add612.i, i32* %B.i, align 4
  %415 = load i32, i32* %XX5.i, align 4
  %conv613.i = zext i32 %415 to i64
  %add614.i = add nsw i64 %conv613.i, 3593408605
  %416 = load i32, i32* %B.i, align 4
  %417 = load i32, i32* %C.i, align 4
  %xor615.i = xor i32 %416, %417
  %418 = load i32, i32* %D.i, align 4
  %and616.i = and i32 %xor615.i, %418
  %419 = load i32, i32* %C.i, align 4
  %xor617.i = xor i32 %and616.i, %419
  %conv618.i = zext i32 %xor617.i to i64
  %add619.i = add nsw i64 %add614.i, %conv618.i
  %420 = load i32, i32* %A.i, align 4
  %conv620.i = zext i32 %420 to i64
  %add621.i = add nsw i64 %conv620.i, %add619.i
  %conv622.i = trunc i64 %add621.i to i32
  store i32 %conv622.i, i32* %A.i, align 4
  %421 = load i32, i32* %A.i, align 4
  %shl623.i = shl i32 %421, 5
  %422 = load i32, i32* %A.i, align 4
  %shr624.i = lshr i32 %422, 27
  %or625.i = or i32 %shl623.i, %shr624.i
  store i32 %or625.i, i32* %A.i, align 4
  %423 = load i32, i32* %B.i, align 4
  %424 = load i32, i32* %A.i, align 4
  %add626.i = add i32 %424, %423
  store i32 %add626.i, i32* %A.i, align 4
  %425 = load i32, i32* %XX10.i, align 4
  %conv627.i = zext i32 %425 to i64
  %add628.i = add nsw i64 %conv627.i, 38016083
  %426 = load i32, i32* %A.i, align 4
  %427 = load i32, i32* %B.i, align 4
  %xor629.i = xor i32 %426, %427
  %428 = load i32, i32* %C.i, align 4
  %and630.i = and i32 %xor629.i, %428
  %429 = load i32, i32* %B.i, align 4
  %xor631.i = xor i32 %and630.i, %429
  %conv632.i = zext i32 %xor631.i to i64
  %add633.i = add nsw i64 %add628.i, %conv632.i
  %430 = load i32, i32* %D.i, align 4
  %conv634.i = zext i32 %430 to i64
  %add635.i = add nsw i64 %conv634.i, %add633.i
  %conv636.i = trunc i64 %add635.i to i32
  store i32 %conv636.i, i32* %D.i, align 4
  %431 = load i32, i32* %D.i, align 4
  %shl637.i = shl i32 %431, 9
  %432 = load i32, i32* %D.i, align 4
  %shr638.i = lshr i32 %432, 23
  %or639.i = or i32 %shl637.i, %shr638.i
  store i32 %or639.i, i32* %D.i, align 4
  %433 = load i32, i32* %A.i, align 4
  %434 = load i32, i32* %D.i, align 4
  %add640.i = add i32 %434, %433
  store i32 %add640.i, i32* %D.i, align 4
  %435 = load i32, i32* %XX15.i, align 4
  %conv641.i = zext i32 %435 to i64
  %add642.i = add nsw i64 %conv641.i, 3634488961
  %436 = load i32, i32* %D.i, align 4
  %437 = load i32, i32* %A.i, align 4
  %xor643.i = xor i32 %436, %437
  %438 = load i32, i32* %B.i, align 4
  %and644.i = and i32 %xor643.i, %438
  %439 = load i32, i32* %A.i, align 4
  %xor645.i = xor i32 %and644.i, %439
  %conv646.i = zext i32 %xor645.i to i64
  %add647.i = add nsw i64 %add642.i, %conv646.i
  %440 = load i32, i32* %C.i, align 4
  %conv648.i = zext i32 %440 to i64
  %add649.i = add nsw i64 %conv648.i, %add647.i
  %conv650.i = trunc i64 %add649.i to i32
  store i32 %conv650.i, i32* %C.i, align 4
  %441 = load i32, i32* %C.i, align 4
  %shl651.i = shl i32 %441, 14
  %442 = load i32, i32* %C.i, align 4
  %shr652.i = lshr i32 %442, 18
  %or653.i = or i32 %shl651.i, %shr652.i
  store i32 %or653.i, i32* %C.i, align 4
  %443 = load i32, i32* %D.i, align 4
  %444 = load i32, i32* %C.i, align 4
  %add654.i = add i32 %444, %443
  store i32 %add654.i, i32* %C.i, align 4
  %445 = load i32, i32* %XX4.i, align 4
  %conv655.i = zext i32 %445 to i64
  %add656.i = add nsw i64 %conv655.i, 3889429448
  %446 = load i32, i32* %C.i, align 4
  %447 = load i32, i32* %D.i, align 4
  %xor657.i = xor i32 %446, %447
  %448 = load i32, i32* %A.i, align 4
  %and658.i = and i32 %xor657.i, %448
  %449 = load i32, i32* %D.i, align 4
  %xor659.i = xor i32 %and658.i, %449
  %conv660.i = zext i32 %xor659.i to i64
  %add661.i = add nsw i64 %add656.i, %conv660.i
  %450 = load i32, i32* %B.i, align 4
  %conv662.i = zext i32 %450 to i64
  %add663.i = add nsw i64 %conv662.i, %add661.i
  %conv664.i = trunc i64 %add663.i to i32
  store i32 %conv664.i, i32* %B.i, align 4
  %451 = load i32, i32* %B.i, align 4
  %shl665.i = shl i32 %451, 20
  %452 = load i32, i32* %B.i, align 4
  %shr666.i = lshr i32 %452, 12
  %or667.i = or i32 %shl665.i, %shr666.i
  store i32 %or667.i, i32* %B.i, align 4
  %453 = load i32, i32* %C.i, align 4
  %454 = load i32, i32* %B.i, align 4
  %add668.i = add i32 %454, %453
  store i32 %add668.i, i32* %B.i, align 4
  %455 = load i32, i32* %XX9.i, align 4
  %conv669.i = zext i32 %455 to i64
  %add670.i = add nsw i64 %conv669.i, 568446438
  %456 = load i32, i32* %B.i, align 4
  %457 = load i32, i32* %C.i, align 4
  %xor671.i = xor i32 %456, %457
  %458 = load i32, i32* %D.i, align 4
  %and672.i = and i32 %xor671.i, %458
  %459 = load i32, i32* %C.i, align 4
  %xor673.i = xor i32 %and672.i, %459
  %conv674.i = zext i32 %xor673.i to i64
  %add675.i = add nsw i64 %add670.i, %conv674.i
  %460 = load i32, i32* %A.i, align 4
  %conv676.i = zext i32 %460 to i64
  %add677.i = add nsw i64 %conv676.i, %add675.i
  %conv678.i = trunc i64 %add677.i to i32
  store i32 %conv678.i, i32* %A.i, align 4
  %461 = load i32, i32* %A.i, align 4
  %shl679.i = shl i32 %461, 5
  %462 = load i32, i32* %A.i, align 4
  %shr680.i = lshr i32 %462, 27
  %or681.i = or i32 %shl679.i, %shr680.i
  store i32 %or681.i, i32* %A.i, align 4
  %463 = load i32, i32* %B.i, align 4
  %464 = load i32, i32* %A.i, align 4
  %add682.i = add i32 %464, %463
  store i32 %add682.i, i32* %A.i, align 4
  %465 = load i32, i32* %XX14.i, align 4
  %conv683.i = zext i32 %465 to i64
  %add684.i = add nsw i64 %conv683.i, 3275163606
  %466 = load i32, i32* %A.i, align 4
  %467 = load i32, i32* %B.i, align 4
  %xor685.i = xor i32 %466, %467
  %468 = load i32, i32* %C.i, align 4
  %and686.i = and i32 %xor685.i, %468
  %469 = load i32, i32* %B.i, align 4
  %xor687.i = xor i32 %and686.i, %469
  %conv688.i = zext i32 %xor687.i to i64
  %add689.i = add nsw i64 %add684.i, %conv688.i
  %470 = load i32, i32* %D.i, align 4
  %conv690.i = zext i32 %470 to i64
  %add691.i = add nsw i64 %conv690.i, %add689.i
  %conv692.i = trunc i64 %add691.i to i32
  store i32 %conv692.i, i32* %D.i, align 4
  %471 = load i32, i32* %D.i, align 4
  %shl693.i = shl i32 %471, 9
  %472 = load i32, i32* %D.i, align 4
  %shr694.i = lshr i32 %472, 23
  %or695.i = or i32 %shl693.i, %shr694.i
  store i32 %or695.i, i32* %D.i, align 4
  %473 = load i32, i32* %A.i, align 4
  %474 = load i32, i32* %D.i, align 4
  %add696.i = add i32 %474, %473
  store i32 %add696.i, i32* %D.i, align 4
  %475 = load i32, i32* %XX3.i, align 4
  %conv697.i = zext i32 %475 to i64
  %add698.i = add nsw i64 %conv697.i, 4107603335
  %476 = load i32, i32* %D.i, align 4
  %477 = load i32, i32* %A.i, align 4
  %xor699.i = xor i32 %476, %477
  %478 = load i32, i32* %B.i, align 4
  %and700.i = and i32 %xor699.i, %478
  %479 = load i32, i32* %A.i, align 4
  %xor701.i = xor i32 %and700.i, %479
  %conv702.i = zext i32 %xor701.i to i64
  %add703.i = add nsw i64 %add698.i, %conv702.i
  %480 = load i32, i32* %C.i, align 4
  %conv704.i = zext i32 %480 to i64
  %add705.i = add nsw i64 %conv704.i, %add703.i
  %conv706.i = trunc i64 %add705.i to i32
  store i32 %conv706.i, i32* %C.i, align 4
  %481 = load i32, i32* %C.i, align 4
  %shl707.i = shl i32 %481, 14
  %482 = load i32, i32* %C.i, align 4
  %shr708.i = lshr i32 %482, 18
  %or709.i = or i32 %shl707.i, %shr708.i
  store i32 %or709.i, i32* %C.i, align 4
  %483 = load i32, i32* %D.i, align 4
  %484 = load i32, i32* %C.i, align 4
  %add710.i = add i32 %484, %483
  store i32 %add710.i, i32* %C.i, align 4
  %485 = load i32, i32* %XX8.i, align 4
  %conv711.i = zext i32 %485 to i64
  %add712.i = add nsw i64 %conv711.i, 1163531501
  %486 = load i32, i32* %C.i, align 4
  %487 = load i32, i32* %D.i, align 4
  %xor713.i = xor i32 %486, %487
  %488 = load i32, i32* %A.i, align 4
  %and714.i = and i32 %xor713.i, %488
  %489 = load i32, i32* %D.i, align 4
  %xor715.i = xor i32 %and714.i, %489
  %conv716.i = zext i32 %xor715.i to i64
  %add717.i = add nsw i64 %add712.i, %conv716.i
  %490 = load i32, i32* %B.i, align 4
  %conv718.i = zext i32 %490 to i64
  %add719.i = add nsw i64 %conv718.i, %add717.i
  %conv720.i = trunc i64 %add719.i to i32
  store i32 %conv720.i, i32* %B.i, align 4
  %491 = load i32, i32* %B.i, align 4
  %shl721.i = shl i32 %491, 20
  %492 = load i32, i32* %B.i, align 4
  %shr722.i = lshr i32 %492, 12
  %or723.i = or i32 %shl721.i, %shr722.i
  store i32 %or723.i, i32* %B.i, align 4
  %493 = load i32, i32* %C.i, align 4
  %494 = load i32, i32* %B.i, align 4
  %add724.i = add i32 %494, %493
  store i32 %add724.i, i32* %B.i, align 4
  %495 = load i32, i32* %XX13.i, align 4
  %conv725.i = zext i32 %495 to i64
  %add726.i = add nsw i64 %conv725.i, 2850285829
  %496 = load i32, i32* %B.i, align 4
  %497 = load i32, i32* %C.i, align 4
  %xor727.i = xor i32 %496, %497
  %498 = load i32, i32* %D.i, align 4
  %and728.i = and i32 %xor727.i, %498
  %499 = load i32, i32* %C.i, align 4
  %xor729.i = xor i32 %and728.i, %499
  %conv730.i = zext i32 %xor729.i to i64
  %add731.i = add nsw i64 %add726.i, %conv730.i
  %500 = load i32, i32* %A.i, align 4
  %conv732.i = zext i32 %500 to i64
  %add733.i = add nsw i64 %conv732.i, %add731.i
  %conv734.i = trunc i64 %add733.i to i32
  store i32 %conv734.i, i32* %A.i, align 4
  %501 = load i32, i32* %A.i, align 4
  %shl735.i = shl i32 %501, 5
  %502 = load i32, i32* %A.i, align 4
  %shr736.i = lshr i32 %502, 27
  %or737.i = or i32 %shl735.i, %shr736.i
  store i32 %or737.i, i32* %A.i, align 4
  %503 = load i32, i32* %B.i, align 4
  %504 = load i32, i32* %A.i, align 4
  %add738.i = add i32 %504, %503
  store i32 %add738.i, i32* %A.i, align 4
  %505 = load i32, i32* %XX2.i, align 4
  %conv739.i = zext i32 %505 to i64
  %add740.i = add nsw i64 %conv739.i, 4243563512
  %506 = load i32, i32* %A.i, align 4
  %507 = load i32, i32* %B.i, align 4
  %xor741.i = xor i32 %506, %507
  %508 = load i32, i32* %C.i, align 4
  %and742.i = and i32 %xor741.i, %508
  %509 = load i32, i32* %B.i, align 4
  %xor743.i = xor i32 %and742.i, %509
  %conv744.i = zext i32 %xor743.i to i64
  %add745.i = add nsw i64 %add740.i, %conv744.i
  %510 = load i32, i32* %D.i, align 4
  %conv746.i = zext i32 %510 to i64
  %add747.i = add nsw i64 %conv746.i, %add745.i
  %conv748.i = trunc i64 %add747.i to i32
  store i32 %conv748.i, i32* %D.i, align 4
  %511 = load i32, i32* %D.i, align 4
  %shl749.i = shl i32 %511, 9
  %512 = load i32, i32* %D.i, align 4
  %shr750.i = lshr i32 %512, 23
  %or751.i = or i32 %shl749.i, %shr750.i
  store i32 %or751.i, i32* %D.i, align 4
  %513 = load i32, i32* %A.i, align 4
  %514 = load i32, i32* %D.i, align 4
  %add752.i = add i32 %514, %513
  store i32 %add752.i, i32* %D.i, align 4
  %515 = load i32, i32* %XX7.i, align 4
  %conv753.i = zext i32 %515 to i64
  %add754.i = add nsw i64 %conv753.i, 1735328473
  %516 = load i32, i32* %D.i, align 4
  %517 = load i32, i32* %A.i, align 4
  %xor755.i = xor i32 %516, %517
  %518 = load i32, i32* %B.i, align 4
  %and756.i = and i32 %xor755.i, %518
  %519 = load i32, i32* %A.i, align 4
  %xor757.i = xor i32 %and756.i, %519
  %conv758.i = zext i32 %xor757.i to i64
  %add759.i = add nsw i64 %add754.i, %conv758.i
  %520 = load i32, i32* %C.i, align 4
  %conv760.i = zext i32 %520 to i64
  %add761.i = add nsw i64 %conv760.i, %add759.i
  %conv762.i = trunc i64 %add761.i to i32
  store i32 %conv762.i, i32* %C.i, align 4
  %521 = load i32, i32* %C.i, align 4
  %shl763.i = shl i32 %521, 14
  %522 = load i32, i32* %C.i, align 4
  %shr764.i = lshr i32 %522, 18
  %or765.i = or i32 %shl763.i, %shr764.i
  store i32 %or765.i, i32* %C.i, align 4
  %523 = load i32, i32* %D.i, align 4
  %524 = load i32, i32* %C.i, align 4
  %add766.i = add i32 %524, %523
  store i32 %add766.i, i32* %C.i, align 4
  %525 = load i32, i32* %XX12.i, align 4
  %conv767.i = zext i32 %525 to i64
  %add768.i = add nsw i64 %conv767.i, 2368359562
  %526 = load i32, i32* %C.i, align 4
  %527 = load i32, i32* %D.i, align 4
  %xor769.i = xor i32 %526, %527
  %528 = load i32, i32* %A.i, align 4
  %and770.i = and i32 %xor769.i, %528
  %529 = load i32, i32* %D.i, align 4
  %xor771.i = xor i32 %and770.i, %529
  %conv772.i = zext i32 %xor771.i to i64
  %add773.i = add nsw i64 %add768.i, %conv772.i
  %530 = load i32, i32* %B.i, align 4
  %conv774.i = zext i32 %530 to i64
  %add775.i = add nsw i64 %conv774.i, %add773.i
  %conv776.i = trunc i64 %add775.i to i32
  store i32 %conv776.i, i32* %B.i, align 4
  %531 = load i32, i32* %B.i, align 4
  %shl777.i = shl i32 %531, 20
  %532 = load i32, i32* %B.i, align 4
  %shr778.i = lshr i32 %532, 12
  %or779.i = or i32 %shl777.i, %shr778.i
  store i32 %or779.i, i32* %B.i, align 4
  %533 = load i32, i32* %C.i, align 4
  %534 = load i32, i32* %B.i, align 4
  %add780.i = add i32 %534, %533
  store i32 %add780.i, i32* %B.i, align 4
  %535 = load i32, i32* %XX5.i, align 4
  %conv781.i = zext i32 %535 to i64
  %add782.i = add nsw i64 %conv781.i, 4294588738
  %536 = load i32, i32* %B.i, align 4
  %537 = load i32, i32* %C.i, align 4
  %xor783.i = xor i32 %536, %537
  %538 = load i32, i32* %D.i, align 4
  %xor784.i = xor i32 %xor783.i, %538
  %conv785.i = zext i32 %xor784.i to i64
  %add786.i = add nsw i64 %add782.i, %conv785.i
  %539 = load i32, i32* %A.i, align 4
  %conv787.i = zext i32 %539 to i64
  %add788.i = add nsw i64 %conv787.i, %add786.i
  %conv789.i = trunc i64 %add788.i to i32
  store i32 %conv789.i, i32* %A.i, align 4
  %540 = load i32, i32* %A.i, align 4
  %shl790.i = shl i32 %540, 4
  %541 = load i32, i32* %A.i, align 4
  %shr791.i = lshr i32 %541, 28
  %or792.i = or i32 %shl790.i, %shr791.i
  store i32 %or792.i, i32* %A.i, align 4
  %542 = load i32, i32* %B.i, align 4
  %543 = load i32, i32* %A.i, align 4
  %add793.i = add i32 %543, %542
  store i32 %add793.i, i32* %A.i, align 4
  %544 = load i32, i32* %XX8.i, align 4
  %conv794.i = zext i32 %544 to i64
  %add795.i = add nsw i64 %conv794.i, 2272392833
  %545 = load i32, i32* %A.i, align 4
  %546 = load i32, i32* %B.i, align 4
  %xor796.i = xor i32 %545, %546
  %547 = load i32, i32* %C.i, align 4
  %xor797.i = xor i32 %xor796.i, %547
  %conv798.i = zext i32 %xor797.i to i64
  %add799.i = add nsw i64 %add795.i, %conv798.i
  %548 = load i32, i32* %D.i, align 4
  %conv800.i = zext i32 %548 to i64
  %add801.i = add nsw i64 %conv800.i, %add799.i
  %conv802.i = trunc i64 %add801.i to i32
  store i32 %conv802.i, i32* %D.i, align 4
  %549 = load i32, i32* %D.i, align 4
  %shl803.i = shl i32 %549, 11
  %550 = load i32, i32* %D.i, align 4
  %shr804.i = lshr i32 %550, 21
  %or805.i = or i32 %shl803.i, %shr804.i
  store i32 %or805.i, i32* %D.i, align 4
  %551 = load i32, i32* %A.i, align 4
  %552 = load i32, i32* %D.i, align 4
  %add806.i = add i32 %552, %551
  store i32 %add806.i, i32* %D.i, align 4
  %553 = load i32, i32* %XX11.i, align 4
  %conv807.i = zext i32 %553 to i64
  %add808.i = add nsw i64 %conv807.i, 1839030562
  %554 = load i32, i32* %D.i, align 4
  %555 = load i32, i32* %A.i, align 4
  %xor809.i = xor i32 %554, %555
  %556 = load i32, i32* %B.i, align 4
  %xor810.i = xor i32 %xor809.i, %556
  %conv811.i = zext i32 %xor810.i to i64
  %add812.i = add nsw i64 %add808.i, %conv811.i
  %557 = load i32, i32* %C.i, align 4
  %conv813.i = zext i32 %557 to i64
  %add814.i = add nsw i64 %conv813.i, %add812.i
  %conv815.i = trunc i64 %add814.i to i32
  store i32 %conv815.i, i32* %C.i, align 4
  %558 = load i32, i32* %C.i, align 4
  %shl816.i = shl i32 %558, 16
  %559 = load i32, i32* %C.i, align 4
  %shr817.i = lshr i32 %559, 16
  %or818.i = or i32 %shl816.i, %shr817.i
  store i32 %or818.i, i32* %C.i, align 4
  %560 = load i32, i32* %D.i, align 4
  %561 = load i32, i32* %C.i, align 4
  %add819.i = add i32 %561, %560
  store i32 %add819.i, i32* %C.i, align 4
  %562 = load i32, i32* %XX14.i, align 4
  %conv820.i = zext i32 %562 to i64
  %add821.i = add nsw i64 %conv820.i, 4259657740
  %563 = load i32, i32* %C.i, align 4
  %564 = load i32, i32* %D.i, align 4
  %xor822.i = xor i32 %563, %564
  %565 = load i32, i32* %A.i, align 4
  %xor823.i = xor i32 %xor822.i, %565
  %conv824.i = zext i32 %xor823.i to i64
  %add825.i = add nsw i64 %add821.i, %conv824.i
  %566 = load i32, i32* %B.i, align 4
  %conv826.i = zext i32 %566 to i64
  %add827.i = add nsw i64 %conv826.i, %add825.i
  %conv828.i = trunc i64 %add827.i to i32
  store i32 %conv828.i, i32* %B.i, align 4
  %567 = load i32, i32* %B.i, align 4
  %shl829.i = shl i32 %567, 23
  %568 = load i32, i32* %B.i, align 4
  %shr830.i = lshr i32 %568, 9
  %or831.i = or i32 %shl829.i, %shr830.i
  store i32 %or831.i, i32* %B.i, align 4
  %569 = load i32, i32* %C.i, align 4
  %570 = load i32, i32* %B.i, align 4
  %add832.i = add i32 %570, %569
  store i32 %add832.i, i32* %B.i, align 4
  %571 = load i32, i32* %XX1.i, align 4
  %conv833.i = zext i32 %571 to i64
  %add834.i = add nsw i64 %conv833.i, 2763975236
  %572 = load i32, i32* %B.i, align 4
  %573 = load i32, i32* %C.i, align 4
  %xor835.i = xor i32 %572, %573
  %574 = load i32, i32* %D.i, align 4
  %xor836.i = xor i32 %xor835.i, %574
  %conv837.i = zext i32 %xor836.i to i64
  %add838.i = add nsw i64 %add834.i, %conv837.i
  %575 = load i32, i32* %A.i, align 4
  %conv839.i = zext i32 %575 to i64
  %add840.i = add nsw i64 %conv839.i, %add838.i
  %conv841.i = trunc i64 %add840.i to i32
  store i32 %conv841.i, i32* %A.i, align 4
  %576 = load i32, i32* %A.i, align 4
  %shl842.i = shl i32 %576, 4
  %577 = load i32, i32* %A.i, align 4
  %shr843.i = lshr i32 %577, 28
  %or844.i = or i32 %shl842.i, %shr843.i
  store i32 %or844.i, i32* %A.i, align 4
  %578 = load i32, i32* %B.i, align 4
  %579 = load i32, i32* %A.i, align 4
  %add845.i = add i32 %579, %578
  store i32 %add845.i, i32* %A.i, align 4
  %580 = load i32, i32* %XX4.i, align 4
  %conv846.i = zext i32 %580 to i64
  %add847.i = add nsw i64 %conv846.i, 1272893353
  %581 = load i32, i32* %A.i, align 4
  %582 = load i32, i32* %B.i, align 4
  %xor848.i = xor i32 %581, %582
  %583 = load i32, i32* %C.i, align 4
  %xor849.i = xor i32 %xor848.i, %583
  %conv850.i = zext i32 %xor849.i to i64
  %add851.i = add nsw i64 %add847.i, %conv850.i
  %584 = load i32, i32* %D.i, align 4
  %conv852.i = zext i32 %584 to i64
  %add853.i = add nsw i64 %conv852.i, %add851.i
  %conv854.i = trunc i64 %add853.i to i32
  store i32 %conv854.i, i32* %D.i, align 4
  %585 = load i32, i32* %D.i, align 4
  %shl855.i = shl i32 %585, 11
  %586 = load i32, i32* %D.i, align 4
  %shr856.i = lshr i32 %586, 21
  %or857.i = or i32 %shl855.i, %shr856.i
  store i32 %or857.i, i32* %D.i, align 4
  %587 = load i32, i32* %A.i, align 4
  %588 = load i32, i32* %D.i, align 4
  %add858.i = add i32 %588, %587
  store i32 %add858.i, i32* %D.i, align 4
  %589 = load i32, i32* %XX7.i, align 4
  %conv859.i = zext i32 %589 to i64
  %add860.i = add nsw i64 %conv859.i, 4139469664
  %590 = load i32, i32* %D.i, align 4
  %591 = load i32, i32* %A.i, align 4
  %xor861.i = xor i32 %590, %591
  %592 = load i32, i32* %B.i, align 4
  %xor862.i = xor i32 %xor861.i, %592
  %conv863.i = zext i32 %xor862.i to i64
  %add864.i = add nsw i64 %add860.i, %conv863.i
  %593 = load i32, i32* %C.i, align 4
  %conv865.i = zext i32 %593 to i64
  %add866.i = add nsw i64 %conv865.i, %add864.i
  %conv867.i = trunc i64 %add866.i to i32
  store i32 %conv867.i, i32* %C.i, align 4
  %594 = load i32, i32* %C.i, align 4
  %shl868.i = shl i32 %594, 16
  %595 = load i32, i32* %C.i, align 4
  %shr869.i = lshr i32 %595, 16
  %or870.i = or i32 %shl868.i, %shr869.i
  store i32 %or870.i, i32* %C.i, align 4
  %596 = load i32, i32* %D.i, align 4
  %597 = load i32, i32* %C.i, align 4
  %add871.i = add i32 %597, %596
  store i32 %add871.i, i32* %C.i, align 4
  %598 = load i32, i32* %XX10.i, align 4
  %conv872.i = zext i32 %598 to i64
  %add873.i = add nsw i64 %conv872.i, 3200236656
  %599 = load i32, i32* %C.i, align 4
  %600 = load i32, i32* %D.i, align 4
  %xor874.i = xor i32 %599, %600
  %601 = load i32, i32* %A.i, align 4
  %xor875.i = xor i32 %xor874.i, %601
  %conv876.i = zext i32 %xor875.i to i64
  %add877.i = add nsw i64 %add873.i, %conv876.i
  %602 = load i32, i32* %B.i, align 4
  %conv878.i = zext i32 %602 to i64
  %add879.i = add nsw i64 %conv878.i, %add877.i
  %conv880.i = trunc i64 %add879.i to i32
  store i32 %conv880.i, i32* %B.i, align 4
  %603 = load i32, i32* %B.i, align 4
  %shl881.i = shl i32 %603, 23
  %604 = load i32, i32* %B.i, align 4
  %shr882.i = lshr i32 %604, 9
  %or883.i = or i32 %shl881.i, %shr882.i
  store i32 %or883.i, i32* %B.i, align 4
  %605 = load i32, i32* %C.i, align 4
  %606 = load i32, i32* %B.i, align 4
  %add884.i = add i32 %606, %605
  store i32 %add884.i, i32* %B.i, align 4
  %607 = load i32, i32* %XX13.i, align 4
  %conv885.i = zext i32 %607 to i64
  %add886.i = add nsw i64 %conv885.i, 681279174
  %608 = load i32, i32* %B.i, align 4
  %609 = load i32, i32* %C.i, align 4
  %xor887.i = xor i32 %608, %609
  %610 = load i32, i32* %D.i, align 4
  %xor888.i = xor i32 %xor887.i, %610
  %conv889.i = zext i32 %xor888.i to i64
  %add890.i = add nsw i64 %add886.i, %conv889.i
  %611 = load i32, i32* %A.i, align 4
  %conv891.i = zext i32 %611 to i64
  %add892.i = add nsw i64 %conv891.i, %add890.i
  %conv893.i = trunc i64 %add892.i to i32
  store i32 %conv893.i, i32* %A.i, align 4
  %612 = load i32, i32* %A.i, align 4
  %shl894.i = shl i32 %612, 4
  %613 = load i32, i32* %A.i, align 4
  %shr895.i = lshr i32 %613, 28
  %or896.i = or i32 %shl894.i, %shr895.i
  store i32 %or896.i, i32* %A.i, align 4
  %614 = load i32, i32* %B.i, align 4
  %615 = load i32, i32* %A.i, align 4
  %add897.i = add i32 %615, %614
  store i32 %add897.i, i32* %A.i, align 4
  %616 = load i32, i32* %XX0.i, align 4
  %conv898.i = zext i32 %616 to i64
  %add899.i = add nsw i64 %conv898.i, 3936430074
  %617 = load i32, i32* %A.i, align 4
  %618 = load i32, i32* %B.i, align 4
  %xor900.i = xor i32 %617, %618
  %619 = load i32, i32* %C.i, align 4
  %xor901.i = xor i32 %xor900.i, %619
  %conv902.i = zext i32 %xor901.i to i64
  %add903.i = add nsw i64 %add899.i, %conv902.i
  %620 = load i32, i32* %D.i, align 4
  %conv904.i = zext i32 %620 to i64
  %add905.i = add nsw i64 %conv904.i, %add903.i
  %conv906.i = trunc i64 %add905.i to i32
  store i32 %conv906.i, i32* %D.i, align 4
  %621 = load i32, i32* %D.i, align 4
  %shl907.i = shl i32 %621, 11
  %622 = load i32, i32* %D.i, align 4
  %shr908.i = lshr i32 %622, 21
  %or909.i = or i32 %shl907.i, %shr908.i
  store i32 %or909.i, i32* %D.i, align 4
  %623 = load i32, i32* %A.i, align 4
  %624 = load i32, i32* %D.i, align 4
  %add910.i = add i32 %624, %623
  store i32 %add910.i, i32* %D.i, align 4
  %625 = load i32, i32* %XX3.i, align 4
  %conv911.i = zext i32 %625 to i64
  %add912.i = add nsw i64 %conv911.i, 3572445317
  %626 = load i32, i32* %D.i, align 4
  %627 = load i32, i32* %A.i, align 4
  %xor913.i = xor i32 %626, %627
  %628 = load i32, i32* %B.i, align 4
  %xor914.i = xor i32 %xor913.i, %628
  %conv915.i = zext i32 %xor914.i to i64
  %add916.i = add nsw i64 %add912.i, %conv915.i
  %629 = load i32, i32* %C.i, align 4
  %conv917.i = zext i32 %629 to i64
  %add918.i = add nsw i64 %conv917.i, %add916.i
  %conv919.i = trunc i64 %add918.i to i32
  store i32 %conv919.i, i32* %C.i, align 4
  %630 = load i32, i32* %C.i, align 4
  %shl920.i = shl i32 %630, 16
  %631 = load i32, i32* %C.i, align 4
  %shr921.i = lshr i32 %631, 16
  %or922.i = or i32 %shl920.i, %shr921.i
  store i32 %or922.i, i32* %C.i, align 4
  %632 = load i32, i32* %D.i, align 4
  %633 = load i32, i32* %C.i, align 4
  %add923.i = add i32 %633, %632
  store i32 %add923.i, i32* %C.i, align 4
  %634 = load i32, i32* %XX6.i, align 4
  %conv924.i = zext i32 %634 to i64
  %add925.i = add nsw i64 %conv924.i, 76029189
  %635 = load i32, i32* %C.i, align 4
  %636 = load i32, i32* %D.i, align 4
  %xor926.i = xor i32 %635, %636
  %637 = load i32, i32* %A.i, align 4
  %xor927.i = xor i32 %xor926.i, %637
  %conv928.i = zext i32 %xor927.i to i64
  %add929.i = add nsw i64 %add925.i, %conv928.i
  %638 = load i32, i32* %B.i, align 4
  %conv930.i = zext i32 %638 to i64
  %add931.i = add nsw i64 %conv930.i, %add929.i
  %conv932.i = trunc i64 %add931.i to i32
  store i32 %conv932.i, i32* %B.i, align 4
  %639 = load i32, i32* %B.i, align 4
  %shl933.i = shl i32 %639, 23
  %640 = load i32, i32* %B.i, align 4
  %shr934.i = lshr i32 %640, 9
  %or935.i = or i32 %shl933.i, %shr934.i
  store i32 %or935.i, i32* %B.i, align 4
  %641 = load i32, i32* %C.i, align 4
  %642 = load i32, i32* %B.i, align 4
  %add936.i = add i32 %642, %641
  store i32 %add936.i, i32* %B.i, align 4
  %643 = load i32, i32* %XX9.i, align 4
  %conv937.i = zext i32 %643 to i64
  %add938.i = add nsw i64 %conv937.i, 3654602809
  %644 = load i32, i32* %B.i, align 4
  %645 = load i32, i32* %C.i, align 4
  %xor939.i = xor i32 %644, %645
  %646 = load i32, i32* %D.i, align 4
  %xor940.i = xor i32 %xor939.i, %646
  %conv941.i = zext i32 %xor940.i to i64
  %add942.i = add nsw i64 %add938.i, %conv941.i
  %647 = load i32, i32* %A.i, align 4
  %conv943.i = zext i32 %647 to i64
  %add944.i = add nsw i64 %conv943.i, %add942.i
  %conv945.i = trunc i64 %add944.i to i32
  store i32 %conv945.i, i32* %A.i, align 4
  %648 = load i32, i32* %A.i, align 4
  %shl946.i = shl i32 %648, 4
  %649 = load i32, i32* %A.i, align 4
  %shr947.i = lshr i32 %649, 28
  %or948.i = or i32 %shl946.i, %shr947.i
  store i32 %or948.i, i32* %A.i, align 4
  %650 = load i32, i32* %B.i, align 4
  %651 = load i32, i32* %A.i, align 4
  %add949.i = add i32 %651, %650
  store i32 %add949.i, i32* %A.i, align 4
  %652 = load i32, i32* %XX12.i, align 4
  %conv950.i = zext i32 %652 to i64
  %add951.i = add nsw i64 %conv950.i, 3873151461
  %653 = load i32, i32* %A.i, align 4
  %654 = load i32, i32* %B.i, align 4
  %xor952.i = xor i32 %653, %654
  %655 = load i32, i32* %C.i, align 4
  %xor953.i = xor i32 %xor952.i, %655
  %conv954.i = zext i32 %xor953.i to i64
  %add955.i = add nsw i64 %add951.i, %conv954.i
  %656 = load i32, i32* %D.i, align 4
  %conv956.i = zext i32 %656 to i64
  %add957.i = add nsw i64 %conv956.i, %add955.i
  %conv958.i = trunc i64 %add957.i to i32
  store i32 %conv958.i, i32* %D.i, align 4
  %657 = load i32, i32* %D.i, align 4
  %shl959.i = shl i32 %657, 11
  %658 = load i32, i32* %D.i, align 4
  %shr960.i = lshr i32 %658, 21
  %or961.i = or i32 %shl959.i, %shr960.i
  store i32 %or961.i, i32* %D.i, align 4
  %659 = load i32, i32* %A.i, align 4
  %660 = load i32, i32* %D.i, align 4
  %add962.i = add i32 %660, %659
  store i32 %add962.i, i32* %D.i, align 4
  %661 = load i32, i32* %XX15.i, align 4
  %conv963.i = zext i32 %661 to i64
  %add964.i = add nsw i64 %conv963.i, 530742520
  %662 = load i32, i32* %D.i, align 4
  %663 = load i32, i32* %A.i, align 4
  %xor965.i = xor i32 %662, %663
  %664 = load i32, i32* %B.i, align 4
  %xor966.i = xor i32 %xor965.i, %664
  %conv967.i = zext i32 %xor966.i to i64
  %add968.i = add nsw i64 %add964.i, %conv967.i
  %665 = load i32, i32* %C.i, align 4
  %conv969.i = zext i32 %665 to i64
  %add970.i = add nsw i64 %conv969.i, %add968.i
  %conv971.i = trunc i64 %add970.i to i32
  store i32 %conv971.i, i32* %C.i, align 4
  %666 = load i32, i32* %C.i, align 4
  %shl972.i = shl i32 %666, 16
  %667 = load i32, i32* %C.i, align 4
  %shr973.i = lshr i32 %667, 16
  %or974.i = or i32 %shl972.i, %shr973.i
  store i32 %or974.i, i32* %C.i, align 4
  %668 = load i32, i32* %D.i, align 4
  %669 = load i32, i32* %C.i, align 4
  %add975.i = add i32 %669, %668
  store i32 %add975.i, i32* %C.i, align 4
  %670 = load i32, i32* %XX2.i, align 4
  %conv976.i = zext i32 %670 to i64
  %add977.i = add nsw i64 %conv976.i, 3299628645
  %671 = load i32, i32* %C.i, align 4
  %672 = load i32, i32* %D.i, align 4
  %xor978.i = xor i32 %671, %672
  %673 = load i32, i32* %A.i, align 4
  %xor979.i = xor i32 %xor978.i, %673
  %conv980.i = zext i32 %xor979.i to i64
  %add981.i = add nsw i64 %add977.i, %conv980.i
  %674 = load i32, i32* %B.i, align 4
  %conv982.i = zext i32 %674 to i64
  %add983.i = add nsw i64 %conv982.i, %add981.i
  %conv984.i = trunc i64 %add983.i to i32
  store i32 %conv984.i, i32* %B.i, align 4
  %675 = load i32, i32* %B.i, align 4
  %shl985.i = shl i32 %675, 23
  %676 = load i32, i32* %B.i, align 4
  %shr986.i = lshr i32 %676, 9
  %or987.i = or i32 %shl985.i, %shr986.i
  store i32 %or987.i, i32* %B.i, align 4
  %677 = load i32, i32* %C.i, align 4
  %678 = load i32, i32* %B.i, align 4
  %add988.i = add i32 %678, %677
  store i32 %add988.i, i32* %B.i, align 4
  %679 = load i32, i32* %XX0.i, align 4
  %conv989.i = zext i32 %679 to i64
  %add990.i = add nsw i64 %conv989.i, 4096336452
  %680 = load i32, i32* %D.i, align 4
  %neg.i = xor i32 %680, -1
  %681 = load i32, i32* %B.i, align 4
  %or991.i = or i32 %neg.i, %681
  %682 = load i32, i32* %C.i, align 4
  %xor992.i = xor i32 %or991.i, %682
  %conv993.i = zext i32 %xor992.i to i64
  %add994.i = add nsw i64 %add990.i, %conv993.i
  %683 = load i32, i32* %A.i, align 4
  %conv995.i = zext i32 %683 to i64
  %add996.i = add nsw i64 %conv995.i, %add994.i
  %conv997.i = trunc i64 %add996.i to i32
  store i32 %conv997.i, i32* %A.i, align 4
  %684 = load i32, i32* %A.i, align 4
  %shl998.i = shl i32 %684, 6
  %685 = load i32, i32* %A.i, align 4
  %shr999.i = lshr i32 %685, 26
  %or1000.i = or i32 %shl998.i, %shr999.i
  store i32 %or1000.i, i32* %A.i, align 4
  %686 = load i32, i32* %B.i, align 4
  %687 = load i32, i32* %A.i, align 4
  %add1001.i = add i32 %687, %686
  store i32 %add1001.i, i32* %A.i, align 4
  %688 = load i32, i32* %XX7.i, align 4
  %conv1002.i = zext i32 %688 to i64
  %add1003.i = add nsw i64 %conv1002.i, 1126891415
  %689 = load i32, i32* %C.i, align 4
  %neg1004.i = xor i32 %689, -1
  %690 = load i32, i32* %A.i, align 4
  %or1005.i = or i32 %neg1004.i, %690
  %691 = load i32, i32* %B.i, align 4
  %xor1006.i = xor i32 %or1005.i, %691
  %conv1007.i = zext i32 %xor1006.i to i64
  %add1008.i = add nsw i64 %add1003.i, %conv1007.i
  %692 = load i32, i32* %D.i, align 4
  %conv1009.i = zext i32 %692 to i64
  %add1010.i = add nsw i64 %conv1009.i, %add1008.i
  %conv1011.i = trunc i64 %add1010.i to i32
  store i32 %conv1011.i, i32* %D.i, align 4
  %693 = load i32, i32* %D.i, align 4
  %shl1012.i = shl i32 %693, 10
  %694 = load i32, i32* %D.i, align 4
  %shr1013.i = lshr i32 %694, 22
  %or1014.i = or i32 %shl1012.i, %shr1013.i
  store i32 %or1014.i, i32* %D.i, align 4
  %695 = load i32, i32* %A.i, align 4
  %696 = load i32, i32* %D.i, align 4
  %add1015.i = add i32 %696, %695
  store i32 %add1015.i, i32* %D.i, align 4
  %697 = load i32, i32* %XX14.i, align 4
  %conv1016.i = zext i32 %697 to i64
  %add1017.i = add nsw i64 %conv1016.i, 2878612391
  %698 = load i32, i32* %B.i, align 4
  %neg1018.i = xor i32 %698, -1
  %699 = load i32, i32* %D.i, align 4
  %or1019.i = or i32 %neg1018.i, %699
  %700 = load i32, i32* %A.i, align 4
  %xor1020.i = xor i32 %or1019.i, %700
  %conv1021.i = zext i32 %xor1020.i to i64
  %add1022.i = add nsw i64 %add1017.i, %conv1021.i
  %701 = load i32, i32* %C.i, align 4
  %conv1023.i = zext i32 %701 to i64
  %add1024.i = add nsw i64 %conv1023.i, %add1022.i
  %conv1025.i = trunc i64 %add1024.i to i32
  store i32 %conv1025.i, i32* %C.i, align 4
  %702 = load i32, i32* %C.i, align 4
  %shl1026.i = shl i32 %702, 15
  %703 = load i32, i32* %C.i, align 4
  %shr1027.i = lshr i32 %703, 17
  %or1028.i = or i32 %shl1026.i, %shr1027.i
  store i32 %or1028.i, i32* %C.i, align 4
  %704 = load i32, i32* %D.i, align 4
  %705 = load i32, i32* %C.i, align 4
  %add1029.i = add i32 %705, %704
  store i32 %add1029.i, i32* %C.i, align 4
  %706 = load i32, i32* %XX5.i, align 4
  %conv1030.i = zext i32 %706 to i64
  %add1031.i = add nsw i64 %conv1030.i, 4237533241
  %707 = load i32, i32* %A.i, align 4
  %neg1032.i = xor i32 %707, -1
  %708 = load i32, i32* %C.i, align 4
  %or1033.i = or i32 %neg1032.i, %708
  %709 = load i32, i32* %D.i, align 4
  %xor1034.i = xor i32 %or1033.i, %709
  %conv1035.i = zext i32 %xor1034.i to i64
  %add1036.i = add nsw i64 %add1031.i, %conv1035.i
  %710 = load i32, i32* %B.i, align 4
  %conv1037.i = zext i32 %710 to i64
  %add1038.i = add nsw i64 %conv1037.i, %add1036.i
  %conv1039.i = trunc i64 %add1038.i to i32
  store i32 %conv1039.i, i32* %B.i, align 4
  %711 = load i32, i32* %B.i, align 4
  %shl1040.i = shl i32 %711, 21
  %712 = load i32, i32* %B.i, align 4
  %shr1041.i = lshr i32 %712, 11
  %or1042.i = or i32 %shl1040.i, %shr1041.i
  store i32 %or1042.i, i32* %B.i, align 4
  %713 = load i32, i32* %C.i, align 4
  %714 = load i32, i32* %B.i, align 4
  %add1043.i = add i32 %714, %713
  store i32 %add1043.i, i32* %B.i, align 4
  %715 = load i32, i32* %XX12.i, align 4
  %conv1044.i = zext i32 %715 to i64
  %add1045.i = add nsw i64 %conv1044.i, 1700485571
  %716 = load i32, i32* %D.i, align 4
  %neg1046.i = xor i32 %716, -1
  %717 = load i32, i32* %B.i, align 4
  %or1047.i = or i32 %neg1046.i, %717
  %718 = load i32, i32* %C.i, align 4
  %xor1048.i = xor i32 %or1047.i, %718
  %conv1049.i = zext i32 %xor1048.i to i64
  %add1050.i = add nsw i64 %add1045.i, %conv1049.i
  %719 = load i32, i32* %A.i, align 4
  %conv1051.i = zext i32 %719 to i64
  %add1052.i = add nsw i64 %conv1051.i, %add1050.i
  %conv1053.i = trunc i64 %add1052.i to i32
  store i32 %conv1053.i, i32* %A.i, align 4
  %720 = load i32, i32* %A.i, align 4
  %shl1054.i = shl i32 %720, 6
  %721 = load i32, i32* %A.i, align 4
  %shr1055.i = lshr i32 %721, 26
  %or1056.i = or i32 %shl1054.i, %shr1055.i
  store i32 %or1056.i, i32* %A.i, align 4
  %722 = load i32, i32* %B.i, align 4
  %723 = load i32, i32* %A.i, align 4
  %add1057.i = add i32 %723, %722
  store i32 %add1057.i, i32* %A.i, align 4
  %724 = load i32, i32* %XX3.i, align 4
  %conv1058.i = zext i32 %724 to i64
  %add1059.i = add nsw i64 %conv1058.i, 2399980690
  %725 = load i32, i32* %C.i, align 4
  %neg1060.i = xor i32 %725, -1
  %726 = load i32, i32* %A.i, align 4
  %or1061.i = or i32 %neg1060.i, %726
  %727 = load i32, i32* %B.i, align 4
  %xor1062.i = xor i32 %or1061.i, %727
  %conv1063.i = zext i32 %xor1062.i to i64
  %add1064.i = add nsw i64 %add1059.i, %conv1063.i
  %728 = load i32, i32* %D.i, align 4
  %conv1065.i = zext i32 %728 to i64
  %add1066.i = add nsw i64 %conv1065.i, %add1064.i
  %conv1067.i = trunc i64 %add1066.i to i32
  store i32 %conv1067.i, i32* %D.i, align 4
  %729 = load i32, i32* %D.i, align 4
  %shl1068.i = shl i32 %729, 10
  %730 = load i32, i32* %D.i, align 4
  %shr1069.i = lshr i32 %730, 22
  %or1070.i = or i32 %shl1068.i, %shr1069.i
  store i32 %or1070.i, i32* %D.i, align 4
  %731 = load i32, i32* %A.i, align 4
  %732 = load i32, i32* %D.i, align 4
  %add1071.i = add i32 %732, %731
  store i32 %add1071.i, i32* %D.i, align 4
  %733 = load i32, i32* %XX10.i, align 4
  %conv1072.i = zext i32 %733 to i64
  %add1073.i = add nsw i64 %conv1072.i, 4293915773
  %734 = load i32, i32* %B.i, align 4
  %neg1074.i = xor i32 %734, -1
  %735 = load i32, i32* %D.i, align 4
  %or1075.i = or i32 %neg1074.i, %735
  %736 = load i32, i32* %A.i, align 4
  %xor1076.i = xor i32 %or1075.i, %736
  %conv1077.i = zext i32 %xor1076.i to i64
  %add1078.i = add nsw i64 %add1073.i, %conv1077.i
  %737 = load i32, i32* %C.i, align 4
  %conv1079.i = zext i32 %737 to i64
  %add1080.i = add nsw i64 %conv1079.i, %add1078.i
  %conv1081.i = trunc i64 %add1080.i to i32
  store i32 %conv1081.i, i32* %C.i, align 4
  %738 = load i32, i32* %C.i, align 4
  %shl1082.i = shl i32 %738, 15
  %739 = load i32, i32* %C.i, align 4
  %shr1083.i = lshr i32 %739, 17
  %or1084.i = or i32 %shl1082.i, %shr1083.i
  store i32 %or1084.i, i32* %C.i, align 4
  %740 = load i32, i32* %D.i, align 4
  %741 = load i32, i32* %C.i, align 4
  %add1085.i = add i32 %741, %740
  store i32 %add1085.i, i32* %C.i, align 4
  %742 = load i32, i32* %XX1.i, align 4
  %conv1086.i = zext i32 %742 to i64
  %add1087.i = add nsw i64 %conv1086.i, 2240044497
  %743 = load i32, i32* %A.i, align 4
  %neg1088.i = xor i32 %743, -1
  %744 = load i32, i32* %C.i, align 4
  %or1089.i = or i32 %neg1088.i, %744
  %745 = load i32, i32* %D.i, align 4
  %xor1090.i = xor i32 %or1089.i, %745
  %conv1091.i = zext i32 %xor1090.i to i64
  %add1092.i = add nsw i64 %add1087.i, %conv1091.i
  %746 = load i32, i32* %B.i, align 4
  %conv1093.i = zext i32 %746 to i64
  %add1094.i = add nsw i64 %conv1093.i, %add1092.i
  %conv1095.i = trunc i64 %add1094.i to i32
  store i32 %conv1095.i, i32* %B.i, align 4
  %747 = load i32, i32* %B.i, align 4
  %shl1096.i = shl i32 %747, 21
  %748 = load i32, i32* %B.i, align 4
  %shr1097.i = lshr i32 %748, 11
  %or1098.i = or i32 %shl1096.i, %shr1097.i
  store i32 %or1098.i, i32* %B.i, align 4
  %749 = load i32, i32* %C.i, align 4
  %750 = load i32, i32* %B.i, align 4
  %add1099.i = add i32 %750, %749
  store i32 %add1099.i, i32* %B.i, align 4
  %751 = load i32, i32* %XX8.i, align 4
  %conv1100.i = zext i32 %751 to i64
  %add1101.i = add nsw i64 %conv1100.i, 1873313359
  %752 = load i32, i32* %D.i, align 4
  %neg1102.i = xor i32 %752, -1
  %753 = load i32, i32* %B.i, align 4
  %or1103.i = or i32 %neg1102.i, %753
  %754 = load i32, i32* %C.i, align 4
  %xor1104.i = xor i32 %or1103.i, %754
  %conv1105.i = zext i32 %xor1104.i to i64
  %add1106.i = add nsw i64 %add1101.i, %conv1105.i
  %755 = load i32, i32* %A.i, align 4
  %conv1107.i = zext i32 %755 to i64
  %add1108.i = add nsw i64 %conv1107.i, %add1106.i
  %conv1109.i = trunc i64 %add1108.i to i32
  store i32 %conv1109.i, i32* %A.i, align 4
  %756 = load i32, i32* %A.i, align 4
  %shl1110.i = shl i32 %756, 6
  %757 = load i32, i32* %A.i, align 4
  %shr1111.i = lshr i32 %757, 26
  %or1112.i = or i32 %shl1110.i, %shr1111.i
  store i32 %or1112.i, i32* %A.i, align 4
  %758 = load i32, i32* %B.i, align 4
  %759 = load i32, i32* %A.i, align 4
  %add1113.i = add i32 %759, %758
  store i32 %add1113.i, i32* %A.i, align 4
  %760 = load i32, i32* %XX15.i, align 4
  %conv1114.i = zext i32 %760 to i64
  %add1115.i = add nsw i64 %conv1114.i, 4264355552
  %761 = load i32, i32* %C.i, align 4
  %neg1116.i = xor i32 %761, -1
  %762 = load i32, i32* %A.i, align 4
  %or1117.i = or i32 %neg1116.i, %762
  %763 = load i32, i32* %B.i, align 4
  %xor1118.i = xor i32 %or1117.i, %763
  %conv1119.i = zext i32 %xor1118.i to i64
  %add1120.i = add nsw i64 %add1115.i, %conv1119.i
  %764 = load i32, i32* %D.i, align 4
  %conv1121.i = zext i32 %764 to i64
  %add1122.i = add nsw i64 %conv1121.i, %add1120.i
  %conv1123.i = trunc i64 %add1122.i to i32
  store i32 %conv1123.i, i32* %D.i, align 4
  %765 = load i32, i32* %D.i, align 4
  %shl1124.i = shl i32 %765, 10
  %766 = load i32, i32* %D.i, align 4
  %shr1125.i = lshr i32 %766, 22
  %or1126.i = or i32 %shl1124.i, %shr1125.i
  store i32 %or1126.i, i32* %D.i, align 4
  %767 = load i32, i32* %A.i, align 4
  %768 = load i32, i32* %D.i, align 4
  %add1127.i = add i32 %768, %767
  store i32 %add1127.i, i32* %D.i, align 4
  %769 = load i32, i32* %XX6.i, align 4
  %conv1128.i = zext i32 %769 to i64
  %add1129.i = add nsw i64 %conv1128.i, 2734768916
  %770 = load i32, i32* %B.i, align 4
  %neg1130.i = xor i32 %770, -1
  %771 = load i32, i32* %D.i, align 4
  %or1131.i = or i32 %neg1130.i, %771
  %772 = load i32, i32* %A.i, align 4
  %xor1132.i = xor i32 %or1131.i, %772
  %conv1133.i = zext i32 %xor1132.i to i64
  %add1134.i = add nsw i64 %add1129.i, %conv1133.i
  %773 = load i32, i32* %C.i, align 4
  %conv1135.i = zext i32 %773 to i64
  %add1136.i = add nsw i64 %conv1135.i, %add1134.i
  %conv1137.i = trunc i64 %add1136.i to i32
  store i32 %conv1137.i, i32* %C.i, align 4
  %774 = load i32, i32* %C.i, align 4
  %shl1138.i = shl i32 %774, 15
  %775 = load i32, i32* %C.i, align 4
  %shr1139.i = lshr i32 %775, 17
  %or1140.i = or i32 %shl1138.i, %shr1139.i
  store i32 %or1140.i, i32* %C.i, align 4
  %776 = load i32, i32* %D.i, align 4
  %777 = load i32, i32* %C.i, align 4
  %add1141.i = add i32 %777, %776
  store i32 %add1141.i, i32* %C.i, align 4
  %778 = load i32, i32* %XX13.i, align 4
  %conv1142.i = zext i32 %778 to i64
  %add1143.i = add nsw i64 %conv1142.i, 1309151649
  %779 = load i32, i32* %A.i, align 4
  %neg1144.i = xor i32 %779, -1
  %780 = load i32, i32* %C.i, align 4
  %or1145.i = or i32 %neg1144.i, %780
  %781 = load i32, i32* %D.i, align 4
  %xor1146.i = xor i32 %or1145.i, %781
  %conv1147.i = zext i32 %xor1146.i to i64
  %add1148.i = add nsw i64 %add1143.i, %conv1147.i
  %782 = load i32, i32* %B.i, align 4
  %conv1149.i = zext i32 %782 to i64
  %add1150.i = add nsw i64 %conv1149.i, %add1148.i
  %conv1151.i = trunc i64 %add1150.i to i32
  store i32 %conv1151.i, i32* %B.i, align 4
  %783 = load i32, i32* %B.i, align 4
  %shl1152.i = shl i32 %783, 21
  %784 = load i32, i32* %B.i, align 4
  %shr1153.i = lshr i32 %784, 11
  %or1154.i = or i32 %shl1152.i, %shr1153.i
  store i32 %or1154.i, i32* %B.i, align 4
  %785 = load i32, i32* %C.i, align 4
  %786 = load i32, i32* %B.i, align 4
  %add1155.i = add i32 %786, %785
  store i32 %add1155.i, i32* %B.i, align 4
  %787 = load i32, i32* %XX4.i, align 4
  %conv1156.i = zext i32 %787 to i64
  %add1157.i = add nsw i64 %conv1156.i, 4149444226
  %788 = load i32, i32* %D.i, align 4
  %neg1158.i = xor i32 %788, -1
  %789 = load i32, i32* %B.i, align 4
  %or1159.i = or i32 %neg1158.i, %789
  %790 = load i32, i32* %C.i, align 4
  %xor1160.i = xor i32 %or1159.i, %790
  %conv1161.i = zext i32 %xor1160.i to i64
  %add1162.i = add nsw i64 %add1157.i, %conv1161.i
  %791 = load i32, i32* %A.i, align 4
  %conv1163.i = zext i32 %791 to i64
  %add1164.i = add nsw i64 %conv1163.i, %add1162.i
  %conv1165.i = trunc i64 %add1164.i to i32
  store i32 %conv1165.i, i32* %A.i, align 4
  %792 = load i32, i32* %A.i, align 4
  %shl1166.i = shl i32 %792, 6
  %793 = load i32, i32* %A.i, align 4
  %shr1167.i = lshr i32 %793, 26
  %or1168.i = or i32 %shl1166.i, %shr1167.i
  store i32 %or1168.i, i32* %A.i, align 4
  %794 = load i32, i32* %B.i, align 4
  %795 = load i32, i32* %A.i, align 4
  %add1169.i = add i32 %795, %794
  store i32 %add1169.i, i32* %A.i, align 4
  %796 = load i32, i32* %XX11.i, align 4
  %conv1170.i = zext i32 %796 to i64
  %add1171.i = add nsw i64 %conv1170.i, 3174756917
  %797 = load i32, i32* %C.i, align 4
  %neg1172.i = xor i32 %797, -1
  %798 = load i32, i32* %A.i, align 4
  %or1173.i = or i32 %neg1172.i, %798
  %799 = load i32, i32* %B.i, align 4
  %xor1174.i = xor i32 %or1173.i, %799
  %conv1175.i = zext i32 %xor1174.i to i64
  %add1176.i = add nsw i64 %add1171.i, %conv1175.i
  %800 = load i32, i32* %D.i, align 4
  %conv1177.i = zext i32 %800 to i64
  %add1178.i = add nsw i64 %conv1177.i, %add1176.i
  %conv1179.i = trunc i64 %add1178.i to i32
  store i32 %conv1179.i, i32* %D.i, align 4
  %801 = load i32, i32* %D.i, align 4
  %shl1180.i = shl i32 %801, 10
  %802 = load i32, i32* %D.i, align 4
  %shr1181.i = lshr i32 %802, 22
  %or1182.i = or i32 %shl1180.i, %shr1181.i
  store i32 %or1182.i, i32* %D.i, align 4
  %803 = load i32, i32* %A.i, align 4
  %804 = load i32, i32* %D.i, align 4
  %add1183.i = add i32 %804, %803
  store i32 %add1183.i, i32* %D.i, align 4
  %805 = load i32, i32* %XX2.i, align 4
  %conv1184.i = zext i32 %805 to i64
  %add1185.i = add nsw i64 %conv1184.i, 718787259
  %806 = load i32, i32* %B.i, align 4
  %neg1186.i = xor i32 %806, -1
  %807 = load i32, i32* %D.i, align 4
  %or1187.i = or i32 %neg1186.i, %807
  %808 = load i32, i32* %A.i, align 4
  %xor1188.i = xor i32 %or1187.i, %808
  %conv1189.i = zext i32 %xor1188.i to i64
  %add1190.i = add nsw i64 %add1185.i, %conv1189.i
  %809 = load i32, i32* %C.i, align 4
  %conv1191.i = zext i32 %809 to i64
  %add1192.i = add nsw i64 %conv1191.i, %add1190.i
  %conv1193.i = trunc i64 %add1192.i to i32
  store i32 %conv1193.i, i32* %C.i, align 4
  %810 = load i32, i32* %C.i, align 4
  %shl1194.i = shl i32 %810, 15
  %811 = load i32, i32* %C.i, align 4
  %shr1195.i = lshr i32 %811, 17
  %or1196.i = or i32 %shl1194.i, %shr1195.i
  store i32 %or1196.i, i32* %C.i, align 4
  %812 = load i32, i32* %D.i, align 4
  %813 = load i32, i32* %C.i, align 4
  %add1197.i = add i32 %813, %812
  store i32 %add1197.i, i32* %C.i, align 4
  %814 = load i32, i32* %XX9.i, align 4
  %conv1198.i = zext i32 %814 to i64
  %add1199.i = add nsw i64 %conv1198.i, 3951481745
  %815 = load i32, i32* %A.i, align 4
  %neg1200.i = xor i32 %815, -1
  %816 = load i32, i32* %C.i, align 4
  %or1201.i = or i32 %neg1200.i, %816
  %817 = load i32, i32* %D.i, align 4
  %xor1202.i = xor i32 %or1201.i, %817
  %conv1203.i = zext i32 %xor1202.i to i64
  %add1204.i = add nsw i64 %add1199.i, %conv1203.i
  %818 = load i32, i32* %B.i, align 4
  %conv1205.i = zext i32 %818 to i64
  %add1206.i = add nsw i64 %conv1205.i, %add1204.i
  %conv1207.i = trunc i64 %add1206.i to i32
  store i32 %conv1207.i, i32* %B.i, align 4
  %819 = load i32, i32* %B.i, align 4
  %shl1208.i = shl i32 %819, 21
  %820 = load i32, i32* %B.i, align 4
  %shr1209.i = lshr i32 %820, 11
  %or1210.i = or i32 %shl1208.i, %shr1209.i
  store i32 %or1210.i, i32* %B.i, align 4
  %821 = load i32, i32* %C.i, align 4
  %822 = load i32, i32* %B.i, align 4
  %add1211.i = add i32 %822, %821
  store i32 %add1211.i, i32* %B.i, align 4
  %823 = load i32, i32* %A.i, align 4
  %824 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %A1212.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %824, i32 0, i32 0
  %825 = load i32, i32* %A1212.i, align 4
  %add1213.i = add i32 %825, %823
  store i32 %add1213.i, i32* %A1212.i, align 4
  store i32 %add1213.i, i32* %A.i, align 4
  %826 = load i32, i32* %B.i, align 4
  %827 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %B1214.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %827, i32 0, i32 1
  %828 = load i32, i32* %B1214.i, align 4
  %add1215.i = add i32 %828, %826
  store i32 %add1215.i, i32* %B1214.i, align 4
  store i32 %add1215.i, i32* %B.i, align 4
  %829 = load i32, i32* %C.i, align 4
  %830 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %C1216.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %830, i32 0, i32 2
  %831 = load i32, i32* %C1216.i, align 4
  %add1217.i = add i32 %831, %829
  store i32 %add1217.i, i32* %C1216.i, align 4
  store i32 %add1217.i, i32* %C.i, align 4
  %832 = load i32, i32* %D.i, align 4
  %833 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i, align 8
  %D1218.i = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %833, i32 0, i32 3
  %834 = load i32, i32* %D1218.i, align 4
  %add1219.i = add i32 %834, %832
  store i32 %add1219.i, i32* %D1218.i, align 4
  store i32 %add1219.i, i32* %D.i, align 4
  br label %for.cond.i

md5_block_data_order.exit:                        ; preds = %for.cond.i
  br label %if.end

if.end:                                           ; preds = %md5_block_data_order.exit, %entry
  %835 = load i8*, i8** %p, align 8
  %836 = load i64, i64* %n, align 8
  %add.ptr2 = getelementptr inbounds i8, i8* %835, i64 %836
  %837 = load i64, i64* %n, align 8
  %sub3 = sub i64 56, %837
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr2, i8 0, i64 %sub3, i1 false)
  %838 = load i8*, i8** %p, align 8
  %add.ptr4 = getelementptr inbounds i8, i8* %838, i64 56
  store i8* %add.ptr4, i8** %p, align 8
  %839 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %839, i32 0, i32 4
  %840 = load i32, i32* %Nl, align 4
  %and = and i32 %840, 255
  %conv5 = trunc i32 %and to i8
  %841 = load i8*, i8** %p, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %841, i32 1
  store i8* %incdec.ptr, i8** %p, align 8
  store i8 %conv5, i8* %841, align 1
  %842 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl6 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %842, i32 0, i32 4
  %843 = load i32, i32* %Nl6, align 4
  %shr = lshr i32 %843, 8
  %and7 = and i32 %shr, 255
  %conv8 = trunc i32 %and7 to i8
  %844 = load i8*, i8** %p, align 8
  %incdec.ptr9 = getelementptr inbounds i8, i8* %844, i32 1
  store i8* %incdec.ptr9, i8** %p, align 8
  store i8 %conv8, i8* %844, align 1
  %845 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl10 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %845, i32 0, i32 4
  %846 = load i32, i32* %Nl10, align 4
  %shr11 = lshr i32 %846, 16
  %and12 = and i32 %shr11, 255
  %conv13 = trunc i32 %and12 to i8
  %847 = load i8*, i8** %p, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %847, i32 1
  store i8* %incdec.ptr14, i8** %p, align 8
  store i8 %conv13, i8* %847, align 1
  %848 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl15 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %848, i32 0, i32 4
  %849 = load i32, i32* %Nl15, align 4
  %shr16 = lshr i32 %849, 24
  %and17 = and i32 %shr16, 255
  %conv18 = trunc i32 %and17 to i8
  %850 = load i8*, i8** %p, align 8
  %incdec.ptr19 = getelementptr inbounds i8, i8* %850, i32 1
  store i8* %incdec.ptr19, i8** %p, align 8
  store i8 %conv18, i8* %850, align 1
  %851 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nl20 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %851, i32 0, i32 4
  %852 = load i32, i32* %Nl20, align 4
  %853 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %853, i32 0, i32 5
  %854 = load i32, i32* %Nh, align 4
  %and21 = and i32 %854, 255
  %conv22 = trunc i32 %and21 to i8
  %855 = load i8*, i8** %p, align 8
  %incdec.ptr23 = getelementptr inbounds i8, i8* %855, i32 1
  store i8* %incdec.ptr23, i8** %p, align 8
  store i8 %conv22, i8* %855, align 1
  %856 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh24 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %856, i32 0, i32 5
  %857 = load i32, i32* %Nh24, align 4
  %shr25 = lshr i32 %857, 8
  %and26 = and i32 %shr25, 255
  %conv27 = trunc i32 %and26 to i8
  %858 = load i8*, i8** %p, align 8
  %incdec.ptr28 = getelementptr inbounds i8, i8* %858, i32 1
  store i8* %incdec.ptr28, i8** %p, align 8
  store i8 %conv27, i8* %858, align 1
  %859 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh29 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %859, i32 0, i32 5
  %860 = load i32, i32* %Nh29, align 4
  %shr30 = lshr i32 %860, 16
  %and31 = and i32 %shr30, 255
  %conv32 = trunc i32 %and31 to i8
  %861 = load i8*, i8** %p, align 8
  %incdec.ptr33 = getelementptr inbounds i8, i8* %861, i32 1
  store i8* %incdec.ptr33, i8** %p, align 8
  store i8 %conv32, i8* %861, align 1
  %862 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh34 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %862, i32 0, i32 5
  %863 = load i32, i32* %Nh34, align 4
  %shr35 = lshr i32 %863, 24
  %and36 = and i32 %shr35, 255
  %conv37 = trunc i32 %and36 to i8
  %864 = load i8*, i8** %p, align 8
  %incdec.ptr38 = getelementptr inbounds i8, i8* %864, i32 1
  store i8* %incdec.ptr38, i8** %p, align 8
  store i8 %conv37, i8* %864, align 1
  %865 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %Nh39 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %865, i32 0, i32 5
  %866 = load i32, i32* %Nh39, align 4
  %867 = load i8*, i8** %p, align 8
  %add.ptr40 = getelementptr inbounds i8, i8* %867, i64 -64
  store i8* %add.ptr40, i8** %p, align 8
  %868 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %869 = load i8*, i8** %p, align 8
  store %struct.MD5state_st* %868, %struct.MD5state_st** %c.addr.i106, align 8
  store i8* %869, i8** %data_.addr.i107, align 8
  store i64 1, i64* %num.addr.i108, align 8
  %870 = load i8*, i8** %data_.addr.i107, align 8
  store i8* %870, i8** %data.i109, align 8
  %871 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %A1.i131 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %871, i32 0, i32 0
  %872 = load i32, i32* %A1.i131, align 4
  store i32 %872, i32* %A.i110, align 4
  %873 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %B2.i132 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %873, i32 0, i32 1
  %874 = load i32, i32* %B2.i132, align 4
  store i32 %874, i32* %B.i111, align 4
  %875 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %C3.i133 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %875, i32 0, i32 2
  %876 = load i32, i32* %C3.i133, align 4
  store i32 %876, i32* %C.i112, align 4
  %877 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %D4.i134 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %877, i32 0, i32 3
  %878 = load i32, i32* %D4.i134, align 4
  store i32 %878, i32* %D.i113, align 4
  br label %for.cond.i137

for.cond.i137:                                    ; preds = %for.body.i1362, %if.end
  %879 = load i64, i64* %num.addr.i108, align 8
  %dec.i135 = add i64 %879, -1
  store i64 %dec.i135, i64* %num.addr.i108, align 8
  %tobool.i136 = icmp ne i64 %879, 0
  br i1 %tobool.i136, label %for.body.i1362, label %md5_block_data_order.exit1363

for.body.i1362:                                   ; preds = %for.cond.i137
  %880 = load i8*, i8** %data.i109, align 8
  %incdec.ptr.i138 = getelementptr inbounds i8, i8* %880, i32 1
  store i8* %incdec.ptr.i138, i8** %data.i109, align 8
  %881 = load i8, i8* %880, align 1
  %conv.i139 = zext i8 %881 to i64
  %conv5.i140 = trunc i64 %conv.i139 to i32
  store i32 %conv5.i140, i32* %l.i114, align 4
  %882 = load i8*, i8** %data.i109, align 8
  %incdec.ptr6.i141 = getelementptr inbounds i8, i8* %882, i32 1
  store i8* %incdec.ptr6.i141, i8** %data.i109, align 8
  %883 = load i8, i8* %882, align 1
  %conv7.i142 = zext i8 %883 to i64
  %shl.i143 = shl i64 %conv7.i142, 8
  %884 = load i32, i32* %l.i114, align 4
  %conv8.i144 = zext i32 %884 to i64
  %or.i145 = or i64 %conv8.i144, %shl.i143
  %conv9.i146 = trunc i64 %or.i145 to i32
  store i32 %conv9.i146, i32* %l.i114, align 4
  %885 = load i8*, i8** %data.i109, align 8
  %incdec.ptr10.i147 = getelementptr inbounds i8, i8* %885, i32 1
  store i8* %incdec.ptr10.i147, i8** %data.i109, align 8
  %886 = load i8, i8* %885, align 1
  %conv11.i148 = zext i8 %886 to i64
  %shl12.i149 = shl i64 %conv11.i148, 16
  %887 = load i32, i32* %l.i114, align 4
  %conv13.i150 = zext i32 %887 to i64
  %or14.i151 = or i64 %conv13.i150, %shl12.i149
  %conv15.i152 = trunc i64 %or14.i151 to i32
  store i32 %conv15.i152, i32* %l.i114, align 4
  %888 = load i8*, i8** %data.i109, align 8
  %incdec.ptr16.i153 = getelementptr inbounds i8, i8* %888, i32 1
  store i8* %incdec.ptr16.i153, i8** %data.i109, align 8
  %889 = load i8, i8* %888, align 1
  %conv17.i154 = zext i8 %889 to i64
  %shl18.i155 = shl i64 %conv17.i154, 24
  %890 = load i32, i32* %l.i114, align 4
  %conv19.i156 = zext i32 %890 to i64
  %or20.i157 = or i64 %conv19.i156, %shl18.i155
  %conv21.i158 = trunc i64 %or20.i157 to i32
  store i32 %conv21.i158, i32* %l.i114, align 4
  %891 = load i32, i32* %l.i114, align 4
  store i32 %891, i32* %XX0.i115, align 4
  %892 = load i8*, i8** %data.i109, align 8
  %incdec.ptr22.i159 = getelementptr inbounds i8, i8* %892, i32 1
  store i8* %incdec.ptr22.i159, i8** %data.i109, align 8
  %893 = load i8, i8* %892, align 1
  %conv23.i160 = zext i8 %893 to i64
  %conv24.i161 = trunc i64 %conv23.i160 to i32
  store i32 %conv24.i161, i32* %l.i114, align 4
  %894 = load i8*, i8** %data.i109, align 8
  %incdec.ptr25.i162 = getelementptr inbounds i8, i8* %894, i32 1
  store i8* %incdec.ptr25.i162, i8** %data.i109, align 8
  %895 = load i8, i8* %894, align 1
  %conv26.i163 = zext i8 %895 to i64
  %shl27.i164 = shl i64 %conv26.i163, 8
  %896 = load i32, i32* %l.i114, align 4
  %conv28.i165 = zext i32 %896 to i64
  %or29.i166 = or i64 %conv28.i165, %shl27.i164
  %conv30.i167 = trunc i64 %or29.i166 to i32
  store i32 %conv30.i167, i32* %l.i114, align 4
  %897 = load i8*, i8** %data.i109, align 8
  %incdec.ptr31.i168 = getelementptr inbounds i8, i8* %897, i32 1
  store i8* %incdec.ptr31.i168, i8** %data.i109, align 8
  %898 = load i8, i8* %897, align 1
  %conv32.i169 = zext i8 %898 to i64
  %shl33.i170 = shl i64 %conv32.i169, 16
  %899 = load i32, i32* %l.i114, align 4
  %conv34.i171 = zext i32 %899 to i64
  %or35.i172 = or i64 %conv34.i171, %shl33.i170
  %conv36.i173 = trunc i64 %or35.i172 to i32
  store i32 %conv36.i173, i32* %l.i114, align 4
  %900 = load i8*, i8** %data.i109, align 8
  %incdec.ptr37.i174 = getelementptr inbounds i8, i8* %900, i32 1
  store i8* %incdec.ptr37.i174, i8** %data.i109, align 8
  %901 = load i8, i8* %900, align 1
  %conv38.i175 = zext i8 %901 to i64
  %shl39.i176 = shl i64 %conv38.i175, 24
  %902 = load i32, i32* %l.i114, align 4
  %conv40.i177 = zext i32 %902 to i64
  %or41.i178 = or i64 %conv40.i177, %shl39.i176
  %conv42.i179 = trunc i64 %or41.i178 to i32
  store i32 %conv42.i179, i32* %l.i114, align 4
  %903 = load i32, i32* %l.i114, align 4
  store i32 %903, i32* %XX1.i116, align 4
  %904 = load i32, i32* %XX0.i115, align 4
  %conv43.i180 = zext i32 %904 to i64
  %add.i181 = add nsw i64 %conv43.i180, 3614090360
  %905 = load i32, i32* %C.i112, align 4
  %906 = load i32, i32* %D.i113, align 4
  %xor.i182 = xor i32 %905, %906
  %907 = load i32, i32* %B.i111, align 4
  %and.i183 = and i32 %xor.i182, %907
  %908 = load i32, i32* %D.i113, align 4
  %xor44.i184 = xor i32 %and.i183, %908
  %conv45.i185 = zext i32 %xor44.i184 to i64
  %add46.i186 = add nsw i64 %add.i181, %conv45.i185
  %909 = load i32, i32* %A.i110, align 4
  %conv47.i187 = zext i32 %909 to i64
  %add48.i188 = add nsw i64 %conv47.i187, %add46.i186
  %conv49.i189 = trunc i64 %add48.i188 to i32
  store i32 %conv49.i189, i32* %A.i110, align 4
  %910 = load i32, i32* %A.i110, align 4
  %shl50.i190 = shl i32 %910, 7
  %911 = load i32, i32* %A.i110, align 4
  %shr.i191 = lshr i32 %911, 25
  %or51.i192 = or i32 %shl50.i190, %shr.i191
  store i32 %or51.i192, i32* %A.i110, align 4
  %912 = load i32, i32* %B.i111, align 4
  %913 = load i32, i32* %A.i110, align 4
  %add52.i193 = add i32 %913, %912
  store i32 %add52.i193, i32* %A.i110, align 4
  %914 = load i8*, i8** %data.i109, align 8
  %incdec.ptr53.i194 = getelementptr inbounds i8, i8* %914, i32 1
  store i8* %incdec.ptr53.i194, i8** %data.i109, align 8
  %915 = load i8, i8* %914, align 1
  %conv54.i195 = zext i8 %915 to i64
  %conv55.i196 = trunc i64 %conv54.i195 to i32
  store i32 %conv55.i196, i32* %l.i114, align 4
  %916 = load i8*, i8** %data.i109, align 8
  %incdec.ptr56.i197 = getelementptr inbounds i8, i8* %916, i32 1
  store i8* %incdec.ptr56.i197, i8** %data.i109, align 8
  %917 = load i8, i8* %916, align 1
  %conv57.i198 = zext i8 %917 to i64
  %shl58.i199 = shl i64 %conv57.i198, 8
  %918 = load i32, i32* %l.i114, align 4
  %conv59.i200 = zext i32 %918 to i64
  %or60.i201 = or i64 %conv59.i200, %shl58.i199
  %conv61.i202 = trunc i64 %or60.i201 to i32
  store i32 %conv61.i202, i32* %l.i114, align 4
  %919 = load i8*, i8** %data.i109, align 8
  %incdec.ptr62.i203 = getelementptr inbounds i8, i8* %919, i32 1
  store i8* %incdec.ptr62.i203, i8** %data.i109, align 8
  %920 = load i8, i8* %919, align 1
  %conv63.i204 = zext i8 %920 to i64
  %shl64.i205 = shl i64 %conv63.i204, 16
  %921 = load i32, i32* %l.i114, align 4
  %conv65.i206 = zext i32 %921 to i64
  %or66.i207 = or i64 %conv65.i206, %shl64.i205
  %conv67.i208 = trunc i64 %or66.i207 to i32
  store i32 %conv67.i208, i32* %l.i114, align 4
  %922 = load i8*, i8** %data.i109, align 8
  %incdec.ptr68.i209 = getelementptr inbounds i8, i8* %922, i32 1
  store i8* %incdec.ptr68.i209, i8** %data.i109, align 8
  %923 = load i8, i8* %922, align 1
  %conv69.i210 = zext i8 %923 to i64
  %shl70.i211 = shl i64 %conv69.i210, 24
  %924 = load i32, i32* %l.i114, align 4
  %conv71.i212 = zext i32 %924 to i64
  %or72.i213 = or i64 %conv71.i212, %shl70.i211
  %conv73.i214 = trunc i64 %or72.i213 to i32
  store i32 %conv73.i214, i32* %l.i114, align 4
  %925 = load i32, i32* %l.i114, align 4
  store i32 %925, i32* %XX2.i117, align 4
  %926 = load i32, i32* %XX1.i116, align 4
  %conv74.i215 = zext i32 %926 to i64
  %add75.i216 = add nsw i64 %conv74.i215, 3905402710
  %927 = load i32, i32* %B.i111, align 4
  %928 = load i32, i32* %C.i112, align 4
  %xor76.i217 = xor i32 %927, %928
  %929 = load i32, i32* %A.i110, align 4
  %and77.i218 = and i32 %xor76.i217, %929
  %930 = load i32, i32* %C.i112, align 4
  %xor78.i219 = xor i32 %and77.i218, %930
  %conv79.i220 = zext i32 %xor78.i219 to i64
  %add80.i221 = add nsw i64 %add75.i216, %conv79.i220
  %931 = load i32, i32* %D.i113, align 4
  %conv81.i222 = zext i32 %931 to i64
  %add82.i223 = add nsw i64 %conv81.i222, %add80.i221
  %conv83.i224 = trunc i64 %add82.i223 to i32
  store i32 %conv83.i224, i32* %D.i113, align 4
  %932 = load i32, i32* %D.i113, align 4
  %shl84.i225 = shl i32 %932, 12
  %933 = load i32, i32* %D.i113, align 4
  %shr85.i226 = lshr i32 %933, 20
  %or86.i227 = or i32 %shl84.i225, %shr85.i226
  store i32 %or86.i227, i32* %D.i113, align 4
  %934 = load i32, i32* %A.i110, align 4
  %935 = load i32, i32* %D.i113, align 4
  %add87.i228 = add i32 %935, %934
  store i32 %add87.i228, i32* %D.i113, align 4
  %936 = load i8*, i8** %data.i109, align 8
  %incdec.ptr88.i229 = getelementptr inbounds i8, i8* %936, i32 1
  store i8* %incdec.ptr88.i229, i8** %data.i109, align 8
  %937 = load i8, i8* %936, align 1
  %conv89.i230 = zext i8 %937 to i64
  %conv90.i231 = trunc i64 %conv89.i230 to i32
  store i32 %conv90.i231, i32* %l.i114, align 4
  %938 = load i8*, i8** %data.i109, align 8
  %incdec.ptr91.i232 = getelementptr inbounds i8, i8* %938, i32 1
  store i8* %incdec.ptr91.i232, i8** %data.i109, align 8
  %939 = load i8, i8* %938, align 1
  %conv92.i233 = zext i8 %939 to i64
  %shl93.i234 = shl i64 %conv92.i233, 8
  %940 = load i32, i32* %l.i114, align 4
  %conv94.i235 = zext i32 %940 to i64
  %or95.i236 = or i64 %conv94.i235, %shl93.i234
  %conv96.i237 = trunc i64 %or95.i236 to i32
  store i32 %conv96.i237, i32* %l.i114, align 4
  %941 = load i8*, i8** %data.i109, align 8
  %incdec.ptr97.i238 = getelementptr inbounds i8, i8* %941, i32 1
  store i8* %incdec.ptr97.i238, i8** %data.i109, align 8
  %942 = load i8, i8* %941, align 1
  %conv98.i239 = zext i8 %942 to i64
  %shl99.i240 = shl i64 %conv98.i239, 16
  %943 = load i32, i32* %l.i114, align 4
  %conv100.i241 = zext i32 %943 to i64
  %or101.i242 = or i64 %conv100.i241, %shl99.i240
  %conv102.i243 = trunc i64 %or101.i242 to i32
  store i32 %conv102.i243, i32* %l.i114, align 4
  %944 = load i8*, i8** %data.i109, align 8
  %incdec.ptr103.i244 = getelementptr inbounds i8, i8* %944, i32 1
  store i8* %incdec.ptr103.i244, i8** %data.i109, align 8
  %945 = load i8, i8* %944, align 1
  %conv104.i245 = zext i8 %945 to i64
  %shl105.i246 = shl i64 %conv104.i245, 24
  %946 = load i32, i32* %l.i114, align 4
  %conv106.i247 = zext i32 %946 to i64
  %or107.i248 = or i64 %conv106.i247, %shl105.i246
  %conv108.i249 = trunc i64 %or107.i248 to i32
  store i32 %conv108.i249, i32* %l.i114, align 4
  %947 = load i32, i32* %l.i114, align 4
  store i32 %947, i32* %XX3.i118, align 4
  %948 = load i32, i32* %XX2.i117, align 4
  %conv109.i250 = zext i32 %948 to i64
  %add110.i251 = add nsw i64 %conv109.i250, 606105819
  %949 = load i32, i32* %A.i110, align 4
  %950 = load i32, i32* %B.i111, align 4
  %xor111.i252 = xor i32 %949, %950
  %951 = load i32, i32* %D.i113, align 4
  %and112.i253 = and i32 %xor111.i252, %951
  %952 = load i32, i32* %B.i111, align 4
  %xor113.i254 = xor i32 %and112.i253, %952
  %conv114.i255 = zext i32 %xor113.i254 to i64
  %add115.i256 = add nsw i64 %add110.i251, %conv114.i255
  %953 = load i32, i32* %C.i112, align 4
  %conv116.i257 = zext i32 %953 to i64
  %add117.i258 = add nsw i64 %conv116.i257, %add115.i256
  %conv118.i259 = trunc i64 %add117.i258 to i32
  store i32 %conv118.i259, i32* %C.i112, align 4
  %954 = load i32, i32* %C.i112, align 4
  %shl119.i260 = shl i32 %954, 17
  %955 = load i32, i32* %C.i112, align 4
  %shr120.i261 = lshr i32 %955, 15
  %or121.i262 = or i32 %shl119.i260, %shr120.i261
  store i32 %or121.i262, i32* %C.i112, align 4
  %956 = load i32, i32* %D.i113, align 4
  %957 = load i32, i32* %C.i112, align 4
  %add122.i263 = add i32 %957, %956
  store i32 %add122.i263, i32* %C.i112, align 4
  %958 = load i8*, i8** %data.i109, align 8
  %incdec.ptr123.i264 = getelementptr inbounds i8, i8* %958, i32 1
  store i8* %incdec.ptr123.i264, i8** %data.i109, align 8
  %959 = load i8, i8* %958, align 1
  %conv124.i265 = zext i8 %959 to i64
  %conv125.i266 = trunc i64 %conv124.i265 to i32
  store i32 %conv125.i266, i32* %l.i114, align 4
  %960 = load i8*, i8** %data.i109, align 8
  %incdec.ptr126.i267 = getelementptr inbounds i8, i8* %960, i32 1
  store i8* %incdec.ptr126.i267, i8** %data.i109, align 8
  %961 = load i8, i8* %960, align 1
  %conv127.i268 = zext i8 %961 to i64
  %shl128.i269 = shl i64 %conv127.i268, 8
  %962 = load i32, i32* %l.i114, align 4
  %conv129.i270 = zext i32 %962 to i64
  %or130.i271 = or i64 %conv129.i270, %shl128.i269
  %conv131.i272 = trunc i64 %or130.i271 to i32
  store i32 %conv131.i272, i32* %l.i114, align 4
  %963 = load i8*, i8** %data.i109, align 8
  %incdec.ptr132.i273 = getelementptr inbounds i8, i8* %963, i32 1
  store i8* %incdec.ptr132.i273, i8** %data.i109, align 8
  %964 = load i8, i8* %963, align 1
  %conv133.i274 = zext i8 %964 to i64
  %shl134.i275 = shl i64 %conv133.i274, 16
  %965 = load i32, i32* %l.i114, align 4
  %conv135.i276 = zext i32 %965 to i64
  %or136.i277 = or i64 %conv135.i276, %shl134.i275
  %conv137.i278 = trunc i64 %or136.i277 to i32
  store i32 %conv137.i278, i32* %l.i114, align 4
  %966 = load i8*, i8** %data.i109, align 8
  %incdec.ptr138.i279 = getelementptr inbounds i8, i8* %966, i32 1
  store i8* %incdec.ptr138.i279, i8** %data.i109, align 8
  %967 = load i8, i8* %966, align 1
  %conv139.i280 = zext i8 %967 to i64
  %shl140.i281 = shl i64 %conv139.i280, 24
  %968 = load i32, i32* %l.i114, align 4
  %conv141.i282 = zext i32 %968 to i64
  %or142.i283 = or i64 %conv141.i282, %shl140.i281
  %conv143.i284 = trunc i64 %or142.i283 to i32
  store i32 %conv143.i284, i32* %l.i114, align 4
  %969 = load i32, i32* %l.i114, align 4
  store i32 %969, i32* %XX4.i119, align 4
  %970 = load i32, i32* %XX3.i118, align 4
  %conv144.i285 = zext i32 %970 to i64
  %add145.i286 = add nsw i64 %conv144.i285, 3250441966
  %971 = load i32, i32* %D.i113, align 4
  %972 = load i32, i32* %A.i110, align 4
  %xor146.i287 = xor i32 %971, %972
  %973 = load i32, i32* %C.i112, align 4
  %and147.i288 = and i32 %xor146.i287, %973
  %974 = load i32, i32* %A.i110, align 4
  %xor148.i289 = xor i32 %and147.i288, %974
  %conv149.i290 = zext i32 %xor148.i289 to i64
  %add150.i291 = add nsw i64 %add145.i286, %conv149.i290
  %975 = load i32, i32* %B.i111, align 4
  %conv151.i292 = zext i32 %975 to i64
  %add152.i293 = add nsw i64 %conv151.i292, %add150.i291
  %conv153.i294 = trunc i64 %add152.i293 to i32
  store i32 %conv153.i294, i32* %B.i111, align 4
  %976 = load i32, i32* %B.i111, align 4
  %shl154.i295 = shl i32 %976, 22
  %977 = load i32, i32* %B.i111, align 4
  %shr155.i296 = lshr i32 %977, 10
  %or156.i297 = or i32 %shl154.i295, %shr155.i296
  store i32 %or156.i297, i32* %B.i111, align 4
  %978 = load i32, i32* %C.i112, align 4
  %979 = load i32, i32* %B.i111, align 4
  %add157.i298 = add i32 %979, %978
  store i32 %add157.i298, i32* %B.i111, align 4
  %980 = load i8*, i8** %data.i109, align 8
  %incdec.ptr158.i299 = getelementptr inbounds i8, i8* %980, i32 1
  store i8* %incdec.ptr158.i299, i8** %data.i109, align 8
  %981 = load i8, i8* %980, align 1
  %conv159.i300 = zext i8 %981 to i64
  %conv160.i301 = trunc i64 %conv159.i300 to i32
  store i32 %conv160.i301, i32* %l.i114, align 4
  %982 = load i8*, i8** %data.i109, align 8
  %incdec.ptr161.i302 = getelementptr inbounds i8, i8* %982, i32 1
  store i8* %incdec.ptr161.i302, i8** %data.i109, align 8
  %983 = load i8, i8* %982, align 1
  %conv162.i303 = zext i8 %983 to i64
  %shl163.i304 = shl i64 %conv162.i303, 8
  %984 = load i32, i32* %l.i114, align 4
  %conv164.i305 = zext i32 %984 to i64
  %or165.i306 = or i64 %conv164.i305, %shl163.i304
  %conv166.i307 = trunc i64 %or165.i306 to i32
  store i32 %conv166.i307, i32* %l.i114, align 4
  %985 = load i8*, i8** %data.i109, align 8
  %incdec.ptr167.i308 = getelementptr inbounds i8, i8* %985, i32 1
  store i8* %incdec.ptr167.i308, i8** %data.i109, align 8
  %986 = load i8, i8* %985, align 1
  %conv168.i309 = zext i8 %986 to i64
  %shl169.i310 = shl i64 %conv168.i309, 16
  %987 = load i32, i32* %l.i114, align 4
  %conv170.i311 = zext i32 %987 to i64
  %or171.i312 = or i64 %conv170.i311, %shl169.i310
  %conv172.i313 = trunc i64 %or171.i312 to i32
  store i32 %conv172.i313, i32* %l.i114, align 4
  %988 = load i8*, i8** %data.i109, align 8
  %incdec.ptr173.i314 = getelementptr inbounds i8, i8* %988, i32 1
  store i8* %incdec.ptr173.i314, i8** %data.i109, align 8
  %989 = load i8, i8* %988, align 1
  %conv174.i315 = zext i8 %989 to i64
  %shl175.i316 = shl i64 %conv174.i315, 24
  %990 = load i32, i32* %l.i114, align 4
  %conv176.i317 = zext i32 %990 to i64
  %or177.i318 = or i64 %conv176.i317, %shl175.i316
  %conv178.i319 = trunc i64 %or177.i318 to i32
  store i32 %conv178.i319, i32* %l.i114, align 4
  %991 = load i32, i32* %l.i114, align 4
  store i32 %991, i32* %XX5.i120, align 4
  %992 = load i32, i32* %XX4.i119, align 4
  %conv179.i320 = zext i32 %992 to i64
  %add180.i321 = add nsw i64 %conv179.i320, 4118548399
  %993 = load i32, i32* %C.i112, align 4
  %994 = load i32, i32* %D.i113, align 4
  %xor181.i322 = xor i32 %993, %994
  %995 = load i32, i32* %B.i111, align 4
  %and182.i323 = and i32 %xor181.i322, %995
  %996 = load i32, i32* %D.i113, align 4
  %xor183.i324 = xor i32 %and182.i323, %996
  %conv184.i325 = zext i32 %xor183.i324 to i64
  %add185.i326 = add nsw i64 %add180.i321, %conv184.i325
  %997 = load i32, i32* %A.i110, align 4
  %conv186.i327 = zext i32 %997 to i64
  %add187.i328 = add nsw i64 %conv186.i327, %add185.i326
  %conv188.i329 = trunc i64 %add187.i328 to i32
  store i32 %conv188.i329, i32* %A.i110, align 4
  %998 = load i32, i32* %A.i110, align 4
  %shl189.i330 = shl i32 %998, 7
  %999 = load i32, i32* %A.i110, align 4
  %shr190.i331 = lshr i32 %999, 25
  %or191.i332 = or i32 %shl189.i330, %shr190.i331
  store i32 %or191.i332, i32* %A.i110, align 4
  %1000 = load i32, i32* %B.i111, align 4
  %1001 = load i32, i32* %A.i110, align 4
  %add192.i333 = add i32 %1001, %1000
  store i32 %add192.i333, i32* %A.i110, align 4
  %1002 = load i8*, i8** %data.i109, align 8
  %incdec.ptr193.i334 = getelementptr inbounds i8, i8* %1002, i32 1
  store i8* %incdec.ptr193.i334, i8** %data.i109, align 8
  %1003 = load i8, i8* %1002, align 1
  %conv194.i335 = zext i8 %1003 to i64
  %conv195.i336 = trunc i64 %conv194.i335 to i32
  store i32 %conv195.i336, i32* %l.i114, align 4
  %1004 = load i8*, i8** %data.i109, align 8
  %incdec.ptr196.i337 = getelementptr inbounds i8, i8* %1004, i32 1
  store i8* %incdec.ptr196.i337, i8** %data.i109, align 8
  %1005 = load i8, i8* %1004, align 1
  %conv197.i338 = zext i8 %1005 to i64
  %shl198.i339 = shl i64 %conv197.i338, 8
  %1006 = load i32, i32* %l.i114, align 4
  %conv199.i340 = zext i32 %1006 to i64
  %or200.i341 = or i64 %conv199.i340, %shl198.i339
  %conv201.i342 = trunc i64 %or200.i341 to i32
  store i32 %conv201.i342, i32* %l.i114, align 4
  %1007 = load i8*, i8** %data.i109, align 8
  %incdec.ptr202.i343 = getelementptr inbounds i8, i8* %1007, i32 1
  store i8* %incdec.ptr202.i343, i8** %data.i109, align 8
  %1008 = load i8, i8* %1007, align 1
  %conv203.i344 = zext i8 %1008 to i64
  %shl204.i345 = shl i64 %conv203.i344, 16
  %1009 = load i32, i32* %l.i114, align 4
  %conv205.i346 = zext i32 %1009 to i64
  %or206.i347 = or i64 %conv205.i346, %shl204.i345
  %conv207.i348 = trunc i64 %or206.i347 to i32
  store i32 %conv207.i348, i32* %l.i114, align 4
  %1010 = load i8*, i8** %data.i109, align 8
  %incdec.ptr208.i349 = getelementptr inbounds i8, i8* %1010, i32 1
  store i8* %incdec.ptr208.i349, i8** %data.i109, align 8
  %1011 = load i8, i8* %1010, align 1
  %conv209.i350 = zext i8 %1011 to i64
  %shl210.i351 = shl i64 %conv209.i350, 24
  %1012 = load i32, i32* %l.i114, align 4
  %conv211.i352 = zext i32 %1012 to i64
  %or212.i353 = or i64 %conv211.i352, %shl210.i351
  %conv213.i354 = trunc i64 %or212.i353 to i32
  store i32 %conv213.i354, i32* %l.i114, align 4
  %1013 = load i32, i32* %l.i114, align 4
  store i32 %1013, i32* %XX6.i121, align 4
  %1014 = load i32, i32* %XX5.i120, align 4
  %conv214.i355 = zext i32 %1014 to i64
  %add215.i356 = add nsw i64 %conv214.i355, 1200080426
  %1015 = load i32, i32* %B.i111, align 4
  %1016 = load i32, i32* %C.i112, align 4
  %xor216.i357 = xor i32 %1015, %1016
  %1017 = load i32, i32* %A.i110, align 4
  %and217.i358 = and i32 %xor216.i357, %1017
  %1018 = load i32, i32* %C.i112, align 4
  %xor218.i359 = xor i32 %and217.i358, %1018
  %conv219.i360 = zext i32 %xor218.i359 to i64
  %add220.i361 = add nsw i64 %add215.i356, %conv219.i360
  %1019 = load i32, i32* %D.i113, align 4
  %conv221.i362 = zext i32 %1019 to i64
  %add222.i363 = add nsw i64 %conv221.i362, %add220.i361
  %conv223.i364 = trunc i64 %add222.i363 to i32
  store i32 %conv223.i364, i32* %D.i113, align 4
  %1020 = load i32, i32* %D.i113, align 4
  %shl224.i365 = shl i32 %1020, 12
  %1021 = load i32, i32* %D.i113, align 4
  %shr225.i366 = lshr i32 %1021, 20
  %or226.i367 = or i32 %shl224.i365, %shr225.i366
  store i32 %or226.i367, i32* %D.i113, align 4
  %1022 = load i32, i32* %A.i110, align 4
  %1023 = load i32, i32* %D.i113, align 4
  %add227.i368 = add i32 %1023, %1022
  store i32 %add227.i368, i32* %D.i113, align 4
  %1024 = load i8*, i8** %data.i109, align 8
  %incdec.ptr228.i369 = getelementptr inbounds i8, i8* %1024, i32 1
  store i8* %incdec.ptr228.i369, i8** %data.i109, align 8
  %1025 = load i8, i8* %1024, align 1
  %conv229.i370 = zext i8 %1025 to i64
  %conv230.i371 = trunc i64 %conv229.i370 to i32
  store i32 %conv230.i371, i32* %l.i114, align 4
  %1026 = load i8*, i8** %data.i109, align 8
  %incdec.ptr231.i372 = getelementptr inbounds i8, i8* %1026, i32 1
  store i8* %incdec.ptr231.i372, i8** %data.i109, align 8
  %1027 = load i8, i8* %1026, align 1
  %conv232.i373 = zext i8 %1027 to i64
  %shl233.i374 = shl i64 %conv232.i373, 8
  %1028 = load i32, i32* %l.i114, align 4
  %conv234.i375 = zext i32 %1028 to i64
  %or235.i376 = or i64 %conv234.i375, %shl233.i374
  %conv236.i377 = trunc i64 %or235.i376 to i32
  store i32 %conv236.i377, i32* %l.i114, align 4
  %1029 = load i8*, i8** %data.i109, align 8
  %incdec.ptr237.i378 = getelementptr inbounds i8, i8* %1029, i32 1
  store i8* %incdec.ptr237.i378, i8** %data.i109, align 8
  %1030 = load i8, i8* %1029, align 1
  %conv238.i379 = zext i8 %1030 to i64
  %shl239.i380 = shl i64 %conv238.i379, 16
  %1031 = load i32, i32* %l.i114, align 4
  %conv240.i381 = zext i32 %1031 to i64
  %or241.i382 = or i64 %conv240.i381, %shl239.i380
  %conv242.i383 = trunc i64 %or241.i382 to i32
  store i32 %conv242.i383, i32* %l.i114, align 4
  %1032 = load i8*, i8** %data.i109, align 8
  %incdec.ptr243.i384 = getelementptr inbounds i8, i8* %1032, i32 1
  store i8* %incdec.ptr243.i384, i8** %data.i109, align 8
  %1033 = load i8, i8* %1032, align 1
  %conv244.i385 = zext i8 %1033 to i64
  %shl245.i386 = shl i64 %conv244.i385, 24
  %1034 = load i32, i32* %l.i114, align 4
  %conv246.i387 = zext i32 %1034 to i64
  %or247.i388 = or i64 %conv246.i387, %shl245.i386
  %conv248.i389 = trunc i64 %or247.i388 to i32
  store i32 %conv248.i389, i32* %l.i114, align 4
  %1035 = load i32, i32* %l.i114, align 4
  store i32 %1035, i32* %XX7.i122, align 4
  %1036 = load i32, i32* %XX6.i121, align 4
  %conv249.i390 = zext i32 %1036 to i64
  %add250.i391 = add nsw i64 %conv249.i390, 2821735955
  %1037 = load i32, i32* %A.i110, align 4
  %1038 = load i32, i32* %B.i111, align 4
  %xor251.i392 = xor i32 %1037, %1038
  %1039 = load i32, i32* %D.i113, align 4
  %and252.i393 = and i32 %xor251.i392, %1039
  %1040 = load i32, i32* %B.i111, align 4
  %xor253.i394 = xor i32 %and252.i393, %1040
  %conv254.i395 = zext i32 %xor253.i394 to i64
  %add255.i396 = add nsw i64 %add250.i391, %conv254.i395
  %1041 = load i32, i32* %C.i112, align 4
  %conv256.i397 = zext i32 %1041 to i64
  %add257.i398 = add nsw i64 %conv256.i397, %add255.i396
  %conv258.i399 = trunc i64 %add257.i398 to i32
  store i32 %conv258.i399, i32* %C.i112, align 4
  %1042 = load i32, i32* %C.i112, align 4
  %shl259.i400 = shl i32 %1042, 17
  %1043 = load i32, i32* %C.i112, align 4
  %shr260.i401 = lshr i32 %1043, 15
  %or261.i402 = or i32 %shl259.i400, %shr260.i401
  store i32 %or261.i402, i32* %C.i112, align 4
  %1044 = load i32, i32* %D.i113, align 4
  %1045 = load i32, i32* %C.i112, align 4
  %add262.i403 = add i32 %1045, %1044
  store i32 %add262.i403, i32* %C.i112, align 4
  %1046 = load i8*, i8** %data.i109, align 8
  %incdec.ptr263.i404 = getelementptr inbounds i8, i8* %1046, i32 1
  store i8* %incdec.ptr263.i404, i8** %data.i109, align 8
  %1047 = load i8, i8* %1046, align 1
  %conv264.i405 = zext i8 %1047 to i64
  %conv265.i406 = trunc i64 %conv264.i405 to i32
  store i32 %conv265.i406, i32* %l.i114, align 4
  %1048 = load i8*, i8** %data.i109, align 8
  %incdec.ptr266.i407 = getelementptr inbounds i8, i8* %1048, i32 1
  store i8* %incdec.ptr266.i407, i8** %data.i109, align 8
  %1049 = load i8, i8* %1048, align 1
  %conv267.i408 = zext i8 %1049 to i64
  %shl268.i409 = shl i64 %conv267.i408, 8
  %1050 = load i32, i32* %l.i114, align 4
  %conv269.i410 = zext i32 %1050 to i64
  %or270.i411 = or i64 %conv269.i410, %shl268.i409
  %conv271.i412 = trunc i64 %or270.i411 to i32
  store i32 %conv271.i412, i32* %l.i114, align 4
  %1051 = load i8*, i8** %data.i109, align 8
  %incdec.ptr272.i413 = getelementptr inbounds i8, i8* %1051, i32 1
  store i8* %incdec.ptr272.i413, i8** %data.i109, align 8
  %1052 = load i8, i8* %1051, align 1
  %conv273.i414 = zext i8 %1052 to i64
  %shl274.i415 = shl i64 %conv273.i414, 16
  %1053 = load i32, i32* %l.i114, align 4
  %conv275.i416 = zext i32 %1053 to i64
  %or276.i417 = or i64 %conv275.i416, %shl274.i415
  %conv277.i418 = trunc i64 %or276.i417 to i32
  store i32 %conv277.i418, i32* %l.i114, align 4
  %1054 = load i8*, i8** %data.i109, align 8
  %incdec.ptr278.i419 = getelementptr inbounds i8, i8* %1054, i32 1
  store i8* %incdec.ptr278.i419, i8** %data.i109, align 8
  %1055 = load i8, i8* %1054, align 1
  %conv279.i420 = zext i8 %1055 to i64
  %shl280.i421 = shl i64 %conv279.i420, 24
  %1056 = load i32, i32* %l.i114, align 4
  %conv281.i422 = zext i32 %1056 to i64
  %or282.i423 = or i64 %conv281.i422, %shl280.i421
  %conv283.i424 = trunc i64 %or282.i423 to i32
  store i32 %conv283.i424, i32* %l.i114, align 4
  %1057 = load i32, i32* %l.i114, align 4
  store i32 %1057, i32* %XX8.i123, align 4
  %1058 = load i32, i32* %XX7.i122, align 4
  %conv284.i425 = zext i32 %1058 to i64
  %add285.i426 = add nsw i64 %conv284.i425, 4249261313
  %1059 = load i32, i32* %D.i113, align 4
  %1060 = load i32, i32* %A.i110, align 4
  %xor286.i427 = xor i32 %1059, %1060
  %1061 = load i32, i32* %C.i112, align 4
  %and287.i428 = and i32 %xor286.i427, %1061
  %1062 = load i32, i32* %A.i110, align 4
  %xor288.i429 = xor i32 %and287.i428, %1062
  %conv289.i430 = zext i32 %xor288.i429 to i64
  %add290.i431 = add nsw i64 %add285.i426, %conv289.i430
  %1063 = load i32, i32* %B.i111, align 4
  %conv291.i432 = zext i32 %1063 to i64
  %add292.i433 = add nsw i64 %conv291.i432, %add290.i431
  %conv293.i434 = trunc i64 %add292.i433 to i32
  store i32 %conv293.i434, i32* %B.i111, align 4
  %1064 = load i32, i32* %B.i111, align 4
  %shl294.i435 = shl i32 %1064, 22
  %1065 = load i32, i32* %B.i111, align 4
  %shr295.i436 = lshr i32 %1065, 10
  %or296.i437 = or i32 %shl294.i435, %shr295.i436
  store i32 %or296.i437, i32* %B.i111, align 4
  %1066 = load i32, i32* %C.i112, align 4
  %1067 = load i32, i32* %B.i111, align 4
  %add297.i438 = add i32 %1067, %1066
  store i32 %add297.i438, i32* %B.i111, align 4
  %1068 = load i8*, i8** %data.i109, align 8
  %incdec.ptr298.i439 = getelementptr inbounds i8, i8* %1068, i32 1
  store i8* %incdec.ptr298.i439, i8** %data.i109, align 8
  %1069 = load i8, i8* %1068, align 1
  %conv299.i440 = zext i8 %1069 to i64
  %conv300.i441 = trunc i64 %conv299.i440 to i32
  store i32 %conv300.i441, i32* %l.i114, align 4
  %1070 = load i8*, i8** %data.i109, align 8
  %incdec.ptr301.i442 = getelementptr inbounds i8, i8* %1070, i32 1
  store i8* %incdec.ptr301.i442, i8** %data.i109, align 8
  %1071 = load i8, i8* %1070, align 1
  %conv302.i443 = zext i8 %1071 to i64
  %shl303.i444 = shl i64 %conv302.i443, 8
  %1072 = load i32, i32* %l.i114, align 4
  %conv304.i445 = zext i32 %1072 to i64
  %or305.i446 = or i64 %conv304.i445, %shl303.i444
  %conv306.i447 = trunc i64 %or305.i446 to i32
  store i32 %conv306.i447, i32* %l.i114, align 4
  %1073 = load i8*, i8** %data.i109, align 8
  %incdec.ptr307.i448 = getelementptr inbounds i8, i8* %1073, i32 1
  store i8* %incdec.ptr307.i448, i8** %data.i109, align 8
  %1074 = load i8, i8* %1073, align 1
  %conv308.i449 = zext i8 %1074 to i64
  %shl309.i450 = shl i64 %conv308.i449, 16
  %1075 = load i32, i32* %l.i114, align 4
  %conv310.i451 = zext i32 %1075 to i64
  %or311.i452 = or i64 %conv310.i451, %shl309.i450
  %conv312.i453 = trunc i64 %or311.i452 to i32
  store i32 %conv312.i453, i32* %l.i114, align 4
  %1076 = load i8*, i8** %data.i109, align 8
  %incdec.ptr313.i454 = getelementptr inbounds i8, i8* %1076, i32 1
  store i8* %incdec.ptr313.i454, i8** %data.i109, align 8
  %1077 = load i8, i8* %1076, align 1
  %conv314.i455 = zext i8 %1077 to i64
  %shl315.i456 = shl i64 %conv314.i455, 24
  %1078 = load i32, i32* %l.i114, align 4
  %conv316.i457 = zext i32 %1078 to i64
  %or317.i458 = or i64 %conv316.i457, %shl315.i456
  %conv318.i459 = trunc i64 %or317.i458 to i32
  store i32 %conv318.i459, i32* %l.i114, align 4
  %1079 = load i32, i32* %l.i114, align 4
  store i32 %1079, i32* %XX9.i124, align 4
  %1080 = load i32, i32* %XX8.i123, align 4
  %conv319.i460 = zext i32 %1080 to i64
  %add320.i461 = add nsw i64 %conv319.i460, 1770035416
  %1081 = load i32, i32* %C.i112, align 4
  %1082 = load i32, i32* %D.i113, align 4
  %xor321.i462 = xor i32 %1081, %1082
  %1083 = load i32, i32* %B.i111, align 4
  %and322.i463 = and i32 %xor321.i462, %1083
  %1084 = load i32, i32* %D.i113, align 4
  %xor323.i464 = xor i32 %and322.i463, %1084
  %conv324.i465 = zext i32 %xor323.i464 to i64
  %add325.i466 = add nsw i64 %add320.i461, %conv324.i465
  %1085 = load i32, i32* %A.i110, align 4
  %conv326.i467 = zext i32 %1085 to i64
  %add327.i468 = add nsw i64 %conv326.i467, %add325.i466
  %conv328.i469 = trunc i64 %add327.i468 to i32
  store i32 %conv328.i469, i32* %A.i110, align 4
  %1086 = load i32, i32* %A.i110, align 4
  %shl329.i470 = shl i32 %1086, 7
  %1087 = load i32, i32* %A.i110, align 4
  %shr330.i471 = lshr i32 %1087, 25
  %or331.i472 = or i32 %shl329.i470, %shr330.i471
  store i32 %or331.i472, i32* %A.i110, align 4
  %1088 = load i32, i32* %B.i111, align 4
  %1089 = load i32, i32* %A.i110, align 4
  %add332.i473 = add i32 %1089, %1088
  store i32 %add332.i473, i32* %A.i110, align 4
  %1090 = load i8*, i8** %data.i109, align 8
  %incdec.ptr333.i474 = getelementptr inbounds i8, i8* %1090, i32 1
  store i8* %incdec.ptr333.i474, i8** %data.i109, align 8
  %1091 = load i8, i8* %1090, align 1
  %conv334.i475 = zext i8 %1091 to i64
  %conv335.i476 = trunc i64 %conv334.i475 to i32
  store i32 %conv335.i476, i32* %l.i114, align 4
  %1092 = load i8*, i8** %data.i109, align 8
  %incdec.ptr336.i477 = getelementptr inbounds i8, i8* %1092, i32 1
  store i8* %incdec.ptr336.i477, i8** %data.i109, align 8
  %1093 = load i8, i8* %1092, align 1
  %conv337.i478 = zext i8 %1093 to i64
  %shl338.i479 = shl i64 %conv337.i478, 8
  %1094 = load i32, i32* %l.i114, align 4
  %conv339.i480 = zext i32 %1094 to i64
  %or340.i481 = or i64 %conv339.i480, %shl338.i479
  %conv341.i482 = trunc i64 %or340.i481 to i32
  store i32 %conv341.i482, i32* %l.i114, align 4
  %1095 = load i8*, i8** %data.i109, align 8
  %incdec.ptr342.i483 = getelementptr inbounds i8, i8* %1095, i32 1
  store i8* %incdec.ptr342.i483, i8** %data.i109, align 8
  %1096 = load i8, i8* %1095, align 1
  %conv343.i484 = zext i8 %1096 to i64
  %shl344.i485 = shl i64 %conv343.i484, 16
  %1097 = load i32, i32* %l.i114, align 4
  %conv345.i486 = zext i32 %1097 to i64
  %or346.i487 = or i64 %conv345.i486, %shl344.i485
  %conv347.i488 = trunc i64 %or346.i487 to i32
  store i32 %conv347.i488, i32* %l.i114, align 4
  %1098 = load i8*, i8** %data.i109, align 8
  %incdec.ptr348.i489 = getelementptr inbounds i8, i8* %1098, i32 1
  store i8* %incdec.ptr348.i489, i8** %data.i109, align 8
  %1099 = load i8, i8* %1098, align 1
  %conv349.i490 = zext i8 %1099 to i64
  %shl350.i491 = shl i64 %conv349.i490, 24
  %1100 = load i32, i32* %l.i114, align 4
  %conv351.i492 = zext i32 %1100 to i64
  %or352.i493 = or i64 %conv351.i492, %shl350.i491
  %conv353.i494 = trunc i64 %or352.i493 to i32
  store i32 %conv353.i494, i32* %l.i114, align 4
  %1101 = load i32, i32* %l.i114, align 4
  store i32 %1101, i32* %XX10.i125, align 4
  %1102 = load i32, i32* %XX9.i124, align 4
  %conv354.i495 = zext i32 %1102 to i64
  %add355.i496 = add nsw i64 %conv354.i495, 2336552879
  %1103 = load i32, i32* %B.i111, align 4
  %1104 = load i32, i32* %C.i112, align 4
  %xor356.i497 = xor i32 %1103, %1104
  %1105 = load i32, i32* %A.i110, align 4
  %and357.i498 = and i32 %xor356.i497, %1105
  %1106 = load i32, i32* %C.i112, align 4
  %xor358.i499 = xor i32 %and357.i498, %1106
  %conv359.i500 = zext i32 %xor358.i499 to i64
  %add360.i501 = add nsw i64 %add355.i496, %conv359.i500
  %1107 = load i32, i32* %D.i113, align 4
  %conv361.i502 = zext i32 %1107 to i64
  %add362.i503 = add nsw i64 %conv361.i502, %add360.i501
  %conv363.i504 = trunc i64 %add362.i503 to i32
  store i32 %conv363.i504, i32* %D.i113, align 4
  %1108 = load i32, i32* %D.i113, align 4
  %shl364.i505 = shl i32 %1108, 12
  %1109 = load i32, i32* %D.i113, align 4
  %shr365.i506 = lshr i32 %1109, 20
  %or366.i507 = or i32 %shl364.i505, %shr365.i506
  store i32 %or366.i507, i32* %D.i113, align 4
  %1110 = load i32, i32* %A.i110, align 4
  %1111 = load i32, i32* %D.i113, align 4
  %add367.i508 = add i32 %1111, %1110
  store i32 %add367.i508, i32* %D.i113, align 4
  %1112 = load i8*, i8** %data.i109, align 8
  %incdec.ptr368.i509 = getelementptr inbounds i8, i8* %1112, i32 1
  store i8* %incdec.ptr368.i509, i8** %data.i109, align 8
  %1113 = load i8, i8* %1112, align 1
  %conv369.i510 = zext i8 %1113 to i64
  %conv370.i511 = trunc i64 %conv369.i510 to i32
  store i32 %conv370.i511, i32* %l.i114, align 4
  %1114 = load i8*, i8** %data.i109, align 8
  %incdec.ptr371.i512 = getelementptr inbounds i8, i8* %1114, i32 1
  store i8* %incdec.ptr371.i512, i8** %data.i109, align 8
  %1115 = load i8, i8* %1114, align 1
  %conv372.i513 = zext i8 %1115 to i64
  %shl373.i514 = shl i64 %conv372.i513, 8
  %1116 = load i32, i32* %l.i114, align 4
  %conv374.i515 = zext i32 %1116 to i64
  %or375.i516 = or i64 %conv374.i515, %shl373.i514
  %conv376.i517 = trunc i64 %or375.i516 to i32
  store i32 %conv376.i517, i32* %l.i114, align 4
  %1117 = load i8*, i8** %data.i109, align 8
  %incdec.ptr377.i518 = getelementptr inbounds i8, i8* %1117, i32 1
  store i8* %incdec.ptr377.i518, i8** %data.i109, align 8
  %1118 = load i8, i8* %1117, align 1
  %conv378.i519 = zext i8 %1118 to i64
  %shl379.i520 = shl i64 %conv378.i519, 16
  %1119 = load i32, i32* %l.i114, align 4
  %conv380.i521 = zext i32 %1119 to i64
  %or381.i522 = or i64 %conv380.i521, %shl379.i520
  %conv382.i523 = trunc i64 %or381.i522 to i32
  store i32 %conv382.i523, i32* %l.i114, align 4
  %1120 = load i8*, i8** %data.i109, align 8
  %incdec.ptr383.i524 = getelementptr inbounds i8, i8* %1120, i32 1
  store i8* %incdec.ptr383.i524, i8** %data.i109, align 8
  %1121 = load i8, i8* %1120, align 1
  %conv384.i525 = zext i8 %1121 to i64
  %shl385.i526 = shl i64 %conv384.i525, 24
  %1122 = load i32, i32* %l.i114, align 4
  %conv386.i527 = zext i32 %1122 to i64
  %or387.i528 = or i64 %conv386.i527, %shl385.i526
  %conv388.i529 = trunc i64 %or387.i528 to i32
  store i32 %conv388.i529, i32* %l.i114, align 4
  %1123 = load i32, i32* %l.i114, align 4
  store i32 %1123, i32* %XX11.i126, align 4
  %1124 = load i32, i32* %XX10.i125, align 4
  %conv389.i530 = zext i32 %1124 to i64
  %add390.i531 = add nsw i64 %conv389.i530, 4294925233
  %1125 = load i32, i32* %A.i110, align 4
  %1126 = load i32, i32* %B.i111, align 4
  %xor391.i532 = xor i32 %1125, %1126
  %1127 = load i32, i32* %D.i113, align 4
  %and392.i533 = and i32 %xor391.i532, %1127
  %1128 = load i32, i32* %B.i111, align 4
  %xor393.i534 = xor i32 %and392.i533, %1128
  %conv394.i535 = zext i32 %xor393.i534 to i64
  %add395.i536 = add nsw i64 %add390.i531, %conv394.i535
  %1129 = load i32, i32* %C.i112, align 4
  %conv396.i537 = zext i32 %1129 to i64
  %add397.i538 = add nsw i64 %conv396.i537, %add395.i536
  %conv398.i539 = trunc i64 %add397.i538 to i32
  store i32 %conv398.i539, i32* %C.i112, align 4
  %1130 = load i32, i32* %C.i112, align 4
  %shl399.i540 = shl i32 %1130, 17
  %1131 = load i32, i32* %C.i112, align 4
  %shr400.i541 = lshr i32 %1131, 15
  %or401.i542 = or i32 %shl399.i540, %shr400.i541
  store i32 %or401.i542, i32* %C.i112, align 4
  %1132 = load i32, i32* %D.i113, align 4
  %1133 = load i32, i32* %C.i112, align 4
  %add402.i543 = add i32 %1133, %1132
  store i32 %add402.i543, i32* %C.i112, align 4
  %1134 = load i8*, i8** %data.i109, align 8
  %incdec.ptr403.i544 = getelementptr inbounds i8, i8* %1134, i32 1
  store i8* %incdec.ptr403.i544, i8** %data.i109, align 8
  %1135 = load i8, i8* %1134, align 1
  %conv404.i545 = zext i8 %1135 to i64
  %conv405.i546 = trunc i64 %conv404.i545 to i32
  store i32 %conv405.i546, i32* %l.i114, align 4
  %1136 = load i8*, i8** %data.i109, align 8
  %incdec.ptr406.i547 = getelementptr inbounds i8, i8* %1136, i32 1
  store i8* %incdec.ptr406.i547, i8** %data.i109, align 8
  %1137 = load i8, i8* %1136, align 1
  %conv407.i548 = zext i8 %1137 to i64
  %shl408.i549 = shl i64 %conv407.i548, 8
  %1138 = load i32, i32* %l.i114, align 4
  %conv409.i550 = zext i32 %1138 to i64
  %or410.i551 = or i64 %conv409.i550, %shl408.i549
  %conv411.i552 = trunc i64 %or410.i551 to i32
  store i32 %conv411.i552, i32* %l.i114, align 4
  %1139 = load i8*, i8** %data.i109, align 8
  %incdec.ptr412.i553 = getelementptr inbounds i8, i8* %1139, i32 1
  store i8* %incdec.ptr412.i553, i8** %data.i109, align 8
  %1140 = load i8, i8* %1139, align 1
  %conv413.i554 = zext i8 %1140 to i64
  %shl414.i555 = shl i64 %conv413.i554, 16
  %1141 = load i32, i32* %l.i114, align 4
  %conv415.i556 = zext i32 %1141 to i64
  %or416.i557 = or i64 %conv415.i556, %shl414.i555
  %conv417.i558 = trunc i64 %or416.i557 to i32
  store i32 %conv417.i558, i32* %l.i114, align 4
  %1142 = load i8*, i8** %data.i109, align 8
  %incdec.ptr418.i559 = getelementptr inbounds i8, i8* %1142, i32 1
  store i8* %incdec.ptr418.i559, i8** %data.i109, align 8
  %1143 = load i8, i8* %1142, align 1
  %conv419.i560 = zext i8 %1143 to i64
  %shl420.i561 = shl i64 %conv419.i560, 24
  %1144 = load i32, i32* %l.i114, align 4
  %conv421.i562 = zext i32 %1144 to i64
  %or422.i563 = or i64 %conv421.i562, %shl420.i561
  %conv423.i564 = trunc i64 %or422.i563 to i32
  store i32 %conv423.i564, i32* %l.i114, align 4
  %1145 = load i32, i32* %l.i114, align 4
  store i32 %1145, i32* %XX12.i127, align 4
  %1146 = load i32, i32* %XX11.i126, align 4
  %conv424.i565 = zext i32 %1146 to i64
  %add425.i566 = add nsw i64 %conv424.i565, 2304563134
  %1147 = load i32, i32* %D.i113, align 4
  %1148 = load i32, i32* %A.i110, align 4
  %xor426.i567 = xor i32 %1147, %1148
  %1149 = load i32, i32* %C.i112, align 4
  %and427.i568 = and i32 %xor426.i567, %1149
  %1150 = load i32, i32* %A.i110, align 4
  %xor428.i569 = xor i32 %and427.i568, %1150
  %conv429.i570 = zext i32 %xor428.i569 to i64
  %add430.i571 = add nsw i64 %add425.i566, %conv429.i570
  %1151 = load i32, i32* %B.i111, align 4
  %conv431.i572 = zext i32 %1151 to i64
  %add432.i573 = add nsw i64 %conv431.i572, %add430.i571
  %conv433.i574 = trunc i64 %add432.i573 to i32
  store i32 %conv433.i574, i32* %B.i111, align 4
  %1152 = load i32, i32* %B.i111, align 4
  %shl434.i575 = shl i32 %1152, 22
  %1153 = load i32, i32* %B.i111, align 4
  %shr435.i576 = lshr i32 %1153, 10
  %or436.i577 = or i32 %shl434.i575, %shr435.i576
  store i32 %or436.i577, i32* %B.i111, align 4
  %1154 = load i32, i32* %C.i112, align 4
  %1155 = load i32, i32* %B.i111, align 4
  %add437.i578 = add i32 %1155, %1154
  store i32 %add437.i578, i32* %B.i111, align 4
  %1156 = load i8*, i8** %data.i109, align 8
  %incdec.ptr438.i579 = getelementptr inbounds i8, i8* %1156, i32 1
  store i8* %incdec.ptr438.i579, i8** %data.i109, align 8
  %1157 = load i8, i8* %1156, align 1
  %conv439.i580 = zext i8 %1157 to i64
  %conv440.i581 = trunc i64 %conv439.i580 to i32
  store i32 %conv440.i581, i32* %l.i114, align 4
  %1158 = load i8*, i8** %data.i109, align 8
  %incdec.ptr441.i582 = getelementptr inbounds i8, i8* %1158, i32 1
  store i8* %incdec.ptr441.i582, i8** %data.i109, align 8
  %1159 = load i8, i8* %1158, align 1
  %conv442.i583 = zext i8 %1159 to i64
  %shl443.i584 = shl i64 %conv442.i583, 8
  %1160 = load i32, i32* %l.i114, align 4
  %conv444.i585 = zext i32 %1160 to i64
  %or445.i586 = or i64 %conv444.i585, %shl443.i584
  %conv446.i587 = trunc i64 %or445.i586 to i32
  store i32 %conv446.i587, i32* %l.i114, align 4
  %1161 = load i8*, i8** %data.i109, align 8
  %incdec.ptr447.i588 = getelementptr inbounds i8, i8* %1161, i32 1
  store i8* %incdec.ptr447.i588, i8** %data.i109, align 8
  %1162 = load i8, i8* %1161, align 1
  %conv448.i589 = zext i8 %1162 to i64
  %shl449.i590 = shl i64 %conv448.i589, 16
  %1163 = load i32, i32* %l.i114, align 4
  %conv450.i591 = zext i32 %1163 to i64
  %or451.i592 = or i64 %conv450.i591, %shl449.i590
  %conv452.i593 = trunc i64 %or451.i592 to i32
  store i32 %conv452.i593, i32* %l.i114, align 4
  %1164 = load i8*, i8** %data.i109, align 8
  %incdec.ptr453.i594 = getelementptr inbounds i8, i8* %1164, i32 1
  store i8* %incdec.ptr453.i594, i8** %data.i109, align 8
  %1165 = load i8, i8* %1164, align 1
  %conv454.i595 = zext i8 %1165 to i64
  %shl455.i596 = shl i64 %conv454.i595, 24
  %1166 = load i32, i32* %l.i114, align 4
  %conv456.i597 = zext i32 %1166 to i64
  %or457.i598 = or i64 %conv456.i597, %shl455.i596
  %conv458.i599 = trunc i64 %or457.i598 to i32
  store i32 %conv458.i599, i32* %l.i114, align 4
  %1167 = load i32, i32* %l.i114, align 4
  store i32 %1167, i32* %XX13.i128, align 4
  %1168 = load i32, i32* %XX12.i127, align 4
  %conv459.i600 = zext i32 %1168 to i64
  %add460.i601 = add nsw i64 %conv459.i600, 1804603682
  %1169 = load i32, i32* %C.i112, align 4
  %1170 = load i32, i32* %D.i113, align 4
  %xor461.i602 = xor i32 %1169, %1170
  %1171 = load i32, i32* %B.i111, align 4
  %and462.i603 = and i32 %xor461.i602, %1171
  %1172 = load i32, i32* %D.i113, align 4
  %xor463.i604 = xor i32 %and462.i603, %1172
  %conv464.i605 = zext i32 %xor463.i604 to i64
  %add465.i606 = add nsw i64 %add460.i601, %conv464.i605
  %1173 = load i32, i32* %A.i110, align 4
  %conv466.i607 = zext i32 %1173 to i64
  %add467.i608 = add nsw i64 %conv466.i607, %add465.i606
  %conv468.i609 = trunc i64 %add467.i608 to i32
  store i32 %conv468.i609, i32* %A.i110, align 4
  %1174 = load i32, i32* %A.i110, align 4
  %shl469.i610 = shl i32 %1174, 7
  %1175 = load i32, i32* %A.i110, align 4
  %shr470.i611 = lshr i32 %1175, 25
  %or471.i612 = or i32 %shl469.i610, %shr470.i611
  store i32 %or471.i612, i32* %A.i110, align 4
  %1176 = load i32, i32* %B.i111, align 4
  %1177 = load i32, i32* %A.i110, align 4
  %add472.i613 = add i32 %1177, %1176
  store i32 %add472.i613, i32* %A.i110, align 4
  %1178 = load i8*, i8** %data.i109, align 8
  %incdec.ptr473.i614 = getelementptr inbounds i8, i8* %1178, i32 1
  store i8* %incdec.ptr473.i614, i8** %data.i109, align 8
  %1179 = load i8, i8* %1178, align 1
  %conv474.i615 = zext i8 %1179 to i64
  %conv475.i616 = trunc i64 %conv474.i615 to i32
  store i32 %conv475.i616, i32* %l.i114, align 4
  %1180 = load i8*, i8** %data.i109, align 8
  %incdec.ptr476.i617 = getelementptr inbounds i8, i8* %1180, i32 1
  store i8* %incdec.ptr476.i617, i8** %data.i109, align 8
  %1181 = load i8, i8* %1180, align 1
  %conv477.i618 = zext i8 %1181 to i64
  %shl478.i619 = shl i64 %conv477.i618, 8
  %1182 = load i32, i32* %l.i114, align 4
  %conv479.i620 = zext i32 %1182 to i64
  %or480.i621 = or i64 %conv479.i620, %shl478.i619
  %conv481.i622 = trunc i64 %or480.i621 to i32
  store i32 %conv481.i622, i32* %l.i114, align 4
  %1183 = load i8*, i8** %data.i109, align 8
  %incdec.ptr482.i623 = getelementptr inbounds i8, i8* %1183, i32 1
  store i8* %incdec.ptr482.i623, i8** %data.i109, align 8
  %1184 = load i8, i8* %1183, align 1
  %conv483.i624 = zext i8 %1184 to i64
  %shl484.i625 = shl i64 %conv483.i624, 16
  %1185 = load i32, i32* %l.i114, align 4
  %conv485.i626 = zext i32 %1185 to i64
  %or486.i627 = or i64 %conv485.i626, %shl484.i625
  %conv487.i628 = trunc i64 %or486.i627 to i32
  store i32 %conv487.i628, i32* %l.i114, align 4
  %1186 = load i8*, i8** %data.i109, align 8
  %incdec.ptr488.i629 = getelementptr inbounds i8, i8* %1186, i32 1
  store i8* %incdec.ptr488.i629, i8** %data.i109, align 8
  %1187 = load i8, i8* %1186, align 1
  %conv489.i630 = zext i8 %1187 to i64
  %shl490.i631 = shl i64 %conv489.i630, 24
  %1188 = load i32, i32* %l.i114, align 4
  %conv491.i632 = zext i32 %1188 to i64
  %or492.i633 = or i64 %conv491.i632, %shl490.i631
  %conv493.i634 = trunc i64 %or492.i633 to i32
  store i32 %conv493.i634, i32* %l.i114, align 4
  %1189 = load i32, i32* %l.i114, align 4
  store i32 %1189, i32* %XX14.i129, align 4
  %1190 = load i32, i32* %XX13.i128, align 4
  %conv494.i635 = zext i32 %1190 to i64
  %add495.i636 = add nsw i64 %conv494.i635, 4254626195
  %1191 = load i32, i32* %B.i111, align 4
  %1192 = load i32, i32* %C.i112, align 4
  %xor496.i637 = xor i32 %1191, %1192
  %1193 = load i32, i32* %A.i110, align 4
  %and497.i638 = and i32 %xor496.i637, %1193
  %1194 = load i32, i32* %C.i112, align 4
  %xor498.i639 = xor i32 %and497.i638, %1194
  %conv499.i640 = zext i32 %xor498.i639 to i64
  %add500.i641 = add nsw i64 %add495.i636, %conv499.i640
  %1195 = load i32, i32* %D.i113, align 4
  %conv501.i642 = zext i32 %1195 to i64
  %add502.i643 = add nsw i64 %conv501.i642, %add500.i641
  %conv503.i644 = trunc i64 %add502.i643 to i32
  store i32 %conv503.i644, i32* %D.i113, align 4
  %1196 = load i32, i32* %D.i113, align 4
  %shl504.i645 = shl i32 %1196, 12
  %1197 = load i32, i32* %D.i113, align 4
  %shr505.i646 = lshr i32 %1197, 20
  %or506.i647 = or i32 %shl504.i645, %shr505.i646
  store i32 %or506.i647, i32* %D.i113, align 4
  %1198 = load i32, i32* %A.i110, align 4
  %1199 = load i32, i32* %D.i113, align 4
  %add507.i648 = add i32 %1199, %1198
  store i32 %add507.i648, i32* %D.i113, align 4
  %1200 = load i8*, i8** %data.i109, align 8
  %incdec.ptr508.i649 = getelementptr inbounds i8, i8* %1200, i32 1
  store i8* %incdec.ptr508.i649, i8** %data.i109, align 8
  %1201 = load i8, i8* %1200, align 1
  %conv509.i650 = zext i8 %1201 to i64
  %conv510.i651 = trunc i64 %conv509.i650 to i32
  store i32 %conv510.i651, i32* %l.i114, align 4
  %1202 = load i8*, i8** %data.i109, align 8
  %incdec.ptr511.i652 = getelementptr inbounds i8, i8* %1202, i32 1
  store i8* %incdec.ptr511.i652, i8** %data.i109, align 8
  %1203 = load i8, i8* %1202, align 1
  %conv512.i653 = zext i8 %1203 to i64
  %shl513.i654 = shl i64 %conv512.i653, 8
  %1204 = load i32, i32* %l.i114, align 4
  %conv514.i655 = zext i32 %1204 to i64
  %or515.i656 = or i64 %conv514.i655, %shl513.i654
  %conv516.i657 = trunc i64 %or515.i656 to i32
  store i32 %conv516.i657, i32* %l.i114, align 4
  %1205 = load i8*, i8** %data.i109, align 8
  %incdec.ptr517.i658 = getelementptr inbounds i8, i8* %1205, i32 1
  store i8* %incdec.ptr517.i658, i8** %data.i109, align 8
  %1206 = load i8, i8* %1205, align 1
  %conv518.i659 = zext i8 %1206 to i64
  %shl519.i660 = shl i64 %conv518.i659, 16
  %1207 = load i32, i32* %l.i114, align 4
  %conv520.i661 = zext i32 %1207 to i64
  %or521.i662 = or i64 %conv520.i661, %shl519.i660
  %conv522.i663 = trunc i64 %or521.i662 to i32
  store i32 %conv522.i663, i32* %l.i114, align 4
  %1208 = load i8*, i8** %data.i109, align 8
  %incdec.ptr523.i664 = getelementptr inbounds i8, i8* %1208, i32 1
  store i8* %incdec.ptr523.i664, i8** %data.i109, align 8
  %1209 = load i8, i8* %1208, align 1
  %conv524.i665 = zext i8 %1209 to i64
  %shl525.i666 = shl i64 %conv524.i665, 24
  %1210 = load i32, i32* %l.i114, align 4
  %conv526.i667 = zext i32 %1210 to i64
  %or527.i668 = or i64 %conv526.i667, %shl525.i666
  %conv528.i669 = trunc i64 %or527.i668 to i32
  store i32 %conv528.i669, i32* %l.i114, align 4
  %1211 = load i32, i32* %l.i114, align 4
  store i32 %1211, i32* %XX15.i130, align 4
  %1212 = load i32, i32* %XX14.i129, align 4
  %conv529.i670 = zext i32 %1212 to i64
  %add530.i671 = add nsw i64 %conv529.i670, 2792965006
  %1213 = load i32, i32* %A.i110, align 4
  %1214 = load i32, i32* %B.i111, align 4
  %xor531.i672 = xor i32 %1213, %1214
  %1215 = load i32, i32* %D.i113, align 4
  %and532.i673 = and i32 %xor531.i672, %1215
  %1216 = load i32, i32* %B.i111, align 4
  %xor533.i674 = xor i32 %and532.i673, %1216
  %conv534.i675 = zext i32 %xor533.i674 to i64
  %add535.i676 = add nsw i64 %add530.i671, %conv534.i675
  %1217 = load i32, i32* %C.i112, align 4
  %conv536.i677 = zext i32 %1217 to i64
  %add537.i678 = add nsw i64 %conv536.i677, %add535.i676
  %conv538.i679 = trunc i64 %add537.i678 to i32
  store i32 %conv538.i679, i32* %C.i112, align 4
  %1218 = load i32, i32* %C.i112, align 4
  %shl539.i680 = shl i32 %1218, 17
  %1219 = load i32, i32* %C.i112, align 4
  %shr540.i681 = lshr i32 %1219, 15
  %or541.i682 = or i32 %shl539.i680, %shr540.i681
  store i32 %or541.i682, i32* %C.i112, align 4
  %1220 = load i32, i32* %D.i113, align 4
  %1221 = load i32, i32* %C.i112, align 4
  %add542.i683 = add i32 %1221, %1220
  store i32 %add542.i683, i32* %C.i112, align 4
  %1222 = load i32, i32* %XX15.i130, align 4
  %conv543.i684 = zext i32 %1222 to i64
  %add544.i685 = add nsw i64 %conv543.i684, 1236535329
  %1223 = load i32, i32* %D.i113, align 4
  %1224 = load i32, i32* %A.i110, align 4
  %xor545.i686 = xor i32 %1223, %1224
  %1225 = load i32, i32* %C.i112, align 4
  %and546.i687 = and i32 %xor545.i686, %1225
  %1226 = load i32, i32* %A.i110, align 4
  %xor547.i688 = xor i32 %and546.i687, %1226
  %conv548.i689 = zext i32 %xor547.i688 to i64
  %add549.i690 = add nsw i64 %add544.i685, %conv548.i689
  %1227 = load i32, i32* %B.i111, align 4
  %conv550.i691 = zext i32 %1227 to i64
  %add551.i692 = add nsw i64 %conv550.i691, %add549.i690
  %conv552.i693 = trunc i64 %add551.i692 to i32
  store i32 %conv552.i693, i32* %B.i111, align 4
  %1228 = load i32, i32* %B.i111, align 4
  %shl553.i694 = shl i32 %1228, 22
  %1229 = load i32, i32* %B.i111, align 4
  %shr554.i695 = lshr i32 %1229, 10
  %or555.i696 = or i32 %shl553.i694, %shr554.i695
  store i32 %or555.i696, i32* %B.i111, align 4
  %1230 = load i32, i32* %C.i112, align 4
  %1231 = load i32, i32* %B.i111, align 4
  %add556.i697 = add i32 %1231, %1230
  store i32 %add556.i697, i32* %B.i111, align 4
  %1232 = load i32, i32* %XX1.i116, align 4
  %conv557.i698 = zext i32 %1232 to i64
  %add558.i699 = add nsw i64 %conv557.i698, 4129170786
  %1233 = load i32, i32* %B.i111, align 4
  %1234 = load i32, i32* %C.i112, align 4
  %xor559.i700 = xor i32 %1233, %1234
  %1235 = load i32, i32* %D.i113, align 4
  %and560.i701 = and i32 %xor559.i700, %1235
  %1236 = load i32, i32* %C.i112, align 4
  %xor561.i702 = xor i32 %and560.i701, %1236
  %conv562.i703 = zext i32 %xor561.i702 to i64
  %add563.i704 = add nsw i64 %add558.i699, %conv562.i703
  %1237 = load i32, i32* %A.i110, align 4
  %conv564.i705 = zext i32 %1237 to i64
  %add565.i706 = add nsw i64 %conv564.i705, %add563.i704
  %conv566.i707 = trunc i64 %add565.i706 to i32
  store i32 %conv566.i707, i32* %A.i110, align 4
  %1238 = load i32, i32* %A.i110, align 4
  %shl567.i708 = shl i32 %1238, 5
  %1239 = load i32, i32* %A.i110, align 4
  %shr568.i709 = lshr i32 %1239, 27
  %or569.i710 = or i32 %shl567.i708, %shr568.i709
  store i32 %or569.i710, i32* %A.i110, align 4
  %1240 = load i32, i32* %B.i111, align 4
  %1241 = load i32, i32* %A.i110, align 4
  %add570.i711 = add i32 %1241, %1240
  store i32 %add570.i711, i32* %A.i110, align 4
  %1242 = load i32, i32* %XX6.i121, align 4
  %conv571.i712 = zext i32 %1242 to i64
  %add572.i713 = add nsw i64 %conv571.i712, 3225465664
  %1243 = load i32, i32* %A.i110, align 4
  %1244 = load i32, i32* %B.i111, align 4
  %xor573.i714 = xor i32 %1243, %1244
  %1245 = load i32, i32* %C.i112, align 4
  %and574.i715 = and i32 %xor573.i714, %1245
  %1246 = load i32, i32* %B.i111, align 4
  %xor575.i716 = xor i32 %and574.i715, %1246
  %conv576.i717 = zext i32 %xor575.i716 to i64
  %add577.i718 = add nsw i64 %add572.i713, %conv576.i717
  %1247 = load i32, i32* %D.i113, align 4
  %conv578.i719 = zext i32 %1247 to i64
  %add579.i720 = add nsw i64 %conv578.i719, %add577.i718
  %conv580.i721 = trunc i64 %add579.i720 to i32
  store i32 %conv580.i721, i32* %D.i113, align 4
  %1248 = load i32, i32* %D.i113, align 4
  %shl581.i722 = shl i32 %1248, 9
  %1249 = load i32, i32* %D.i113, align 4
  %shr582.i723 = lshr i32 %1249, 23
  %or583.i724 = or i32 %shl581.i722, %shr582.i723
  store i32 %or583.i724, i32* %D.i113, align 4
  %1250 = load i32, i32* %A.i110, align 4
  %1251 = load i32, i32* %D.i113, align 4
  %add584.i725 = add i32 %1251, %1250
  store i32 %add584.i725, i32* %D.i113, align 4
  %1252 = load i32, i32* %XX11.i126, align 4
  %conv585.i726 = zext i32 %1252 to i64
  %add586.i727 = add nsw i64 %conv585.i726, 643717713
  %1253 = load i32, i32* %D.i113, align 4
  %1254 = load i32, i32* %A.i110, align 4
  %xor587.i728 = xor i32 %1253, %1254
  %1255 = load i32, i32* %B.i111, align 4
  %and588.i729 = and i32 %xor587.i728, %1255
  %1256 = load i32, i32* %A.i110, align 4
  %xor589.i730 = xor i32 %and588.i729, %1256
  %conv590.i731 = zext i32 %xor589.i730 to i64
  %add591.i732 = add nsw i64 %add586.i727, %conv590.i731
  %1257 = load i32, i32* %C.i112, align 4
  %conv592.i733 = zext i32 %1257 to i64
  %add593.i734 = add nsw i64 %conv592.i733, %add591.i732
  %conv594.i735 = trunc i64 %add593.i734 to i32
  store i32 %conv594.i735, i32* %C.i112, align 4
  %1258 = load i32, i32* %C.i112, align 4
  %shl595.i736 = shl i32 %1258, 14
  %1259 = load i32, i32* %C.i112, align 4
  %shr596.i737 = lshr i32 %1259, 18
  %or597.i738 = or i32 %shl595.i736, %shr596.i737
  store i32 %or597.i738, i32* %C.i112, align 4
  %1260 = load i32, i32* %D.i113, align 4
  %1261 = load i32, i32* %C.i112, align 4
  %add598.i739 = add i32 %1261, %1260
  store i32 %add598.i739, i32* %C.i112, align 4
  %1262 = load i32, i32* %XX0.i115, align 4
  %conv599.i740 = zext i32 %1262 to i64
  %add600.i741 = add nsw i64 %conv599.i740, 3921069994
  %1263 = load i32, i32* %C.i112, align 4
  %1264 = load i32, i32* %D.i113, align 4
  %xor601.i742 = xor i32 %1263, %1264
  %1265 = load i32, i32* %A.i110, align 4
  %and602.i743 = and i32 %xor601.i742, %1265
  %1266 = load i32, i32* %D.i113, align 4
  %xor603.i744 = xor i32 %and602.i743, %1266
  %conv604.i745 = zext i32 %xor603.i744 to i64
  %add605.i746 = add nsw i64 %add600.i741, %conv604.i745
  %1267 = load i32, i32* %B.i111, align 4
  %conv606.i747 = zext i32 %1267 to i64
  %add607.i748 = add nsw i64 %conv606.i747, %add605.i746
  %conv608.i749 = trunc i64 %add607.i748 to i32
  store i32 %conv608.i749, i32* %B.i111, align 4
  %1268 = load i32, i32* %B.i111, align 4
  %shl609.i750 = shl i32 %1268, 20
  %1269 = load i32, i32* %B.i111, align 4
  %shr610.i751 = lshr i32 %1269, 12
  %or611.i752 = or i32 %shl609.i750, %shr610.i751
  store i32 %or611.i752, i32* %B.i111, align 4
  %1270 = load i32, i32* %C.i112, align 4
  %1271 = load i32, i32* %B.i111, align 4
  %add612.i753 = add i32 %1271, %1270
  store i32 %add612.i753, i32* %B.i111, align 4
  %1272 = load i32, i32* %XX5.i120, align 4
  %conv613.i754 = zext i32 %1272 to i64
  %add614.i755 = add nsw i64 %conv613.i754, 3593408605
  %1273 = load i32, i32* %B.i111, align 4
  %1274 = load i32, i32* %C.i112, align 4
  %xor615.i756 = xor i32 %1273, %1274
  %1275 = load i32, i32* %D.i113, align 4
  %and616.i757 = and i32 %xor615.i756, %1275
  %1276 = load i32, i32* %C.i112, align 4
  %xor617.i758 = xor i32 %and616.i757, %1276
  %conv618.i759 = zext i32 %xor617.i758 to i64
  %add619.i760 = add nsw i64 %add614.i755, %conv618.i759
  %1277 = load i32, i32* %A.i110, align 4
  %conv620.i761 = zext i32 %1277 to i64
  %add621.i762 = add nsw i64 %conv620.i761, %add619.i760
  %conv622.i763 = trunc i64 %add621.i762 to i32
  store i32 %conv622.i763, i32* %A.i110, align 4
  %1278 = load i32, i32* %A.i110, align 4
  %shl623.i764 = shl i32 %1278, 5
  %1279 = load i32, i32* %A.i110, align 4
  %shr624.i765 = lshr i32 %1279, 27
  %or625.i766 = or i32 %shl623.i764, %shr624.i765
  store i32 %or625.i766, i32* %A.i110, align 4
  %1280 = load i32, i32* %B.i111, align 4
  %1281 = load i32, i32* %A.i110, align 4
  %add626.i767 = add i32 %1281, %1280
  store i32 %add626.i767, i32* %A.i110, align 4
  %1282 = load i32, i32* %XX10.i125, align 4
  %conv627.i768 = zext i32 %1282 to i64
  %add628.i769 = add nsw i64 %conv627.i768, 38016083
  %1283 = load i32, i32* %A.i110, align 4
  %1284 = load i32, i32* %B.i111, align 4
  %xor629.i770 = xor i32 %1283, %1284
  %1285 = load i32, i32* %C.i112, align 4
  %and630.i771 = and i32 %xor629.i770, %1285
  %1286 = load i32, i32* %B.i111, align 4
  %xor631.i772 = xor i32 %and630.i771, %1286
  %conv632.i773 = zext i32 %xor631.i772 to i64
  %add633.i774 = add nsw i64 %add628.i769, %conv632.i773
  %1287 = load i32, i32* %D.i113, align 4
  %conv634.i775 = zext i32 %1287 to i64
  %add635.i776 = add nsw i64 %conv634.i775, %add633.i774
  %conv636.i777 = trunc i64 %add635.i776 to i32
  store i32 %conv636.i777, i32* %D.i113, align 4
  %1288 = load i32, i32* %D.i113, align 4
  %shl637.i778 = shl i32 %1288, 9
  %1289 = load i32, i32* %D.i113, align 4
  %shr638.i779 = lshr i32 %1289, 23
  %or639.i780 = or i32 %shl637.i778, %shr638.i779
  store i32 %or639.i780, i32* %D.i113, align 4
  %1290 = load i32, i32* %A.i110, align 4
  %1291 = load i32, i32* %D.i113, align 4
  %add640.i781 = add i32 %1291, %1290
  store i32 %add640.i781, i32* %D.i113, align 4
  %1292 = load i32, i32* %XX15.i130, align 4
  %conv641.i782 = zext i32 %1292 to i64
  %add642.i783 = add nsw i64 %conv641.i782, 3634488961
  %1293 = load i32, i32* %D.i113, align 4
  %1294 = load i32, i32* %A.i110, align 4
  %xor643.i784 = xor i32 %1293, %1294
  %1295 = load i32, i32* %B.i111, align 4
  %and644.i785 = and i32 %xor643.i784, %1295
  %1296 = load i32, i32* %A.i110, align 4
  %xor645.i786 = xor i32 %and644.i785, %1296
  %conv646.i787 = zext i32 %xor645.i786 to i64
  %add647.i788 = add nsw i64 %add642.i783, %conv646.i787
  %1297 = load i32, i32* %C.i112, align 4
  %conv648.i789 = zext i32 %1297 to i64
  %add649.i790 = add nsw i64 %conv648.i789, %add647.i788
  %conv650.i791 = trunc i64 %add649.i790 to i32
  store i32 %conv650.i791, i32* %C.i112, align 4
  %1298 = load i32, i32* %C.i112, align 4
  %shl651.i792 = shl i32 %1298, 14
  %1299 = load i32, i32* %C.i112, align 4
  %shr652.i793 = lshr i32 %1299, 18
  %or653.i794 = or i32 %shl651.i792, %shr652.i793
  store i32 %or653.i794, i32* %C.i112, align 4
  %1300 = load i32, i32* %D.i113, align 4
  %1301 = load i32, i32* %C.i112, align 4
  %add654.i795 = add i32 %1301, %1300
  store i32 %add654.i795, i32* %C.i112, align 4
  %1302 = load i32, i32* %XX4.i119, align 4
  %conv655.i796 = zext i32 %1302 to i64
  %add656.i797 = add nsw i64 %conv655.i796, 3889429448
  %1303 = load i32, i32* %C.i112, align 4
  %1304 = load i32, i32* %D.i113, align 4
  %xor657.i798 = xor i32 %1303, %1304
  %1305 = load i32, i32* %A.i110, align 4
  %and658.i799 = and i32 %xor657.i798, %1305
  %1306 = load i32, i32* %D.i113, align 4
  %xor659.i800 = xor i32 %and658.i799, %1306
  %conv660.i801 = zext i32 %xor659.i800 to i64
  %add661.i802 = add nsw i64 %add656.i797, %conv660.i801
  %1307 = load i32, i32* %B.i111, align 4
  %conv662.i803 = zext i32 %1307 to i64
  %add663.i804 = add nsw i64 %conv662.i803, %add661.i802
  %conv664.i805 = trunc i64 %add663.i804 to i32
  store i32 %conv664.i805, i32* %B.i111, align 4
  %1308 = load i32, i32* %B.i111, align 4
  %shl665.i806 = shl i32 %1308, 20
  %1309 = load i32, i32* %B.i111, align 4
  %shr666.i807 = lshr i32 %1309, 12
  %or667.i808 = or i32 %shl665.i806, %shr666.i807
  store i32 %or667.i808, i32* %B.i111, align 4
  %1310 = load i32, i32* %C.i112, align 4
  %1311 = load i32, i32* %B.i111, align 4
  %add668.i809 = add i32 %1311, %1310
  store i32 %add668.i809, i32* %B.i111, align 4
  %1312 = load i32, i32* %XX9.i124, align 4
  %conv669.i810 = zext i32 %1312 to i64
  %add670.i811 = add nsw i64 %conv669.i810, 568446438
  %1313 = load i32, i32* %B.i111, align 4
  %1314 = load i32, i32* %C.i112, align 4
  %xor671.i812 = xor i32 %1313, %1314
  %1315 = load i32, i32* %D.i113, align 4
  %and672.i813 = and i32 %xor671.i812, %1315
  %1316 = load i32, i32* %C.i112, align 4
  %xor673.i814 = xor i32 %and672.i813, %1316
  %conv674.i815 = zext i32 %xor673.i814 to i64
  %add675.i816 = add nsw i64 %add670.i811, %conv674.i815
  %1317 = load i32, i32* %A.i110, align 4
  %conv676.i817 = zext i32 %1317 to i64
  %add677.i818 = add nsw i64 %conv676.i817, %add675.i816
  %conv678.i819 = trunc i64 %add677.i818 to i32
  store i32 %conv678.i819, i32* %A.i110, align 4
  %1318 = load i32, i32* %A.i110, align 4
  %shl679.i820 = shl i32 %1318, 5
  %1319 = load i32, i32* %A.i110, align 4
  %shr680.i821 = lshr i32 %1319, 27
  %or681.i822 = or i32 %shl679.i820, %shr680.i821
  store i32 %or681.i822, i32* %A.i110, align 4
  %1320 = load i32, i32* %B.i111, align 4
  %1321 = load i32, i32* %A.i110, align 4
  %add682.i823 = add i32 %1321, %1320
  store i32 %add682.i823, i32* %A.i110, align 4
  %1322 = load i32, i32* %XX14.i129, align 4
  %conv683.i824 = zext i32 %1322 to i64
  %add684.i825 = add nsw i64 %conv683.i824, 3275163606
  %1323 = load i32, i32* %A.i110, align 4
  %1324 = load i32, i32* %B.i111, align 4
  %xor685.i826 = xor i32 %1323, %1324
  %1325 = load i32, i32* %C.i112, align 4
  %and686.i827 = and i32 %xor685.i826, %1325
  %1326 = load i32, i32* %B.i111, align 4
  %xor687.i828 = xor i32 %and686.i827, %1326
  %conv688.i829 = zext i32 %xor687.i828 to i64
  %add689.i830 = add nsw i64 %add684.i825, %conv688.i829
  %1327 = load i32, i32* %D.i113, align 4
  %conv690.i831 = zext i32 %1327 to i64
  %add691.i832 = add nsw i64 %conv690.i831, %add689.i830
  %conv692.i833 = trunc i64 %add691.i832 to i32
  store i32 %conv692.i833, i32* %D.i113, align 4
  %1328 = load i32, i32* %D.i113, align 4
  %shl693.i834 = shl i32 %1328, 9
  %1329 = load i32, i32* %D.i113, align 4
  %shr694.i835 = lshr i32 %1329, 23
  %or695.i836 = or i32 %shl693.i834, %shr694.i835
  store i32 %or695.i836, i32* %D.i113, align 4
  %1330 = load i32, i32* %A.i110, align 4
  %1331 = load i32, i32* %D.i113, align 4
  %add696.i837 = add i32 %1331, %1330
  store i32 %add696.i837, i32* %D.i113, align 4
  %1332 = load i32, i32* %XX3.i118, align 4
  %conv697.i838 = zext i32 %1332 to i64
  %add698.i839 = add nsw i64 %conv697.i838, 4107603335
  %1333 = load i32, i32* %D.i113, align 4
  %1334 = load i32, i32* %A.i110, align 4
  %xor699.i840 = xor i32 %1333, %1334
  %1335 = load i32, i32* %B.i111, align 4
  %and700.i841 = and i32 %xor699.i840, %1335
  %1336 = load i32, i32* %A.i110, align 4
  %xor701.i842 = xor i32 %and700.i841, %1336
  %conv702.i843 = zext i32 %xor701.i842 to i64
  %add703.i844 = add nsw i64 %add698.i839, %conv702.i843
  %1337 = load i32, i32* %C.i112, align 4
  %conv704.i845 = zext i32 %1337 to i64
  %add705.i846 = add nsw i64 %conv704.i845, %add703.i844
  %conv706.i847 = trunc i64 %add705.i846 to i32
  store i32 %conv706.i847, i32* %C.i112, align 4
  %1338 = load i32, i32* %C.i112, align 4
  %shl707.i848 = shl i32 %1338, 14
  %1339 = load i32, i32* %C.i112, align 4
  %shr708.i849 = lshr i32 %1339, 18
  %or709.i850 = or i32 %shl707.i848, %shr708.i849
  store i32 %or709.i850, i32* %C.i112, align 4
  %1340 = load i32, i32* %D.i113, align 4
  %1341 = load i32, i32* %C.i112, align 4
  %add710.i851 = add i32 %1341, %1340
  store i32 %add710.i851, i32* %C.i112, align 4
  %1342 = load i32, i32* %XX8.i123, align 4
  %conv711.i852 = zext i32 %1342 to i64
  %add712.i853 = add nsw i64 %conv711.i852, 1163531501
  %1343 = load i32, i32* %C.i112, align 4
  %1344 = load i32, i32* %D.i113, align 4
  %xor713.i854 = xor i32 %1343, %1344
  %1345 = load i32, i32* %A.i110, align 4
  %and714.i855 = and i32 %xor713.i854, %1345
  %1346 = load i32, i32* %D.i113, align 4
  %xor715.i856 = xor i32 %and714.i855, %1346
  %conv716.i857 = zext i32 %xor715.i856 to i64
  %add717.i858 = add nsw i64 %add712.i853, %conv716.i857
  %1347 = load i32, i32* %B.i111, align 4
  %conv718.i859 = zext i32 %1347 to i64
  %add719.i860 = add nsw i64 %conv718.i859, %add717.i858
  %conv720.i861 = trunc i64 %add719.i860 to i32
  store i32 %conv720.i861, i32* %B.i111, align 4
  %1348 = load i32, i32* %B.i111, align 4
  %shl721.i862 = shl i32 %1348, 20
  %1349 = load i32, i32* %B.i111, align 4
  %shr722.i863 = lshr i32 %1349, 12
  %or723.i864 = or i32 %shl721.i862, %shr722.i863
  store i32 %or723.i864, i32* %B.i111, align 4
  %1350 = load i32, i32* %C.i112, align 4
  %1351 = load i32, i32* %B.i111, align 4
  %add724.i865 = add i32 %1351, %1350
  store i32 %add724.i865, i32* %B.i111, align 4
  %1352 = load i32, i32* %XX13.i128, align 4
  %conv725.i866 = zext i32 %1352 to i64
  %add726.i867 = add nsw i64 %conv725.i866, 2850285829
  %1353 = load i32, i32* %B.i111, align 4
  %1354 = load i32, i32* %C.i112, align 4
  %xor727.i868 = xor i32 %1353, %1354
  %1355 = load i32, i32* %D.i113, align 4
  %and728.i869 = and i32 %xor727.i868, %1355
  %1356 = load i32, i32* %C.i112, align 4
  %xor729.i870 = xor i32 %and728.i869, %1356
  %conv730.i871 = zext i32 %xor729.i870 to i64
  %add731.i872 = add nsw i64 %add726.i867, %conv730.i871
  %1357 = load i32, i32* %A.i110, align 4
  %conv732.i873 = zext i32 %1357 to i64
  %add733.i874 = add nsw i64 %conv732.i873, %add731.i872
  %conv734.i875 = trunc i64 %add733.i874 to i32
  store i32 %conv734.i875, i32* %A.i110, align 4
  %1358 = load i32, i32* %A.i110, align 4
  %shl735.i876 = shl i32 %1358, 5
  %1359 = load i32, i32* %A.i110, align 4
  %shr736.i877 = lshr i32 %1359, 27
  %or737.i878 = or i32 %shl735.i876, %shr736.i877
  store i32 %or737.i878, i32* %A.i110, align 4
  %1360 = load i32, i32* %B.i111, align 4
  %1361 = load i32, i32* %A.i110, align 4
  %add738.i879 = add i32 %1361, %1360
  store i32 %add738.i879, i32* %A.i110, align 4
  %1362 = load i32, i32* %XX2.i117, align 4
  %conv739.i880 = zext i32 %1362 to i64
  %add740.i881 = add nsw i64 %conv739.i880, 4243563512
  %1363 = load i32, i32* %A.i110, align 4
  %1364 = load i32, i32* %B.i111, align 4
  %xor741.i882 = xor i32 %1363, %1364
  %1365 = load i32, i32* %C.i112, align 4
  %and742.i883 = and i32 %xor741.i882, %1365
  %1366 = load i32, i32* %B.i111, align 4
  %xor743.i884 = xor i32 %and742.i883, %1366
  %conv744.i885 = zext i32 %xor743.i884 to i64
  %add745.i886 = add nsw i64 %add740.i881, %conv744.i885
  %1367 = load i32, i32* %D.i113, align 4
  %conv746.i887 = zext i32 %1367 to i64
  %add747.i888 = add nsw i64 %conv746.i887, %add745.i886
  %conv748.i889 = trunc i64 %add747.i888 to i32
  store i32 %conv748.i889, i32* %D.i113, align 4
  %1368 = load i32, i32* %D.i113, align 4
  %shl749.i890 = shl i32 %1368, 9
  %1369 = load i32, i32* %D.i113, align 4
  %shr750.i891 = lshr i32 %1369, 23
  %or751.i892 = or i32 %shl749.i890, %shr750.i891
  store i32 %or751.i892, i32* %D.i113, align 4
  %1370 = load i32, i32* %A.i110, align 4
  %1371 = load i32, i32* %D.i113, align 4
  %add752.i893 = add i32 %1371, %1370
  store i32 %add752.i893, i32* %D.i113, align 4
  %1372 = load i32, i32* %XX7.i122, align 4
  %conv753.i894 = zext i32 %1372 to i64
  %add754.i895 = add nsw i64 %conv753.i894, 1735328473
  %1373 = load i32, i32* %D.i113, align 4
  %1374 = load i32, i32* %A.i110, align 4
  %xor755.i896 = xor i32 %1373, %1374
  %1375 = load i32, i32* %B.i111, align 4
  %and756.i897 = and i32 %xor755.i896, %1375
  %1376 = load i32, i32* %A.i110, align 4
  %xor757.i898 = xor i32 %and756.i897, %1376
  %conv758.i899 = zext i32 %xor757.i898 to i64
  %add759.i900 = add nsw i64 %add754.i895, %conv758.i899
  %1377 = load i32, i32* %C.i112, align 4
  %conv760.i901 = zext i32 %1377 to i64
  %add761.i902 = add nsw i64 %conv760.i901, %add759.i900
  %conv762.i903 = trunc i64 %add761.i902 to i32
  store i32 %conv762.i903, i32* %C.i112, align 4
  %1378 = load i32, i32* %C.i112, align 4
  %shl763.i904 = shl i32 %1378, 14
  %1379 = load i32, i32* %C.i112, align 4
  %shr764.i905 = lshr i32 %1379, 18
  %or765.i906 = or i32 %shl763.i904, %shr764.i905
  store i32 %or765.i906, i32* %C.i112, align 4
  %1380 = load i32, i32* %D.i113, align 4
  %1381 = load i32, i32* %C.i112, align 4
  %add766.i907 = add i32 %1381, %1380
  store i32 %add766.i907, i32* %C.i112, align 4
  %1382 = load i32, i32* %XX12.i127, align 4
  %conv767.i908 = zext i32 %1382 to i64
  %add768.i909 = add nsw i64 %conv767.i908, 2368359562
  %1383 = load i32, i32* %C.i112, align 4
  %1384 = load i32, i32* %D.i113, align 4
  %xor769.i910 = xor i32 %1383, %1384
  %1385 = load i32, i32* %A.i110, align 4
  %and770.i911 = and i32 %xor769.i910, %1385
  %1386 = load i32, i32* %D.i113, align 4
  %xor771.i912 = xor i32 %and770.i911, %1386
  %conv772.i913 = zext i32 %xor771.i912 to i64
  %add773.i914 = add nsw i64 %add768.i909, %conv772.i913
  %1387 = load i32, i32* %B.i111, align 4
  %conv774.i915 = zext i32 %1387 to i64
  %add775.i916 = add nsw i64 %conv774.i915, %add773.i914
  %conv776.i917 = trunc i64 %add775.i916 to i32
  store i32 %conv776.i917, i32* %B.i111, align 4
  %1388 = load i32, i32* %B.i111, align 4
  %shl777.i918 = shl i32 %1388, 20
  %1389 = load i32, i32* %B.i111, align 4
  %shr778.i919 = lshr i32 %1389, 12
  %or779.i920 = or i32 %shl777.i918, %shr778.i919
  store i32 %or779.i920, i32* %B.i111, align 4
  %1390 = load i32, i32* %C.i112, align 4
  %1391 = load i32, i32* %B.i111, align 4
  %add780.i921 = add i32 %1391, %1390
  store i32 %add780.i921, i32* %B.i111, align 4
  %1392 = load i32, i32* %XX5.i120, align 4
  %conv781.i922 = zext i32 %1392 to i64
  %add782.i923 = add nsw i64 %conv781.i922, 4294588738
  %1393 = load i32, i32* %B.i111, align 4
  %1394 = load i32, i32* %C.i112, align 4
  %xor783.i924 = xor i32 %1393, %1394
  %1395 = load i32, i32* %D.i113, align 4
  %xor784.i925 = xor i32 %xor783.i924, %1395
  %conv785.i926 = zext i32 %xor784.i925 to i64
  %add786.i927 = add nsw i64 %add782.i923, %conv785.i926
  %1396 = load i32, i32* %A.i110, align 4
  %conv787.i928 = zext i32 %1396 to i64
  %add788.i929 = add nsw i64 %conv787.i928, %add786.i927
  %conv789.i930 = trunc i64 %add788.i929 to i32
  store i32 %conv789.i930, i32* %A.i110, align 4
  %1397 = load i32, i32* %A.i110, align 4
  %shl790.i931 = shl i32 %1397, 4
  %1398 = load i32, i32* %A.i110, align 4
  %shr791.i932 = lshr i32 %1398, 28
  %or792.i933 = or i32 %shl790.i931, %shr791.i932
  store i32 %or792.i933, i32* %A.i110, align 4
  %1399 = load i32, i32* %B.i111, align 4
  %1400 = load i32, i32* %A.i110, align 4
  %add793.i934 = add i32 %1400, %1399
  store i32 %add793.i934, i32* %A.i110, align 4
  %1401 = load i32, i32* %XX8.i123, align 4
  %conv794.i935 = zext i32 %1401 to i64
  %add795.i936 = add nsw i64 %conv794.i935, 2272392833
  %1402 = load i32, i32* %A.i110, align 4
  %1403 = load i32, i32* %B.i111, align 4
  %xor796.i937 = xor i32 %1402, %1403
  %1404 = load i32, i32* %C.i112, align 4
  %xor797.i938 = xor i32 %xor796.i937, %1404
  %conv798.i939 = zext i32 %xor797.i938 to i64
  %add799.i940 = add nsw i64 %add795.i936, %conv798.i939
  %1405 = load i32, i32* %D.i113, align 4
  %conv800.i941 = zext i32 %1405 to i64
  %add801.i942 = add nsw i64 %conv800.i941, %add799.i940
  %conv802.i943 = trunc i64 %add801.i942 to i32
  store i32 %conv802.i943, i32* %D.i113, align 4
  %1406 = load i32, i32* %D.i113, align 4
  %shl803.i944 = shl i32 %1406, 11
  %1407 = load i32, i32* %D.i113, align 4
  %shr804.i945 = lshr i32 %1407, 21
  %or805.i946 = or i32 %shl803.i944, %shr804.i945
  store i32 %or805.i946, i32* %D.i113, align 4
  %1408 = load i32, i32* %A.i110, align 4
  %1409 = load i32, i32* %D.i113, align 4
  %add806.i947 = add i32 %1409, %1408
  store i32 %add806.i947, i32* %D.i113, align 4
  %1410 = load i32, i32* %XX11.i126, align 4
  %conv807.i948 = zext i32 %1410 to i64
  %add808.i949 = add nsw i64 %conv807.i948, 1839030562
  %1411 = load i32, i32* %D.i113, align 4
  %1412 = load i32, i32* %A.i110, align 4
  %xor809.i950 = xor i32 %1411, %1412
  %1413 = load i32, i32* %B.i111, align 4
  %xor810.i951 = xor i32 %xor809.i950, %1413
  %conv811.i952 = zext i32 %xor810.i951 to i64
  %add812.i953 = add nsw i64 %add808.i949, %conv811.i952
  %1414 = load i32, i32* %C.i112, align 4
  %conv813.i954 = zext i32 %1414 to i64
  %add814.i955 = add nsw i64 %conv813.i954, %add812.i953
  %conv815.i956 = trunc i64 %add814.i955 to i32
  store i32 %conv815.i956, i32* %C.i112, align 4
  %1415 = load i32, i32* %C.i112, align 4
  %shl816.i957 = shl i32 %1415, 16
  %1416 = load i32, i32* %C.i112, align 4
  %shr817.i958 = lshr i32 %1416, 16
  %or818.i959 = or i32 %shl816.i957, %shr817.i958
  store i32 %or818.i959, i32* %C.i112, align 4
  %1417 = load i32, i32* %D.i113, align 4
  %1418 = load i32, i32* %C.i112, align 4
  %add819.i960 = add i32 %1418, %1417
  store i32 %add819.i960, i32* %C.i112, align 4
  %1419 = load i32, i32* %XX14.i129, align 4
  %conv820.i961 = zext i32 %1419 to i64
  %add821.i962 = add nsw i64 %conv820.i961, 4259657740
  %1420 = load i32, i32* %C.i112, align 4
  %1421 = load i32, i32* %D.i113, align 4
  %xor822.i963 = xor i32 %1420, %1421
  %1422 = load i32, i32* %A.i110, align 4
  %xor823.i964 = xor i32 %xor822.i963, %1422
  %conv824.i965 = zext i32 %xor823.i964 to i64
  %add825.i966 = add nsw i64 %add821.i962, %conv824.i965
  %1423 = load i32, i32* %B.i111, align 4
  %conv826.i967 = zext i32 %1423 to i64
  %add827.i968 = add nsw i64 %conv826.i967, %add825.i966
  %conv828.i969 = trunc i64 %add827.i968 to i32
  store i32 %conv828.i969, i32* %B.i111, align 4
  %1424 = load i32, i32* %B.i111, align 4
  %shl829.i970 = shl i32 %1424, 23
  %1425 = load i32, i32* %B.i111, align 4
  %shr830.i971 = lshr i32 %1425, 9
  %or831.i972 = or i32 %shl829.i970, %shr830.i971
  store i32 %or831.i972, i32* %B.i111, align 4
  %1426 = load i32, i32* %C.i112, align 4
  %1427 = load i32, i32* %B.i111, align 4
  %add832.i973 = add i32 %1427, %1426
  store i32 %add832.i973, i32* %B.i111, align 4
  %1428 = load i32, i32* %XX1.i116, align 4
  %conv833.i974 = zext i32 %1428 to i64
  %add834.i975 = add nsw i64 %conv833.i974, 2763975236
  %1429 = load i32, i32* %B.i111, align 4
  %1430 = load i32, i32* %C.i112, align 4
  %xor835.i976 = xor i32 %1429, %1430
  %1431 = load i32, i32* %D.i113, align 4
  %xor836.i977 = xor i32 %xor835.i976, %1431
  %conv837.i978 = zext i32 %xor836.i977 to i64
  %add838.i979 = add nsw i64 %add834.i975, %conv837.i978
  %1432 = load i32, i32* %A.i110, align 4
  %conv839.i980 = zext i32 %1432 to i64
  %add840.i981 = add nsw i64 %conv839.i980, %add838.i979
  %conv841.i982 = trunc i64 %add840.i981 to i32
  store i32 %conv841.i982, i32* %A.i110, align 4
  %1433 = load i32, i32* %A.i110, align 4
  %shl842.i983 = shl i32 %1433, 4
  %1434 = load i32, i32* %A.i110, align 4
  %shr843.i984 = lshr i32 %1434, 28
  %or844.i985 = or i32 %shl842.i983, %shr843.i984
  store i32 %or844.i985, i32* %A.i110, align 4
  %1435 = load i32, i32* %B.i111, align 4
  %1436 = load i32, i32* %A.i110, align 4
  %add845.i986 = add i32 %1436, %1435
  store i32 %add845.i986, i32* %A.i110, align 4
  %1437 = load i32, i32* %XX4.i119, align 4
  %conv846.i987 = zext i32 %1437 to i64
  %add847.i988 = add nsw i64 %conv846.i987, 1272893353
  %1438 = load i32, i32* %A.i110, align 4
  %1439 = load i32, i32* %B.i111, align 4
  %xor848.i989 = xor i32 %1438, %1439
  %1440 = load i32, i32* %C.i112, align 4
  %xor849.i990 = xor i32 %xor848.i989, %1440
  %conv850.i991 = zext i32 %xor849.i990 to i64
  %add851.i992 = add nsw i64 %add847.i988, %conv850.i991
  %1441 = load i32, i32* %D.i113, align 4
  %conv852.i993 = zext i32 %1441 to i64
  %add853.i994 = add nsw i64 %conv852.i993, %add851.i992
  %conv854.i995 = trunc i64 %add853.i994 to i32
  store i32 %conv854.i995, i32* %D.i113, align 4
  %1442 = load i32, i32* %D.i113, align 4
  %shl855.i996 = shl i32 %1442, 11
  %1443 = load i32, i32* %D.i113, align 4
  %shr856.i997 = lshr i32 %1443, 21
  %or857.i998 = or i32 %shl855.i996, %shr856.i997
  store i32 %or857.i998, i32* %D.i113, align 4
  %1444 = load i32, i32* %A.i110, align 4
  %1445 = load i32, i32* %D.i113, align 4
  %add858.i999 = add i32 %1445, %1444
  store i32 %add858.i999, i32* %D.i113, align 4
  %1446 = load i32, i32* %XX7.i122, align 4
  %conv859.i1000 = zext i32 %1446 to i64
  %add860.i1001 = add nsw i64 %conv859.i1000, 4139469664
  %1447 = load i32, i32* %D.i113, align 4
  %1448 = load i32, i32* %A.i110, align 4
  %xor861.i1002 = xor i32 %1447, %1448
  %1449 = load i32, i32* %B.i111, align 4
  %xor862.i1003 = xor i32 %xor861.i1002, %1449
  %conv863.i1004 = zext i32 %xor862.i1003 to i64
  %add864.i1005 = add nsw i64 %add860.i1001, %conv863.i1004
  %1450 = load i32, i32* %C.i112, align 4
  %conv865.i1006 = zext i32 %1450 to i64
  %add866.i1007 = add nsw i64 %conv865.i1006, %add864.i1005
  %conv867.i1008 = trunc i64 %add866.i1007 to i32
  store i32 %conv867.i1008, i32* %C.i112, align 4
  %1451 = load i32, i32* %C.i112, align 4
  %shl868.i1009 = shl i32 %1451, 16
  %1452 = load i32, i32* %C.i112, align 4
  %shr869.i1010 = lshr i32 %1452, 16
  %or870.i1011 = or i32 %shl868.i1009, %shr869.i1010
  store i32 %or870.i1011, i32* %C.i112, align 4
  %1453 = load i32, i32* %D.i113, align 4
  %1454 = load i32, i32* %C.i112, align 4
  %add871.i1012 = add i32 %1454, %1453
  store i32 %add871.i1012, i32* %C.i112, align 4
  %1455 = load i32, i32* %XX10.i125, align 4
  %conv872.i1013 = zext i32 %1455 to i64
  %add873.i1014 = add nsw i64 %conv872.i1013, 3200236656
  %1456 = load i32, i32* %C.i112, align 4
  %1457 = load i32, i32* %D.i113, align 4
  %xor874.i1015 = xor i32 %1456, %1457
  %1458 = load i32, i32* %A.i110, align 4
  %xor875.i1016 = xor i32 %xor874.i1015, %1458
  %conv876.i1017 = zext i32 %xor875.i1016 to i64
  %add877.i1018 = add nsw i64 %add873.i1014, %conv876.i1017
  %1459 = load i32, i32* %B.i111, align 4
  %conv878.i1019 = zext i32 %1459 to i64
  %add879.i1020 = add nsw i64 %conv878.i1019, %add877.i1018
  %conv880.i1021 = trunc i64 %add879.i1020 to i32
  store i32 %conv880.i1021, i32* %B.i111, align 4
  %1460 = load i32, i32* %B.i111, align 4
  %shl881.i1022 = shl i32 %1460, 23
  %1461 = load i32, i32* %B.i111, align 4
  %shr882.i1023 = lshr i32 %1461, 9
  %or883.i1024 = or i32 %shl881.i1022, %shr882.i1023
  store i32 %or883.i1024, i32* %B.i111, align 4
  %1462 = load i32, i32* %C.i112, align 4
  %1463 = load i32, i32* %B.i111, align 4
  %add884.i1025 = add i32 %1463, %1462
  store i32 %add884.i1025, i32* %B.i111, align 4
  %1464 = load i32, i32* %XX13.i128, align 4
  %conv885.i1026 = zext i32 %1464 to i64
  %add886.i1027 = add nsw i64 %conv885.i1026, 681279174
  %1465 = load i32, i32* %B.i111, align 4
  %1466 = load i32, i32* %C.i112, align 4
  %xor887.i1028 = xor i32 %1465, %1466
  %1467 = load i32, i32* %D.i113, align 4
  %xor888.i1029 = xor i32 %xor887.i1028, %1467
  %conv889.i1030 = zext i32 %xor888.i1029 to i64
  %add890.i1031 = add nsw i64 %add886.i1027, %conv889.i1030
  %1468 = load i32, i32* %A.i110, align 4
  %conv891.i1032 = zext i32 %1468 to i64
  %add892.i1033 = add nsw i64 %conv891.i1032, %add890.i1031
  %conv893.i1034 = trunc i64 %add892.i1033 to i32
  store i32 %conv893.i1034, i32* %A.i110, align 4
  %1469 = load i32, i32* %A.i110, align 4
  %shl894.i1035 = shl i32 %1469, 4
  %1470 = load i32, i32* %A.i110, align 4
  %shr895.i1036 = lshr i32 %1470, 28
  %or896.i1037 = or i32 %shl894.i1035, %shr895.i1036
  store i32 %or896.i1037, i32* %A.i110, align 4
  %1471 = load i32, i32* %B.i111, align 4
  %1472 = load i32, i32* %A.i110, align 4
  %add897.i1038 = add i32 %1472, %1471
  store i32 %add897.i1038, i32* %A.i110, align 4
  %1473 = load i32, i32* %XX0.i115, align 4
  %conv898.i1039 = zext i32 %1473 to i64
  %add899.i1040 = add nsw i64 %conv898.i1039, 3936430074
  %1474 = load i32, i32* %A.i110, align 4
  %1475 = load i32, i32* %B.i111, align 4
  %xor900.i1041 = xor i32 %1474, %1475
  %1476 = load i32, i32* %C.i112, align 4
  %xor901.i1042 = xor i32 %xor900.i1041, %1476
  %conv902.i1043 = zext i32 %xor901.i1042 to i64
  %add903.i1044 = add nsw i64 %add899.i1040, %conv902.i1043
  %1477 = load i32, i32* %D.i113, align 4
  %conv904.i1045 = zext i32 %1477 to i64
  %add905.i1046 = add nsw i64 %conv904.i1045, %add903.i1044
  %conv906.i1047 = trunc i64 %add905.i1046 to i32
  store i32 %conv906.i1047, i32* %D.i113, align 4
  %1478 = load i32, i32* %D.i113, align 4
  %shl907.i1048 = shl i32 %1478, 11
  %1479 = load i32, i32* %D.i113, align 4
  %shr908.i1049 = lshr i32 %1479, 21
  %or909.i1050 = or i32 %shl907.i1048, %shr908.i1049
  store i32 %or909.i1050, i32* %D.i113, align 4
  %1480 = load i32, i32* %A.i110, align 4
  %1481 = load i32, i32* %D.i113, align 4
  %add910.i1051 = add i32 %1481, %1480
  store i32 %add910.i1051, i32* %D.i113, align 4
  %1482 = load i32, i32* %XX3.i118, align 4
  %conv911.i1052 = zext i32 %1482 to i64
  %add912.i1053 = add nsw i64 %conv911.i1052, 3572445317
  %1483 = load i32, i32* %D.i113, align 4
  %1484 = load i32, i32* %A.i110, align 4
  %xor913.i1054 = xor i32 %1483, %1484
  %1485 = load i32, i32* %B.i111, align 4
  %xor914.i1055 = xor i32 %xor913.i1054, %1485
  %conv915.i1056 = zext i32 %xor914.i1055 to i64
  %add916.i1057 = add nsw i64 %add912.i1053, %conv915.i1056
  %1486 = load i32, i32* %C.i112, align 4
  %conv917.i1058 = zext i32 %1486 to i64
  %add918.i1059 = add nsw i64 %conv917.i1058, %add916.i1057
  %conv919.i1060 = trunc i64 %add918.i1059 to i32
  store i32 %conv919.i1060, i32* %C.i112, align 4
  %1487 = load i32, i32* %C.i112, align 4
  %shl920.i1061 = shl i32 %1487, 16
  %1488 = load i32, i32* %C.i112, align 4
  %shr921.i1062 = lshr i32 %1488, 16
  %or922.i1063 = or i32 %shl920.i1061, %shr921.i1062
  store i32 %or922.i1063, i32* %C.i112, align 4
  %1489 = load i32, i32* %D.i113, align 4
  %1490 = load i32, i32* %C.i112, align 4
  %add923.i1064 = add i32 %1490, %1489
  store i32 %add923.i1064, i32* %C.i112, align 4
  %1491 = load i32, i32* %XX6.i121, align 4
  %conv924.i1065 = zext i32 %1491 to i64
  %add925.i1066 = add nsw i64 %conv924.i1065, 76029189
  %1492 = load i32, i32* %C.i112, align 4
  %1493 = load i32, i32* %D.i113, align 4
  %xor926.i1067 = xor i32 %1492, %1493
  %1494 = load i32, i32* %A.i110, align 4
  %xor927.i1068 = xor i32 %xor926.i1067, %1494
  %conv928.i1069 = zext i32 %xor927.i1068 to i64
  %add929.i1070 = add nsw i64 %add925.i1066, %conv928.i1069
  %1495 = load i32, i32* %B.i111, align 4
  %conv930.i1071 = zext i32 %1495 to i64
  %add931.i1072 = add nsw i64 %conv930.i1071, %add929.i1070
  %conv932.i1073 = trunc i64 %add931.i1072 to i32
  store i32 %conv932.i1073, i32* %B.i111, align 4
  %1496 = load i32, i32* %B.i111, align 4
  %shl933.i1074 = shl i32 %1496, 23
  %1497 = load i32, i32* %B.i111, align 4
  %shr934.i1075 = lshr i32 %1497, 9
  %or935.i1076 = or i32 %shl933.i1074, %shr934.i1075
  store i32 %or935.i1076, i32* %B.i111, align 4
  %1498 = load i32, i32* %C.i112, align 4
  %1499 = load i32, i32* %B.i111, align 4
  %add936.i1077 = add i32 %1499, %1498
  store i32 %add936.i1077, i32* %B.i111, align 4
  %1500 = load i32, i32* %XX9.i124, align 4
  %conv937.i1078 = zext i32 %1500 to i64
  %add938.i1079 = add nsw i64 %conv937.i1078, 3654602809
  %1501 = load i32, i32* %B.i111, align 4
  %1502 = load i32, i32* %C.i112, align 4
  %xor939.i1080 = xor i32 %1501, %1502
  %1503 = load i32, i32* %D.i113, align 4
  %xor940.i1081 = xor i32 %xor939.i1080, %1503
  %conv941.i1082 = zext i32 %xor940.i1081 to i64
  %add942.i1083 = add nsw i64 %add938.i1079, %conv941.i1082
  %1504 = load i32, i32* %A.i110, align 4
  %conv943.i1084 = zext i32 %1504 to i64
  %add944.i1085 = add nsw i64 %conv943.i1084, %add942.i1083
  %conv945.i1086 = trunc i64 %add944.i1085 to i32
  store i32 %conv945.i1086, i32* %A.i110, align 4
  %1505 = load i32, i32* %A.i110, align 4
  %shl946.i1087 = shl i32 %1505, 4
  %1506 = load i32, i32* %A.i110, align 4
  %shr947.i1088 = lshr i32 %1506, 28
  %or948.i1089 = or i32 %shl946.i1087, %shr947.i1088
  store i32 %or948.i1089, i32* %A.i110, align 4
  %1507 = load i32, i32* %B.i111, align 4
  %1508 = load i32, i32* %A.i110, align 4
  %add949.i1090 = add i32 %1508, %1507
  store i32 %add949.i1090, i32* %A.i110, align 4
  %1509 = load i32, i32* %XX12.i127, align 4
  %conv950.i1091 = zext i32 %1509 to i64
  %add951.i1092 = add nsw i64 %conv950.i1091, 3873151461
  %1510 = load i32, i32* %A.i110, align 4
  %1511 = load i32, i32* %B.i111, align 4
  %xor952.i1093 = xor i32 %1510, %1511
  %1512 = load i32, i32* %C.i112, align 4
  %xor953.i1094 = xor i32 %xor952.i1093, %1512
  %conv954.i1095 = zext i32 %xor953.i1094 to i64
  %add955.i1096 = add nsw i64 %add951.i1092, %conv954.i1095
  %1513 = load i32, i32* %D.i113, align 4
  %conv956.i1097 = zext i32 %1513 to i64
  %add957.i1098 = add nsw i64 %conv956.i1097, %add955.i1096
  %conv958.i1099 = trunc i64 %add957.i1098 to i32
  store i32 %conv958.i1099, i32* %D.i113, align 4
  %1514 = load i32, i32* %D.i113, align 4
  %shl959.i1100 = shl i32 %1514, 11
  %1515 = load i32, i32* %D.i113, align 4
  %shr960.i1101 = lshr i32 %1515, 21
  %or961.i1102 = or i32 %shl959.i1100, %shr960.i1101
  store i32 %or961.i1102, i32* %D.i113, align 4
  %1516 = load i32, i32* %A.i110, align 4
  %1517 = load i32, i32* %D.i113, align 4
  %add962.i1103 = add i32 %1517, %1516
  store i32 %add962.i1103, i32* %D.i113, align 4
  %1518 = load i32, i32* %XX15.i130, align 4
  %conv963.i1104 = zext i32 %1518 to i64
  %add964.i1105 = add nsw i64 %conv963.i1104, 530742520
  %1519 = load i32, i32* %D.i113, align 4
  %1520 = load i32, i32* %A.i110, align 4
  %xor965.i1106 = xor i32 %1519, %1520
  %1521 = load i32, i32* %B.i111, align 4
  %xor966.i1107 = xor i32 %xor965.i1106, %1521
  %conv967.i1108 = zext i32 %xor966.i1107 to i64
  %add968.i1109 = add nsw i64 %add964.i1105, %conv967.i1108
  %1522 = load i32, i32* %C.i112, align 4
  %conv969.i1110 = zext i32 %1522 to i64
  %add970.i1111 = add nsw i64 %conv969.i1110, %add968.i1109
  %conv971.i1112 = trunc i64 %add970.i1111 to i32
  store i32 %conv971.i1112, i32* %C.i112, align 4
  %1523 = load i32, i32* %C.i112, align 4
  %shl972.i1113 = shl i32 %1523, 16
  %1524 = load i32, i32* %C.i112, align 4
  %shr973.i1114 = lshr i32 %1524, 16
  %or974.i1115 = or i32 %shl972.i1113, %shr973.i1114
  store i32 %or974.i1115, i32* %C.i112, align 4
  %1525 = load i32, i32* %D.i113, align 4
  %1526 = load i32, i32* %C.i112, align 4
  %add975.i1116 = add i32 %1526, %1525
  store i32 %add975.i1116, i32* %C.i112, align 4
  %1527 = load i32, i32* %XX2.i117, align 4
  %conv976.i1117 = zext i32 %1527 to i64
  %add977.i1118 = add nsw i64 %conv976.i1117, 3299628645
  %1528 = load i32, i32* %C.i112, align 4
  %1529 = load i32, i32* %D.i113, align 4
  %xor978.i1119 = xor i32 %1528, %1529
  %1530 = load i32, i32* %A.i110, align 4
  %xor979.i1120 = xor i32 %xor978.i1119, %1530
  %conv980.i1121 = zext i32 %xor979.i1120 to i64
  %add981.i1122 = add nsw i64 %add977.i1118, %conv980.i1121
  %1531 = load i32, i32* %B.i111, align 4
  %conv982.i1123 = zext i32 %1531 to i64
  %add983.i1124 = add nsw i64 %conv982.i1123, %add981.i1122
  %conv984.i1125 = trunc i64 %add983.i1124 to i32
  store i32 %conv984.i1125, i32* %B.i111, align 4
  %1532 = load i32, i32* %B.i111, align 4
  %shl985.i1126 = shl i32 %1532, 23
  %1533 = load i32, i32* %B.i111, align 4
  %shr986.i1127 = lshr i32 %1533, 9
  %or987.i1128 = or i32 %shl985.i1126, %shr986.i1127
  store i32 %or987.i1128, i32* %B.i111, align 4
  %1534 = load i32, i32* %C.i112, align 4
  %1535 = load i32, i32* %B.i111, align 4
  %add988.i1129 = add i32 %1535, %1534
  store i32 %add988.i1129, i32* %B.i111, align 4
  %1536 = load i32, i32* %XX0.i115, align 4
  %conv989.i1130 = zext i32 %1536 to i64
  %add990.i1131 = add nsw i64 %conv989.i1130, 4096336452
  %1537 = load i32, i32* %D.i113, align 4
  %neg.i1132 = xor i32 %1537, -1
  %1538 = load i32, i32* %B.i111, align 4
  %or991.i1133 = or i32 %neg.i1132, %1538
  %1539 = load i32, i32* %C.i112, align 4
  %xor992.i1134 = xor i32 %or991.i1133, %1539
  %conv993.i1135 = zext i32 %xor992.i1134 to i64
  %add994.i1136 = add nsw i64 %add990.i1131, %conv993.i1135
  %1540 = load i32, i32* %A.i110, align 4
  %conv995.i1137 = zext i32 %1540 to i64
  %add996.i1138 = add nsw i64 %conv995.i1137, %add994.i1136
  %conv997.i1139 = trunc i64 %add996.i1138 to i32
  store i32 %conv997.i1139, i32* %A.i110, align 4
  %1541 = load i32, i32* %A.i110, align 4
  %shl998.i1140 = shl i32 %1541, 6
  %1542 = load i32, i32* %A.i110, align 4
  %shr999.i1141 = lshr i32 %1542, 26
  %or1000.i1142 = or i32 %shl998.i1140, %shr999.i1141
  store i32 %or1000.i1142, i32* %A.i110, align 4
  %1543 = load i32, i32* %B.i111, align 4
  %1544 = load i32, i32* %A.i110, align 4
  %add1001.i1143 = add i32 %1544, %1543
  store i32 %add1001.i1143, i32* %A.i110, align 4
  %1545 = load i32, i32* %XX7.i122, align 4
  %conv1002.i1144 = zext i32 %1545 to i64
  %add1003.i1145 = add nsw i64 %conv1002.i1144, 1126891415
  %1546 = load i32, i32* %C.i112, align 4
  %neg1004.i1146 = xor i32 %1546, -1
  %1547 = load i32, i32* %A.i110, align 4
  %or1005.i1147 = or i32 %neg1004.i1146, %1547
  %1548 = load i32, i32* %B.i111, align 4
  %xor1006.i1148 = xor i32 %or1005.i1147, %1548
  %conv1007.i1149 = zext i32 %xor1006.i1148 to i64
  %add1008.i1150 = add nsw i64 %add1003.i1145, %conv1007.i1149
  %1549 = load i32, i32* %D.i113, align 4
  %conv1009.i1151 = zext i32 %1549 to i64
  %add1010.i1152 = add nsw i64 %conv1009.i1151, %add1008.i1150
  %conv1011.i1153 = trunc i64 %add1010.i1152 to i32
  store i32 %conv1011.i1153, i32* %D.i113, align 4
  %1550 = load i32, i32* %D.i113, align 4
  %shl1012.i1154 = shl i32 %1550, 10
  %1551 = load i32, i32* %D.i113, align 4
  %shr1013.i1155 = lshr i32 %1551, 22
  %or1014.i1156 = or i32 %shl1012.i1154, %shr1013.i1155
  store i32 %or1014.i1156, i32* %D.i113, align 4
  %1552 = load i32, i32* %A.i110, align 4
  %1553 = load i32, i32* %D.i113, align 4
  %add1015.i1157 = add i32 %1553, %1552
  store i32 %add1015.i1157, i32* %D.i113, align 4
  %1554 = load i32, i32* %XX14.i129, align 4
  %conv1016.i1158 = zext i32 %1554 to i64
  %add1017.i1159 = add nsw i64 %conv1016.i1158, 2878612391
  %1555 = load i32, i32* %B.i111, align 4
  %neg1018.i1160 = xor i32 %1555, -1
  %1556 = load i32, i32* %D.i113, align 4
  %or1019.i1161 = or i32 %neg1018.i1160, %1556
  %1557 = load i32, i32* %A.i110, align 4
  %xor1020.i1162 = xor i32 %or1019.i1161, %1557
  %conv1021.i1163 = zext i32 %xor1020.i1162 to i64
  %add1022.i1164 = add nsw i64 %add1017.i1159, %conv1021.i1163
  %1558 = load i32, i32* %C.i112, align 4
  %conv1023.i1165 = zext i32 %1558 to i64
  %add1024.i1166 = add nsw i64 %conv1023.i1165, %add1022.i1164
  %conv1025.i1167 = trunc i64 %add1024.i1166 to i32
  store i32 %conv1025.i1167, i32* %C.i112, align 4
  %1559 = load i32, i32* %C.i112, align 4
  %shl1026.i1168 = shl i32 %1559, 15
  %1560 = load i32, i32* %C.i112, align 4
  %shr1027.i1169 = lshr i32 %1560, 17
  %or1028.i1170 = or i32 %shl1026.i1168, %shr1027.i1169
  store i32 %or1028.i1170, i32* %C.i112, align 4
  %1561 = load i32, i32* %D.i113, align 4
  %1562 = load i32, i32* %C.i112, align 4
  %add1029.i1171 = add i32 %1562, %1561
  store i32 %add1029.i1171, i32* %C.i112, align 4
  %1563 = load i32, i32* %XX5.i120, align 4
  %conv1030.i1172 = zext i32 %1563 to i64
  %add1031.i1173 = add nsw i64 %conv1030.i1172, 4237533241
  %1564 = load i32, i32* %A.i110, align 4
  %neg1032.i1174 = xor i32 %1564, -1
  %1565 = load i32, i32* %C.i112, align 4
  %or1033.i1175 = or i32 %neg1032.i1174, %1565
  %1566 = load i32, i32* %D.i113, align 4
  %xor1034.i1176 = xor i32 %or1033.i1175, %1566
  %conv1035.i1177 = zext i32 %xor1034.i1176 to i64
  %add1036.i1178 = add nsw i64 %add1031.i1173, %conv1035.i1177
  %1567 = load i32, i32* %B.i111, align 4
  %conv1037.i1179 = zext i32 %1567 to i64
  %add1038.i1180 = add nsw i64 %conv1037.i1179, %add1036.i1178
  %conv1039.i1181 = trunc i64 %add1038.i1180 to i32
  store i32 %conv1039.i1181, i32* %B.i111, align 4
  %1568 = load i32, i32* %B.i111, align 4
  %shl1040.i1182 = shl i32 %1568, 21
  %1569 = load i32, i32* %B.i111, align 4
  %shr1041.i1183 = lshr i32 %1569, 11
  %or1042.i1184 = or i32 %shl1040.i1182, %shr1041.i1183
  store i32 %or1042.i1184, i32* %B.i111, align 4
  %1570 = load i32, i32* %C.i112, align 4
  %1571 = load i32, i32* %B.i111, align 4
  %add1043.i1185 = add i32 %1571, %1570
  store i32 %add1043.i1185, i32* %B.i111, align 4
  %1572 = load i32, i32* %XX12.i127, align 4
  %conv1044.i1186 = zext i32 %1572 to i64
  %add1045.i1187 = add nsw i64 %conv1044.i1186, 1700485571
  %1573 = load i32, i32* %D.i113, align 4
  %neg1046.i1188 = xor i32 %1573, -1
  %1574 = load i32, i32* %B.i111, align 4
  %or1047.i1189 = or i32 %neg1046.i1188, %1574
  %1575 = load i32, i32* %C.i112, align 4
  %xor1048.i1190 = xor i32 %or1047.i1189, %1575
  %conv1049.i1191 = zext i32 %xor1048.i1190 to i64
  %add1050.i1192 = add nsw i64 %add1045.i1187, %conv1049.i1191
  %1576 = load i32, i32* %A.i110, align 4
  %conv1051.i1193 = zext i32 %1576 to i64
  %add1052.i1194 = add nsw i64 %conv1051.i1193, %add1050.i1192
  %conv1053.i1195 = trunc i64 %add1052.i1194 to i32
  store i32 %conv1053.i1195, i32* %A.i110, align 4
  %1577 = load i32, i32* %A.i110, align 4
  %shl1054.i1196 = shl i32 %1577, 6
  %1578 = load i32, i32* %A.i110, align 4
  %shr1055.i1197 = lshr i32 %1578, 26
  %or1056.i1198 = or i32 %shl1054.i1196, %shr1055.i1197
  store i32 %or1056.i1198, i32* %A.i110, align 4
  %1579 = load i32, i32* %B.i111, align 4
  %1580 = load i32, i32* %A.i110, align 4
  %add1057.i1199 = add i32 %1580, %1579
  store i32 %add1057.i1199, i32* %A.i110, align 4
  %1581 = load i32, i32* %XX3.i118, align 4
  %conv1058.i1200 = zext i32 %1581 to i64
  %add1059.i1201 = add nsw i64 %conv1058.i1200, 2399980690
  %1582 = load i32, i32* %C.i112, align 4
  %neg1060.i1202 = xor i32 %1582, -1
  %1583 = load i32, i32* %A.i110, align 4
  %or1061.i1203 = or i32 %neg1060.i1202, %1583
  %1584 = load i32, i32* %B.i111, align 4
  %xor1062.i1204 = xor i32 %or1061.i1203, %1584
  %conv1063.i1205 = zext i32 %xor1062.i1204 to i64
  %add1064.i1206 = add nsw i64 %add1059.i1201, %conv1063.i1205
  %1585 = load i32, i32* %D.i113, align 4
  %conv1065.i1207 = zext i32 %1585 to i64
  %add1066.i1208 = add nsw i64 %conv1065.i1207, %add1064.i1206
  %conv1067.i1209 = trunc i64 %add1066.i1208 to i32
  store i32 %conv1067.i1209, i32* %D.i113, align 4
  %1586 = load i32, i32* %D.i113, align 4
  %shl1068.i1210 = shl i32 %1586, 10
  %1587 = load i32, i32* %D.i113, align 4
  %shr1069.i1211 = lshr i32 %1587, 22
  %or1070.i1212 = or i32 %shl1068.i1210, %shr1069.i1211
  store i32 %or1070.i1212, i32* %D.i113, align 4
  %1588 = load i32, i32* %A.i110, align 4
  %1589 = load i32, i32* %D.i113, align 4
  %add1071.i1213 = add i32 %1589, %1588
  store i32 %add1071.i1213, i32* %D.i113, align 4
  %1590 = load i32, i32* %XX10.i125, align 4
  %conv1072.i1214 = zext i32 %1590 to i64
  %add1073.i1215 = add nsw i64 %conv1072.i1214, 4293915773
  %1591 = load i32, i32* %B.i111, align 4
  %neg1074.i1216 = xor i32 %1591, -1
  %1592 = load i32, i32* %D.i113, align 4
  %or1075.i1217 = or i32 %neg1074.i1216, %1592
  %1593 = load i32, i32* %A.i110, align 4
  %xor1076.i1218 = xor i32 %or1075.i1217, %1593
  %conv1077.i1219 = zext i32 %xor1076.i1218 to i64
  %add1078.i1220 = add nsw i64 %add1073.i1215, %conv1077.i1219
  %1594 = load i32, i32* %C.i112, align 4
  %conv1079.i1221 = zext i32 %1594 to i64
  %add1080.i1222 = add nsw i64 %conv1079.i1221, %add1078.i1220
  %conv1081.i1223 = trunc i64 %add1080.i1222 to i32
  store i32 %conv1081.i1223, i32* %C.i112, align 4
  %1595 = load i32, i32* %C.i112, align 4
  %shl1082.i1224 = shl i32 %1595, 15
  %1596 = load i32, i32* %C.i112, align 4
  %shr1083.i1225 = lshr i32 %1596, 17
  %or1084.i1226 = or i32 %shl1082.i1224, %shr1083.i1225
  store i32 %or1084.i1226, i32* %C.i112, align 4
  %1597 = load i32, i32* %D.i113, align 4
  %1598 = load i32, i32* %C.i112, align 4
  %add1085.i1227 = add i32 %1598, %1597
  store i32 %add1085.i1227, i32* %C.i112, align 4
  %1599 = load i32, i32* %XX1.i116, align 4
  %conv1086.i1228 = zext i32 %1599 to i64
  %add1087.i1229 = add nsw i64 %conv1086.i1228, 2240044497
  %1600 = load i32, i32* %A.i110, align 4
  %neg1088.i1230 = xor i32 %1600, -1
  %1601 = load i32, i32* %C.i112, align 4
  %or1089.i1231 = or i32 %neg1088.i1230, %1601
  %1602 = load i32, i32* %D.i113, align 4
  %xor1090.i1232 = xor i32 %or1089.i1231, %1602
  %conv1091.i1233 = zext i32 %xor1090.i1232 to i64
  %add1092.i1234 = add nsw i64 %add1087.i1229, %conv1091.i1233
  %1603 = load i32, i32* %B.i111, align 4
  %conv1093.i1235 = zext i32 %1603 to i64
  %add1094.i1236 = add nsw i64 %conv1093.i1235, %add1092.i1234
  %conv1095.i1237 = trunc i64 %add1094.i1236 to i32
  store i32 %conv1095.i1237, i32* %B.i111, align 4
  %1604 = load i32, i32* %B.i111, align 4
  %shl1096.i1238 = shl i32 %1604, 21
  %1605 = load i32, i32* %B.i111, align 4
  %shr1097.i1239 = lshr i32 %1605, 11
  %or1098.i1240 = or i32 %shl1096.i1238, %shr1097.i1239
  store i32 %or1098.i1240, i32* %B.i111, align 4
  %1606 = load i32, i32* %C.i112, align 4
  %1607 = load i32, i32* %B.i111, align 4
  %add1099.i1241 = add i32 %1607, %1606
  store i32 %add1099.i1241, i32* %B.i111, align 4
  %1608 = load i32, i32* %XX8.i123, align 4
  %conv1100.i1242 = zext i32 %1608 to i64
  %add1101.i1243 = add nsw i64 %conv1100.i1242, 1873313359
  %1609 = load i32, i32* %D.i113, align 4
  %neg1102.i1244 = xor i32 %1609, -1
  %1610 = load i32, i32* %B.i111, align 4
  %or1103.i1245 = or i32 %neg1102.i1244, %1610
  %1611 = load i32, i32* %C.i112, align 4
  %xor1104.i1246 = xor i32 %or1103.i1245, %1611
  %conv1105.i1247 = zext i32 %xor1104.i1246 to i64
  %add1106.i1248 = add nsw i64 %add1101.i1243, %conv1105.i1247
  %1612 = load i32, i32* %A.i110, align 4
  %conv1107.i1249 = zext i32 %1612 to i64
  %add1108.i1250 = add nsw i64 %conv1107.i1249, %add1106.i1248
  %conv1109.i1251 = trunc i64 %add1108.i1250 to i32
  store i32 %conv1109.i1251, i32* %A.i110, align 4
  %1613 = load i32, i32* %A.i110, align 4
  %shl1110.i1252 = shl i32 %1613, 6
  %1614 = load i32, i32* %A.i110, align 4
  %shr1111.i1253 = lshr i32 %1614, 26
  %or1112.i1254 = or i32 %shl1110.i1252, %shr1111.i1253
  store i32 %or1112.i1254, i32* %A.i110, align 4
  %1615 = load i32, i32* %B.i111, align 4
  %1616 = load i32, i32* %A.i110, align 4
  %add1113.i1255 = add i32 %1616, %1615
  store i32 %add1113.i1255, i32* %A.i110, align 4
  %1617 = load i32, i32* %XX15.i130, align 4
  %conv1114.i1256 = zext i32 %1617 to i64
  %add1115.i1257 = add nsw i64 %conv1114.i1256, 4264355552
  %1618 = load i32, i32* %C.i112, align 4
  %neg1116.i1258 = xor i32 %1618, -1
  %1619 = load i32, i32* %A.i110, align 4
  %or1117.i1259 = or i32 %neg1116.i1258, %1619
  %1620 = load i32, i32* %B.i111, align 4
  %xor1118.i1260 = xor i32 %or1117.i1259, %1620
  %conv1119.i1261 = zext i32 %xor1118.i1260 to i64
  %add1120.i1262 = add nsw i64 %add1115.i1257, %conv1119.i1261
  %1621 = load i32, i32* %D.i113, align 4
  %conv1121.i1263 = zext i32 %1621 to i64
  %add1122.i1264 = add nsw i64 %conv1121.i1263, %add1120.i1262
  %conv1123.i1265 = trunc i64 %add1122.i1264 to i32
  store i32 %conv1123.i1265, i32* %D.i113, align 4
  %1622 = load i32, i32* %D.i113, align 4
  %shl1124.i1266 = shl i32 %1622, 10
  %1623 = load i32, i32* %D.i113, align 4
  %shr1125.i1267 = lshr i32 %1623, 22
  %or1126.i1268 = or i32 %shl1124.i1266, %shr1125.i1267
  store i32 %or1126.i1268, i32* %D.i113, align 4
  %1624 = load i32, i32* %A.i110, align 4
  %1625 = load i32, i32* %D.i113, align 4
  %add1127.i1269 = add i32 %1625, %1624
  store i32 %add1127.i1269, i32* %D.i113, align 4
  %1626 = load i32, i32* %XX6.i121, align 4
  %conv1128.i1270 = zext i32 %1626 to i64
  %add1129.i1271 = add nsw i64 %conv1128.i1270, 2734768916
  %1627 = load i32, i32* %B.i111, align 4
  %neg1130.i1272 = xor i32 %1627, -1
  %1628 = load i32, i32* %D.i113, align 4
  %or1131.i1273 = or i32 %neg1130.i1272, %1628
  %1629 = load i32, i32* %A.i110, align 4
  %xor1132.i1274 = xor i32 %or1131.i1273, %1629
  %conv1133.i1275 = zext i32 %xor1132.i1274 to i64
  %add1134.i1276 = add nsw i64 %add1129.i1271, %conv1133.i1275
  %1630 = load i32, i32* %C.i112, align 4
  %conv1135.i1277 = zext i32 %1630 to i64
  %add1136.i1278 = add nsw i64 %conv1135.i1277, %add1134.i1276
  %conv1137.i1279 = trunc i64 %add1136.i1278 to i32
  store i32 %conv1137.i1279, i32* %C.i112, align 4
  %1631 = load i32, i32* %C.i112, align 4
  %shl1138.i1280 = shl i32 %1631, 15
  %1632 = load i32, i32* %C.i112, align 4
  %shr1139.i1281 = lshr i32 %1632, 17
  %or1140.i1282 = or i32 %shl1138.i1280, %shr1139.i1281
  store i32 %or1140.i1282, i32* %C.i112, align 4
  %1633 = load i32, i32* %D.i113, align 4
  %1634 = load i32, i32* %C.i112, align 4
  %add1141.i1283 = add i32 %1634, %1633
  store i32 %add1141.i1283, i32* %C.i112, align 4
  %1635 = load i32, i32* %XX13.i128, align 4
  %conv1142.i1284 = zext i32 %1635 to i64
  %add1143.i1285 = add nsw i64 %conv1142.i1284, 1309151649
  %1636 = load i32, i32* %A.i110, align 4
  %neg1144.i1286 = xor i32 %1636, -1
  %1637 = load i32, i32* %C.i112, align 4
  %or1145.i1287 = or i32 %neg1144.i1286, %1637
  %1638 = load i32, i32* %D.i113, align 4
  %xor1146.i1288 = xor i32 %or1145.i1287, %1638
  %conv1147.i1289 = zext i32 %xor1146.i1288 to i64
  %add1148.i1290 = add nsw i64 %add1143.i1285, %conv1147.i1289
  %1639 = load i32, i32* %B.i111, align 4
  %conv1149.i1291 = zext i32 %1639 to i64
  %add1150.i1292 = add nsw i64 %conv1149.i1291, %add1148.i1290
  %conv1151.i1293 = trunc i64 %add1150.i1292 to i32
  store i32 %conv1151.i1293, i32* %B.i111, align 4
  %1640 = load i32, i32* %B.i111, align 4
  %shl1152.i1294 = shl i32 %1640, 21
  %1641 = load i32, i32* %B.i111, align 4
  %shr1153.i1295 = lshr i32 %1641, 11
  %or1154.i1296 = or i32 %shl1152.i1294, %shr1153.i1295
  store i32 %or1154.i1296, i32* %B.i111, align 4
  %1642 = load i32, i32* %C.i112, align 4
  %1643 = load i32, i32* %B.i111, align 4
  %add1155.i1297 = add i32 %1643, %1642
  store i32 %add1155.i1297, i32* %B.i111, align 4
  %1644 = load i32, i32* %XX4.i119, align 4
  %conv1156.i1298 = zext i32 %1644 to i64
  %add1157.i1299 = add nsw i64 %conv1156.i1298, 4149444226
  %1645 = load i32, i32* %D.i113, align 4
  %neg1158.i1300 = xor i32 %1645, -1
  %1646 = load i32, i32* %B.i111, align 4
  %or1159.i1301 = or i32 %neg1158.i1300, %1646
  %1647 = load i32, i32* %C.i112, align 4
  %xor1160.i1302 = xor i32 %or1159.i1301, %1647
  %conv1161.i1303 = zext i32 %xor1160.i1302 to i64
  %add1162.i1304 = add nsw i64 %add1157.i1299, %conv1161.i1303
  %1648 = load i32, i32* %A.i110, align 4
  %conv1163.i1305 = zext i32 %1648 to i64
  %add1164.i1306 = add nsw i64 %conv1163.i1305, %add1162.i1304
  %conv1165.i1307 = trunc i64 %add1164.i1306 to i32
  store i32 %conv1165.i1307, i32* %A.i110, align 4
  %1649 = load i32, i32* %A.i110, align 4
  %shl1166.i1308 = shl i32 %1649, 6
  %1650 = load i32, i32* %A.i110, align 4
  %shr1167.i1309 = lshr i32 %1650, 26
  %or1168.i1310 = or i32 %shl1166.i1308, %shr1167.i1309
  store i32 %or1168.i1310, i32* %A.i110, align 4
  %1651 = load i32, i32* %B.i111, align 4
  %1652 = load i32, i32* %A.i110, align 4
  %add1169.i1311 = add i32 %1652, %1651
  store i32 %add1169.i1311, i32* %A.i110, align 4
  %1653 = load i32, i32* %XX11.i126, align 4
  %conv1170.i1312 = zext i32 %1653 to i64
  %add1171.i1313 = add nsw i64 %conv1170.i1312, 3174756917
  %1654 = load i32, i32* %C.i112, align 4
  %neg1172.i1314 = xor i32 %1654, -1
  %1655 = load i32, i32* %A.i110, align 4
  %or1173.i1315 = or i32 %neg1172.i1314, %1655
  %1656 = load i32, i32* %B.i111, align 4
  %xor1174.i1316 = xor i32 %or1173.i1315, %1656
  %conv1175.i1317 = zext i32 %xor1174.i1316 to i64
  %add1176.i1318 = add nsw i64 %add1171.i1313, %conv1175.i1317
  %1657 = load i32, i32* %D.i113, align 4
  %conv1177.i1319 = zext i32 %1657 to i64
  %add1178.i1320 = add nsw i64 %conv1177.i1319, %add1176.i1318
  %conv1179.i1321 = trunc i64 %add1178.i1320 to i32
  store i32 %conv1179.i1321, i32* %D.i113, align 4
  %1658 = load i32, i32* %D.i113, align 4
  %shl1180.i1322 = shl i32 %1658, 10
  %1659 = load i32, i32* %D.i113, align 4
  %shr1181.i1323 = lshr i32 %1659, 22
  %or1182.i1324 = or i32 %shl1180.i1322, %shr1181.i1323
  store i32 %or1182.i1324, i32* %D.i113, align 4
  %1660 = load i32, i32* %A.i110, align 4
  %1661 = load i32, i32* %D.i113, align 4
  %add1183.i1325 = add i32 %1661, %1660
  store i32 %add1183.i1325, i32* %D.i113, align 4
  %1662 = load i32, i32* %XX2.i117, align 4
  %conv1184.i1326 = zext i32 %1662 to i64
  %add1185.i1327 = add nsw i64 %conv1184.i1326, 718787259
  %1663 = load i32, i32* %B.i111, align 4
  %neg1186.i1328 = xor i32 %1663, -1
  %1664 = load i32, i32* %D.i113, align 4
  %or1187.i1329 = or i32 %neg1186.i1328, %1664
  %1665 = load i32, i32* %A.i110, align 4
  %xor1188.i1330 = xor i32 %or1187.i1329, %1665
  %conv1189.i1331 = zext i32 %xor1188.i1330 to i64
  %add1190.i1332 = add nsw i64 %add1185.i1327, %conv1189.i1331
  %1666 = load i32, i32* %C.i112, align 4
  %conv1191.i1333 = zext i32 %1666 to i64
  %add1192.i1334 = add nsw i64 %conv1191.i1333, %add1190.i1332
  %conv1193.i1335 = trunc i64 %add1192.i1334 to i32
  store i32 %conv1193.i1335, i32* %C.i112, align 4
  %1667 = load i32, i32* %C.i112, align 4
  %shl1194.i1336 = shl i32 %1667, 15
  %1668 = load i32, i32* %C.i112, align 4
  %shr1195.i1337 = lshr i32 %1668, 17
  %or1196.i1338 = or i32 %shl1194.i1336, %shr1195.i1337
  store i32 %or1196.i1338, i32* %C.i112, align 4
  %1669 = load i32, i32* %D.i113, align 4
  %1670 = load i32, i32* %C.i112, align 4
  %add1197.i1339 = add i32 %1670, %1669
  store i32 %add1197.i1339, i32* %C.i112, align 4
  %1671 = load i32, i32* %XX9.i124, align 4
  %conv1198.i1340 = zext i32 %1671 to i64
  %add1199.i1341 = add nsw i64 %conv1198.i1340, 3951481745
  %1672 = load i32, i32* %A.i110, align 4
  %neg1200.i1342 = xor i32 %1672, -1
  %1673 = load i32, i32* %C.i112, align 4
  %or1201.i1343 = or i32 %neg1200.i1342, %1673
  %1674 = load i32, i32* %D.i113, align 4
  %xor1202.i1344 = xor i32 %or1201.i1343, %1674
  %conv1203.i1345 = zext i32 %xor1202.i1344 to i64
  %add1204.i1346 = add nsw i64 %add1199.i1341, %conv1203.i1345
  %1675 = load i32, i32* %B.i111, align 4
  %conv1205.i1347 = zext i32 %1675 to i64
  %add1206.i1348 = add nsw i64 %conv1205.i1347, %add1204.i1346
  %conv1207.i1349 = trunc i64 %add1206.i1348 to i32
  store i32 %conv1207.i1349, i32* %B.i111, align 4
  %1676 = load i32, i32* %B.i111, align 4
  %shl1208.i1350 = shl i32 %1676, 21
  %1677 = load i32, i32* %B.i111, align 4
  %shr1209.i1351 = lshr i32 %1677, 11
  %or1210.i1352 = or i32 %shl1208.i1350, %shr1209.i1351
  store i32 %or1210.i1352, i32* %B.i111, align 4
  %1678 = load i32, i32* %C.i112, align 4
  %1679 = load i32, i32* %B.i111, align 4
  %add1211.i1353 = add i32 %1679, %1678
  store i32 %add1211.i1353, i32* %B.i111, align 4
  %1680 = load i32, i32* %A.i110, align 4
  %1681 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %A1212.i1354 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1681, i32 0, i32 0
  %1682 = load i32, i32* %A1212.i1354, align 4
  %add1213.i1355 = add i32 %1682, %1680
  store i32 %add1213.i1355, i32* %A1212.i1354, align 4
  store i32 %add1213.i1355, i32* %A.i110, align 4
  %1683 = load i32, i32* %B.i111, align 4
  %1684 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %B1214.i1356 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1684, i32 0, i32 1
  %1685 = load i32, i32* %B1214.i1356, align 4
  %add1215.i1357 = add i32 %1685, %1683
  store i32 %add1215.i1357, i32* %B1214.i1356, align 4
  store i32 %add1215.i1357, i32* %B.i111, align 4
  %1686 = load i32, i32* %C.i112, align 4
  %1687 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %C1216.i1358 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1687, i32 0, i32 2
  %1688 = load i32, i32* %C1216.i1358, align 4
  %add1217.i1359 = add i32 %1688, %1686
  store i32 %add1217.i1359, i32* %C1216.i1358, align 4
  store i32 %add1217.i1359, i32* %C.i112, align 4
  %1689 = load i32, i32* %D.i113, align 4
  %1690 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr.i106, align 8
  %D1218.i1360 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1690, i32 0, i32 3
  %1691 = load i32, i32* %D1218.i1360, align 4
  %add1219.i1361 = add i32 %1691, %1689
  store i32 %add1219.i1361, i32* %D1218.i1360, align 4
  store i32 %add1219.i1361, i32* %D.i113, align 4
  br label %for.cond.i137

md5_block_data_order.exit1363:                    ; preds = %for.cond.i137
  %1692 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %num41 = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1692, i32 0, i32 7
  store i32 0, i32* %num41, align 4
  %1693 = load i8*, i8** %p, align 8
  call void @OPENSSL_cleanse(i8* %1693, i64 64)
  br label %do.body

do.body:                                          ; preds = %md5_block_data_order.exit1363
  %1694 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %A = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1694, i32 0, i32 0
  %1695 = load i32, i32* %A, align 4
  %conv42 = zext i32 %1695 to i64
  store i64 %conv42, i64* %ll, align 8
  %1696 = load i64, i64* %ll, align 8
  %and43 = and i64 %1696, 255
  %conv44 = trunc i64 %and43 to i8
  %1697 = load i8*, i8** %md.addr, align 8
  %incdec.ptr45 = getelementptr inbounds i8, i8* %1697, i32 1
  store i8* %incdec.ptr45, i8** %md.addr, align 8
  store i8 %conv44, i8* %1697, align 1
  %1698 = load i64, i64* %ll, align 8
  %shr46 = lshr i64 %1698, 8
  %and47 = and i64 %shr46, 255
  %conv48 = trunc i64 %and47 to i8
  %1699 = load i8*, i8** %md.addr, align 8
  %incdec.ptr49 = getelementptr inbounds i8, i8* %1699, i32 1
  store i8* %incdec.ptr49, i8** %md.addr, align 8
  store i8 %conv48, i8* %1699, align 1
  %1700 = load i64, i64* %ll, align 8
  %shr50 = lshr i64 %1700, 16
  %and51 = and i64 %shr50, 255
  %conv52 = trunc i64 %and51 to i8
  %1701 = load i8*, i8** %md.addr, align 8
  %incdec.ptr53 = getelementptr inbounds i8, i8* %1701, i32 1
  store i8* %incdec.ptr53, i8** %md.addr, align 8
  store i8 %conv52, i8* %1701, align 1
  %1702 = load i64, i64* %ll, align 8
  %shr54 = lshr i64 %1702, 24
  %and55 = and i64 %shr54, 255
  %conv56 = trunc i64 %and55 to i8
  %1703 = load i8*, i8** %md.addr, align 8
  %incdec.ptr57 = getelementptr inbounds i8, i8* %1703, i32 1
  store i8* %incdec.ptr57, i8** %md.addr, align 8
  store i8 %conv56, i8* %1703, align 1
  %1704 = load i64, i64* %ll, align 8
  %1705 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %B = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1705, i32 0, i32 1
  %1706 = load i32, i32* %B, align 4
  %conv58 = zext i32 %1706 to i64
  store i64 %conv58, i64* %ll, align 8
  %1707 = load i64, i64* %ll, align 8
  %and59 = and i64 %1707, 255
  %conv60 = trunc i64 %and59 to i8
  %1708 = load i8*, i8** %md.addr, align 8
  %incdec.ptr61 = getelementptr inbounds i8, i8* %1708, i32 1
  store i8* %incdec.ptr61, i8** %md.addr, align 8
  store i8 %conv60, i8* %1708, align 1
  %1709 = load i64, i64* %ll, align 8
  %shr62 = lshr i64 %1709, 8
  %and63 = and i64 %shr62, 255
  %conv64 = trunc i64 %and63 to i8
  %1710 = load i8*, i8** %md.addr, align 8
  %incdec.ptr65 = getelementptr inbounds i8, i8* %1710, i32 1
  store i8* %incdec.ptr65, i8** %md.addr, align 8
  store i8 %conv64, i8* %1710, align 1
  %1711 = load i64, i64* %ll, align 8
  %shr66 = lshr i64 %1711, 16
  %and67 = and i64 %shr66, 255
  %conv68 = trunc i64 %and67 to i8
  %1712 = load i8*, i8** %md.addr, align 8
  %incdec.ptr69 = getelementptr inbounds i8, i8* %1712, i32 1
  store i8* %incdec.ptr69, i8** %md.addr, align 8
  store i8 %conv68, i8* %1712, align 1
  %1713 = load i64, i64* %ll, align 8
  %shr70 = lshr i64 %1713, 24
  %and71 = and i64 %shr70, 255
  %conv72 = trunc i64 %and71 to i8
  %1714 = load i8*, i8** %md.addr, align 8
  %incdec.ptr73 = getelementptr inbounds i8, i8* %1714, i32 1
  store i8* %incdec.ptr73, i8** %md.addr, align 8
  store i8 %conv72, i8* %1714, align 1
  %1715 = load i64, i64* %ll, align 8
  %1716 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %C = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1716, i32 0, i32 2
  %1717 = load i32, i32* %C, align 4
  %conv74 = zext i32 %1717 to i64
  store i64 %conv74, i64* %ll, align 8
  %1718 = load i64, i64* %ll, align 8
  %and75 = and i64 %1718, 255
  %conv76 = trunc i64 %and75 to i8
  %1719 = load i8*, i8** %md.addr, align 8
  %incdec.ptr77 = getelementptr inbounds i8, i8* %1719, i32 1
  store i8* %incdec.ptr77, i8** %md.addr, align 8
  store i8 %conv76, i8* %1719, align 1
  %1720 = load i64, i64* %ll, align 8
  %shr78 = lshr i64 %1720, 8
  %and79 = and i64 %shr78, 255
  %conv80 = trunc i64 %and79 to i8
  %1721 = load i8*, i8** %md.addr, align 8
  %incdec.ptr81 = getelementptr inbounds i8, i8* %1721, i32 1
  store i8* %incdec.ptr81, i8** %md.addr, align 8
  store i8 %conv80, i8* %1721, align 1
  %1722 = load i64, i64* %ll, align 8
  %shr82 = lshr i64 %1722, 16
  %and83 = and i64 %shr82, 255
  %conv84 = trunc i64 %and83 to i8
  %1723 = load i8*, i8** %md.addr, align 8
  %incdec.ptr85 = getelementptr inbounds i8, i8* %1723, i32 1
  store i8* %incdec.ptr85, i8** %md.addr, align 8
  store i8 %conv84, i8* %1723, align 1
  %1724 = load i64, i64* %ll, align 8
  %shr86 = lshr i64 %1724, 24
  %and87 = and i64 %shr86, 255
  %conv88 = trunc i64 %and87 to i8
  %1725 = load i8*, i8** %md.addr, align 8
  %incdec.ptr89 = getelementptr inbounds i8, i8* %1725, i32 1
  store i8* %incdec.ptr89, i8** %md.addr, align 8
  store i8 %conv88, i8* %1725, align 1
  %1726 = load i64, i64* %ll, align 8
  %1727 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %D = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %1727, i32 0, i32 3
  %1728 = load i32, i32* %D, align 4
  %conv90 = zext i32 %1728 to i64
  store i64 %conv90, i64* %ll, align 8
  %1729 = load i64, i64* %ll, align 8
  %and91 = and i64 %1729, 255
  %conv92 = trunc i64 %and91 to i8
  %1730 = load i8*, i8** %md.addr, align 8
  %incdec.ptr93 = getelementptr inbounds i8, i8* %1730, i32 1
  store i8* %incdec.ptr93, i8** %md.addr, align 8
  store i8 %conv92, i8* %1730, align 1
  %1731 = load i64, i64* %ll, align 8
  %shr94 = lshr i64 %1731, 8
  %and95 = and i64 %shr94, 255
  %conv96 = trunc i64 %and95 to i8
  %1732 = load i8*, i8** %md.addr, align 8
  %incdec.ptr97 = getelementptr inbounds i8, i8* %1732, i32 1
  store i8* %incdec.ptr97, i8** %md.addr, align 8
  store i8 %conv96, i8* %1732, align 1
  %1733 = load i64, i64* %ll, align 8
  %shr98 = lshr i64 %1733, 16
  %and99 = and i64 %shr98, 255
  %conv100 = trunc i64 %and99 to i8
  %1734 = load i8*, i8** %md.addr, align 8
  %incdec.ptr101 = getelementptr inbounds i8, i8* %1734, i32 1
  store i8* %incdec.ptr101, i8** %md.addr, align 8
  store i8 %conv100, i8* %1734, align 1
  %1735 = load i64, i64* %ll, align 8
  %shr102 = lshr i64 %1735, 24
  %and103 = and i64 %shr102, 255
  %conv104 = trunc i64 %and103 to i8
  %1736 = load i8*, i8** %md.addr, align 8
  %incdec.ptr105 = getelementptr inbounds i8, i8* %1736, i32 1
  store i8* %incdec.ptr105, i8** %md.addr, align 8
  store i8 %conv104, i8* %1736, align 1
  %1737 = load i64, i64* %ll, align 8
  br label %do.end

do.end:                                           ; preds = %do.body
  ret i32 1
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @MD5_Init(%struct.MD5state_st* %c) #0 {
entry:
  %c.addr = alloca %struct.MD5state_st*, align 8
  store %struct.MD5state_st* %c, %struct.MD5state_st** %c.addr, align 8
  %0 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %1 = bitcast %struct.MD5state_st* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 92, i1 false)
  %2 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %A = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %2, i32 0, i32 0
  store i32 1732584193, i32* %A, align 4
  %3 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %B = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %3, i32 0, i32 1
  store i32 -271733879, i32* %B, align 4
  %4 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %C = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %4, i32 0, i32 2
  store i32 -1732584194, i32* %C, align 4
  %5 = load %struct.MD5state_st*, %struct.MD5state_st** %c.addr, align 8
  %D = getelementptr inbounds %struct.MD5state_st, %struct.MD5state_st* %5, i32 0, i32 3
  store i32 271733878, i32* %D, align 4
  ret i32 1
}

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
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

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
  store i8* %arraydecay, i8** %d.addr.i, align 8
  store i64 %call, i64* %n.addr.i, align 8
  store i8* %arraydecay2, i8** %md.addr.i, align 8
  %1 = load i8*, i8** %md.addr.i, align 8, !dbg !113
  %cmp.i = icmp eq i8* %1, null, !dbg !114
  br i1 %cmp.i, label %if.then.i, label %if.end.i, !dbg !115

if.then.i:                                        ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @MD5.m, i64 0, i64 0), i8** %md.addr.i, align 8, !dbg !116
  br label %if.end.i, !dbg !117

if.end.i:                                         ; preds = %if.then.i, %entry
  %call.i = call i32 @MD5_Init(%struct.MD5state_st* %c.i) #7, !dbg !118
  %tobool.i = icmp ne i32 %call.i, 0, !dbg !118
  br i1 %tobool.i, label %if.end2.i, label %if.then1.i, !dbg !119

if.then1.i:                                       ; preds = %if.end.i
  store i8* null, i8** %retval.i, align 8, !dbg !120
  br label %MD5.exit, !dbg !120

if.end2.i:                                        ; preds = %if.end.i
  %2 = load i8*, i8** %d.addr.i, align 8, !dbg !121
  %3 = load i64, i64* %n.addr.i, align 8, !dbg !122
  %call3.i = call i32 @MD5_Update(%struct.MD5state_st* %c.i, i8* %2, i64 %3) #7, !dbg !123
  %4 = load i8*, i8** %md.addr.i, align 8, !dbg !124
  %call4.i = call i32 @MD5_Final(i8* %4, %struct.MD5state_st* %c.i) #7, !dbg !125
  %5 = bitcast %struct.MD5state_st* %c.i to i8*, !dbg !126
  store i8* %5, i8** %ptr.addr.i.i, align 8
  store i64 92, i64* %len.addr.i.i, align 8
  %6 = load volatile i8* (i8*, i32, i64)*, i8* (i8*, i32, i64)** @memset_func, align 8, !dbg !127
  %7 = load i8*, i8** %ptr.addr.i.i, align 8, !dbg !128
  %8 = load i64, i64* %len.addr.i.i, align 8, !dbg !129
  %call.i.i = call i8* %6(i8* %7, i32 0, i64 %8) #7, !dbg !127
  %9 = load i8*, i8** %md.addr.i, align 8, !dbg !130
  store i8* %9, i8** %retval.i, align 8, !dbg !131
  br label %MD5.exit, !dbg !131

MD5.exit:                                         ; preds = %if.then1.i, %if.end2.i
  %10 = load i8*, i8** %retval.i, align 8, !dbg !132
  ret i32 0, !dbg !133
}

; Function Attrs: nounwind readonly
declare dso_local i64 @strlen(i8*) #5

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

declare dso_local i32 @printf(i8*, ...) #6

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
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nounwind readonly }

!llvm.ident = !{!29, !29, !29}
!llvm.module.flags = !{!30, !31, !32}
!llvm.dbg.cu = !{!13}

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
!30 = !{i32 1, !"wchar_size", i32 4}
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
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
