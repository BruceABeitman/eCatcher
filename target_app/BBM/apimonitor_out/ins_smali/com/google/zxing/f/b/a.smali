.class public final Lcom/google/zxing/f/b/a;
.super Ljava/lang/Object;
.source "Detector.java"
.field private static final b:[I
.field private static final c:[I
.field private static final d:[I
.field private static final e:[I
.field public final a:Lcom/google/zxing/c;
.method static constructor <clinit>()V
.registers 3
const/16 v2, 0x9
const/16 v1, 0x8
new-array v0, v1, [I
fill-array-data v0, :array_22
sput-object v0, Lcom/google/zxing/f/b/a;->b:[I
new-array v0, v1, [I
fill-array-data v0, :array_36
sput-object v0, Lcom/google/zxing/f/b/a;->c:[I
new-array v0, v2, [I
fill-array-data v0, :array_4a
sput-object v0, Lcom/google/zxing/f/b/a;->d:[I
new-array v0, v2, [I
fill-array-data v0, :array_60
sput-object v0, Lcom/google/zxing/f/b/a;->e:[I
return-void
nop
:array_60
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x7t 0x0t 0x0t 0x0t
.end array-data
:array_36
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x8t 0x0t 0x0t 0x0t
.end array-data
:array_22
.array-data 0x4
0x8t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
.end array-data
:array_4a
.array-data 0x4
0x7t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x3t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
0x1t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>(Lcom/google/zxing/c;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/f/b/a;->a:Lcom/google/zxing/c;
return-void
.end method
.method public static a([Lcom/google/zxing/o;)F
.registers 5
const/4 v0, 0x0
aget-object v0, p0, v0
const/4 v1, 0x4
aget-object v1, p0, v1
invoke-static {v0, v1}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v0
const/4 v1, 0x1
aget-object v1, p0, v1
const/4 v2, 0x5
aget-object v2, p0, v2
invoke-static {v1, v2}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v1
add-float/2addr v0, v1
const/high16 v1, 0x4208
div-float/2addr v0, v1
const/4 v1, 0x6
aget-object v1, p0, v1
const/4 v2, 0x2
aget-object v2, p0, v2
invoke-static {v1, v2}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v1
const/4 v2, 0x7
aget-object v2, p0, v2
const/4 v3, 0x3
aget-object v3, p0, v3
invoke-static {v2, v3}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v2
add-float/2addr v1, v2
const/high16 v2, 0x4210
div-float/2addr v1, v2
add-float/2addr v0, v1
const/high16 v1, 0x4000
div-float/2addr v0, v1
return v0
.end method
.method public static a(Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;F)I
.registers 8
const/high16 v2, 0x3f00
invoke-static {p0, p1}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v0
div-float/2addr v0, p4
add-float/2addr v0, v2
float-to-int v0, v0
invoke-static {p2, p3}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v1
div-float/2addr v1, p4
add-float/2addr v1, v2
float-to-int v1, v1
add-int/2addr v0, v1
shr-int/lit8 v0, v0, 0x1
add-int/lit8 v0, v0, 0x8
div-int/lit8 v0, v0, 0x11
mul-int/lit8 v0, v0, 0x11
return v0
.end method
.method public static a(Lcom/google/zxing/b/b;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;II)Lcom/google/zxing/b/b;
.registers 28
invoke-static {}, Lcom/google/zxing/b/i;->a()Lcom/google/zxing/b/i;
move-result-object v1
const/4 v5, 0x0
const/4 v6, 0x0
move/from16 v0, p5
int-to-float v7, v0
const/4 v8, 0x0
move/from16 v0, p5
int-to-float v9, v0
move/from16 v0, p6
int-to-float v10, v0
const/4 v11, 0x0
move/from16 v0, p6
int-to-float v12, v0
move-object/from16 v0, p1
iget v13, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, p1
iget v14, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, p3
iget v15, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, p3
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v16, v0
move-object/from16 v0, p4
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v17, v0
move-object/from16 v0, p4
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v18, v0
move-object/from16 v0, p2
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v19, v0
move-object/from16 v0, p2
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v20, v0
move-object/from16 v2, p0
move/from16 v3, p5
move/from16 v4, p6
invoke-virtual/range {v1 .. v20}, Lcom/google/zxing/b/i;->a(Lcom/google/zxing/b/b;IIFFFFFFFFFFFFFFFF)Lcom/google/zxing/b/b;
move-result-object v1
return-object v1
.end method
.method public static a([Lcom/google/zxing/o;Z)V
.registers 12
const/4 v0, 0x0
aget-object v0, p0, v0
iget v1, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x0
aget-object v0, p0, v0
iget v2, v0, Lcom/google/zxing/o;->b:F
const/4 v0, 0x2
aget-object v0, p0, v0
iget v3, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x2
aget-object v0, p0, v0
iget v4, v0, Lcom/google/zxing/o;->b:F
const/4 v0, 0x4
aget-object v0, p0, v0
iget v5, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x4
aget-object v0, p0, v0
iget v6, v0, Lcom/google/zxing/o;->b:F
const/4 v0, 0x6
aget-object v0, p0, v0
iget v7, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x6
aget-object v0, p0, v0
iget v8, v0, Lcom/google/zxing/o;->b:F
sub-float v0, v6, v8
if-eqz p1, :cond_2d
neg-float v0, v0
:cond_2d
const/high16 v9, 0x4040
cmpl-float v9, v0, v9
if-lez v9, :cond_9b
sub-float v0, v7, v1
sub-float v3, v8, v2
mul-float v4, v0, v0
mul-float v6, v3, v3
add-float/2addr v4, v6
sub-float/2addr v5, v1
mul-float/2addr v5, v0
div-float v4, v5, v4
const/4 v5, 0x4
new-instance v6, Lcom/google/zxing/o;
mul-float/2addr v0, v4
add-float/2addr v0, v1
mul-float v1, v4, v3
add-float/2addr v1, v2
invoke-direct {v6, v0, v1}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v6, p0, v5
:goto_4d
:cond_4d
const/4 v0, 0x1
aget-object v0, p0, v0
iget v1, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x1
aget-object v0, p0, v0
iget v2, v0, Lcom/google/zxing/o;->b:F
const/4 v0, 0x3
aget-object v0, p0, v0
iget v3, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x3
aget-object v0, p0, v0
iget v4, v0, Lcom/google/zxing/o;->b:F
const/4 v0, 0x5
aget-object v0, p0, v0
iget v5, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x5
aget-object v0, p0, v0
iget v6, v0, Lcom/google/zxing/o;->b:F
const/4 v0, 0x7
aget-object v0, p0, v0
iget v7, v0, Lcom/google/zxing/o;->a:F
const/4 v0, 0x7
aget-object v0, p0, v0
iget v8, v0, Lcom/google/zxing/o;->b:F
sub-float v0, v8, v6
if-eqz p1, :cond_7a
neg-float v0, v0
:cond_7a
const/high16 v9, 0x4040
cmpl-float v9, v0, v9
if-lez v9, :cond_bf
sub-float v0, v7, v1
sub-float v3, v8, v2
mul-float v4, v0, v0
mul-float v6, v3, v3
add-float/2addr v4, v6
sub-float/2addr v5, v1
mul-float/2addr v5, v0
div-float v4, v5, v4
const/4 v5, 0x5
new-instance v6, Lcom/google/zxing/o;
mul-float/2addr v0, v4
add-float/2addr v0, v1
mul-float v1, v4, v3
add-float/2addr v1, v2
invoke-direct {v6, v0, v1}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v6, p0, v5
:goto_9a
:cond_9a
return-void
:cond_9b
neg-float v0, v0
const/high16 v1, 0x4040
cmpl-float v0, v0, v1
if-lez v0, :cond_4d
sub-float v0, v3, v5
sub-float v1, v4, v6
mul-float v2, v0, v0
mul-float v5, v1, v1
add-float/2addr v2, v5
sub-float v5, v3, v7
mul-float/2addr v5, v0
div-float v2, v5, v2
const/4 v5, 0x6
new-instance v6, Lcom/google/zxing/o;
mul-float/2addr v0, v2
sub-float v0, v3, v0
mul-float/2addr v1, v2
sub-float v1, v4, v1
invoke-direct {v6, v0, v1}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v6, p0, v5
goto :goto_4d
:cond_bf
neg-float v0, v0
const/high16 v1, 0x4040
cmpl-float v0, v0, v1
if-lez v0, :cond_9a
sub-float v0, v3, v5
sub-float v1, v4, v6
mul-float v2, v0, v0
mul-float v5, v1, v1
add-float/2addr v2, v5
sub-float v5, v3, v7
mul-float/2addr v5, v0
div-float v2, v5, v2
const/4 v5, 0x7
new-instance v6, Lcom/google/zxing/o;
mul-float/2addr v0, v2
sub-float v0, v3, v0
mul-float/2addr v1, v2
sub-float v1, v4, v1
invoke-direct {v6, v0, v1}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v6, p0, v5
goto :goto_9a
.end method
.method private static a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
.registers 22
const/4 v2, 0x0
move-object/from16 v0, p6
array-length v3, v0
const/4 v4, 0x0
move-object/from16 v0, p6
invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([IIII)V
move-object/from16 v0, p5
array-length v10, v0
const/4 v3, 0x0
move/from16 v9, p1
move/from16 v2, p1
move/from16 v4, p4
:goto_14
add-int v5, p1, p3
if-ge v9, v5, :cond_ab
move/from16 v0, p2
invoke-virtual {p0, v9, v0}, Lcom/google/zxing/b/b;->a(II)Z
move-result v5
xor-int/2addr v5, v4
if-eqz v5, :cond_2b
aget v5, p6, v3
add-int/lit8 v5, v5, 0x1
aput v5, p6, v3
:goto_27
add-int/lit8 v5, v9, 0x1
move v9, v5
goto :goto_14
:cond_2b
add-int/lit8 v5, v10, -0x1
if-ne v3, v5, :cond_a5
move-object/from16 v0, p6
array-length v11, v0
const/4 v6, 0x0
const/4 v7, 0x0
const/4 v5, 0x0
move v8, v6
:goto_36
if-ge v5, v11, :cond_42
aget v6, p6, v5
add-int/2addr v6, v8
aget v8, p5, v5
add-int/2addr v7, v8
add-int/lit8 v5, v5, 0x1
move v8, v6
goto :goto_36
:cond_42
if-ge v8, v7, :cond_56
const v5, 0x7fffffff
:goto_47
const/16 v6, 0x6b
if-ge v5, v6, :cond_7f
const/4 v3, 0x2
new-array v3, v3, [I
const/4 v4, 0x0
aput v2, v3, v4
const/4 v2, 0x1
aput v9, v3, v2
move-object v2, v3
:goto_55
return-object v2
:cond_56
shl-int/lit8 v5, v8, 0x8
div-int v12, v5, v7
mul-int/lit16 v5, v12, 0xcc
shr-int/lit8 v13, v5, 0x8
const/4 v6, 0x0
const/4 v5, 0x0
move v7, v6
move v6, v5
:goto_62
if-ge v6, v11, :cond_7c
aget v5, p6, v6
shl-int/lit8 v5, v5, 0x8
aget v14, p5, v6
mul-int/2addr v14, v12
if-le v5, v14, :cond_74
sub-int/2addr v5, v14
:goto_6e
if-le v5, v13, :cond_77
const v5, 0x7fffffff
goto :goto_47
:cond_74
sub-int v5, v14, v5
goto :goto_6e
:cond_77
add-int/2addr v7, v5
add-int/lit8 v5, v6, 0x1
move v6, v5
goto :goto_62
:cond_7c
div-int v5, v7, v8
goto :goto_47
:cond_7f
const/4 v5, 0x0
aget v5, p6, v5
const/4 v6, 0x1
aget v6, p6, v6
add-int/2addr v5, v6
add-int/2addr v2, v5
const/4 v5, 0x2
const/4 v6, 0x0
add-int/lit8 v7, v10, -0x2
move-object/from16 v0, p6
move-object/from16 v1, p6
invoke-static {v0, v5, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
add-int/lit8 v5, v10, -0x2
const/4 v6, 0x0
aput v6, p6, v5
add-int/lit8 v5, v10, -0x1
const/4 v6, 0x0
aput v6, p6, v5
add-int/lit8 v3, v3, -0x1
:goto_9e
const/4 v5, 0x1
aput v5, p6, v3
if-nez v4, :cond_a8
const/4 v4, 0x1
goto :goto_27
:cond_a5
add-int/lit8 v3, v3, 0x1
goto :goto_9e
:cond_a8
const/4 v4, 0x0
goto/16 :goto_27
:cond_ab
const/4 v2, 0x0
goto :goto_55
.end method
.method public static a(Lcom/google/zxing/b/b;)[Lcom/google/zxing/o;
.registers 14
const/4 v7, 0x1
const/4 v1, 0x0
iget v9, p0, Lcom/google/zxing/b/b;->b:I
iget v3, p0, Lcom/google/zxing/b/b;->a:I
const/16 v0, 0x8
new-array v8, v0, [Lcom/google/zxing/o;
sget-object v0, Lcom/google/zxing/f/b/a;->b:[I
array-length v0, v0
new-array v6, v0, [I
shr-int/lit8 v0, v9, 0x7
invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I
move-result v10
move v2, v1
:goto_16
if-ge v2, v9, :cond_cf
sget-object v5, Lcom/google/zxing/f/b/a;->b:[I
move-object v0, p0
move v4, v1
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v0
if-eqz v0, :cond_bb
new-instance v4, Lcom/google/zxing/o;
aget v5, v0, v1
int-to-float v5, v5
int-to-float v11, v2
invoke-direct {v4, v5, v11}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v8, v1
const/4 v4, 0x4
new-instance v5, Lcom/google/zxing/o;
aget v0, v0, v7
int-to-float v0, v0
int-to-float v2, v2
invoke-direct {v5, v0, v2}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v5, v8, v4
move v0, v7
:goto_3a
if-eqz v0, :cond_62
add-int/lit8 v2, v9, -0x1
:goto_3e
if-lez v2, :cond_cd
sget-object v5, Lcom/google/zxing/f/b/a;->b:[I
move-object v0, p0
move v4, v1
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v0
if-eqz v0, :cond_be
new-instance v4, Lcom/google/zxing/o;
aget v5, v0, v1
int-to-float v5, v5
int-to-float v6, v2
invoke-direct {v4, v5, v6}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v8, v7
const/4 v4, 0x5
new-instance v5, Lcom/google/zxing/o;
aget v0, v0, v7
int-to-float v0, v0
int-to-float v2, v2
invoke-direct {v5, v0, v2}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v5, v8, v4
move v0, v7
:cond_62
:goto_62
sget-object v2, Lcom/google/zxing/f/b/a;->d:[I
array-length v2, v2
new-array v6, v2, [I
if-eqz v0, :cond_8f
move v2, v1
:goto_6a
if-ge v2, v9, :cond_cb
sget-object v5, Lcom/google/zxing/f/b/a;->d:[I
move-object v0, p0
move v4, v1
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v0
if-eqz v0, :cond_c1
const/4 v4, 0x2
new-instance v5, Lcom/google/zxing/o;
aget v11, v0, v7
int-to-float v11, v11
int-to-float v12, v2
invoke-direct {v5, v11, v12}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v5, v8, v4
const/4 v4, 0x6
new-instance v5, Lcom/google/zxing/o;
aget v0, v0, v1
int-to-float v0, v0
int-to-float v2, v2
invoke-direct {v5, v0, v2}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v5, v8, v4
move v0, v7
:goto_8f
:cond_8f
if-eqz v0, :cond_c9
add-int/lit8 v2, v9, -0x1
:goto_93
if-lez v2, :cond_c7
sget-object v5, Lcom/google/zxing/f/b/a;->d:[I
move-object v0, p0
move v4, v1
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v0
if-eqz v0, :cond_c3
const/4 v3, 0x3
new-instance v4, Lcom/google/zxing/o;
aget v5, v0, v7
int-to-float v5, v5
int-to-float v6, v2
invoke-direct {v4, v5, v6}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v8, v3
const/4 v3, 0x7
new-instance v4, Lcom/google/zxing/o;
aget v0, v0, v1
int-to-float v0, v0
int-to-float v1, v2
invoke-direct {v4, v0, v1}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v8, v3
:goto_b7
if-eqz v7, :cond_c5
move-object v0, v8
:goto_ba
return-object v0
:cond_bb
add-int/2addr v2, v10
goto/16 :goto_16
:cond_be
sub-int/2addr v2, v10
goto/16 :goto_3e
:cond_c1
add-int/2addr v2, v10
goto :goto_6a
:cond_c3
sub-int/2addr v2, v10
goto :goto_93
:cond_c5
const/4 v0, 0x0
goto :goto_ba
:cond_c7
move v7, v1
goto :goto_b7
:cond_c9
move v7, v0
goto :goto_b7
:cond_cb
move v0, v1
goto :goto_8f
:cond_cd
move v0, v1
goto :goto_62
:cond_cf
move v0, v1
goto/16 :goto_3a
.end method
.method public static b(Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;F)I
.registers 8
const/high16 v2, 0x3f00
invoke-static {p0, p2}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v0
div-float/2addr v0, p4
add-float/2addr v0, v2
float-to-int v0, v0
invoke-static {p1, p3}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v1
div-float/2addr v1, p4
add-float/2addr v1, v2
float-to-int v1, v1
add-int/2addr v0, v1
shr-int/lit8 v0, v0, 0x1
return v0
.end method
.method public static b(Lcom/google/zxing/b/b;)[Lcom/google/zxing/o;
.registers 13
iget v10, p0, Lcom/google/zxing/b/b;->b:I
iget v0, p0, Lcom/google/zxing/b/b;->a:I
shr-int/lit8 v1, v0, 0x1
const/16 v0, 0x8
new-array v9, v0, [Lcom/google/zxing/o;
const/4 v7, 0x0
sget-object v0, Lcom/google/zxing/f/b/a;->c:[I
array-length v0, v0
new-array v6, v0, [I
const/4 v0, 0x1
shr-int/lit8 v2, v10, 0x7
invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I
move-result v11
add-int/lit8 v2, v10, -0x1
:goto_19
if-lez v2, :cond_df
const/4 v4, 0x1
sget-object v5, Lcom/google/zxing/f/b/a;->c:[I
move-object v0, p0
move v3, v1
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v0
if-eqz v0, :cond_d1
const/4 v3, 0x0
new-instance v4, Lcom/google/zxing/o;
const/4 v5, 0x1
aget v5, v0, v5
int-to-float v5, v5
int-to-float v7, v2
invoke-direct {v4, v5, v7}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v9, v3
const/4 v3, 0x4
new-instance v4, Lcom/google/zxing/o;
const/4 v5, 0x0
aget v0, v0, v5
int-to-float v0, v0
int-to-float v2, v2
invoke-direct {v4, v0, v2}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v9, v3
const/4 v0, 0x1
:goto_41
if-eqz v0, :cond_6d
const/4 v7, 0x0
const/4 v2, 0x0
:goto_45
if-ge v2, v10, :cond_dd
const/4 v4, 0x1
sget-object v5, Lcom/google/zxing/f/b/a;->c:[I
move-object v0, p0
move v3, v1
invoke-static/range {v0 .. v6}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v0
if-eqz v0, :cond_d4
const/4 v3, 0x1
new-instance v4, Lcom/google/zxing/o;
const/4 v5, 0x1
aget v5, v0, v5
int-to-float v5, v5
int-to-float v6, v2
invoke-direct {v4, v5, v6}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v9, v3
const/4 v3, 0x5
new-instance v4, Lcom/google/zxing/o;
const/4 v5, 0x0
aget v0, v0, v5
int-to-float v0, v0
int-to-float v2, v2
invoke-direct {v4, v0, v2}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v4, v9, v3
const/4 v0, 0x1
:goto_6d
:cond_6d
sget-object v2, Lcom/google/zxing/f/b/a;->e:[I
array-length v2, v2
new-array v8, v2, [I
if-eqz v0, :cond_a0
const/4 v0, 0x0
add-int/lit8 v4, v10, -0x1
:goto_77
if-lez v4, :cond_a0
const/4 v3, 0x0
const/4 v6, 0x0
sget-object v7, Lcom/google/zxing/f/b/a;->e:[I
move-object v2, p0
move v5, v1
invoke-static/range {v2 .. v8}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v2
if-eqz v2, :cond_d7
const/4 v0, 0x2
new-instance v3, Lcom/google/zxing/o;
const/4 v5, 0x0
aget v5, v2, v5
int-to-float v5, v5
int-to-float v6, v4
invoke-direct {v3, v5, v6}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v3, v9, v0
const/4 v0, 0x6
new-instance v3, Lcom/google/zxing/o;
const/4 v5, 0x1
aget v2, v2, v5
int-to-float v2, v2
int-to-float v4, v4
invoke-direct {v3, v2, v4}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v3, v9, v0
const/4 v0, 0x1
:cond_a0
if-eqz v0, :cond_cd
const/4 v0, 0x0
const/4 v4, 0x0
:goto_a4
if-ge v4, v10, :cond_cd
const/4 v3, 0x0
const/4 v6, 0x0
sget-object v7, Lcom/google/zxing/f/b/a;->e:[I
move-object v2, p0
move v5, v1
invoke-static/range {v2 .. v8}, Lcom/google/zxing/f/b/a;->a(Lcom/google/zxing/b/b;IIIZ[I[I)[I
move-result-object v2
if-eqz v2, :cond_d9
const/4 v0, 0x3
new-instance v1, Lcom/google/zxing/o;
const/4 v3, 0x0
aget v3, v2, v3
int-to-float v3, v3
int-to-float v5, v4
invoke-direct {v1, v3, v5}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v1, v9, v0
const/4 v0, 0x7
new-instance v1, Lcom/google/zxing/o;
const/4 v3, 0x1
aget v2, v2, v3
int-to-float v2, v2
int-to-float v3, v4
invoke-direct {v1, v2, v3}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v1, v9, v0
const/4 v0, 0x1
:cond_cd
if-eqz v0, :cond_db
move-object v0, v9
:goto_d0
return-object v0
:cond_d1
sub-int/2addr v2, v11
goto/16 :goto_19
:cond_d4
add-int/2addr v2, v11
goto/16 :goto_45
:cond_d7
sub-int/2addr v4, v11
goto :goto_77
:cond_d9
add-int/2addr v4, v11
goto :goto_a4
:cond_db
const/4 v0, 0x0
goto :goto_d0
:cond_dd
move v0, v7
goto :goto_6d
:cond_df
move v0, v7
goto/16 :goto_41
.end method