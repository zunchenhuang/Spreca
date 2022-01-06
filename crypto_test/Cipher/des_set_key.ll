; ModuleID = 'des_set_key.c'
source_filename = "des_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.DES_ks = type { [16 x %union.anon] }
%union.anon = type { [2 x i32] }

@_shadow_DES_check_key = dso_local global i32 0, align 4
@odd_parity = internal constant [256 x i8] c"\01\01\02\02\04\04\07\07\08\08\0B\0B\0D\0D\0E\0E\10\10\13\13\15\15\16\16\19\19\1A\1A\1C\1C\1F\1F  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\7F\7F\80\80\83\83\85\85\86\86\89\89\8A\8A\8C\8C\8F\8F\91\91\92\92\94\94\97\97\98\98\9B\9B\9D\9D\9E\9E\A1\A1\A2\A2\A4\A4\A7\A7\A8\A8\AB\AB\AD\AD\AE\AE\B0\B0\B3\B3\B5\B5\B6\B6\B9\B9\BA\BA\BC\BC\BF\BF\C1\C1\C2\C2\C4\C4\C7\C7\C8\C8\CB\CB\CD\CD\CE\CE\D0\D0\D3\D3\D5\D5\D6\D6\D9\D9\DA\DA\DC\DC\DF\DF\E0\E0\E3\E3\E5\E5\E6\E6\E9\E9\EA\EA\EC\EC\EF\EF\F1\F1\F2\F2\F4\F4\F7\F7\F8\F8\FB\FB\FD\FD\FE\FE", align 16
@weak_keys = internal constant [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\E0\E0\E0\F1\F1\F1\F1", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@DES_set_key_unchecked.shifts2 = internal constant [16 x i32] [i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0], align 16
@des_skb = internal constant [8 x [64 x i32]] [[64 x i32] [i32 0, i32 16, i32 536870912, i32 536870928, i32 65536, i32 65552, i32 536936448, i32 536936464, i32 2048, i32 2064, i32 536872960, i32 536872976, i32 67584, i32 67600, i32 536938496, i32 536938512, i32 32, i32 48, i32 536870944, i32 536870960, i32 65568, i32 65584, i32 536936480, i32 536936496, i32 2080, i32 2096, i32 536872992, i32 536873008, i32 67616, i32 67632, i32 536938528, i32 536938544, i32 524288, i32 524304, i32 537395200, i32 537395216, i32 589824, i32 589840, i32 537460736, i32 537460752, i32 526336, i32 526352, i32 537397248, i32 537397264, i32 591872, i32 591888, i32 537462784, i32 537462800, i32 524320, i32 524336, i32 537395232, i32 537395248, i32 589856, i32 589872, i32 537460768, i32 537460784, i32 526368, i32 526384, i32 537397280, i32 537397296, i32 591904, i32 591920, i32 537462816, i32 537462832], [64 x i32] [i32 0, i32 33554432, i32 8192, i32 33562624, i32 2097152, i32 35651584, i32 2105344, i32 35659776, i32 4, i32 33554436, i32 8196, i32 33562628, i32 2097156, i32 35651588, i32 2105348, i32 35659780, i32 1024, i32 33555456, i32 9216, i32 33563648, i32 2098176, i32 35652608, i32 2106368, i32 35660800, i32 1028, i32 33555460, i32 9220, i32 33563652, i32 2098180, i32 35652612, i32 2106372, i32 35660804, i32 268435456, i32 301989888, i32 268443648, i32 301998080, i32 270532608, i32 304087040, i32 270540800, i32 304095232, i32 268435460, i32 301989892, i32 268443652, i32 301998084, i32 270532612, i32 304087044, i32 270540804, i32 304095236, i32 268436480, i32 301990912, i32 268444672, i32 301999104, i32 270533632, i32 304088064, i32 270541824, i32 304096256, i32 268436484, i32 301990916, i32 268444676, i32 301999108, i32 270533636, i32 304088068, i32 270541828, i32 304096260], [64 x i32] [i32 0, i32 1, i32 262144, i32 262145, i32 16777216, i32 16777217, i32 17039360, i32 17039361, i32 2, i32 3, i32 262146, i32 262147, i32 16777218, i32 16777219, i32 17039362, i32 17039363, i32 512, i32 513, i32 262656, i32 262657, i32 16777728, i32 16777729, i32 17039872, i32 17039873, i32 514, i32 515, i32 262658, i32 262659, i32 16777730, i32 16777731, i32 17039874, i32 17039875, i32 134217728, i32 134217729, i32 134479872, i32 134479873, i32 150994944, i32 150994945, i32 151257088, i32 151257089, i32 134217730, i32 134217731, i32 134479874, i32 134479875, i32 150994946, i32 150994947, i32 151257090, i32 151257091, i32 134218240, i32 134218241, i32 134480384, i32 134480385, i32 150995456, i32 150995457, i32 151257600, i32 151257601, i32 134218242, i32 134218243, i32 134480386, i32 134480387, i32 150995458, i32 150995459, i32 151257602, i32 151257603], [64 x i32] [i32 0, i32 1048576, i32 256, i32 1048832, i32 8, i32 1048584, i32 264, i32 1048840, i32 4096, i32 1052672, i32 4352, i32 1052928, i32 4104, i32 1052680, i32 4360, i32 1052936, i32 67108864, i32 68157440, i32 67109120, i32 68157696, i32 67108872, i32 68157448, i32 67109128, i32 68157704, i32 67112960, i32 68161536, i32 67113216, i32 68161792, i32 67112968, i32 68161544, i32 67113224, i32 68161800, i32 131072, i32 1179648, i32 131328, i32 1179904, i32 131080, i32 1179656, i32 131336, i32 1179912, i32 135168, i32 1183744, i32 135424, i32 1184000, i32 135176, i32 1183752, i32 135432, i32 1184008, i32 67239936, i32 68288512, i32 67240192, i32 68288768, i32 67239944, i32 68288520, i32 67240200, i32 68288776, i32 67244032, i32 68292608, i32 67244288, i32 68292864, i32 67244040, i32 68292616, i32 67244296, i32 68292872], [64 x i32] [i32 0, i32 268435456, i32 65536, i32 268500992, i32 4, i32 268435460, i32 65540, i32 268500996, i32 536870912, i32 805306368, i32 536936448, i32 805371904, i32 536870916, i32 805306372, i32 536936452, i32 805371908, i32 1048576, i32 269484032, i32 1114112, i32 269549568, i32 1048580, i32 269484036, i32 1114116, i32 269549572, i32 537919488, i32 806354944, i32 537985024, i32 806420480, i32 537919492, i32 806354948, i32 537985028, i32 806420484, i32 4096, i32 268439552, i32 69632, i32 268505088, i32 4100, i32 268439556, i32 69636, i32 268505092, i32 536875008, i32 805310464, i32 536940544, i32 805376000, i32 536875012, i32 805310468, i32 536940548, i32 805376004, i32 1052672, i32 269488128, i32 1118208, i32 269553664, i32 1052676, i32 269488132, i32 1118212, i32 269553668, i32 537923584, i32 806359040, i32 537989120, i32 806424576, i32 537923588, i32 806359044, i32 537989124, i32 806424580], [64 x i32] [i32 0, i32 134217728, i32 8, i32 134217736, i32 1024, i32 134218752, i32 1032, i32 134218760, i32 131072, i32 134348800, i32 131080, i32 134348808, i32 132096, i32 134349824, i32 132104, i32 134349832, i32 1, i32 134217729, i32 9, i32 134217737, i32 1025, i32 134218753, i32 1033, i32 134218761, i32 131073, i32 134348801, i32 131081, i32 134348809, i32 132097, i32 134349825, i32 132105, i32 134349833, i32 33554432, i32 167772160, i32 33554440, i32 167772168, i32 33555456, i32 167773184, i32 33555464, i32 167773192, i32 33685504, i32 167903232, i32 33685512, i32 167903240, i32 33686528, i32 167904256, i32 33686536, i32 167904264, i32 33554433, i32 167772161, i32 33554441, i32 167772169, i32 33555457, i32 167773185, i32 33555465, i32 167773193, i32 33685505, i32 167903233, i32 33685513, i32 167903241, i32 33686529, i32 167904257, i32 33686537, i32 167904265], [64 x i32] [i32 0, i32 256, i32 524288, i32 524544, i32 16777216, i32 16777472, i32 17301504, i32 17301760, i32 16, i32 272, i32 524304, i32 524560, i32 16777232, i32 16777488, i32 17301520, i32 17301776, i32 2097152, i32 2097408, i32 2621440, i32 2621696, i32 18874368, i32 18874624, i32 19398656, i32 19398912, i32 2097168, i32 2097424, i32 2621456, i32 2621712, i32 18874384, i32 18874640, i32 19398672, i32 19398928, i32 512, i32 768, i32 524800, i32 525056, i32 16777728, i32 16777984, i32 17302016, i32 17302272, i32 528, i32 784, i32 524816, i32 525072, i32 16777744, i32 16778000, i32 17302032, i32 17302288, i32 2097664, i32 2097920, i32 2621952, i32 2622208, i32 18874880, i32 18875136, i32 19399168, i32 19399424, i32 2097680, i32 2097936, i32 2621968, i32 2622224, i32 18874896, i32 18875152, i32 19399184, i32 19399440], [64 x i32] [i32 0, i32 67108864, i32 262144, i32 67371008, i32 2, i32 67108866, i32 262146, i32 67371010, i32 8192, i32 67117056, i32 270336, i32 67379200, i32 8194, i32 67117058, i32 270338, i32 67379202, i32 32, i32 67108896, i32 262176, i32 67371040, i32 34, i32 67108898, i32 262178, i32 67371042, i32 8224, i32 67117088, i32 270368, i32 67379232, i32 8226, i32 67117090, i32 270370, i32 67379234, i32 2048, i32 67110912, i32 264192, i32 67373056, i32 2050, i32 67110914, i32 264194, i32 67373058, i32 10240, i32 67119104, i32 272384, i32 67381248, i32 10242, i32 67119106, i32 272386, i32 67381250, i32 2080, i32 67110944, i32 264224, i32 67373088, i32 2082, i32 67110946, i32 264226, i32 67373090, i32 10272, i32 67119136, i32 272416, i32 67381280, i32 10274, i32 67119138, i32 272418, i32 67381282]], align 16

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @DES_set_odd_parity([8 x i8]* %key) #0 {
entry:
  %key.addr = alloca [8 x i8]*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %idxprom2 = zext i8 %3 to i64
  %arrayidx3 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom2
  %4 = load i8, i8* %arrayidx3, align 1
  %5 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %6 = load i32, i32* %i, align 4
  %idxprom4 = zext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 %idxprom4
  store i8 %4, i8* %arrayidx5, align 1
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4
  %inc = add i32 %7, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @DES_check_key_parity([8 x i8]* %key) #0 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %conv = zext i32 %0 to i64
  %cmp = icmp ult i64 %conv, 8
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %2 = load i32, i32* %i, align 4
  %idxprom = zext i32 %2 to i64
  %arrayidx = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 %idxprom
  %3 = load i8, i8* %arrayidx, align 1
  %conv2 = zext i8 %3 to i32
  %4 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %5 = load i32, i32* %i, align 4
  %idxprom3 = zext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [8 x i8], [8 x i8]* %4, i64 0, i64 %idxprom3
  %6 = load i8, i8* %arrayidx4, align 1
  %idxprom5 = zext i8 %6 to i64
  %arrayidx6 = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5
  %7 = load i8, i8* %arrayidx6, align 1
  %conv7 = zext i8 %7 to i32
  %cmp8 = icmp ne i32 %conv2, %conv7
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 0, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4
  %inc = add i32 %8, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 1, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %9 = load i32, i32* %retval, align 4
  ret i32 %9
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DES_is_weak_key([8 x i8]* %key) #1 {
entry:
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %i = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %0, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [16 x [8 x i8]], [16 x [8 x i8]]* @weak_keys, i64 0, i64 %idxprom
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %arrayidx, i64 0, i64 0
  %2 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %3 = bitcast [8 x i8]* %2 to i8*
  %call = call i32 @memcmp(i8* %arraydecay, i8* %3, i64 8) #3
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, i32* %i, align 4
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %for.end, %if.then
  %5 = load i32, i32* %retval, align 4
  ret i32 %5
}

; Function Attrs: nounwind readonly
declare dso_local i32 @memcmp(i8*, i8*, i64) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DES_set_key([8 x i8]* %key, %struct.DES_ks* %schedule) #1 {
entry:
  %key.addr.i1 = alloca [8 x i8]*, align 8
  %schedule.addr.i2 = alloca %struct.DES_ks*, align 8
  %c.i = alloca i32, align 4
  %d.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %t2.i = alloca i32, align 4
  %in.i = alloca i8*, align 8
  %k.i = alloca i32*, align 8
  %i.i = alloca i32, align 4
  %ret.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %ret180.i = alloca i32, align 4
  %tmp181.i = alloca i32, align 4
  %key.addr.i5.i = alloca [8 x i8]*, align 8
  %schedule.addr.i.i = alloca %struct.DES_ks*, align 8
  %c.i.i = alloca i32, align 4
  %d.i.i = alloca i32, align 4
  %t.i.i = alloca i32, align 4
  %s.i.i = alloca i32, align 4
  %t2.i.i = alloca i32, align 4
  %in.i.i = alloca i8*, align 8
  %k.i.i = alloca i32*, align 8
  %i.i6.i = alloca i32, align 4
  %ret.i.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %ret180.i.i = alloca i32, align 4
  %tmp181.i.i = alloca i32, align 4
  %retval.i.i = alloca i32, align 4
  %key.addr.i.i = alloca [8 x i8]*, align 8
  %i.i.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %key.addr.i = alloca [8 x i8]*, align 8
  %schedule.addr.i = alloca %struct.DES_ks*, align 8
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %schedule.addr = alloca %struct.DES_ks*, align 8
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store %struct.DES_ks* %schedule, %struct.DES_ks** %schedule.addr, align 8
  %0 = load i32, i32* @_shadow_DES_check_key, align 4
  %tobool = icmp ne i32 %0, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %2 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr, align 8
  store [8 x i8]* %1, [8 x i8]** %key.addr.i, align 8
  store %struct.DES_ks* %2, %struct.DES_ks** %schedule.addr.i, align 8
  %3 = load [8 x i8]*, [8 x i8]** %key.addr.i, align 8
  store [8 x i8]* %3, [8 x i8]** %key.addr.i.i, align 8
  store i32 0, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end.i.i, %if.then
  %4 = load i32, i32* %i.i.i, align 4
  %conv.i.i = zext i32 %4 to i64
  %cmp.i.i = icmp ult i64 %conv.i.i, 8
  br i1 %cmp.i.i, label %for.body.i.i, label %for.end.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %5 = load [8 x i8]*, [8 x i8]** %key.addr.i.i, align 8
  %6 = load i32, i32* %i.i.i, align 4
  %idxprom.i.i = zext i32 %6 to i64
  %arrayidx.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 %idxprom.i.i
  %7 = load i8, i8* %arrayidx.i.i, align 1
  %conv2.i.i = zext i8 %7 to i32
  %8 = load [8 x i8]*, [8 x i8]** %key.addr.i.i, align 8
  %9 = load i32, i32* %i.i.i, align 4
  %idxprom3.i.i = zext i32 %9 to i64
  %arrayidx4.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %idxprom3.i.i
  %10 = load i8, i8* %arrayidx4.i.i, align 1
  %idxprom5.i.i = zext i8 %10 to i64
  %arrayidx6.i.i = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.i.i
  %11 = load i8, i8* %arrayidx6.i.i, align 1
  %conv7.i.i = zext i8 %11 to i32
  %cmp8.i.i = icmp ne i32 %conv2.i.i, %conv7.i.i
  br i1 %cmp8.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  store i32 0, i32* %retval.i.i, align 4
  br label %DES_check_key_parity.exit.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %12 = load i32, i32* %i.i.i, align 4
  %inc.i.i = add i32 %12, 1
  store i32 %inc.i.i, i32* %i.i.i, align 4
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  store i32 1, i32* %retval.i.i, align 4
  br label %DES_check_key_parity.exit.i

DES_check_key_parity.exit.i:                      ; preds = %for.end.i.i, %if.then.i.i
  %13 = load i32, i32* %retval.i.i, align 4
  %tobool.i = icmp ne i32 %13, 0
  br i1 %tobool.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %DES_check_key_parity.exit.i
  store i32 -1, i32* %retval.i, align 4
  br label %DES_set_key_checked.exit

if.end.i:                                         ; preds = %DES_check_key_parity.exit.i
  %14 = load [8 x i8]*, [8 x i8]** %key.addr.i, align 8
  %call1.i = call i32 @DES_is_weak_key([8 x i8]* %14) #4
  %tobool2.i = icmp ne i32 %call1.i, 0
  br i1 %tobool2.i, label %if.then3.i, label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  store i32 -2, i32* %retval.i, align 4
  br label %DES_set_key_checked.exit

if.end4.i:                                        ; preds = %if.end.i
  %15 = load [8 x i8]*, [8 x i8]** %key.addr.i, align 8
  %16 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr.i, align 8
  store [8 x i8]* %15, [8 x i8]** %key.addr.i5.i, align 8
  store %struct.DES_ks* %16, %struct.DES_ks** %schedule.addr.i.i, align 8
  %17 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr.i.i, align 8
  %ks.i.i = getelementptr inbounds %struct.DES_ks, %struct.DES_ks* %17, i32 0, i32 0
  %arraydecay.i.i = getelementptr inbounds [16 x %union.anon], [16 x %union.anon]* %ks.i.i, i64 0, i64 0
  %deslong.i.i = bitcast %union.anon* %arraydecay.i.i to [2 x i32]*
  %arrayidx.i7.i = getelementptr inbounds [2 x i32], [2 x i32]* %deslong.i.i, i64 0, i64 0
  store i32* %arrayidx.i7.i, i32** %k.i.i, align 8
  %18 = load [8 x i8]*, [8 x i8]** %key.addr.i5.i, align 8
  %arrayidx1.i.i = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  store i8* %arrayidx1.i.i, i8** %in.i.i, align 8
  %19 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr.i.i = getelementptr inbounds i8, i8* %19, i32 1
  store i8* %incdec.ptr.i.i, i8** %in.i.i, align 8
  %20 = load i8, i8* %19, align 1
  %conv.i8.i = zext i8 %20 to i32
  store i32 %conv.i8.i, i32* %c.i.i, align 4
  %21 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr2.i.i = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr2.i.i, i8** %in.i.i, align 8
  %22 = load i8, i8* %21, align 1
  %conv3.i.i = zext i8 %22 to i32
  %shl.i.i = shl i32 %conv3.i.i, 8
  %23 = load i32, i32* %c.i.i, align 4
  %or.i.i = or i32 %23, %shl.i.i
  store i32 %or.i.i, i32* %c.i.i, align 4
  %24 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr4.i.i = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr4.i.i, i8** %in.i.i, align 8
  %25 = load i8, i8* %24, align 1
  %conv5.i.i = zext i8 %25 to i32
  %shl6.i.i = shl i32 %conv5.i.i, 16
  %26 = load i32, i32* %c.i.i, align 4
  %or7.i.i = or i32 %26, %shl6.i.i
  store i32 %or7.i.i, i32* %c.i.i, align 4
  %27 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr8.i.i = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr8.i.i, i8** %in.i.i, align 8
  %28 = load i8, i8* %27, align 1
  %conv9.i.i = zext i8 %28 to i32
  %shl10.i.i = shl i32 %conv9.i.i, 24
  %29 = load i32, i32* %c.i.i, align 4
  %or11.i.i = or i32 %29, %shl10.i.i
  store i32 %or11.i.i, i32* %c.i.i, align 4
  %30 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr12.i.i = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %incdec.ptr12.i.i, i8** %in.i.i, align 8
  %31 = load i8, i8* %30, align 1
  %conv13.i.i = zext i8 %31 to i32
  store i32 %conv13.i.i, i32* %d.i.i, align 4
  %32 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr14.i.i = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr14.i.i, i8** %in.i.i, align 8
  %33 = load i8, i8* %32, align 1
  %conv15.i.i = zext i8 %33 to i32
  %shl16.i.i = shl i32 %conv15.i.i, 8
  %34 = load i32, i32* %d.i.i, align 4
  %or17.i.i = or i32 %34, %shl16.i.i
  store i32 %or17.i.i, i32* %d.i.i, align 4
  %35 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr18.i.i = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr18.i.i, i8** %in.i.i, align 8
  %36 = load i8, i8* %35, align 1
  %conv19.i.i = zext i8 %36 to i32
  %shl20.i.i = shl i32 %conv19.i.i, 16
  %37 = load i32, i32* %d.i.i, align 4
  %or21.i.i = or i32 %37, %shl20.i.i
  store i32 %or21.i.i, i32* %d.i.i, align 4
  %38 = load i8*, i8** %in.i.i, align 8
  %incdec.ptr22.i.i = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %incdec.ptr22.i.i, i8** %in.i.i, align 8
  %39 = load i8, i8* %38, align 1
  %conv23.i.i = zext i8 %39 to i32
  %shl24.i.i = shl i32 %conv23.i.i, 24
  %40 = load i32, i32* %d.i.i, align 4
  %or25.i.i = or i32 %40, %shl24.i.i
  store i32 %or25.i.i, i32* %d.i.i, align 4
  %41 = load i32, i32* %d.i.i, align 4
  %shr.i.i = lshr i32 %41, 4
  %42 = load i32, i32* %c.i.i, align 4
  %xor.i.i = xor i32 %shr.i.i, %42
  %conv26.i.i = zext i32 %xor.i.i to i64
  %and.i.i = and i64 %conv26.i.i, 252645135
  %conv27.i.i = trunc i64 %and.i.i to i32
  store i32 %conv27.i.i, i32* %t.i.i, align 4
  %43 = load i32, i32* %t.i.i, align 4
  %44 = load i32, i32* %c.i.i, align 4
  %xor28.i.i = xor i32 %44, %43
  store i32 %xor28.i.i, i32* %c.i.i, align 4
  %45 = load i32, i32* %t.i.i, align 4
  %shl29.i.i = shl i32 %45, 4
  %46 = load i32, i32* %d.i.i, align 4
  %xor30.i.i = xor i32 %46, %shl29.i.i
  store i32 %xor30.i.i, i32* %d.i.i, align 4
  %47 = load i32, i32* %c.i.i, align 4
  %shl31.i.i = shl i32 %47, 18
  %48 = load i32, i32* %c.i.i, align 4
  %xor32.i.i = xor i32 %shl31.i.i, %48
  %conv33.i.i = zext i32 %xor32.i.i to i64
  %and34.i.i = and i64 %conv33.i.i, 3435921408
  %conv35.i.i = trunc i64 %and34.i.i to i32
  store i32 %conv35.i.i, i32* %t.i.i, align 4
  %49 = load i32, i32* %c.i.i, align 4
  %50 = load i32, i32* %t.i.i, align 4
  %xor36.i.i = xor i32 %49, %50
  %51 = load i32, i32* %t.i.i, align 4
  %shr37.i.i = lshr i32 %51, 18
  %xor38.i.i = xor i32 %xor36.i.i, %shr37.i.i
  store i32 %xor38.i.i, i32* %c.i.i, align 4
  %52 = load i32, i32* %d.i.i, align 4
  %shl39.i.i = shl i32 %52, 18
  %53 = load i32, i32* %d.i.i, align 4
  %xor40.i.i = xor i32 %shl39.i.i, %53
  %conv41.i.i = zext i32 %xor40.i.i to i64
  %and42.i.i = and i64 %conv41.i.i, 3435921408
  %conv43.i.i = trunc i64 %and42.i.i to i32
  store i32 %conv43.i.i, i32* %t.i.i, align 4
  %54 = load i32, i32* %d.i.i, align 4
  %55 = load i32, i32* %t.i.i, align 4
  %xor44.i.i = xor i32 %54, %55
  %56 = load i32, i32* %t.i.i, align 4
  %shr45.i.i = lshr i32 %56, 18
  %xor46.i.i = xor i32 %xor44.i.i, %shr45.i.i
  store i32 %xor46.i.i, i32* %d.i.i, align 4
  %57 = load i32, i32* %d.i.i, align 4
  %shr47.i.i = lshr i32 %57, 1
  %58 = load i32, i32* %c.i.i, align 4
  %xor48.i.i = xor i32 %shr47.i.i, %58
  %conv49.i.i = zext i32 %xor48.i.i to i64
  %and50.i.i = and i64 %conv49.i.i, 1431655765
  %conv51.i.i = trunc i64 %and50.i.i to i32
  store i32 %conv51.i.i, i32* %t.i.i, align 4
  %59 = load i32, i32* %t.i.i, align 4
  %60 = load i32, i32* %c.i.i, align 4
  %xor52.i.i = xor i32 %60, %59
  store i32 %xor52.i.i, i32* %c.i.i, align 4
  %61 = load i32, i32* %t.i.i, align 4
  %shl53.i.i = shl i32 %61, 1
  %62 = load i32, i32* %d.i.i, align 4
  %xor54.i.i = xor i32 %62, %shl53.i.i
  store i32 %xor54.i.i, i32* %d.i.i, align 4
  %63 = load i32, i32* %c.i.i, align 4
  %shr55.i.i = lshr i32 %63, 8
  %64 = load i32, i32* %d.i.i, align 4
  %xor56.i.i = xor i32 %shr55.i.i, %64
  %conv57.i.i = zext i32 %xor56.i.i to i64
  %and58.i.i = and i64 %conv57.i.i, 16711935
  %conv59.i.i = trunc i64 %and58.i.i to i32
  store i32 %conv59.i.i, i32* %t.i.i, align 4
  %65 = load i32, i32* %t.i.i, align 4
  %66 = load i32, i32* %d.i.i, align 4
  %xor60.i.i = xor i32 %66, %65
  store i32 %xor60.i.i, i32* %d.i.i, align 4
  %67 = load i32, i32* %t.i.i, align 4
  %shl61.i.i = shl i32 %67, 8
  %68 = load i32, i32* %c.i.i, align 4
  %xor62.i.i = xor i32 %68, %shl61.i.i
  store i32 %xor62.i.i, i32* %c.i.i, align 4
  %69 = load i32, i32* %d.i.i, align 4
  %shr63.i.i = lshr i32 %69, 1
  %70 = load i32, i32* %c.i.i, align 4
  %xor64.i.i = xor i32 %shr63.i.i, %70
  %conv65.i.i = zext i32 %xor64.i.i to i64
  %and66.i.i = and i64 %conv65.i.i, 1431655765
  %conv67.i.i = trunc i64 %and66.i.i to i32
  store i32 %conv67.i.i, i32* %t.i.i, align 4
  %71 = load i32, i32* %t.i.i, align 4
  %72 = load i32, i32* %c.i.i, align 4
  %xor68.i.i = xor i32 %72, %71
  store i32 %xor68.i.i, i32* %c.i.i, align 4
  %73 = load i32, i32* %t.i.i, align 4
  %shl69.i.i = shl i32 %73, 1
  %74 = load i32, i32* %d.i.i, align 4
  %xor70.i.i = xor i32 %74, %shl69.i.i
  store i32 %xor70.i.i, i32* %d.i.i, align 4
  %75 = load i32, i32* %d.i.i, align 4
  %conv71.i.i = zext i32 %75 to i64
  %and72.i.i = and i64 %conv71.i.i, 255
  %shl73.i.i = shl i64 %and72.i.i, 16
  %76 = load i32, i32* %d.i.i, align 4
  %conv74.i.i = zext i32 %76 to i64
  %and75.i.i = and i64 %conv74.i.i, 65280
  %or76.i.i = or i64 %shl73.i.i, %and75.i.i
  %77 = load i32, i32* %d.i.i, align 4
  %conv77.i.i = zext i32 %77 to i64
  %and78.i.i = and i64 %conv77.i.i, 16711680
  %shr79.i.i = ashr i64 %and78.i.i, 16
  %or80.i.i = or i64 %or76.i.i, %shr79.i.i
  %78 = load i32, i32* %c.i.i, align 4
  %conv81.i.i = zext i32 %78 to i64
  %and82.i.i = and i64 %conv81.i.i, 4026531840
  %shr83.i.i = ashr i64 %and82.i.i, 4
  %or84.i.i = or i64 %or80.i.i, %shr83.i.i
  %conv85.i.i = trunc i64 %or84.i.i to i32
  store i32 %conv85.i.i, i32* %d.i.i, align 4
  %79 = load i32, i32* %c.i.i, align 4
  %conv86.i.i = zext i32 %79 to i64
  %and87.i.i = and i64 %conv86.i.i, 268435455
  %conv88.i.i = trunc i64 %and87.i.i to i32
  store i32 %conv88.i.i, i32* %c.i.i, align 4
  store i32 0, i32* %i.i6.i, align 4
  br label %for.cond.i10.i

for.cond.i10.i:                                   ; preds = %if.end.i14.i, %if.end4.i
  %80 = load i32, i32* %i.i6.i, align 4
  %cmp.i9.i = icmp slt i32 %80, 16
  br i1 %cmp.i9.i, label %for.body.i12.i, label %DES_set_key_unchecked.exit.i

for.body.i12.i:                                   ; preds = %for.cond.i10.i
  %81 = load i32, i32* %i.i6.i, align 4
  %idxprom.i11.i = sext i32 %81 to i64
  %arrayidx90.i.i = getelementptr inbounds [16 x i32], [16 x i32]* @DES_set_key_unchecked.shifts2, i64 0, i64 %idxprom.i11.i
  %82 = load i32, i32* %arrayidx90.i.i, align 4
  %tobool.i.i = icmp ne i32 %82, 0
  br i1 %tobool.i.i, label %if.then.i13.i, label %if.else.i.i

if.then.i13.i:                                    ; preds = %for.body.i12.i
  %83 = load i32, i32* %c.i.i, align 4
  %shr91.i.i = lshr i32 %83, 2
  %84 = load i32, i32* %c.i.i, align 4
  %shl92.i.i = shl i32 %84, 26
  %or93.i.i = or i32 %shr91.i.i, %shl92.i.i
  store i32 %or93.i.i, i32* %c.i.i, align 4
  %85 = load i32, i32* %d.i.i, align 4
  %shr94.i.i = lshr i32 %85, 2
  %86 = load i32, i32* %d.i.i, align 4
  %shl95.i.i = shl i32 %86, 26
  %or96.i.i = or i32 %shr94.i.i, %shl95.i.i
  store i32 %or96.i.i, i32* %d.i.i, align 4
  br label %if.end.i14.i

if.else.i.i:                                      ; preds = %for.body.i12.i
  %87 = load i32, i32* %c.i.i, align 4
  %shr97.i.i = lshr i32 %87, 1
  %88 = load i32, i32* %c.i.i, align 4
  %shl98.i.i = shl i32 %88, 27
  %or99.i.i = or i32 %shr97.i.i, %shl98.i.i
  store i32 %or99.i.i, i32* %c.i.i, align 4
  %89 = load i32, i32* %d.i.i, align 4
  %shr100.i.i = lshr i32 %89, 1
  %90 = load i32, i32* %d.i.i, align 4
  %shl101.i.i = shl i32 %90, 27
  %or102.i.i = or i32 %shr100.i.i, %shl101.i.i
  store i32 %or102.i.i, i32* %d.i.i, align 4
  br label %if.end.i14.i

if.end.i14.i:                                     ; preds = %if.else.i.i, %if.then.i13.i
  %91 = load i32, i32* %c.i.i, align 4
  %conv103.i.i = zext i32 %91 to i64
  %and104.i.i = and i64 %conv103.i.i, 268435455
  %conv105.i.i = trunc i64 %and104.i.i to i32
  store i32 %conv105.i.i, i32* %c.i.i, align 4
  %92 = load i32, i32* %d.i.i, align 4
  %conv106.i.i = zext i32 %92 to i64
  %and107.i.i = and i64 %conv106.i.i, 268435455
  %conv108.i.i = trunc i64 %and107.i.i to i32
  store i32 %conv108.i.i, i32* %d.i.i, align 4
  %93 = load i32, i32* %c.i.i, align 4
  %and109.i.i = and i32 %93, 63
  %idxprom110.i.i = zext i32 %and109.i.i to i64
  %arrayidx111.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 0), i64 0, i64 %idxprom110.i.i
  %94 = load i32, i32* %arrayidx111.i.i, align 4
  %95 = load i32, i32* %c.i.i, align 4
  %shr112.i.i = lshr i32 %95, 6
  %and113.i.i = and i32 %shr112.i.i, 3
  %96 = load i32, i32* %c.i.i, align 4
  %shr114.i.i = lshr i32 %96, 7
  %and115.i.i = and i32 %shr114.i.i, 60
  %or116.i.i = or i32 %and113.i.i, %and115.i.i
  %idxprom117.i.i = zext i32 %or116.i.i to i64
  %arrayidx118.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 1), i64 0, i64 %idxprom117.i.i
  %97 = load i32, i32* %arrayidx118.i.i, align 4
  %or119.i.i = or i32 %94, %97
  %98 = load i32, i32* %c.i.i, align 4
  %shr120.i.i = lshr i32 %98, 13
  %and121.i.i = and i32 %shr120.i.i, 15
  %99 = load i32, i32* %c.i.i, align 4
  %shr122.i.i = lshr i32 %99, 14
  %and123.i.i = and i32 %shr122.i.i, 48
  %or124.i.i = or i32 %and121.i.i, %and123.i.i
  %idxprom125.i.i = zext i32 %or124.i.i to i64
  %arrayidx126.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 2), i64 0, i64 %idxprom125.i.i
  %100 = load i32, i32* %arrayidx126.i.i, align 4
  %or127.i.i = or i32 %or119.i.i, %100
  %101 = load i32, i32* %c.i.i, align 4
  %shr128.i.i = lshr i32 %101, 20
  %and129.i.i = and i32 %shr128.i.i, 1
  %102 = load i32, i32* %c.i.i, align 4
  %shr130.i.i = lshr i32 %102, 21
  %and131.i.i = and i32 %shr130.i.i, 6
  %or132.i.i = or i32 %and129.i.i, %and131.i.i
  %103 = load i32, i32* %c.i.i, align 4
  %shr133.i.i = lshr i32 %103, 22
  %and134.i.i = and i32 %shr133.i.i, 56
  %or135.i.i = or i32 %or132.i.i, %and134.i.i
  %idxprom136.i.i = zext i32 %or135.i.i to i64
  %arrayidx137.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 3), i64 0, i64 %idxprom136.i.i
  %104 = load i32, i32* %arrayidx137.i.i, align 4
  %or138.i.i = or i32 %or127.i.i, %104
  store i32 %or138.i.i, i32* %s.i.i, align 4
  %105 = load i32, i32* %d.i.i, align 4
  %and139.i.i = and i32 %105, 63
  %idxprom140.i.i = zext i32 %and139.i.i to i64
  %arrayidx141.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 4), i64 0, i64 %idxprom140.i.i
  %106 = load i32, i32* %arrayidx141.i.i, align 4
  %107 = load i32, i32* %d.i.i, align 4
  %shr142.i.i = lshr i32 %107, 7
  %and143.i.i = and i32 %shr142.i.i, 3
  %108 = load i32, i32* %d.i.i, align 4
  %shr144.i.i = lshr i32 %108, 8
  %and145.i.i = and i32 %shr144.i.i, 60
  %or146.i.i = or i32 %and143.i.i, %and145.i.i
  %idxprom147.i.i = zext i32 %or146.i.i to i64
  %arrayidx148.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 5), i64 0, i64 %idxprom147.i.i
  %109 = load i32, i32* %arrayidx148.i.i, align 4
  %or149.i.i = or i32 %106, %109
  %110 = load i32, i32* %d.i.i, align 4
  %shr150.i.i = lshr i32 %110, 15
  %and151.i.i = and i32 %shr150.i.i, 63
  %idxprom152.i.i = zext i32 %and151.i.i to i64
  %arrayidx153.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 6), i64 0, i64 %idxprom152.i.i
  %111 = load i32, i32* %arrayidx153.i.i, align 4
  %or154.i.i = or i32 %or149.i.i, %111
  %112 = load i32, i32* %d.i.i, align 4
  %shr155.i.i = lshr i32 %112, 21
  %and156.i.i = and i32 %shr155.i.i, 15
  %113 = load i32, i32* %d.i.i, align 4
  %shr157.i.i = lshr i32 %113, 22
  %and158.i.i = and i32 %shr157.i.i, 48
  %or159.i.i = or i32 %and156.i.i, %and158.i.i
  %idxprom160.i.i = zext i32 %or159.i.i to i64
  %arrayidx161.i.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 7), i64 0, i64 %idxprom160.i.i
  %114 = load i32, i32* %arrayidx161.i.i, align 4
  %or162.i.i = or i32 %or154.i.i, %114
  store i32 %or162.i.i, i32* %t.i.i, align 4
  %115 = load i32, i32* %t.i.i, align 4
  %shl163.i.i = shl i32 %115, 16
  %conv164.i.i = zext i32 %shl163.i.i to i64
  %116 = load i32, i32* %s.i.i, align 4
  %conv165.i.i = zext i32 %116 to i64
  %and166.i.i = and i64 %conv165.i.i, 65535
  %or167.i.i = or i64 %conv164.i.i, %and166.i.i
  %and168.i.i = and i64 %or167.i.i, 4294967295
  %conv169.i.i = trunc i64 %and168.i.i to i32
  store i32 %conv169.i.i, i32* %t2.i.i, align 4
  %117 = load i32, i32* %t2.i.i, align 4
  %118 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 30, i32 %117) #5, !srcloc !2
  store i32 %118, i32* %ret.i.i, align 4
  %119 = load i32, i32* %ret.i.i, align 4
  store i32 %119, i32* %tmp.i.i, align 4
  %120 = load i32, i32* %tmp.i.i, align 4
  %conv170.i.i = zext i32 %120 to i64
  %and171.i.i = and i64 %conv170.i.i, 4294967295
  %conv172.i.i = trunc i64 %and171.i.i to i32
  %121 = load i32*, i32** %k.i.i, align 8
  %incdec.ptr173.i.i = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %incdec.ptr173.i.i, i32** %k.i.i, align 8
  store i32 %conv172.i.i, i32* %121, align 4
  %122 = load i32, i32* %s.i.i, align 4
  %shr174.i.i = lshr i32 %122, 16
  %conv175.i.i = zext i32 %shr174.i.i to i64
  %123 = load i32, i32* %t.i.i, align 4
  %conv176.i.i = zext i32 %123 to i64
  %and177.i.i = and i64 %conv176.i.i, 4294901760
  %or178.i.i = or i64 %conv175.i.i, %and177.i.i
  %conv179.i.i = trunc i64 %or178.i.i to i32
  store i32 %conv179.i.i, i32* %t2.i.i, align 4
  %124 = load i32, i32* %t2.i.i, align 4
  %125 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 26, i32 %124) #5, !srcloc !3
  store i32 %125, i32* %ret180.i.i, align 4
  %126 = load i32, i32* %ret180.i.i, align 4
  store i32 %126, i32* %tmp181.i.i, align 4
  %127 = load i32, i32* %tmp181.i.i, align 4
  %conv182.i.i = zext i32 %127 to i64
  %and183.i.i = and i64 %conv182.i.i, 4294967295
  %conv184.i.i = trunc i64 %and183.i.i to i32
  %128 = load i32*, i32** %k.i.i, align 8
  %incdec.ptr185.i.i = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %incdec.ptr185.i.i, i32** %k.i.i, align 8
  store i32 %conv184.i.i, i32* %128, align 4
  %129 = load i32, i32* %i.i6.i, align 4
  %inc.i15.i = add nsw i32 %129, 1
  store i32 %inc.i15.i, i32* %i.i6.i, align 4
  br label %for.cond.i10.i

DES_set_key_unchecked.exit.i:                     ; preds = %for.cond.i10.i
  store i32 0, i32* %retval.i, align 4
  br label %DES_set_key_checked.exit

DES_set_key_checked.exit:                         ; preds = %if.then.i, %if.then3.i, %DES_set_key_unchecked.exit.i
  %130 = load i32, i32* %retval.i, align 4
  store i32 %130, i32* %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %131 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %132 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr, align 8
  store [8 x i8]* %131, [8 x i8]** %key.addr.i1, align 8
  store %struct.DES_ks* %132, %struct.DES_ks** %schedule.addr.i2, align 8
  %133 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr.i2, align 8
  %ks.i = getelementptr inbounds %struct.DES_ks, %struct.DES_ks* %133, i32 0, i32 0
  %arraydecay.i = getelementptr inbounds [16 x %union.anon], [16 x %union.anon]* %ks.i, i64 0, i64 0
  %deslong.i = bitcast %union.anon* %arraydecay.i to [2 x i32]*
  %arrayidx.i = getelementptr inbounds [2 x i32], [2 x i32]* %deslong.i, i64 0, i64 0
  store i32* %arrayidx.i, i32** %k.i, align 8
  %134 = load [8 x i8]*, [8 x i8]** %key.addr.i1, align 8
  %arrayidx1.i = getelementptr inbounds [8 x i8], [8 x i8]* %134, i64 0, i64 0
  store i8* %arrayidx1.i, i8** %in.i, align 8
  %135 = load i8*, i8** %in.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, i8* %135, i32 1
  store i8* %incdec.ptr.i, i8** %in.i, align 8
  %136 = load i8, i8* %135, align 1
  %conv.i = zext i8 %136 to i32
  store i32 %conv.i, i32* %c.i, align 4
  %137 = load i8*, i8** %in.i, align 8
  %incdec.ptr2.i = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %incdec.ptr2.i, i8** %in.i, align 8
  %138 = load i8, i8* %137, align 1
  %conv3.i = zext i8 %138 to i32
  %shl.i = shl i32 %conv3.i, 8
  %139 = load i32, i32* %c.i, align 4
  %or.i = or i32 %139, %shl.i
  store i32 %or.i, i32* %c.i, align 4
  %140 = load i8*, i8** %in.i, align 8
  %incdec.ptr4.i = getelementptr inbounds i8, i8* %140, i32 1
  store i8* %incdec.ptr4.i, i8** %in.i, align 8
  %141 = load i8, i8* %140, align 1
  %conv5.i = zext i8 %141 to i32
  %shl6.i = shl i32 %conv5.i, 16
  %142 = load i32, i32* %c.i, align 4
  %or7.i = or i32 %142, %shl6.i
  store i32 %or7.i, i32* %c.i, align 4
  %143 = load i8*, i8** %in.i, align 8
  %incdec.ptr8.i = getelementptr inbounds i8, i8* %143, i32 1
  store i8* %incdec.ptr8.i, i8** %in.i, align 8
  %144 = load i8, i8* %143, align 1
  %conv9.i = zext i8 %144 to i32
  %shl10.i = shl i32 %conv9.i, 24
  %145 = load i32, i32* %c.i, align 4
  %or11.i = or i32 %145, %shl10.i
  store i32 %or11.i, i32* %c.i, align 4
  %146 = load i8*, i8** %in.i, align 8
  %incdec.ptr12.i = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %incdec.ptr12.i, i8** %in.i, align 8
  %147 = load i8, i8* %146, align 1
  %conv13.i = zext i8 %147 to i32
  store i32 %conv13.i, i32* %d.i, align 4
  %148 = load i8*, i8** %in.i, align 8
  %incdec.ptr14.i = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %incdec.ptr14.i, i8** %in.i, align 8
  %149 = load i8, i8* %148, align 1
  %conv15.i = zext i8 %149 to i32
  %shl16.i = shl i32 %conv15.i, 8
  %150 = load i32, i32* %d.i, align 4
  %or17.i = or i32 %150, %shl16.i
  store i32 %or17.i, i32* %d.i, align 4
  %151 = load i8*, i8** %in.i, align 8
  %incdec.ptr18.i = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %incdec.ptr18.i, i8** %in.i, align 8
  %152 = load i8, i8* %151, align 1
  %conv19.i = zext i8 %152 to i32
  %shl20.i = shl i32 %conv19.i, 16
  %153 = load i32, i32* %d.i, align 4
  %or21.i = or i32 %153, %shl20.i
  store i32 %or21.i, i32* %d.i, align 4
  %154 = load i8*, i8** %in.i, align 8
  %incdec.ptr22.i = getelementptr inbounds i8, i8* %154, i32 1
  store i8* %incdec.ptr22.i, i8** %in.i, align 8
  %155 = load i8, i8* %154, align 1
  %conv23.i = zext i8 %155 to i32
  %shl24.i = shl i32 %conv23.i, 24
  %156 = load i32, i32* %d.i, align 4
  %or25.i = or i32 %156, %shl24.i
  store i32 %or25.i, i32* %d.i, align 4
  %157 = load i32, i32* %d.i, align 4
  %shr.i = lshr i32 %157, 4
  %158 = load i32, i32* %c.i, align 4
  %xor.i = xor i32 %shr.i, %158
  %conv26.i = zext i32 %xor.i to i64
  %and.i = and i64 %conv26.i, 252645135
  %conv27.i = trunc i64 %and.i to i32
  store i32 %conv27.i, i32* %t.i, align 4
  %159 = load i32, i32* %t.i, align 4
  %160 = load i32, i32* %c.i, align 4
  %xor28.i = xor i32 %160, %159
  store i32 %xor28.i, i32* %c.i, align 4
  %161 = load i32, i32* %t.i, align 4
  %shl29.i = shl i32 %161, 4
  %162 = load i32, i32* %d.i, align 4
  %xor30.i = xor i32 %162, %shl29.i
  store i32 %xor30.i, i32* %d.i, align 4
  %163 = load i32, i32* %c.i, align 4
  %shl31.i = shl i32 %163, 18
  %164 = load i32, i32* %c.i, align 4
  %xor32.i = xor i32 %shl31.i, %164
  %conv33.i = zext i32 %xor32.i to i64
  %and34.i = and i64 %conv33.i, 3435921408
  %conv35.i = trunc i64 %and34.i to i32
  store i32 %conv35.i, i32* %t.i, align 4
  %165 = load i32, i32* %c.i, align 4
  %166 = load i32, i32* %t.i, align 4
  %xor36.i = xor i32 %165, %166
  %167 = load i32, i32* %t.i, align 4
  %shr37.i = lshr i32 %167, 18
  %xor38.i = xor i32 %xor36.i, %shr37.i
  store i32 %xor38.i, i32* %c.i, align 4
  %168 = load i32, i32* %d.i, align 4
  %shl39.i = shl i32 %168, 18
  %169 = load i32, i32* %d.i, align 4
  %xor40.i = xor i32 %shl39.i, %169
  %conv41.i = zext i32 %xor40.i to i64
  %and42.i = and i64 %conv41.i, 3435921408
  %conv43.i = trunc i64 %and42.i to i32
  store i32 %conv43.i, i32* %t.i, align 4
  %170 = load i32, i32* %d.i, align 4
  %171 = load i32, i32* %t.i, align 4
  %xor44.i = xor i32 %170, %171
  %172 = load i32, i32* %t.i, align 4
  %shr45.i = lshr i32 %172, 18
  %xor46.i = xor i32 %xor44.i, %shr45.i
  store i32 %xor46.i, i32* %d.i, align 4
  %173 = load i32, i32* %d.i, align 4
  %shr47.i = lshr i32 %173, 1
  %174 = load i32, i32* %c.i, align 4
  %xor48.i = xor i32 %shr47.i, %174
  %conv49.i = zext i32 %xor48.i to i64
  %and50.i = and i64 %conv49.i, 1431655765
  %conv51.i = trunc i64 %and50.i to i32
  store i32 %conv51.i, i32* %t.i, align 4
  %175 = load i32, i32* %t.i, align 4
  %176 = load i32, i32* %c.i, align 4
  %xor52.i = xor i32 %176, %175
  store i32 %xor52.i, i32* %c.i, align 4
  %177 = load i32, i32* %t.i, align 4
  %shl53.i = shl i32 %177, 1
  %178 = load i32, i32* %d.i, align 4
  %xor54.i = xor i32 %178, %shl53.i
  store i32 %xor54.i, i32* %d.i, align 4
  %179 = load i32, i32* %c.i, align 4
  %shr55.i = lshr i32 %179, 8
  %180 = load i32, i32* %d.i, align 4
  %xor56.i = xor i32 %shr55.i, %180
  %conv57.i = zext i32 %xor56.i to i64
  %and58.i = and i64 %conv57.i, 16711935
  %conv59.i = trunc i64 %and58.i to i32
  store i32 %conv59.i, i32* %t.i, align 4
  %181 = load i32, i32* %t.i, align 4
  %182 = load i32, i32* %d.i, align 4
  %xor60.i = xor i32 %182, %181
  store i32 %xor60.i, i32* %d.i, align 4
  %183 = load i32, i32* %t.i, align 4
  %shl61.i = shl i32 %183, 8
  %184 = load i32, i32* %c.i, align 4
  %xor62.i = xor i32 %184, %shl61.i
  store i32 %xor62.i, i32* %c.i, align 4
  %185 = load i32, i32* %d.i, align 4
  %shr63.i = lshr i32 %185, 1
  %186 = load i32, i32* %c.i, align 4
  %xor64.i = xor i32 %shr63.i, %186
  %conv65.i = zext i32 %xor64.i to i64
  %and66.i = and i64 %conv65.i, 1431655765
  %conv67.i = trunc i64 %and66.i to i32
  store i32 %conv67.i, i32* %t.i, align 4
  %187 = load i32, i32* %t.i, align 4
  %188 = load i32, i32* %c.i, align 4
  %xor68.i = xor i32 %188, %187
  store i32 %xor68.i, i32* %c.i, align 4
  %189 = load i32, i32* %t.i, align 4
  %shl69.i = shl i32 %189, 1
  %190 = load i32, i32* %d.i, align 4
  %xor70.i = xor i32 %190, %shl69.i
  store i32 %xor70.i, i32* %d.i, align 4
  %191 = load i32, i32* %d.i, align 4
  %conv71.i = zext i32 %191 to i64
  %and72.i = and i64 %conv71.i, 255
  %shl73.i = shl i64 %and72.i, 16
  %192 = load i32, i32* %d.i, align 4
  %conv74.i = zext i32 %192 to i64
  %and75.i = and i64 %conv74.i, 65280
  %or76.i = or i64 %shl73.i, %and75.i
  %193 = load i32, i32* %d.i, align 4
  %conv77.i = zext i32 %193 to i64
  %and78.i = and i64 %conv77.i, 16711680
  %shr79.i = ashr i64 %and78.i, 16
  %or80.i = or i64 %or76.i, %shr79.i
  %194 = load i32, i32* %c.i, align 4
  %conv81.i = zext i32 %194 to i64
  %and82.i = and i64 %conv81.i, 4026531840
  %shr83.i = ashr i64 %and82.i, 4
  %or84.i = or i64 %or80.i, %shr83.i
  %conv85.i = trunc i64 %or84.i to i32
  store i32 %conv85.i, i32* %d.i, align 4
  %195 = load i32, i32* %c.i, align 4
  %conv86.i = zext i32 %195 to i64
  %and87.i = and i64 %conv86.i, 268435455
  %conv88.i = trunc i64 %and87.i to i32
  store i32 %conv88.i, i32* %c.i, align 4
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i5, %if.else
  %196 = load i32, i32* %i.i, align 4
  %cmp.i = icmp slt i32 %196, 16
  br i1 %cmp.i, label %for.body.i, label %DES_set_key_unchecked.exit

for.body.i:                                       ; preds = %for.cond.i
  %197 = load i32, i32* %i.i, align 4
  %idxprom.i = sext i32 %197 to i64
  %arrayidx90.i = getelementptr inbounds [16 x i32], [16 x i32]* @DES_set_key_unchecked.shifts2, i64 0, i64 %idxprom.i
  %198 = load i32, i32* %arrayidx90.i, align 4
  %tobool.i3 = icmp ne i32 %198, 0
  br i1 %tobool.i3, label %if.then.i4, label %if.else.i

if.then.i4:                                       ; preds = %for.body.i
  %199 = load i32, i32* %c.i, align 4
  %shr91.i = lshr i32 %199, 2
  %200 = load i32, i32* %c.i, align 4
  %shl92.i = shl i32 %200, 26
  %or93.i = or i32 %shr91.i, %shl92.i
  store i32 %or93.i, i32* %c.i, align 4
  %201 = load i32, i32* %d.i, align 4
  %shr94.i = lshr i32 %201, 2
  %202 = load i32, i32* %d.i, align 4
  %shl95.i = shl i32 %202, 26
  %or96.i = or i32 %shr94.i, %shl95.i
  store i32 %or96.i, i32* %d.i, align 4
  br label %if.end.i5

if.else.i:                                        ; preds = %for.body.i
  %203 = load i32, i32* %c.i, align 4
  %shr97.i = lshr i32 %203, 1
  %204 = load i32, i32* %c.i, align 4
  %shl98.i = shl i32 %204, 27
  %or99.i = or i32 %shr97.i, %shl98.i
  store i32 %or99.i, i32* %c.i, align 4
  %205 = load i32, i32* %d.i, align 4
  %shr100.i = lshr i32 %205, 1
  %206 = load i32, i32* %d.i, align 4
  %shl101.i = shl i32 %206, 27
  %or102.i = or i32 %shr100.i, %shl101.i
  store i32 %or102.i, i32* %d.i, align 4
  br label %if.end.i5

if.end.i5:                                        ; preds = %if.else.i, %if.then.i4
  %207 = load i32, i32* %c.i, align 4
  %conv103.i = zext i32 %207 to i64
  %and104.i = and i64 %conv103.i, 268435455
  %conv105.i = trunc i64 %and104.i to i32
  store i32 %conv105.i, i32* %c.i, align 4
  %208 = load i32, i32* %d.i, align 4
  %conv106.i = zext i32 %208 to i64
  %and107.i = and i64 %conv106.i, 268435455
  %conv108.i = trunc i64 %and107.i to i32
  store i32 %conv108.i, i32* %d.i, align 4
  %209 = load i32, i32* %c.i, align 4
  %and109.i = and i32 %209, 63
  %idxprom110.i = zext i32 %and109.i to i64
  %arrayidx111.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 0), i64 0, i64 %idxprom110.i
  %210 = load i32, i32* %arrayidx111.i, align 4
  %211 = load i32, i32* %c.i, align 4
  %shr112.i = lshr i32 %211, 6
  %and113.i = and i32 %shr112.i, 3
  %212 = load i32, i32* %c.i, align 4
  %shr114.i = lshr i32 %212, 7
  %and115.i = and i32 %shr114.i, 60
  %or116.i = or i32 %and113.i, %and115.i
  %idxprom117.i = zext i32 %or116.i to i64
  %arrayidx118.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 1), i64 0, i64 %idxprom117.i
  %213 = load i32, i32* %arrayidx118.i, align 4
  %or119.i = or i32 %210, %213
  %214 = load i32, i32* %c.i, align 4
  %shr120.i = lshr i32 %214, 13
  %and121.i = and i32 %shr120.i, 15
  %215 = load i32, i32* %c.i, align 4
  %shr122.i = lshr i32 %215, 14
  %and123.i = and i32 %shr122.i, 48
  %or124.i = or i32 %and121.i, %and123.i
  %idxprom125.i = zext i32 %or124.i to i64
  %arrayidx126.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 2), i64 0, i64 %idxprom125.i
  %216 = load i32, i32* %arrayidx126.i, align 4
  %or127.i = or i32 %or119.i, %216
  %217 = load i32, i32* %c.i, align 4
  %shr128.i = lshr i32 %217, 20
  %and129.i = and i32 %shr128.i, 1
  %218 = load i32, i32* %c.i, align 4
  %shr130.i = lshr i32 %218, 21
  %and131.i = and i32 %shr130.i, 6
  %or132.i = or i32 %and129.i, %and131.i
  %219 = load i32, i32* %c.i, align 4
  %shr133.i = lshr i32 %219, 22
  %and134.i = and i32 %shr133.i, 56
  %or135.i = or i32 %or132.i, %and134.i
  %idxprom136.i = zext i32 %or135.i to i64
  %arrayidx137.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 3), i64 0, i64 %idxprom136.i
  %220 = load i32, i32* %arrayidx137.i, align 4
  %or138.i = or i32 %or127.i, %220
  store i32 %or138.i, i32* %s.i, align 4
  %221 = load i32, i32* %d.i, align 4
  %and139.i = and i32 %221, 63
  %idxprom140.i = zext i32 %and139.i to i64
  %arrayidx141.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 4), i64 0, i64 %idxprom140.i
  %222 = load i32, i32* %arrayidx141.i, align 4
  %223 = load i32, i32* %d.i, align 4
  %shr142.i = lshr i32 %223, 7
  %and143.i = and i32 %shr142.i, 3
  %224 = load i32, i32* %d.i, align 4
  %shr144.i = lshr i32 %224, 8
  %and145.i = and i32 %shr144.i, 60
  %or146.i = or i32 %and143.i, %and145.i
  %idxprom147.i = zext i32 %or146.i to i64
  %arrayidx148.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 5), i64 0, i64 %idxprom147.i
  %225 = load i32, i32* %arrayidx148.i, align 4
  %or149.i = or i32 %222, %225
  %226 = load i32, i32* %d.i, align 4
  %shr150.i = lshr i32 %226, 15
  %and151.i = and i32 %shr150.i, 63
  %idxprom152.i = zext i32 %and151.i to i64
  %arrayidx153.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 6), i64 0, i64 %idxprom152.i
  %227 = load i32, i32* %arrayidx153.i, align 4
  %or154.i = or i32 %or149.i, %227
  %228 = load i32, i32* %d.i, align 4
  %shr155.i = lshr i32 %228, 21
  %and156.i = and i32 %shr155.i, 15
  %229 = load i32, i32* %d.i, align 4
  %shr157.i = lshr i32 %229, 22
  %and158.i = and i32 %shr157.i, 48
  %or159.i = or i32 %and156.i, %and158.i
  %idxprom160.i = zext i32 %or159.i to i64
  %arrayidx161.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 7), i64 0, i64 %idxprom160.i
  %230 = load i32, i32* %arrayidx161.i, align 4
  %or162.i = or i32 %or154.i, %230
  store i32 %or162.i, i32* %t.i, align 4
  %231 = load i32, i32* %t.i, align 4
  %shl163.i = shl i32 %231, 16
  %conv164.i = zext i32 %shl163.i to i64
  %232 = load i32, i32* %s.i, align 4
  %conv165.i = zext i32 %232 to i64
  %and166.i = and i64 %conv165.i, 65535
  %or167.i = or i64 %conv164.i, %and166.i
  %and168.i = and i64 %or167.i, 4294967295
  %conv169.i = trunc i64 %and168.i to i32
  store i32 %conv169.i, i32* %t2.i, align 4
  %233 = load i32, i32* %t2.i, align 4
  %234 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 30, i32 %233) #5, !srcloc !2
  store i32 %234, i32* %ret.i, align 4
  %235 = load i32, i32* %ret.i, align 4
  store i32 %235, i32* %tmp.i, align 4
  %236 = load i32, i32* %tmp.i, align 4
  %conv170.i = zext i32 %236 to i64
  %and171.i = and i64 %conv170.i, 4294967295
  %conv172.i = trunc i64 %and171.i to i32
  %237 = load i32*, i32** %k.i, align 8
  %incdec.ptr173.i = getelementptr inbounds i32, i32* %237, i32 1
  store i32* %incdec.ptr173.i, i32** %k.i, align 8
  store i32 %conv172.i, i32* %237, align 4
  %238 = load i32, i32* %s.i, align 4
  %shr174.i = lshr i32 %238, 16
  %conv175.i = zext i32 %shr174.i to i64
  %239 = load i32, i32* %t.i, align 4
  %conv176.i = zext i32 %239 to i64
  %and177.i = and i64 %conv176.i, 4294901760
  %or178.i = or i64 %conv175.i, %and177.i
  %conv179.i = trunc i64 %or178.i to i32
  store i32 %conv179.i, i32* %t2.i, align 4
  %240 = load i32, i32* %t2.i, align 4
  %241 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 26, i32 %240) #5, !srcloc !3
  store i32 %241, i32* %ret180.i, align 4
  %242 = load i32, i32* %ret180.i, align 4
  store i32 %242, i32* %tmp181.i, align 4
  %243 = load i32, i32* %tmp181.i, align 4
  %conv182.i = zext i32 %243 to i64
  %and183.i = and i64 %conv182.i, 4294967295
  %conv184.i = trunc i64 %and183.i to i32
  %244 = load i32*, i32** %k.i, align 8
  %incdec.ptr185.i = getelementptr inbounds i32, i32* %244, i32 1
  store i32* %incdec.ptr185.i, i32** %k.i, align 8
  store i32 %conv184.i, i32* %244, align 4
  %245 = load i32, i32* %i.i, align 4
  %inc.i = add nsw i32 %245, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

DES_set_key_unchecked.exit:                       ; preds = %for.cond.i
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %DES_set_key_unchecked.exit, %DES_set_key_checked.exit
  %246 = load i32, i32* %retval, align 4
  ret i32 %246
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @DES_set_key_checked([8 x i8]* %key, %struct.DES_ks* %schedule) #0 {
entry:
  %key.addr.i5 = alloca [8 x i8]*, align 8
  %schedule.addr.i = alloca %struct.DES_ks*, align 8
  %c.i = alloca i32, align 4
  %d.i = alloca i32, align 4
  %t.i = alloca i32, align 4
  %s.i = alloca i32, align 4
  %t2.i = alloca i32, align 4
  %in.i = alloca i8*, align 8
  %k.i = alloca i32*, align 8
  %i.i6 = alloca i32, align 4
  %ret.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %ret180.i = alloca i32, align 4
  %tmp181.i = alloca i32, align 4
  %retval.i = alloca i32, align 4
  %key.addr.i = alloca [8 x i8]*, align 8
  %i.i = alloca i32, align 4
  %retval = alloca i32, align 4
  %key.addr = alloca [8 x i8]*, align 8
  %schedule.addr = alloca %struct.DES_ks*, align 8
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store %struct.DES_ks* %schedule, %struct.DES_ks** %schedule.addr, align 8
  %0 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  store [8 x i8]* %0, [8 x i8]** %key.addr.i, align 8
  store i32 0, i32* %i.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end.i, %entry
  %1 = load i32, i32* %i.i, align 4
  %conv.i = zext i32 %1 to i64
  %cmp.i = icmp ult i64 %conv.i, 8
  br i1 %cmp.i, label %for.body.i, label %for.end.i

for.body.i:                                       ; preds = %for.cond.i
  %2 = load [8 x i8]*, [8 x i8]** %key.addr.i, align 8
  %3 = load i32, i32* %i.i, align 4
  %idxprom.i = zext i32 %3 to i64
  %arrayidx.i = getelementptr inbounds [8 x i8], [8 x i8]* %2, i64 0, i64 %idxprom.i
  %4 = load i8, i8* %arrayidx.i, align 1
  %conv2.i = zext i8 %4 to i32
  %5 = load [8 x i8]*, [8 x i8]** %key.addr.i, align 8
  %6 = load i32, i32* %i.i, align 4
  %idxprom3.i = zext i32 %6 to i64
  %arrayidx4.i = getelementptr inbounds [8 x i8], [8 x i8]* %5, i64 0, i64 %idxprom3.i
  %7 = load i8, i8* %arrayidx4.i, align 1
  %idxprom5.i = zext i8 %7 to i64
  %arrayidx6.i = getelementptr inbounds [256 x i8], [256 x i8]* @odd_parity, i64 0, i64 %idxprom5.i
  %8 = load i8, i8* %arrayidx6.i, align 1
  %conv7.i = zext i8 %8 to i32
  %cmp8.i = icmp ne i32 %conv2.i, %conv7.i
  br i1 %cmp8.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  store i32 0, i32* %retval.i, align 4
  br label %DES_check_key_parity.exit

if.end.i:                                         ; preds = %for.body.i
  %9 = load i32, i32* %i.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, i32* %i.i, align 4
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  store i32 1, i32* %retval.i, align 4
  br label %DES_check_key_parity.exit

DES_check_key_parity.exit:                        ; preds = %if.then.i, %for.end.i
  %10 = load i32, i32* %retval.i, align 4
  %tobool = icmp ne i32 %10, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %DES_check_key_parity.exit
  store i32 -1, i32* %retval, align 4
  br label %return

if.end:                                           ; preds = %DES_check_key_parity.exit
  %11 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %call1 = call i32 @DES_is_weak_key([8 x i8]* %11)
  %tobool2 = icmp ne i32 %call1, 0
  br i1 %tobool2, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  store i32 -2, i32* %retval, align 4
  br label %return

if.end4:                                          ; preds = %if.end
  %12 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %13 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr, align 8
  store [8 x i8]* %12, [8 x i8]** %key.addr.i5, align 8
  store %struct.DES_ks* %13, %struct.DES_ks** %schedule.addr.i, align 8
  %14 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr.i, align 8
  %ks.i = getelementptr inbounds %struct.DES_ks, %struct.DES_ks* %14, i32 0, i32 0
  %arraydecay.i = getelementptr inbounds [16 x %union.anon], [16 x %union.anon]* %ks.i, i64 0, i64 0
  %deslong.i = bitcast %union.anon* %arraydecay.i to [2 x i32]*
  %arrayidx.i7 = getelementptr inbounds [2 x i32], [2 x i32]* %deslong.i, i64 0, i64 0
  store i32* %arrayidx.i7, i32** %k.i, align 8
  %15 = load [8 x i8]*, [8 x i8]** %key.addr.i5, align 8
  %arrayidx1.i = getelementptr inbounds [8 x i8], [8 x i8]* %15, i64 0, i64 0
  store i8* %arrayidx1.i, i8** %in.i, align 8
  %16 = load i8*, i8** %in.i, align 8
  %incdec.ptr.i = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %incdec.ptr.i, i8** %in.i, align 8
  %17 = load i8, i8* %16, align 1
  %conv.i8 = zext i8 %17 to i32
  store i32 %conv.i8, i32* %c.i, align 4
  %18 = load i8*, i8** %in.i, align 8
  %incdec.ptr2.i = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr2.i, i8** %in.i, align 8
  %19 = load i8, i8* %18, align 1
  %conv3.i = zext i8 %19 to i32
  %shl.i = shl i32 %conv3.i, 8
  %20 = load i32, i32* %c.i, align 4
  %or.i = or i32 %20, %shl.i
  store i32 %or.i, i32* %c.i, align 4
  %21 = load i8*, i8** %in.i, align 8
  %incdec.ptr4.i = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr4.i, i8** %in.i, align 8
  %22 = load i8, i8* %21, align 1
  %conv5.i = zext i8 %22 to i32
  %shl6.i = shl i32 %conv5.i, 16
  %23 = load i32, i32* %c.i, align 4
  %or7.i = or i32 %23, %shl6.i
  store i32 %or7.i, i32* %c.i, align 4
  %24 = load i8*, i8** %in.i, align 8
  %incdec.ptr8.i = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %incdec.ptr8.i, i8** %in.i, align 8
  %25 = load i8, i8* %24, align 1
  %conv9.i = zext i8 %25 to i32
  %shl10.i = shl i32 %conv9.i, 24
  %26 = load i32, i32* %c.i, align 4
  %or11.i = or i32 %26, %shl10.i
  store i32 %or11.i, i32* %c.i, align 4
  %27 = load i8*, i8** %in.i, align 8
  %incdec.ptr12.i = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %incdec.ptr12.i, i8** %in.i, align 8
  %28 = load i8, i8* %27, align 1
  %conv13.i = zext i8 %28 to i32
  store i32 %conv13.i, i32* %d.i, align 4
  %29 = load i8*, i8** %in.i, align 8
  %incdec.ptr14.i = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %incdec.ptr14.i, i8** %in.i, align 8
  %30 = load i8, i8* %29, align 1
  %conv15.i = zext i8 %30 to i32
  %shl16.i = shl i32 %conv15.i, 8
  %31 = load i32, i32* %d.i, align 4
  %or17.i = or i32 %31, %shl16.i
  store i32 %or17.i, i32* %d.i, align 4
  %32 = load i8*, i8** %in.i, align 8
  %incdec.ptr18.i = getelementptr inbounds i8, i8* %32, i32 1
  store i8* %incdec.ptr18.i, i8** %in.i, align 8
  %33 = load i8, i8* %32, align 1
  %conv19.i = zext i8 %33 to i32
  %shl20.i = shl i32 %conv19.i, 16
  %34 = load i32, i32* %d.i, align 4
  %or21.i = or i32 %34, %shl20.i
  store i32 %or21.i, i32* %d.i, align 4
  %35 = load i8*, i8** %in.i, align 8
  %incdec.ptr22.i = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %incdec.ptr22.i, i8** %in.i, align 8
  %36 = load i8, i8* %35, align 1
  %conv23.i = zext i8 %36 to i32
  %shl24.i = shl i32 %conv23.i, 24
  %37 = load i32, i32* %d.i, align 4
  %or25.i = or i32 %37, %shl24.i
  store i32 %or25.i, i32* %d.i, align 4
  %38 = load i32, i32* %d.i, align 4
  %shr.i = lshr i32 %38, 4
  %39 = load i32, i32* %c.i, align 4
  %xor.i = xor i32 %shr.i, %39
  %conv26.i = zext i32 %xor.i to i64
  %and.i = and i64 %conv26.i, 252645135
  %conv27.i = trunc i64 %and.i to i32
  store i32 %conv27.i, i32* %t.i, align 4
  %40 = load i32, i32* %t.i, align 4
  %41 = load i32, i32* %c.i, align 4
  %xor28.i = xor i32 %41, %40
  store i32 %xor28.i, i32* %c.i, align 4
  %42 = load i32, i32* %t.i, align 4
  %shl29.i = shl i32 %42, 4
  %43 = load i32, i32* %d.i, align 4
  %xor30.i = xor i32 %43, %shl29.i
  store i32 %xor30.i, i32* %d.i, align 4
  %44 = load i32, i32* %c.i, align 4
  %shl31.i = shl i32 %44, 18
  %45 = load i32, i32* %c.i, align 4
  %xor32.i = xor i32 %shl31.i, %45
  %conv33.i = zext i32 %xor32.i to i64
  %and34.i = and i64 %conv33.i, 3435921408
  %conv35.i = trunc i64 %and34.i to i32
  store i32 %conv35.i, i32* %t.i, align 4
  %46 = load i32, i32* %c.i, align 4
  %47 = load i32, i32* %t.i, align 4
  %xor36.i = xor i32 %46, %47
  %48 = load i32, i32* %t.i, align 4
  %shr37.i = lshr i32 %48, 18
  %xor38.i = xor i32 %xor36.i, %shr37.i
  store i32 %xor38.i, i32* %c.i, align 4
  %49 = load i32, i32* %d.i, align 4
  %shl39.i = shl i32 %49, 18
  %50 = load i32, i32* %d.i, align 4
  %xor40.i = xor i32 %shl39.i, %50
  %conv41.i = zext i32 %xor40.i to i64
  %and42.i = and i64 %conv41.i, 3435921408
  %conv43.i = trunc i64 %and42.i to i32
  store i32 %conv43.i, i32* %t.i, align 4
  %51 = load i32, i32* %d.i, align 4
  %52 = load i32, i32* %t.i, align 4
  %xor44.i = xor i32 %51, %52
  %53 = load i32, i32* %t.i, align 4
  %shr45.i = lshr i32 %53, 18
  %xor46.i = xor i32 %xor44.i, %shr45.i
  store i32 %xor46.i, i32* %d.i, align 4
  %54 = load i32, i32* %d.i, align 4
  %shr47.i = lshr i32 %54, 1
  %55 = load i32, i32* %c.i, align 4
  %xor48.i = xor i32 %shr47.i, %55
  %conv49.i = zext i32 %xor48.i to i64
  %and50.i = and i64 %conv49.i, 1431655765
  %conv51.i = trunc i64 %and50.i to i32
  store i32 %conv51.i, i32* %t.i, align 4
  %56 = load i32, i32* %t.i, align 4
  %57 = load i32, i32* %c.i, align 4
  %xor52.i = xor i32 %57, %56
  store i32 %xor52.i, i32* %c.i, align 4
  %58 = load i32, i32* %t.i, align 4
  %shl53.i = shl i32 %58, 1
  %59 = load i32, i32* %d.i, align 4
  %xor54.i = xor i32 %59, %shl53.i
  store i32 %xor54.i, i32* %d.i, align 4
  %60 = load i32, i32* %c.i, align 4
  %shr55.i = lshr i32 %60, 8
  %61 = load i32, i32* %d.i, align 4
  %xor56.i = xor i32 %shr55.i, %61
  %conv57.i = zext i32 %xor56.i to i64
  %and58.i = and i64 %conv57.i, 16711935
  %conv59.i = trunc i64 %and58.i to i32
  store i32 %conv59.i, i32* %t.i, align 4
  %62 = load i32, i32* %t.i, align 4
  %63 = load i32, i32* %d.i, align 4
  %xor60.i = xor i32 %63, %62
  store i32 %xor60.i, i32* %d.i, align 4
  %64 = load i32, i32* %t.i, align 4
  %shl61.i = shl i32 %64, 8
  %65 = load i32, i32* %c.i, align 4
  %xor62.i = xor i32 %65, %shl61.i
  store i32 %xor62.i, i32* %c.i, align 4
  %66 = load i32, i32* %d.i, align 4
  %shr63.i = lshr i32 %66, 1
  %67 = load i32, i32* %c.i, align 4
  %xor64.i = xor i32 %shr63.i, %67
  %conv65.i = zext i32 %xor64.i to i64
  %and66.i = and i64 %conv65.i, 1431655765
  %conv67.i = trunc i64 %and66.i to i32
  store i32 %conv67.i, i32* %t.i, align 4
  %68 = load i32, i32* %t.i, align 4
  %69 = load i32, i32* %c.i, align 4
  %xor68.i = xor i32 %69, %68
  store i32 %xor68.i, i32* %c.i, align 4
  %70 = load i32, i32* %t.i, align 4
  %shl69.i = shl i32 %70, 1
  %71 = load i32, i32* %d.i, align 4
  %xor70.i = xor i32 %71, %shl69.i
  store i32 %xor70.i, i32* %d.i, align 4
  %72 = load i32, i32* %d.i, align 4
  %conv71.i = zext i32 %72 to i64
  %and72.i = and i64 %conv71.i, 255
  %shl73.i = shl i64 %and72.i, 16
  %73 = load i32, i32* %d.i, align 4
  %conv74.i = zext i32 %73 to i64
  %and75.i = and i64 %conv74.i, 65280
  %or76.i = or i64 %shl73.i, %and75.i
  %74 = load i32, i32* %d.i, align 4
  %conv77.i = zext i32 %74 to i64
  %and78.i = and i64 %conv77.i, 16711680
  %shr79.i = ashr i64 %and78.i, 16
  %or80.i = or i64 %or76.i, %shr79.i
  %75 = load i32, i32* %c.i, align 4
  %conv81.i = zext i32 %75 to i64
  %and82.i = and i64 %conv81.i, 4026531840
  %shr83.i = ashr i64 %and82.i, 4
  %or84.i = or i64 %or80.i, %shr83.i
  %conv85.i = trunc i64 %or84.i to i32
  store i32 %conv85.i, i32* %d.i, align 4
  %76 = load i32, i32* %c.i, align 4
  %conv86.i = zext i32 %76 to i64
  %and87.i = and i64 %conv86.i, 268435455
  %conv88.i = trunc i64 %and87.i to i32
  store i32 %conv88.i, i32* %c.i, align 4
  store i32 0, i32* %i.i6, align 4
  br label %for.cond.i10

for.cond.i10:                                     ; preds = %if.end.i14, %if.end4
  %77 = load i32, i32* %i.i6, align 4
  %cmp.i9 = icmp slt i32 %77, 16
  br i1 %cmp.i9, label %for.body.i12, label %DES_set_key_unchecked.exit

for.body.i12:                                     ; preds = %for.cond.i10
  %78 = load i32, i32* %i.i6, align 4
  %idxprom.i11 = sext i32 %78 to i64
  %arrayidx90.i = getelementptr inbounds [16 x i32], [16 x i32]* @DES_set_key_unchecked.shifts2, i64 0, i64 %idxprom.i11
  %79 = load i32, i32* %arrayidx90.i, align 4
  %tobool.i = icmp ne i32 %79, 0
  br i1 %tobool.i, label %if.then.i13, label %if.else.i

if.then.i13:                                      ; preds = %for.body.i12
  %80 = load i32, i32* %c.i, align 4
  %shr91.i = lshr i32 %80, 2
  %81 = load i32, i32* %c.i, align 4
  %shl92.i = shl i32 %81, 26
  %or93.i = or i32 %shr91.i, %shl92.i
  store i32 %or93.i, i32* %c.i, align 4
  %82 = load i32, i32* %d.i, align 4
  %shr94.i = lshr i32 %82, 2
  %83 = load i32, i32* %d.i, align 4
  %shl95.i = shl i32 %83, 26
  %or96.i = or i32 %shr94.i, %shl95.i
  store i32 %or96.i, i32* %d.i, align 4
  br label %if.end.i14

if.else.i:                                        ; preds = %for.body.i12
  %84 = load i32, i32* %c.i, align 4
  %shr97.i = lshr i32 %84, 1
  %85 = load i32, i32* %c.i, align 4
  %shl98.i = shl i32 %85, 27
  %or99.i = or i32 %shr97.i, %shl98.i
  store i32 %or99.i, i32* %c.i, align 4
  %86 = load i32, i32* %d.i, align 4
  %shr100.i = lshr i32 %86, 1
  %87 = load i32, i32* %d.i, align 4
  %shl101.i = shl i32 %87, 27
  %or102.i = or i32 %shr100.i, %shl101.i
  store i32 %or102.i, i32* %d.i, align 4
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.else.i, %if.then.i13
  %88 = load i32, i32* %c.i, align 4
  %conv103.i = zext i32 %88 to i64
  %and104.i = and i64 %conv103.i, 268435455
  %conv105.i = trunc i64 %and104.i to i32
  store i32 %conv105.i, i32* %c.i, align 4
  %89 = load i32, i32* %d.i, align 4
  %conv106.i = zext i32 %89 to i64
  %and107.i = and i64 %conv106.i, 268435455
  %conv108.i = trunc i64 %and107.i to i32
  store i32 %conv108.i, i32* %d.i, align 4
  %90 = load i32, i32* %c.i, align 4
  %and109.i = and i32 %90, 63
  %idxprom110.i = zext i32 %and109.i to i64
  %arrayidx111.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 0), i64 0, i64 %idxprom110.i
  %91 = load i32, i32* %arrayidx111.i, align 4
  %92 = load i32, i32* %c.i, align 4
  %shr112.i = lshr i32 %92, 6
  %and113.i = and i32 %shr112.i, 3
  %93 = load i32, i32* %c.i, align 4
  %shr114.i = lshr i32 %93, 7
  %and115.i = and i32 %shr114.i, 60
  %or116.i = or i32 %and113.i, %and115.i
  %idxprom117.i = zext i32 %or116.i to i64
  %arrayidx118.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 1), i64 0, i64 %idxprom117.i
  %94 = load i32, i32* %arrayidx118.i, align 4
  %or119.i = or i32 %91, %94
  %95 = load i32, i32* %c.i, align 4
  %shr120.i = lshr i32 %95, 13
  %and121.i = and i32 %shr120.i, 15
  %96 = load i32, i32* %c.i, align 4
  %shr122.i = lshr i32 %96, 14
  %and123.i = and i32 %shr122.i, 48
  %or124.i = or i32 %and121.i, %and123.i
  %idxprom125.i = zext i32 %or124.i to i64
  %arrayidx126.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 2), i64 0, i64 %idxprom125.i
  %97 = load i32, i32* %arrayidx126.i, align 4
  %or127.i = or i32 %or119.i, %97
  %98 = load i32, i32* %c.i, align 4
  %shr128.i = lshr i32 %98, 20
  %and129.i = and i32 %shr128.i, 1
  %99 = load i32, i32* %c.i, align 4
  %shr130.i = lshr i32 %99, 21
  %and131.i = and i32 %shr130.i, 6
  %or132.i = or i32 %and129.i, %and131.i
  %100 = load i32, i32* %c.i, align 4
  %shr133.i = lshr i32 %100, 22
  %and134.i = and i32 %shr133.i, 56
  %or135.i = or i32 %or132.i, %and134.i
  %idxprom136.i = zext i32 %or135.i to i64
  %arrayidx137.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 3), i64 0, i64 %idxprom136.i
  %101 = load i32, i32* %arrayidx137.i, align 4
  %or138.i = or i32 %or127.i, %101
  store i32 %or138.i, i32* %s.i, align 4
  %102 = load i32, i32* %d.i, align 4
  %and139.i = and i32 %102, 63
  %idxprom140.i = zext i32 %and139.i to i64
  %arrayidx141.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 4), i64 0, i64 %idxprom140.i
  %103 = load i32, i32* %arrayidx141.i, align 4
  %104 = load i32, i32* %d.i, align 4
  %shr142.i = lshr i32 %104, 7
  %and143.i = and i32 %shr142.i, 3
  %105 = load i32, i32* %d.i, align 4
  %shr144.i = lshr i32 %105, 8
  %and145.i = and i32 %shr144.i, 60
  %or146.i = or i32 %and143.i, %and145.i
  %idxprom147.i = zext i32 %or146.i to i64
  %arrayidx148.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 5), i64 0, i64 %idxprom147.i
  %106 = load i32, i32* %arrayidx148.i, align 4
  %or149.i = or i32 %103, %106
  %107 = load i32, i32* %d.i, align 4
  %shr150.i = lshr i32 %107, 15
  %and151.i = and i32 %shr150.i, 63
  %idxprom152.i = zext i32 %and151.i to i64
  %arrayidx153.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 6), i64 0, i64 %idxprom152.i
  %108 = load i32, i32* %arrayidx153.i, align 4
  %or154.i = or i32 %or149.i, %108
  %109 = load i32, i32* %d.i, align 4
  %shr155.i = lshr i32 %109, 21
  %and156.i = and i32 %shr155.i, 15
  %110 = load i32, i32* %d.i, align 4
  %shr157.i = lshr i32 %110, 22
  %and158.i = and i32 %shr157.i, 48
  %or159.i = or i32 %and156.i, %and158.i
  %idxprom160.i = zext i32 %or159.i to i64
  %arrayidx161.i = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 7), i64 0, i64 %idxprom160.i
  %111 = load i32, i32* %arrayidx161.i, align 4
  %or162.i = or i32 %or154.i, %111
  store i32 %or162.i, i32* %t.i, align 4
  %112 = load i32, i32* %t.i, align 4
  %shl163.i = shl i32 %112, 16
  %conv164.i = zext i32 %shl163.i to i64
  %113 = load i32, i32* %s.i, align 4
  %conv165.i = zext i32 %113 to i64
  %and166.i = and i64 %conv165.i, 65535
  %or167.i = or i64 %conv164.i, %and166.i
  %and168.i = and i64 %or167.i, 4294967295
  %conv169.i = trunc i64 %and168.i to i32
  store i32 %conv169.i, i32* %t2.i, align 4
  %114 = load i32, i32* %t2.i, align 4
  %115 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 30, i32 %114) #5, !srcloc !2
  store i32 %115, i32* %ret.i, align 4
  %116 = load i32, i32* %ret.i, align 4
  store i32 %116, i32* %tmp.i, align 4
  %117 = load i32, i32* %tmp.i, align 4
  %conv170.i = zext i32 %117 to i64
  %and171.i = and i64 %conv170.i, 4294967295
  %conv172.i = trunc i64 %and171.i to i32
  %118 = load i32*, i32** %k.i, align 8
  %incdec.ptr173.i = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %incdec.ptr173.i, i32** %k.i, align 8
  store i32 %conv172.i, i32* %118, align 4
  %119 = load i32, i32* %s.i, align 4
  %shr174.i = lshr i32 %119, 16
  %conv175.i = zext i32 %shr174.i to i64
  %120 = load i32, i32* %t.i, align 4
  %conv176.i = zext i32 %120 to i64
  %and177.i = and i64 %conv176.i, 4294901760
  %or178.i = or i64 %conv175.i, %and177.i
  %conv179.i = trunc i64 %or178.i to i32
  store i32 %conv179.i, i32* %t2.i, align 4
  %121 = load i32, i32* %t2.i, align 4
  %122 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 26, i32 %121) #5, !srcloc !3
  store i32 %122, i32* %ret180.i, align 4
  %123 = load i32, i32* %ret180.i, align 4
  store i32 %123, i32* %tmp181.i, align 4
  %124 = load i32, i32* %tmp181.i, align 4
  %conv182.i = zext i32 %124 to i64
  %and183.i = and i64 %conv182.i, 4294967295
  %conv184.i = trunc i64 %and183.i to i32
  %125 = load i32*, i32** %k.i, align 8
  %incdec.ptr185.i = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %incdec.ptr185.i, i32** %k.i, align 8
  store i32 %conv184.i, i32* %125, align 4
  %126 = load i32, i32* %i.i6, align 4
  %inc.i15 = add nsw i32 %126, 1
  store i32 %inc.i15, i32* %i.i6, align 4
  br label %for.cond.i10

DES_set_key_unchecked.exit:                       ; preds = %for.cond.i10
  store i32 0, i32* %retval, align 4
  br label %return

return:                                           ; preds = %DES_set_key_unchecked.exit, %if.then3, %if.then
  %127 = load i32, i32* %retval, align 4
  ret i32 %127
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local void @DES_set_key_unchecked([8 x i8]* %key, %struct.DES_ks* %schedule) #0 {
entry:
  %key.addr = alloca [8 x i8]*, align 8
  %schedule.addr = alloca %struct.DES_ks*, align 8
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i32, align 4
  %t2 = alloca i32, align 4
  %in = alloca i8*, align 8
  %k = alloca i32*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  %ret180 = alloca i32, align 4
  %tmp181 = alloca i32, align 4
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store %struct.DES_ks* %schedule, %struct.DES_ks** %schedule.addr, align 8
  %0 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr, align 8
  %ks = getelementptr inbounds %struct.DES_ks, %struct.DES_ks* %0, i32 0, i32 0
  %arraydecay = getelementptr inbounds [16 x %union.anon], [16 x %union.anon]* %ks, i64 0, i64 0
  %deslong = bitcast %union.anon* %arraydecay to [2 x i32]*
  %arrayidx = getelementptr inbounds [2 x i32], [2 x i32]* %deslong, i64 0, i64 0
  store i32* %arrayidx, i32** %k, align 8
  %1 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %arrayidx1 = getelementptr inbounds [8 x i8], [8 x i8]* %1, i64 0, i64 0
  store i8* %arrayidx1, i8** %in, align 8
  %2 = load i8*, i8** %in, align 8
  %incdec.ptr = getelementptr inbounds i8, i8* %2, i32 1
  store i8* %incdec.ptr, i8** %in, align 8
  %3 = load i8, i8* %2, align 1
  %conv = zext i8 %3 to i32
  store i32 %conv, i32* %c, align 4
  %4 = load i8*, i8** %in, align 8
  %incdec.ptr2 = getelementptr inbounds i8, i8* %4, i32 1
  store i8* %incdec.ptr2, i8** %in, align 8
  %5 = load i8, i8* %4, align 1
  %conv3 = zext i8 %5 to i32
  %shl = shl i32 %conv3, 8
  %6 = load i32, i32* %c, align 4
  %or = or i32 %6, %shl
  store i32 %or, i32* %c, align 4
  %7 = load i8*, i8** %in, align 8
  %incdec.ptr4 = getelementptr inbounds i8, i8* %7, i32 1
  store i8* %incdec.ptr4, i8** %in, align 8
  %8 = load i8, i8* %7, align 1
  %conv5 = zext i8 %8 to i32
  %shl6 = shl i32 %conv5, 16
  %9 = load i32, i32* %c, align 4
  %or7 = or i32 %9, %shl6
  store i32 %or7, i32* %c, align 4
  %10 = load i8*, i8** %in, align 8
  %incdec.ptr8 = getelementptr inbounds i8, i8* %10, i32 1
  store i8* %incdec.ptr8, i8** %in, align 8
  %11 = load i8, i8* %10, align 1
  %conv9 = zext i8 %11 to i32
  %shl10 = shl i32 %conv9, 24
  %12 = load i32, i32* %c, align 4
  %or11 = or i32 %12, %shl10
  store i32 %or11, i32* %c, align 4
  %13 = load i8*, i8** %in, align 8
  %incdec.ptr12 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %incdec.ptr12, i8** %in, align 8
  %14 = load i8, i8* %13, align 1
  %conv13 = zext i8 %14 to i32
  store i32 %conv13, i32* %d, align 4
  %15 = load i8*, i8** %in, align 8
  %incdec.ptr14 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %incdec.ptr14, i8** %in, align 8
  %16 = load i8, i8* %15, align 1
  %conv15 = zext i8 %16 to i32
  %shl16 = shl i32 %conv15, 8
  %17 = load i32, i32* %d, align 4
  %or17 = or i32 %17, %shl16
  store i32 %or17, i32* %d, align 4
  %18 = load i8*, i8** %in, align 8
  %incdec.ptr18 = getelementptr inbounds i8, i8* %18, i32 1
  store i8* %incdec.ptr18, i8** %in, align 8
  %19 = load i8, i8* %18, align 1
  %conv19 = zext i8 %19 to i32
  %shl20 = shl i32 %conv19, 16
  %20 = load i32, i32* %d, align 4
  %or21 = or i32 %20, %shl20
  store i32 %or21, i32* %d, align 4
  %21 = load i8*, i8** %in, align 8
  %incdec.ptr22 = getelementptr inbounds i8, i8* %21, i32 1
  store i8* %incdec.ptr22, i8** %in, align 8
  %22 = load i8, i8* %21, align 1
  %conv23 = zext i8 %22 to i32
  %shl24 = shl i32 %conv23, 24
  %23 = load i32, i32* %d, align 4
  %or25 = or i32 %23, %shl24
  store i32 %or25, i32* %d, align 4
  %24 = load i32, i32* %d, align 4
  %shr = lshr i32 %24, 4
  %25 = load i32, i32* %c, align 4
  %xor = xor i32 %shr, %25
  %conv26 = zext i32 %xor to i64
  %and = and i64 %conv26, 252645135
  %conv27 = trunc i64 %and to i32
  store i32 %conv27, i32* %t, align 4
  %26 = load i32, i32* %t, align 4
  %27 = load i32, i32* %c, align 4
  %xor28 = xor i32 %27, %26
  store i32 %xor28, i32* %c, align 4
  %28 = load i32, i32* %t, align 4
  %shl29 = shl i32 %28, 4
  %29 = load i32, i32* %d, align 4
  %xor30 = xor i32 %29, %shl29
  store i32 %xor30, i32* %d, align 4
  %30 = load i32, i32* %c, align 4
  %shl31 = shl i32 %30, 18
  %31 = load i32, i32* %c, align 4
  %xor32 = xor i32 %shl31, %31
  %conv33 = zext i32 %xor32 to i64
  %and34 = and i64 %conv33, 3435921408
  %conv35 = trunc i64 %and34 to i32
  store i32 %conv35, i32* %t, align 4
  %32 = load i32, i32* %c, align 4
  %33 = load i32, i32* %t, align 4
  %xor36 = xor i32 %32, %33
  %34 = load i32, i32* %t, align 4
  %shr37 = lshr i32 %34, 18
  %xor38 = xor i32 %xor36, %shr37
  store i32 %xor38, i32* %c, align 4
  %35 = load i32, i32* %d, align 4
  %shl39 = shl i32 %35, 18
  %36 = load i32, i32* %d, align 4
  %xor40 = xor i32 %shl39, %36
  %conv41 = zext i32 %xor40 to i64
  %and42 = and i64 %conv41, 3435921408
  %conv43 = trunc i64 %and42 to i32
  store i32 %conv43, i32* %t, align 4
  %37 = load i32, i32* %d, align 4
  %38 = load i32, i32* %t, align 4
  %xor44 = xor i32 %37, %38
  %39 = load i32, i32* %t, align 4
  %shr45 = lshr i32 %39, 18
  %xor46 = xor i32 %xor44, %shr45
  store i32 %xor46, i32* %d, align 4
  %40 = load i32, i32* %d, align 4
  %shr47 = lshr i32 %40, 1
  %41 = load i32, i32* %c, align 4
  %xor48 = xor i32 %shr47, %41
  %conv49 = zext i32 %xor48 to i64
  %and50 = and i64 %conv49, 1431655765
  %conv51 = trunc i64 %and50 to i32
  store i32 %conv51, i32* %t, align 4
  %42 = load i32, i32* %t, align 4
  %43 = load i32, i32* %c, align 4
  %xor52 = xor i32 %43, %42
  store i32 %xor52, i32* %c, align 4
  %44 = load i32, i32* %t, align 4
  %shl53 = shl i32 %44, 1
  %45 = load i32, i32* %d, align 4
  %xor54 = xor i32 %45, %shl53
  store i32 %xor54, i32* %d, align 4
  %46 = load i32, i32* %c, align 4
  %shr55 = lshr i32 %46, 8
  %47 = load i32, i32* %d, align 4
  %xor56 = xor i32 %shr55, %47
  %conv57 = zext i32 %xor56 to i64
  %and58 = and i64 %conv57, 16711935
  %conv59 = trunc i64 %and58 to i32
  store i32 %conv59, i32* %t, align 4
  %48 = load i32, i32* %t, align 4
  %49 = load i32, i32* %d, align 4
  %xor60 = xor i32 %49, %48
  store i32 %xor60, i32* %d, align 4
  %50 = load i32, i32* %t, align 4
  %shl61 = shl i32 %50, 8
  %51 = load i32, i32* %c, align 4
  %xor62 = xor i32 %51, %shl61
  store i32 %xor62, i32* %c, align 4
  %52 = load i32, i32* %d, align 4
  %shr63 = lshr i32 %52, 1
  %53 = load i32, i32* %c, align 4
  %xor64 = xor i32 %shr63, %53
  %conv65 = zext i32 %xor64 to i64
  %and66 = and i64 %conv65, 1431655765
  %conv67 = trunc i64 %and66 to i32
  store i32 %conv67, i32* %t, align 4
  %54 = load i32, i32* %t, align 4
  %55 = load i32, i32* %c, align 4
  %xor68 = xor i32 %55, %54
  store i32 %xor68, i32* %c, align 4
  %56 = load i32, i32* %t, align 4
  %shl69 = shl i32 %56, 1
  %57 = load i32, i32* %d, align 4
  %xor70 = xor i32 %57, %shl69
  store i32 %xor70, i32* %d, align 4
  %58 = load i32, i32* %d, align 4
  %conv71 = zext i32 %58 to i64
  %and72 = and i64 %conv71, 255
  %shl73 = shl i64 %and72, 16
  %59 = load i32, i32* %d, align 4
  %conv74 = zext i32 %59 to i64
  %and75 = and i64 %conv74, 65280
  %or76 = or i64 %shl73, %and75
  %60 = load i32, i32* %d, align 4
  %conv77 = zext i32 %60 to i64
  %and78 = and i64 %conv77, 16711680
  %shr79 = ashr i64 %and78, 16
  %or80 = or i64 %or76, %shr79
  %61 = load i32, i32* %c, align 4
  %conv81 = zext i32 %61 to i64
  %and82 = and i64 %conv81, 4026531840
  %shr83 = ashr i64 %and82, 4
  %or84 = or i64 %or80, %shr83
  %conv85 = trunc i64 %or84 to i32
  store i32 %conv85, i32* %d, align 4
  %62 = load i32, i32* %c, align 4
  %conv86 = zext i32 %62 to i64
  %and87 = and i64 %conv86, 268435455
  %conv88 = trunc i64 %and87 to i32
  store i32 %conv88, i32* %c, align 4
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %63 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %63, 16
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %64 = load i32, i32* %i, align 4
  %idxprom = sext i32 %64 to i64
  %arrayidx90 = getelementptr inbounds [16 x i32], [16 x i32]* @DES_set_key_unchecked.shifts2, i64 0, i64 %idxprom
  %65 = load i32, i32* %arrayidx90, align 4
  %tobool = icmp ne i32 %65, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %66 = load i32, i32* %c, align 4
  %shr91 = lshr i32 %66, 2
  %67 = load i32, i32* %c, align 4
  %shl92 = shl i32 %67, 26
  %or93 = or i32 %shr91, %shl92
  store i32 %or93, i32* %c, align 4
  %68 = load i32, i32* %d, align 4
  %shr94 = lshr i32 %68, 2
  %69 = load i32, i32* %d, align 4
  %shl95 = shl i32 %69, 26
  %or96 = or i32 %shr94, %shl95
  store i32 %or96, i32* %d, align 4
  br label %if.end

if.else:                                          ; preds = %for.body
  %70 = load i32, i32* %c, align 4
  %shr97 = lshr i32 %70, 1
  %71 = load i32, i32* %c, align 4
  %shl98 = shl i32 %71, 27
  %or99 = or i32 %shr97, %shl98
  store i32 %or99, i32* %c, align 4
  %72 = load i32, i32* %d, align 4
  %shr100 = lshr i32 %72, 1
  %73 = load i32, i32* %d, align 4
  %shl101 = shl i32 %73, 27
  %or102 = or i32 %shr100, %shl101
  store i32 %or102, i32* %d, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %74 = load i32, i32* %c, align 4
  %conv103 = zext i32 %74 to i64
  %and104 = and i64 %conv103, 268435455
  %conv105 = trunc i64 %and104 to i32
  store i32 %conv105, i32* %c, align 4
  %75 = load i32, i32* %d, align 4
  %conv106 = zext i32 %75 to i64
  %and107 = and i64 %conv106, 268435455
  %conv108 = trunc i64 %and107 to i32
  store i32 %conv108, i32* %d, align 4
  %76 = load i32, i32* %c, align 4
  %and109 = and i32 %76, 63
  %idxprom110 = zext i32 %and109 to i64
  %arrayidx111 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 0), i64 0, i64 %idxprom110
  %77 = load i32, i32* %arrayidx111, align 4
  %78 = load i32, i32* %c, align 4
  %shr112 = lshr i32 %78, 6
  %and113 = and i32 %shr112, 3
  %79 = load i32, i32* %c, align 4
  %shr114 = lshr i32 %79, 7
  %and115 = and i32 %shr114, 60
  %or116 = or i32 %and113, %and115
  %idxprom117 = zext i32 %or116 to i64
  %arrayidx118 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 1), i64 0, i64 %idxprom117
  %80 = load i32, i32* %arrayidx118, align 4
  %or119 = or i32 %77, %80
  %81 = load i32, i32* %c, align 4
  %shr120 = lshr i32 %81, 13
  %and121 = and i32 %shr120, 15
  %82 = load i32, i32* %c, align 4
  %shr122 = lshr i32 %82, 14
  %and123 = and i32 %shr122, 48
  %or124 = or i32 %and121, %and123
  %idxprom125 = zext i32 %or124 to i64
  %arrayidx126 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 2), i64 0, i64 %idxprom125
  %83 = load i32, i32* %arrayidx126, align 4
  %or127 = or i32 %or119, %83
  %84 = load i32, i32* %c, align 4
  %shr128 = lshr i32 %84, 20
  %and129 = and i32 %shr128, 1
  %85 = load i32, i32* %c, align 4
  %shr130 = lshr i32 %85, 21
  %and131 = and i32 %shr130, 6
  %or132 = or i32 %and129, %and131
  %86 = load i32, i32* %c, align 4
  %shr133 = lshr i32 %86, 22
  %and134 = and i32 %shr133, 56
  %or135 = or i32 %or132, %and134
  %idxprom136 = zext i32 %or135 to i64
  %arrayidx137 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 3), i64 0, i64 %idxprom136
  %87 = load i32, i32* %arrayidx137, align 4
  %or138 = or i32 %or127, %87
  store i32 %or138, i32* %s, align 4
  %88 = load i32, i32* %d, align 4
  %and139 = and i32 %88, 63
  %idxprom140 = zext i32 %and139 to i64
  %arrayidx141 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 4), i64 0, i64 %idxprom140
  %89 = load i32, i32* %arrayidx141, align 4
  %90 = load i32, i32* %d, align 4
  %shr142 = lshr i32 %90, 7
  %and143 = and i32 %shr142, 3
  %91 = load i32, i32* %d, align 4
  %shr144 = lshr i32 %91, 8
  %and145 = and i32 %shr144, 60
  %or146 = or i32 %and143, %and145
  %idxprom147 = zext i32 %or146 to i64
  %arrayidx148 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 5), i64 0, i64 %idxprom147
  %92 = load i32, i32* %arrayidx148, align 4
  %or149 = or i32 %89, %92
  %93 = load i32, i32* %d, align 4
  %shr150 = lshr i32 %93, 15
  %and151 = and i32 %shr150, 63
  %idxprom152 = zext i32 %and151 to i64
  %arrayidx153 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 6), i64 0, i64 %idxprom152
  %94 = load i32, i32* %arrayidx153, align 4
  %or154 = or i32 %or149, %94
  %95 = load i32, i32* %d, align 4
  %shr155 = lshr i32 %95, 21
  %and156 = and i32 %shr155, 15
  %96 = load i32, i32* %d, align 4
  %shr157 = lshr i32 %96, 22
  %and158 = and i32 %shr157, 48
  %or159 = or i32 %and156, %and158
  %idxprom160 = zext i32 %or159 to i64
  %arrayidx161 = getelementptr inbounds [64 x i32], [64 x i32]* getelementptr inbounds ([8 x [64 x i32]], [8 x [64 x i32]]* @des_skb, i64 0, i64 7), i64 0, i64 %idxprom160
  %97 = load i32, i32* %arrayidx161, align 4
  %or162 = or i32 %or154, %97
  store i32 %or162, i32* %t, align 4
  %98 = load i32, i32* %t, align 4
  %shl163 = shl i32 %98, 16
  %conv164 = zext i32 %shl163 to i64
  %99 = load i32, i32* %s, align 4
  %conv165 = zext i32 %99 to i64
  %and166 = and i64 %conv165, 65535
  %or167 = or i64 %conv164, %and166
  %and168 = and i64 %or167, 4294967295
  %conv169 = trunc i64 %and168 to i32
  store i32 %conv169, i32* %t2, align 4
  %100 = load i32, i32* %t2, align 4
  %101 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 30, i32 %100) #5, !srcloc !2
  store i32 %101, i32* %ret, align 4
  %102 = load i32, i32* %ret, align 4
  store i32 %102, i32* %tmp, align 4
  %103 = load i32, i32* %tmp, align 4
  %conv170 = zext i32 %103 to i64
  %and171 = and i64 %conv170, 4294967295
  %conv172 = trunc i64 %and171 to i32
  %104 = load i32*, i32** %k, align 8
  %incdec.ptr173 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %incdec.ptr173, i32** %k, align 8
  store i32 %conv172, i32* %104, align 4
  %105 = load i32, i32* %s, align 4
  %shr174 = lshr i32 %105, 16
  %conv175 = zext i32 %shr174 to i64
  %106 = load i32, i32* %t, align 4
  %conv176 = zext i32 %106 to i64
  %and177 = and i64 %conv176, 4294901760
  %or178 = or i64 %conv175, %and177
  %conv179 = trunc i64 %or178 to i32
  store i32 %conv179, i32* %t2, align 4
  %107 = load i32, i32* %t2, align 4
  %108 = call i32 asm "rorl $1,$0", "=r,I,0,~{cc},~{dirflag},~{fpsr},~{flags}"(i32 26, i32 %107) #5, !srcloc !3
  store i32 %108, i32* %ret180, align 4
  %109 = load i32, i32* %ret180, align 4
  store i32 %109, i32* %tmp181, align 4
  %110 = load i32, i32* %tmp181, align 4
  %conv182 = zext i32 %110 to i64
  %and183 = and i64 %conv182, 4294967295
  %conv184 = trunc i64 %and183 to i32
  %111 = load i32*, i32** %k, align 8
  %incdec.ptr185 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %incdec.ptr185, i32** %k, align 8
  store i32 %conv184, i32* %111, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %112 = load i32, i32* %i, align 4
  %inc = add nsw i32 %112, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i32 @DES_key_sched([8 x i8]* %key, %struct.DES_ks* %schedule) #0 {
entry:
  %key.addr = alloca [8 x i8]*, align 8
  %schedule.addr = alloca %struct.DES_ks*, align 8
  store [8 x i8]* %key, [8 x i8]** %key.addr, align 8
  store %struct.DES_ks* %schedule, %struct.DES_ks** %schedule.addr, align 8
  %0 = load [8 x i8]*, [8 x i8]** %key.addr, align 8
  %1 = load %struct.DES_ks*, %struct.DES_ks** %schedule.addr, align 8
  %call = call i32 @DES_set_key([8 x i8]* %0, %struct.DES_ks* %1)
  ret i32 %call
}

attributes #0 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.0 "}
!2 = !{i32 -2146873106}
!3 = !{i32 -2146872749}
