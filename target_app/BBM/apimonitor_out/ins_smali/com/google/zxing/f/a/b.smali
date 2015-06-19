.class final Lcom/google/zxing/f/a/b;
.super Ljava/lang/Object;
.source "DecodedBitStreamParser.java"
.field private static final a:[C
.field private static final b:[C
.field private static final c:[Ljava/math/BigInteger;
.method static constructor <clinit>()V
.registers 5
const/16 v0, 0x1d
new-array v0, v0, [C
fill-array-data v0, :array_40
sput-object v0, Lcom/google/zxing/f/a/b;->a:[C
const/16 v0, 0x19
new-array v0, v0, [C
fill-array-data v0, :array_62
sput-object v0, Lcom/google/zxing/f/a/b;->b:[C
const/16 v0, 0x10
new-array v0, v0, [Ljava/math/BigInteger;
sput-object v0, Lcom/google/zxing/f/a/b;->c:[Ljava/math/BigInteger;
const/4 v1, 0x0
sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;
aput-object v2, v0, v1
const-wide/16 v0, 0x384
invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v1
sget-object v0, Lcom/google/zxing/f/a/b;->c:[Ljava/math/BigInteger;
const/4 v2, 0x1
aput-object v1, v0, v2
const/4 v0, 0x2
:goto_29
sget-object v2, Lcom/google/zxing/f/a/b;->c:[Ljava/math/BigInteger;
array-length v2, v2
if-ge v0, v2, :cond_3f
sget-object v2, Lcom/google/zxing/f/a/b;->c:[Ljava/math/BigInteger;
sget-object v3, Lcom/google/zxing/f/a/b;->c:[Ljava/math/BigInteger;
add-int/lit8 v4, v0, -0x1
aget-object v3, v3, v4
invoke-virtual {v3, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v3
aput-object v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_29
:cond_3f
return-void
:array_40
.array-data 0x2
0x3bt 0x0t
0x3ct 0x0t
0x3et 0x0t
0x40t 0x0t
0x5bt 0x0t
0x5ct 0x0t
0x7dt 0x0t
0x5ft 0x0t
0x60t 0x0t
0x7et 0x0t
0x21t 0x0t
0xdt 0x0t
0x9t 0x0t
0x2ct 0x0t
0x3at 0x0t
0xat 0x0t
0x2dt 0x0t
0x2et 0x0t
0x24t 0x0t
0x2ft 0x0t
0x22t 0x0t
0x7ct 0x0t
0x2at 0x0t
0x28t 0x0t
0x29t 0x0t
0x3ft 0x0t
0x7bt 0x0t
0x7dt 0x0t
0x27t 0x0t
.end array-data
nop
:array_62
.array-data 0x2
0x30t 0x0t
0x31t 0x0t
0x32t 0x0t
0x33t 0x0t
0x34t 0x0t
0x35t 0x0t
0x36t 0x0t
0x37t 0x0t
0x38t 0x0t
0x39t 0x0t
0x26t 0x0t
0xdt 0x0t
0x9t 0x0t
0x2ct 0x0t
0x3at 0x0t
0x23t 0x0t
0x2dt 0x0t
0x2et 0x0t
0x24t 0x0t
0x2ft 0x0t
0x2bt 0x0t
0x25t 0x0t
0x2at 0x0t
0x3dt 0x0t
0x5et 0x0t
.end array-data
.end method
.method private static a(I[IILjava/lang/StringBuilder;)I
.registers 18
const/16 v1, 0x385
if-ne p0, v1, :cond_8d
const/4 v6, 0x0
const-wide/16 v3, 0x0
const/4 v1, 0x6
new-array v9, v1, [C
const/4 v1, 0x6
new-array v10, v1, [I
const/4 v2, 0x0
add-int/lit8 v5, p2, 0x1
aget v1, p1, p2
:goto_12
const/4 v7, 0x0
aget v7, p1, v7
if-ge v5, v7, :cond_6e
if-nez v2, :cond_6e
add-int/lit8 v7, v6, 0x1
aput v1, v10, v6
const-wide/16 v11, 0x384
mul-long/2addr v3, v11
int-to-long v11, v1
add-long/2addr v3, v11
add-int/lit8 v6, v5, 0x1
aget v1, p1, v5
const/16 v5, 0x384
if-eq v1, v5, :cond_42
const/16 v5, 0x385
if-eq v1, v5, :cond_42
const/16 v5, 0x386
if-eq v1, v5, :cond_42
const/16 v5, 0x39c
if-eq v1, v5, :cond_42
const/16 v5, 0x3a0
if-eq v1, v5, :cond_42
const/16 v5, 0x39b
if-eq v1, v5, :cond_42
const/16 v5, 0x39a
if-ne v1, v5, :cond_47
:cond_42
add-int/lit8 v5, v6, -0x1
const/4 v2, 0x1
move v6, v7
goto :goto_12
:cond_47
rem-int/lit8 v5, v7, 0x5
if-nez v5, :cond_f8
if-lez v7, :cond_f8
const/4 v5, 0x0
:goto_4e
const/4 v7, 0x6
if-ge v5, v7, :cond_64
rsub-int/lit8 v7, v5, 0x5
const-wide/16 v11, 0x100
rem-long v11, v3, v11
long-to-int v8, v11
int-to-char v8, v8
aput-char v8, v9, v7
const/16 v7, 0x8
shr-long v7, v3, v7
add-int/lit8 v3, v5, 0x1
move v5, v3
move-wide v3, v7
goto :goto_4e
:cond_64
move-object/from16 v0, p3
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
const/4 v5, 0x0
move v13, v6
move v6, v5
move v5, v13
goto :goto_12
:cond_6e
const/4 v2, 0x0
aget v2, p1, v2
if-ne v5, v2, :cond_7c
const/16 v2, 0x384
if-ge v1, v2, :cond_7c
add-int/lit8 v2, v6, 0x1
aput v1, v10, v6
move v6, v2
:cond_7c
const/4 v1, 0x0
:goto_7d
if-ge v1, v6, :cond_8a
aget v2, v10, v1
int-to-char v2, v2
move-object/from16 v0, p3
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v1, v1, 0x1
goto :goto_7d
:cond_8a
move/from16 p2, v5
:cond_8c
return p2
:cond_8d
const/16 v1, 0x39c
if-ne p0, v1, :cond_8c
const/4 v4, 0x0
const-wide/16 v1, 0x0
const/4 v3, 0x0
:cond_95
:goto_95
const/4 v5, 0x0
aget v5, p1, v5
move/from16 v0, p2
if-ge v0, v5, :cond_8c
if-nez v3, :cond_8c
add-int/lit8 v5, p2, 0x1
aget v6, p1, p2
const/16 v7, 0x384
if-ge v6, v7, :cond_ce
add-int/lit8 v4, v4, 0x1
const-wide/16 v7, 0x384
mul-long/2addr v1, v7
int-to-long v6, v6
add-long/2addr v1, v6
move/from16 p2, v5
:goto_af
rem-int/lit8 v5, v4, 0x5
if-nez v5, :cond_95
if-lez v4, :cond_95
const/4 v4, 0x6
new-array v7, v4, [C
const/4 v4, 0x0
:goto_b9
const/4 v5, 0x6
if-ge v4, v5, :cond_ee
rsub-int/lit8 v5, v4, 0x5
const-wide/16 v8, 0xff
and-long/2addr v8, v1
long-to-int v6, v8
int-to-char v6, v6
aput-char v6, v7, v5
const/16 v5, 0x8
shr-long v5, v1, v5
add-int/lit8 v1, v4, 0x1
move v4, v1
move-wide v1, v5
goto :goto_b9
:cond_ce
const/16 v7, 0x384
if-eq v6, v7, :cond_ea
const/16 v7, 0x385
if-eq v6, v7, :cond_ea
const/16 v7, 0x386
if-eq v6, v7, :cond_ea
const/16 v7, 0x39c
if-eq v6, v7, :cond_ea
const/16 v7, 0x3a0
if-eq v6, v7, :cond_ea
const/16 v7, 0x39b
if-eq v6, v7, :cond_ea
const/16 v7, 0x39a
if-ne v6, v7, :cond_f5
:cond_ea
add-int/lit8 p2, v5, -0x1
const/4 v3, 0x1
goto :goto_af
:cond_ee
move-object/from16 v0, p3
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;
const/4 v4, 0x0
goto :goto_95
:cond_f5
move/from16 p2, v5
goto :goto_af
:cond_f8
move v5, v6
move v6, v7
goto/16 :goto_12
.end method
.method private static a([IILjava/lang/StringBuilder;)I
.registers 14
const/4 v0, 0x0
aget v0, p0, v0
shl-int/lit8 v0, v0, 0x1
new-array v5, v0, [I
const/4 v0, 0x0
aget v0, p0, v0
shl-int/lit8 v0, v0, 0x1
new-array v6, v0, [I
const/4 v1, 0x0
const/4 v0, 0x0
:goto_10
const/4 v2, 0x0
aget v2, p0, v2
if-ge p1, v2, :cond_54
if-nez v0, :cond_54
add-int/lit8 v3, p1, 0x1
aget v2, p0, p1
const/16 v4, 0x384
if-ge v2, v4, :cond_2d
div-int/lit8 v4, v2, 0x1e
aput v4, v5, v1
add-int/lit8 v4, v1, 0x1
rem-int/lit8 v2, v2, 0x1e
aput v2, v5, v4
add-int/lit8 v1, v1, 0x2
move p1, v3
goto :goto_10
:cond_2d
sparse-switch v2, :sswitch_data_19e
move p1, v3
goto :goto_10
:sswitch_32
add-int/lit8 v2, v1, 0x1
const/16 v4, 0x384
aput v4, v5, v1
move v1, v2
move p1, v3
goto :goto_10
:sswitch_3b
add-int/lit8 p1, v3, -0x1
const/4 v0, 0x1
goto :goto_10
:sswitch_3f
add-int/lit8 p1, v3, -0x1
const/4 v0, 0x1
goto :goto_10
:sswitch_43
const/16 v2, 0x391
aput v2, v5, v1
add-int/lit8 p1, v3, 0x1
aget v2, p0, v3
aput v2, v6, v1
add-int/lit8 v1, v1, 0x1
goto :goto_10
:sswitch_50
add-int/lit8 p1, v3, -0x1
const/4 v0, 0x1
goto :goto_10
:cond_54
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
sget-object v2, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
const/4 v0, 0x0
move v4, v0
:goto_5a
if-ge v4, v1, :cond_19a
aget v7, v5, v4
const/4 v0, 0x0
sget-object v8, Lcom/google/zxing/f/a/c;->a:[I
invoke-virtual {v3}, Lcom/google/zxing/f/a/d;->ordinal()I
move-result v9
aget v8, v8, v9
packed-switch v8, :pswitch_data_1b4
:goto_6a
:cond_6a
if-eqz v0, :cond_6f
invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:cond_6f
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_5a
:pswitch_73
const/16 v8, 0x1a
if-ge v7, v8, :cond_7b
add-int/lit8 v0, v7, 0x41
int-to-char v0, v0
goto :goto_6a
:cond_7b
const/16 v8, 0x1a
if-ne v7, v8, :cond_82
const/16 v0, 0x20
goto :goto_6a
:cond_82
const/16 v8, 0x1b
if-ne v7, v8, :cond_89
sget-object v3, Lcom/google/zxing/f/a/d;->b:Lcom/google/zxing/f/a/d;
goto :goto_6a
:cond_89
const/16 v8, 0x1c
if-ne v7, v8, :cond_90
sget-object v3, Lcom/google/zxing/f/a/d;->c:Lcom/google/zxing/f/a/d;
goto :goto_6a
:cond_90
const/16 v8, 0x1d
if-ne v7, v8, :cond_9a
sget-object v2, Lcom/google/zxing/f/a/d;->f:Lcom/google/zxing/f/a/d;
move-object v10, v3
move-object v3, v2
move-object v2, v10
goto :goto_6a
:cond_9a
const/16 v8, 0x391
if-ne v7, v8, :cond_a5
aget v7, v6, v4
int-to-char v7, v7
invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_6a
:cond_a5
const/16 v8, 0x384
if-ne v7, v8, :cond_6a
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto :goto_6a
:pswitch_ac
const/16 v8, 0x1a
if-ge v7, v8, :cond_b4
add-int/lit8 v0, v7, 0x61
int-to-char v0, v0
goto :goto_6a
:cond_b4
const/16 v8, 0x1a
if-ne v7, v8, :cond_bb
const/16 v0, 0x20
goto :goto_6a
:cond_bb
const/16 v8, 0x1b
if-ne v7, v8, :cond_c5
sget-object v2, Lcom/google/zxing/f/a/d;->e:Lcom/google/zxing/f/a/d;
move-object v10, v3
move-object v3, v2
move-object v2, v10
goto :goto_6a
:cond_c5
const/16 v8, 0x1c
if-ne v7, v8, :cond_cc
sget-object v3, Lcom/google/zxing/f/a/d;->c:Lcom/google/zxing/f/a/d;
goto :goto_6a
:cond_cc
const/16 v8, 0x1d
if-ne v7, v8, :cond_d6
sget-object v2, Lcom/google/zxing/f/a/d;->f:Lcom/google/zxing/f/a/d;
move-object v10, v3
move-object v3, v2
move-object v2, v10
goto :goto_6a
:cond_d6
const/16 v8, 0x391
if-ne v7, v8, :cond_e1
aget v7, v6, v4
int-to-char v7, v7
invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto :goto_6a
:cond_e1
const/16 v8, 0x384
if-ne v7, v8, :cond_6a
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto :goto_6a
:pswitch_e8
const/16 v8, 0x19
if-ge v7, v8, :cond_f2
sget-object v0, Lcom/google/zxing/f/a/b;->b:[C
aget-char v0, v0, v7
goto/16 :goto_6a
:cond_f2
const/16 v8, 0x19
if-ne v7, v8, :cond_fa
sget-object v3, Lcom/google/zxing/f/a/d;->d:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:cond_fa
const/16 v8, 0x1a
if-ne v7, v8, :cond_102
const/16 v0, 0x20
goto/16 :goto_6a
:cond_102
const/16 v8, 0x1b
if-ne v7, v8, :cond_10a
sget-object v3, Lcom/google/zxing/f/a/d;->b:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:cond_10a
const/16 v8, 0x1c
if-ne v7, v8, :cond_112
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:cond_112
const/16 v8, 0x1d
if-ne v7, v8, :cond_11d
sget-object v2, Lcom/google/zxing/f/a/d;->f:Lcom/google/zxing/f/a/d;
move-object v10, v3
move-object v3, v2
move-object v2, v10
goto/16 :goto_6a
:cond_11d
const/16 v8, 0x391
if-ne v7, v8, :cond_129
aget v7, v6, v4
int-to-char v7, v7
invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_6a
:cond_129
const/16 v8, 0x384
if-ne v7, v8, :cond_6a
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:pswitch_131
const/16 v8, 0x1d
if-ge v7, v8, :cond_13b
sget-object v0, Lcom/google/zxing/f/a/b;->a:[C
aget-char v0, v0, v7
goto/16 :goto_6a
:cond_13b
const/16 v8, 0x1d
if-ne v7, v8, :cond_143
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:cond_143
const/16 v8, 0x391
if-ne v7, v8, :cond_14f
aget v7, v6, v4
int-to-char v7, v7
invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
goto/16 :goto_6a
:cond_14f
const/16 v8, 0x384
if-ne v7, v8, :cond_6a
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:pswitch_157
const/16 v3, 0x1a
if-ge v7, v3, :cond_161
add-int/lit8 v0, v7, 0x41
int-to-char v0, v0
move-object v3, v2
goto/16 :goto_6a
:cond_161
const/16 v3, 0x1a
if-ne v7, v3, :cond_16a
const/16 v0, 0x20
move-object v3, v2
goto/16 :goto_6a
:cond_16a
const/16 v3, 0x384
if-ne v7, v3, :cond_19b
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:pswitch_172
const/16 v3, 0x1d
if-ge v7, v3, :cond_17d
sget-object v0, Lcom/google/zxing/f/a/b;->a:[C
aget-char v0, v0, v7
move-object v3, v2
goto/16 :goto_6a
:cond_17d
const/16 v3, 0x1d
if-ne v7, v3, :cond_185
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:cond_185
const/16 v3, 0x391
if-ne v7, v3, :cond_192
aget v3, v6, v4
int-to-char v3, v3
invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-object v3, v2
goto/16 :goto_6a
:cond_192
const/16 v3, 0x384
if-ne v7, v3, :cond_19b
sget-object v3, Lcom/google/zxing/f/a/d;->a:Lcom/google/zxing/f/a/d;
goto/16 :goto_6a
:cond_19a
return p1
:cond_19b
move-object v3, v2
goto/16 :goto_6a
:pswitch_data_1b4
.packed-switch 0x1
:pswitch_73
:pswitch_ac
:pswitch_e8
:pswitch_131
:pswitch_157
:pswitch_172
.end packed-switch
:sswitch_data_19e
.sparse-switch
0x384 -> :sswitch_32
0x385 -> :sswitch_3b
0x386 -> :sswitch_3f
0x391 -> :sswitch_43
0x39c -> :sswitch_50
.end sparse-switch
.end method
.method static a([I)Lcom/google/zxing/b/e;
.registers 6
const/4 v4, 0x0
new-instance v2, Ljava/lang/StringBuilder;
const/16 v0, 0x64
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V
const/4 v0, 0x1
const/4 v1, 0x2
aget v0, p0, v0
:goto_c
const/4 v3, 0x0
aget v3, p0, v3
if-ge v1, v3, :cond_40
sparse-switch v0, :sswitch_data_56
add-int/lit8 v0, v1, -0x1
invoke-static {p0, v0, v2}, Lcom/google/zxing/f/a/b;->a([IILjava/lang/StringBuilder;)I
move-result v0
:goto_1a
array-length v1, p0
if-ge v0, v1, :cond_3b
add-int/lit8 v1, v0, 0x1
aget v0, p0, v0
goto :goto_c
:sswitch_22
invoke-static {p0, v1, v2}, Lcom/google/zxing/f/a/b;->a([IILjava/lang/StringBuilder;)I
move-result v0
goto :goto_1a
:sswitch_27
invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/f/a/b;->a(I[IILjava/lang/StringBuilder;)I
move-result v0
goto :goto_1a
:sswitch_2c
invoke-static {p0, v1, v2}, Lcom/google/zxing/f/a/b;->b([IILjava/lang/StringBuilder;)I
move-result v0
goto :goto_1a
:sswitch_31
invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/f/a/b;->a(I[IILjava/lang/StringBuilder;)I
move-result v0
goto :goto_1a
:sswitch_36
invoke-static {v0, p0, v1, v2}, Lcom/google/zxing/f/a/b;->a(I[IILjava/lang/StringBuilder;)I
move-result v0
goto :goto_1a
:cond_3b
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_40
invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I
move-result v0
if-nez v0, :cond_4b
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_4b
new-instance v0, Lcom/google/zxing/b/e;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v4, v1, v4, v4}, Lcom/google/zxing/b/e;-><init>([BLjava/lang/String;Ljava/util/List;Ljava/lang/String;)V
return-object v0
nop
:sswitch_data_56
.sparse-switch
0x384 -> :sswitch_22
0x385 -> :sswitch_27
0x386 -> :sswitch_2c
0x391 -> :sswitch_31
0x39c -> :sswitch_36
.end sparse-switch
.end method
.method private static b([IILjava/lang/StringBuilder;)I
.registers 14
const/16 v10, 0x384
const/4 v3, 0x1
const/4 v1, 0x0
const/16 v0, 0xf
new-array v6, v0, [I
move v0, v1
move v2, v1
:cond_a
:goto_a
aget v4, p0, v1
if-ge p1, v4, :cond_7e
if-nez v0, :cond_7e
add-int/lit8 v4, p1, 0x1
aget v5, p0, p1
aget v7, p0, v1
if-ne v4, v7, :cond_19
move v0, v3
:cond_19
if-ge v5, v10, :cond_4a
aput v5, v6, v2
add-int/lit8 v2, v2, 0x1
move p1, v4
:goto_20
rem-int/lit8 v4, v2, 0xf
if-eqz v4, :cond_2a
const/16 v4, 0x386
if-eq v5, v4, :cond_2a
if-eqz v0, :cond_a
:cond_2a
sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;
move-object v5, v4
move v4, v1
:goto_2e
if-ge v4, v2, :cond_64
sget-object v7, Lcom/google/zxing/f/a/b;->c:[Ljava/math/BigInteger;
sub-int v8, v2, v4
add-int/lit8 v8, v8, -0x1
aget-object v7, v7, v8
aget v8, v6, v4
int-to-long v8, v8
invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;
move-result-object v8
invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v7
invoke-virtual {v5, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;
move-result-object v5
add-int/lit8 v4, v4, 0x1
goto :goto_2e
:cond_4a
if-eq v5, v10, :cond_60
const/16 v7, 0x385
if-eq v5, v7, :cond_60
const/16 v7, 0x39c
if-eq v5, v7, :cond_60
const/16 v7, 0x3a0
if-eq v5, v7, :cond_60
const/16 v7, 0x39b
if-eq v5, v7, :cond_60
const/16 v7, 0x39a
if-ne v5, v7, :cond_7f
:cond_60
add-int/lit8 p1, v4, -0x1
move v0, v3
goto :goto_20
:cond_64
invoke-virtual {v5}, Ljava/math/BigInteger;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x31
if-eq v4, v5, :cond_75
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v0
throw v0
:cond_75
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move v2, v1
goto :goto_a
:cond_7e
return p1
:cond_7f
move p1, v4
goto :goto_20
.end method