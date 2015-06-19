.class public final Lcom/google/zxing/e/a;
.super Lcom/google/zxing/e/k;
.source "CodaBarReader.java"
.field static final a:[C
.field static final b:[I
.field private static final c:[C
.field private final d:Ljava/lang/StringBuilder;
.field private e:[I
.field private f:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "0123456789-$:/.+ABCD"
invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C
move-result-object v0
sput-object v0, Lcom/google/zxing/e/a;->a:[C
const/16 v0, 0x14
new-array v0, v0, [I
fill-array-data v0, :array_1a
sput-object v0, Lcom/google/zxing/e/a;->b:[I
const/4 v0, 0x4
new-array v0, v0, [C
fill-array-data v0, :array_46
sput-object v0, Lcom/google/zxing/e/a;->c:[C
return-void
:array_46
.array-data 0x2
0x41t 0x0t
0x42t 0x0t
0x43t 0x0t
0x44t 0x0t
.end array-data
:array_1a
.array-data 0x4
0x3t 0x0t 0x0t 0x0t
0x6t 0x0t 0x0t 0x0t
0x9t 0x0t 0x0t 0x0t
0x60t 0x0t 0x0t 0x0t
0x12t 0x0t 0x0t 0x0t
0x42t 0x0t 0x0t 0x0t
0x21t 0x0t 0x0t 0x0t
0x24t 0x0t 0x0t 0x0t
0x30t 0x0t 0x0t 0x0t
0x48t 0x0t 0x0t 0x0t
0xct 0x0t 0x0t 0x0t
0x18t 0x0t 0x0t 0x0t
0x45t 0x0t 0x0t 0x0t
0x51t 0x0t 0x0t 0x0t
0x54t 0x0t 0x0t 0x0t
0x15t 0x0t 0x0t 0x0t
0x1at 0x0t 0x0t 0x0t
0x29t 0x0t 0x0t 0x0t
0xbt 0x0t 0x0t 0x0t
0xet 0x0t 0x0t 0x0t
.end array-data
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V
new-instance v0, Ljava/lang/StringBuilder;
const/16 v1, 0x14
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V
iput-object v0, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
const/16 v0, 0x50
new-array v0, v0, [I
iput-object v0, p0, Lcom/google/zxing/e/a;->e:[I
const/4 v0, 0x0
iput v0, p0, Lcom/google/zxing/e/a;->f:I
return-void
.end method
.method private a(I)V
.registers 6
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/zxing/e/a;->e:[I
iget v1, p0, Lcom/google/zxing/e/a;->f:I
aput p1, v0, v1
iget v0, p0, Lcom/google/zxing/e/a;->f:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/google/zxing/e/a;->f:I
iget v0, p0, Lcom/google/zxing/e/a;->f:I
iget-object v1, p0, Lcom/google/zxing/e/a;->e:[I
array-length v1, v1
if-lt v0, v1, :cond_23
iget v0, p0, Lcom/google/zxing/e/a;->f:I
mul-int/lit8 v0, v0, 0x2
new-array v0, v0, [I
iget-object v1, p0, Lcom/google/zxing/e/a;->e:[I
iget v2, p0, Lcom/google/zxing/e/a;->f:I
invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
iput-object v0, p0, Lcom/google/zxing/e/a;->e:[I
:cond_23
return-void
.end method
.method private static a([CC)Z
.registers 6
const/4 v0, 0x0
if-eqz p0, :cond_c
array-length v2, p0
move v1, v0
:goto_5
if-ge v1, v2, :cond_c
aget-char v3, p0, v1
if-ne v3, p1, :cond_d
const/4 v0, 0x1
:cond_c
return v0
:cond_d
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method
.method private b(I)I
.registers 13
const/4 v2, -0x1
const/4 v10, 0x2
const/4 v1, 0x0
add-int/lit8 v4, p1, 0x7
iget v0, p0, Lcom/google/zxing/e/a;->f:I
if-lt v4, v0, :cond_b
move v1, v2
:goto_a
return v1
:cond_b
new-array v5, v10, [I
fill-array-data v5, :array_78
new-array v6, v10, [I
fill-array-data v6, :array_80
new-array v7, v10, [I
fill-array-data v7, :array_88
move v3, v1
:goto_1b
if-ge v3, v10, :cond_4d
add-int v0, p1, v3
:goto_1f
if-ge v0, v4, :cond_40
iget-object v8, p0, Lcom/google/zxing/e/a;->e:[I
aget v8, v8, v0
aget v9, v6, v3
if-ge v8, v9, :cond_2f
iget-object v8, p0, Lcom/google/zxing/e/a;->e:[I
aget v8, v8, v0
aput v8, v6, v3
:cond_2f
iget-object v8, p0, Lcom/google/zxing/e/a;->e:[I
aget v8, v8, v0
aget v9, v5, v3
if-le v8, v9, :cond_3d
iget-object v8, p0, Lcom/google/zxing/e/a;->e:[I
aget v8, v8, v0
aput v8, v5, v3
:cond_3d
add-int/lit8 v0, v0, 0x2
goto :goto_1f
:cond_40
aget v0, v6, v3
aget v8, v5, v3
add-int/2addr v0, v8
div-int/lit8 v0, v0, 0x2
aput v0, v7, v3
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_1b
:cond_4d
const/16 v0, 0x80
move v3, v0
move v4, v1
move v0, v1
:goto_52
const/4 v5, 0x7
if-ge v4, v5, :cond_69
and-int/lit8 v5, v4, 0x1
shr-int/lit8 v3, v3, 0x1
iget-object v6, p0, Lcom/google/zxing/e/a;->e:[I
add-int v8, p1, v4
aget v6, v6, v8
aget v5, v7, v5
if-le v6, v5, :cond_64
or-int/2addr v0, v3
:cond_64
add-int/lit8 v4, v4, 0x1
goto :goto_52
:cond_67
add-int/lit8 v1, v1, 0x1
:cond_69
sget-object v3, Lcom/google/zxing/e/a;->b:[I
array-length v3, v3
if-ge v1, v3, :cond_75
sget-object v3, Lcom/google/zxing/e/a;->b:[I
aget v3, v3, v1
if-ne v3, v0, :cond_67
goto :goto_a
:cond_75
move v1, v2
goto :goto_a
nop
:array_78
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_80
.array-data 0x4
0xfft 0xfft 0xfft 0x7ft
0xfft 0xfft 0xfft 0x7ft
.end array-data
:array_88
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 19
const/4 v1, 0x0
iput v1, p0, Lcom/google/zxing/e/a;->f:I
const/4 v1, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v1}, Lcom/google/zxing/b/a;->d(I)I
move-result v2
move-object/from16 v0, p2
iget v5, v0, Lcom/google/zxing/b/a;->b:I
if-lt v2, v5, :cond_15
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_15
const/4 v3, 0x1
const/4 v1, 0x0
move v4, v2
:goto_18
if-ge v4, v5, :cond_38
move-object/from16 v0, p2
invoke-virtual {v0, v4}, Lcom/google/zxing/b/a;->a(I)Z
move-result v2
xor-int/2addr v2, v3
if-eqz v2, :cond_2b
add-int/lit8 v1, v1, 0x1
move v2, v3
:goto_26
add-int/lit8 v3, v4, 0x1
move v4, v3
move v3, v2
goto :goto_18
:cond_2b
invoke-direct {p0, v1}, Lcom/google/zxing/e/a;->a(I)V
const/4 v2, 0x1
if-nez v3, :cond_36
const/4 v1, 0x1
:goto_32
move v14, v2
move v2, v1
move v1, v14
goto :goto_26
:cond_36
const/4 v1, 0x0
goto :goto_32
:cond_38
invoke-direct {p0, v1}, Lcom/google/zxing/e/a;->a(I)V
const/4 v1, 0x1
:goto_3c
iget v2, p0, Lcom/google/zxing/e/a;->f:I
if-ge v1, v2, :cond_85
invoke-direct {p0, v1}, Lcom/google/zxing/e/a;->b(I)I
move-result v2
const/4 v3, -0x1
if-eq v2, v3, :cond_82
sget-object v3, Lcom/google/zxing/e/a;->c:[C
sget-object v4, Lcom/google/zxing/e/a;->a:[C
aget-char v2, v4, v2
invoke-static {v3, v2}, Lcom/google/zxing/e/a;->a([CC)Z
move-result v2
if-eqz v2, :cond_82
const/4 v2, 0x0
move v3, v2
move v2, v1
:goto_56
add-int/lit8 v4, v1, 0x7
if-ge v2, v4, :cond_62
iget-object v4, p0, Lcom/google/zxing/e/a;->e:[I
aget v4, v4, v2
add-int/2addr v3, v4
add-int/lit8 v2, v2, 0x1
goto :goto_56
:cond_62
const/4 v2, 0x1
if-eq v1, v2, :cond_6f
iget-object v2, p0, Lcom/google/zxing/e/a;->e:[I
add-int/lit8 v4, v1, -0x1
aget v2, v2, v4
div-int/lit8 v3, v3, 0x2
if-lt v2, v3, :cond_82
:cond_6f
iget-object v2, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->setLength(I)V
move v2, v1
:cond_76
invoke-direct {p0, v2}, Lcom/google/zxing/e/a;->b(I)I
move-result v3
const/4 v4, -0x1
if-ne v3, v4, :cond_8a
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_82
add-int/lit8 v1, v1, 0x2
goto :goto_3c
:cond_85
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_8a
iget-object v4, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
int-to-char v5, v3
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
add-int/lit8 v2, v2, 0x8
iget-object v4, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v4
const/4 v5, 0x1
if-le v4, v5, :cond_a7
sget-object v4, Lcom/google/zxing/e/a;->c:[C
sget-object v5, Lcom/google/zxing/e/a;->a:[C
aget-char v3, v5, v3
invoke-static {v4, v3}, Lcom/google/zxing/e/a;->a([CC)Z
move-result v3
if-nez v3, :cond_ab
:cond_a7
iget v3, p0, Lcom/google/zxing/e/a;->f:I
if-lt v2, v3, :cond_76
:cond_ab
iget-object v3, p0, Lcom/google/zxing/e/a;->e:[I
add-int/lit8 v4, v2, -0x1
aget v5, v3, v4
const/4 v4, 0x0
const/4 v3, -0x8
:goto_b3
const/4 v6, -0x1
if-ge v3, v6, :cond_c0
iget-object v6, p0, Lcom/google/zxing/e/a;->e:[I
add-int v7, v2, v3
aget v6, v6, v7
add-int/2addr v4, v6
add-int/lit8 v3, v3, 0x1
goto :goto_b3
:cond_c0
iget v3, p0, Lcom/google/zxing/e/a;->f:I
if-ge v2, v3, :cond_cd
div-int/lit8 v3, v4, 0x2
if-ge v5, v3, :cond_cd
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_cd
const/4 v3, 0x4
new-array v7, v3, [I
fill-array-data v7, :array_240
const/4 v3, 0x4
new-array v8, v3, [I
fill-array-data v8, :array_24c
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v3
add-int/lit8 v9, v3, -0x1
const/4 v3, 0x0
move v4, v1
:goto_e3
sget-object v5, Lcom/google/zxing/e/a;->b:[I
iget-object v6, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v6
aget v6, v5, v6
const/4 v5, 0x6
:goto_ee
if-ltz v5, :cond_10d
and-int/lit8 v10, v5, 0x1
and-int/lit8 v11, v6, 0x1
mul-int/lit8 v11, v11, 0x2
add-int/2addr v10, v11
aget v11, v7, v10
iget-object v12, p0, Lcom/google/zxing/e/a;->e:[I
add-int v13, v4, v5
aget v12, v12, v13
add-int/2addr v11, v12
aput v11, v7, v10
aget v11, v8, v10
add-int/lit8 v11, v11, 0x1
aput v11, v8, v10
shr-int/lit8 v6, v6, 0x1
add-int/lit8 v5, v5, -0x1
goto :goto_ee
:cond_10d
if-ge v3, v9, :cond_114
add-int/lit8 v4, v4, 0x8
add-int/lit8 v3, v3, 0x1
goto :goto_e3
:cond_114
const/4 v3, 0x4
new-array v10, v3, [I
const/4 v3, 0x4
new-array v11, v3, [I
const/4 v3, 0x0
:goto_11b
const/4 v4, 0x2
if-ge v3, v4, :cond_154
const/4 v4, 0x0
aput v4, v11, v3
add-int/lit8 v4, v3, 0x2
aget v5, v7, v3
shl-int/lit8 v5, v5, 0x8
aget v6, v8, v3
div-int/2addr v5, v6
add-int/lit8 v6, v3, 0x2
aget v6, v7, v6
shl-int/lit8 v6, v6, 0x8
add-int/lit8 v12, v3, 0x2
aget v12, v8, v12
div-int/2addr v6, v12
add-int/2addr v5, v6
shr-int/lit8 v5, v5, 0x1
aput v5, v11, v4
add-int/lit8 v4, v3, 0x2
aget v4, v11, v4
aput v4, v10, v3
add-int/lit8 v4, v3, 0x2
add-int/lit8 v5, v3, 0x2
aget v5, v7, v5
mul-int/lit16 v5, v5, 0x200
add-int/lit16 v5, v5, 0x180
add-int/lit8 v6, v3, 0x2
aget v6, v8, v6
div-int/2addr v5, v6
aput v5, v10, v4
add-int/lit8 v3, v3, 0x1
goto :goto_11b
:cond_154
const/4 v3, 0x0
move v4, v1
:goto_156
sget-object v5, Lcom/google/zxing/e/a;->b:[I
iget-object v6, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v6
aget v5, v5, v6
const/4 v6, 0x6
:goto_161
if-ltz v6, :cond_184
and-int/lit8 v7, v6, 0x1
and-int/lit8 v8, v5, 0x1
mul-int/lit8 v8, v8, 0x2
add-int/2addr v7, v8
iget-object v8, p0, Lcom/google/zxing/e/a;->e:[I
add-int v12, v4, v6
aget v8, v8, v12
shl-int/lit8 v8, v8, 0x8
aget v12, v11, v7
if-lt v8, v12, :cond_17a
aget v7, v10, v7
if-le v8, v7, :cond_17f
:cond_17a
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_17f
shr-int/lit8 v5, v5, 0x1
add-int/lit8 v6, v6, -0x1
goto :goto_161
:cond_184
if-ge v3, v9, :cond_18b
add-int/lit8 v4, v4, 0x8
add-int/lit8 v3, v3, 0x1
goto :goto_156
:cond_18b
const/4 v3, 0x0
:goto_18c
iget-object v4, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v4
if-ge v3, v4, :cond_1a6
iget-object v4, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
sget-object v5, Lcom/google/zxing/e/a;->a:[C
iget-object v6, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v6
aget-char v5, v5, v6
invoke-virtual {v4, v3, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V
add-int/lit8 v3, v3, 0x1
goto :goto_18c
:cond_1a6
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v3
sget-object v4, Lcom/google/zxing/e/a;->c:[C
invoke-static {v4, v3}, Lcom/google/zxing/e/a;->a([CC)Z
move-result v3
if-nez v3, :cond_1ba
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_1ba
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->charAt(I)C
move-result v3
sget-object v4, Lcom/google/zxing/e/a;->c:[C
invoke-static {v4, v3}, Lcom/google/zxing/e/a;->a([CC)Z
move-result v3
if-nez v3, :cond_1d5
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_1d5
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I
move-result v3
const/4 v4, 0x3
if-gt v3, v4, :cond_1e3
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_1e3
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
iget-object v4, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I
move-result v4
add-int/lit8 v4, v4, -0x1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
const/4 v4, 0x0
const/4 v3, 0x0
move v14, v3
move v3, v4
move v4, v14
:goto_1fb
if-ge v4, v1, :cond_207
iget-object v5, p0, Lcom/google/zxing/e/a;->e:[I
aget v5, v5, v4
add-int/2addr v5, v3
add-int/lit8 v3, v4, 0x1
move v4, v3
move v3, v5
goto :goto_1fb
:cond_207
int-to-float v4, v3
move v14, v3
move v3, v1
move v1, v14
:goto_20b
add-int/lit8 v5, v2, -0x1
if-ge v3, v5, :cond_217
iget-object v5, p0, Lcom/google/zxing/e/a;->e:[I
aget v5, v5, v3
add-int/2addr v1, v5
add-int/lit8 v3, v3, 0x1
goto :goto_20b
:cond_217
int-to-float v1, v1
new-instance v2, Lcom/google/zxing/m;
iget-object v3, p0, Lcom/google/zxing/e/a;->d:Ljava/lang/StringBuilder;
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const/4 v5, 0x0
const/4 v6, 0x2
new-array v6, v6, [Lcom/google/zxing/o;
const/4 v7, 0x0
new-instance v8, Lcom/google/zxing/o;
move/from16 v0, p1
int-to-float v9, v0
invoke-direct {v8, v4, v9}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v8, v6, v7
const/4 v4, 0x1
new-instance v7, Lcom/google/zxing/o;
move/from16 v0, p1
int-to-float v8, v0
invoke-direct {v7, v1, v8}, Lcom/google/zxing/o;-><init>(FF)V
aput-object v7, v6, v4
sget-object v1, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;
invoke-direct {v2, v3, v5, v6, v1}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
return-object v2
:array_240
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
:array_24c
.array-data 0x4
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
0x0t 0x0t 0x0t 0x0t
.end array-data
.end method