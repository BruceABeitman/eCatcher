.class  Lcom/lenovo/anyshare/sdk/internal/cx;
.super Ljava/lang/Object;
.source "RSCodec.java"
.field private a:I
.field private b:I
.field private c:I
.field private d:I
.field private e:I
.field private f:[I
.field private g:[I
.field private h:[I
.method private constructor <init>(II)V
.registers 7
const/16 v3, 0x100
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/4 v1, 0x1
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
shl-int/2addr v1, v2
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iput p1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v1, v2
shr-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->d:I
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
shr-int/lit8 v1, v1, 0x1
add-int/lit8 v1, v1, 0x1
iput v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->e:I
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v1, v2
add-int/lit8 v1, v1, 0x1
new-array v1, v1, [I
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
new-array v1, v3, [I
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
new-array v1, v3, [I
iput-object v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
invoke-direct {p0}, Lcom/lenovo/anyshare/sdk/internal/cx;->a()[I
move-result-object v0
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cx;->a([I)V
invoke-direct {p0, v0}, Lcom/lenovo/anyshare/sdk/internal/cx;->b([I)V
return-void
.end method
.method private a(I)I
.registers 4
:goto_0
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
if-lt p1, v0, :cond_11
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
sub-int/2addr p1, v0
iget v0, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
shr-int v0, p1, v0
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
and-int/2addr v1, p1
add-int p1, v0, v1
goto :goto_0
:cond_11
return p1
.end method
.method public static a(II)Lcom/lenovo/anyshare/sdk/internal/cx;
.registers 4
const/4 v1, 0x1
const/4 v0, 0x2
if-lt p1, v0, :cond_10
const/16 v0, 0x10
if-gt p1, v0, :cond_10
if-lt p0, v1, :cond_10
shl-int v0, v1, p1
add-int/lit8 v0, v0, -0x1
if-le p0, v0, :cond_12
:cond_10
const/4 v0, 0x0
:goto_11
return-object v0
:cond_12
new-instance v0, Lcom/lenovo/anyshare/sdk/internal/cx;
invoke-direct {v0, p0, p1}, Lcom/lenovo/anyshare/sdk/internal/cx;-><init>(II)V
goto :goto_11
.end method
.method private a([I)V
.registers 9
const/4 v6, 0x0
const/4 v1, 0x1
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
aput v6, v2, v3
const/4 v0, 0x0
:goto_9
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
if-ge v0, v2, :cond_2b
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
aput v1, v2, v0
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
aget v3, v3, v0
aput v0, v2, v3
aget v2, p1, v0
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
aget v4, v2, v3
xor-int/2addr v4, v1
aput v4, v2, v3
:cond_26
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_2b
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
aget v3, v3, v4
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
aput v4, v2, v3
shr-int/lit8 v1, v1, 0x1
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
add-int/lit8 v0, v2, 0x1
:goto_3d
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
if-ge v0, v2, :cond_75
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
add-int/lit8 v3, v0, -0x1
aget v2, v2, v3
if-lt v2, v1, :cond_68
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
aget v3, v3, v4
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
add-int/lit8 v5, v0, -0x1
aget v4, v4, v5
xor-int/2addr v4, v1
shl-int/lit8 v4, v4, 0x1
xor-int/2addr v3, v4
aput v3, v2, v0
:goto_5d
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
aget v3, v3, v0
aput v0, v2, v3
add-int/lit8 v0, v0, 0x1
goto :goto_3d
:cond_68
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
add-int/lit8 v4, v0, -0x1
aget v3, v3, v4
shl-int/lit8 v3, v3, 0x1
aput v3, v2, v0
goto :goto_5d
:cond_75
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
aput v3, v2, v6
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
aput v6, v2, v3
return-void
.end method
.method private a()[I
.registers 9
const/4 v7, 0x2
const/4 v6, 0x4
const/4 v3, 0x3
const/4 v5, 0x0
const/4 v4, 0x1
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
add-int/lit8 v1, v1, 0x1
new-array v0, v1, [I
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
if-ne v1, v7, :cond_16
aput v4, v0, v7
aput v4, v0, v4
aput v4, v0, v5
:cond_15
:goto_15
return-object v0
:cond_16
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
if-ne v1, v3, :cond_21
aput v4, v0, v3
aput v4, v0, v4
aput v4, v0, v5
goto :goto_15
:cond_21
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
if-ne v1, v6, :cond_2c
aput v4, v0, v6
aput v4, v0, v4
aput v4, v0, v5
goto :goto_15
:cond_2c
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/4 v2, 0x5
if-ne v1, v2, :cond_3f
const/4 v1, 0x5
aput v4, v0, v1
aput v4, v0, v7
aput v4, v0, v5
aput v5, v0, v6
aput v5, v0, v3
aput v5, v0, v4
goto :goto_15
:cond_3f
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/4 v2, 0x6
if-ne v1, v2, :cond_4c
const/4 v1, 0x6
aput v4, v0, v1
aput v4, v0, v4
aput v4, v0, v5
goto :goto_15
:cond_4c
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/4 v2, 0x7
if-ne v1, v2, :cond_59
const/4 v1, 0x7
aput v4, v0, v1
aput v4, v0, v3
aput v4, v0, v5
goto :goto_15
:cond_59
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0x8
if-ne v1, v2, :cond_6d
const/4 v1, 0x7
const/16 v2, 0x8
aput v4, v0, v2
aput v4, v0, v1
aput v4, v0, v7
aput v4, v0, v4
aput v4, v0, v5
goto :goto_15
:cond_6d
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0x9
if-ne v1, v2, :cond_7c
const/16 v1, 0x9
aput v4, v0, v1
aput v4, v0, v6
aput v4, v0, v5
goto :goto_15
:cond_7c
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0xa
if-ne v1, v2, :cond_8b
const/16 v1, 0xa
aput v4, v0, v1
aput v4, v0, v3
aput v4, v0, v5
goto :goto_15
:cond_8b
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0xb
if-ne v1, v2, :cond_9b
const/16 v1, 0xb
aput v4, v0, v1
aput v4, v0, v7
aput v4, v0, v5
goto/16 :goto_15
:cond_9b
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0xc
if-ne v1, v2, :cond_b0
const/4 v1, 0x6
const/16 v2, 0xc
aput v4, v0, v2
aput v4, v0, v1
aput v4, v0, v6
aput v4, v0, v4
aput v4, v0, v5
goto/16 :goto_15
:cond_b0
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0xd
if-ne v1, v2, :cond_c4
const/16 v1, 0xd
aput v4, v0, v1
aput v4, v0, v6
aput v4, v0, v3
aput v4, v0, v4
aput v4, v0, v5
goto/16 :goto_15
:cond_c4
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0xe
if-ne v1, v2, :cond_db
const/4 v1, 0x6
const/16 v2, 0xa
const/16 v3, 0xe
aput v4, v0, v3
aput v4, v0, v2
aput v4, v0, v1
aput v4, v0, v4
aput v4, v0, v5
goto/16 :goto_15
:cond_db
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0xf
if-ne v1, v2, :cond_eb
const/16 v1, 0xf
aput v4, v0, v1
aput v4, v0, v4
aput v4, v0, v5
goto/16 :goto_15
:cond_eb
iget v1, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->b:I
const/16 v2, 0x10
if-ne v1, v2, :cond_15
const/16 v1, 0xc
const/16 v2, 0x10
aput v4, v0, v2
aput v4, v0, v1
aput v4, v0, v3
aput v4, v0, v4
aput v4, v0, v5
goto/16 :goto_15
.end method
.method private b([I)V
.registers 11
const/4 v8, 0x1
const/4 v7, 0x0
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->e:I
mul-int/lit8 v4, v4, 0xb
invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v4
aget v3, v3, v4
aput v3, v2, v7
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aput v8, v2, v8
const/4 v0, 0x2
:goto_17
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v2, v3
if-gt v0, v2, :cond_7c
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aput v8, v2, v0
add-int/lit8 v1, v0, -0x1
:goto_24
if-lez v1, :cond_5d
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aget v2, v2, v1
if-eqz v2, :cond_52
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
add-int/lit8 v4, v1, -0x1
aget v3, v3, v4
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aget v6, v6, v1
aget v5, v5, v6
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->e:I
add-int/2addr v6, v0
add-int/lit8 v6, v6, -0x1
mul-int/lit8 v6, v6, 0xb
add-int/2addr v5, v6
invoke-direct {p0, v5}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v5
aget v4, v4, v5
xor-int/2addr v3, v4
aput v3, v2, v1
:goto_4f
add-int/lit8 v1, v1, -0x1
goto :goto_24
:cond_52
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
add-int/lit8 v4, v1, -0x1
aget v3, v3, v4
aput v3, v2, v1
goto :goto_4f
:cond_5d
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aget v5, v5, v7
aget v4, v4, v5
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->e:I
add-int/2addr v5, v0
add-int/lit8 v5, v5, -0x1
mul-int/lit8 v5, v5, 0xb
add-int/2addr v4, v5
invoke-direct {p0, v4}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v4
aget v3, v3, v4
aput v3, v2, v7
add-int/lit8 v0, v0, 0x1
goto :goto_17
:cond_7c
const/4 v0, 0x0
:goto_7d
iget v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v2, v3
if-gt v0, v2, :cond_93
iget-object v2, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
iget-object v3, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
iget-object v4, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aget v4, v4, v0
aget v3, v3, v4
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_7d
:cond_93
return-void
.end method
.method public a([B[II)I
.registers 36
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move/from16 v0, v27
new-array v0, v0, [I
move-object/from16 v19, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
new-array v12, v0, [I
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
new-array v0, v0, [I
move-object/from16 v22, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
new-array v2, v0, [I
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
new-array v0, v0, [I
move-object/from16 v24, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
new-array v0, v0, [I
move-object/from16 v16, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v27
new-array v0, v0, [I
move-object/from16 v21, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
new-array v0, v0, [I
move-object/from16 v20, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v27
new-array v13, v0, [I
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
add-int/lit8 v9, v27, -0x1
:goto_ba
if-ltz v9, :cond_d6
aget-byte v27, p1, v9
if-ltz v27, :cond_cf
aget-byte v10, p1, v9
:goto_c2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v27, v27, v10
aput v27, v19, v9
add-int/lit8 v9, v9, -0x1
goto :goto_ba
:cond_cf
aget-byte v27, p1, v9
move/from16 v0, v27
add-int/lit16 v10, v0, 0x100
goto :goto_c2
:cond_d6
const/16 v23, 0x0
const/4 v9, 0x1
:goto_d9
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v27
if-gt v9, v0, :cond_13c
const/16 v25, 0x0
const/4 v11, 0x0
:goto_ee
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move/from16 v0, v27
if-ge v11, v0, :cond_12d
aget v27, v19, v11
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_12a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
aget v28, v19, v11
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->e:I
move/from16 v29, v0
add-int v29, v29, v9
add-int/lit8 v29, v29, -0x1
mul-int/lit8 v29, v29, 0xb
mul-int v29, v29, v11
add-int v28, v28, v29
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v28
aget v27, v27, v28
xor-int v25, v25, v27
:cond_12a
add-int/lit8 v11, v11, 0x1
goto :goto_ee
:cond_12d
or-int v23, v23, v25
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v27, v27, v25
aput v27, v22, v9
add-int/lit8 v9, v9, 0x1
goto :goto_d9
:cond_13c
if-nez v23, :cond_140
const/4 v3, 0x0
:goto_13f
:cond_13f
return v3
:cond_140
const/16 v27, 0x0
const/16 v28, 0x1
aput v28, v12, v27
const/4 v9, 0x1
:goto_147
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
if-ge v9, v0, :cond_162
const/16 v27, 0x0
aput v27, v12, v9
add-int/lit8 v9, v9, 0x1
goto :goto_147
:cond_162
if-lez p3, :cond_1b5
const/16 v27, 0x1
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v28, v0
const/16 v29, 0x0
aget v29, p2, v29
aget v28, v28, v29
aput v28, v12, v27
const/4 v9, 0x1
:goto_175
move/from16 v0, p3
if-ge v9, v0, :cond_1b5
aget v26, p2, v9
add-int/lit8 v11, v9, 0x1
:goto_17d
if-lez v11, :cond_1b2
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
add-int/lit8 v28, v11, -0x1
aget v28, v12, v28
aget v25, v27, v28
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move/from16 v0, v25
move/from16 v1, v27
if-eq v0, v1, :cond_1af
aget v27, v12, v11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v28, v0
add-int v29, v26, v25
move-object/from16 v0, p0
move/from16 v1, v29
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v29
aget v28, v28, v29
xor-int v27, v27, v28
aput v27, v12, v11
:cond_1af
add-int/lit8 v11, v11, -0x1
goto :goto_17d
:cond_1b2
add-int/lit8 v9, v9, 0x1
goto :goto_175
:cond_1b5
const/4 v9, 0x0
:goto_1b6
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
if-ge v9, v0, :cond_1d9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v28, v12, v9
aget v27, v27, v28
aput v27, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_1b6
:cond_1d9
move/from16 v18, p3
move/from16 v8, p3
:cond_1dd
:goto_1dd
add-int/lit8 v18, v18, 0x1
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v18
move/from16 v1, v27
if-gt v0, v1, :cond_34e
const/4 v7, 0x0
const/4 v9, 0x0
:goto_1f5
move/from16 v0, v18
if-ge v9, v0, :cond_232
aget v27, v12, v9
if-eqz v27, :cond_22f
sub-int v27, v18, v9
aget v27, v22, v27
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_22f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v28, v0
aget v29, v12, v9
aget v28, v28, v29
sub-int v29, v18, v9
aget v29, v22, v29
add-int v28, v28, v29
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v28
aget v27, v27, v28
xor-int v7, v7, v27
:cond_22f
add-int/lit8 v9, v9, 0x1
goto :goto_1f5
:cond_232
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v7, v27, v7
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move/from16 v0, v27
if-ne v7, v0, :cond_26b
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v9, v27, -0x1
:goto_254
if-ltz v9, :cond_25f
add-int/lit8 v27, v9, 0x1
aget v28, v2, v9
aput v28, v2, v27
add-int/lit8 v9, v9, -0x1
goto :goto_254
:cond_25f
const/16 v27, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
aput v28, v2, v27
goto/16 :goto_1dd
:cond_26b
const/16 v27, 0x0
const/16 v28, 0x0
aget v28, v12, v28
aput v28, v24, v27
const/4 v9, 0x0
:goto_274
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v27
if-ge v9, v0, :cond_2be
aget v27, v2, v9
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_2b5
add-int/lit8 v27, v9, 0x1
add-int/lit8 v28, v9, 0x1
aget v28, v12, v28
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v29, v0
aget v30, v2, v9
add-int v30, v30, v7
move-object/from16 v0, p0
move/from16 v1, v30
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v30
aget v29, v29, v30
xor-int v28, v28, v29
aput v28, v24, v27
:goto_2b2
add-int/lit8 v9, v9, 0x1
goto :goto_274
:cond_2b5
add-int/lit8 v27, v9, 0x1
add-int/lit8 v28, v9, 0x1
aget v28, v12, v28
aput v28, v24, v27
goto :goto_2b2
:cond_2be
mul-int/lit8 v27, v8, 0x2
add-int v28, v18, p3
add-int/lit8 v28, v28, -0x1
move/from16 v0, v27
move/from16 v1, v28
if-gt v0, v1, :cond_30d
add-int v27, v18, p3
sub-int v8, v27, v8
const/4 v9, 0x0
:goto_2cf
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v27
if-gt v9, v0, :cond_332
aget v27, v12, v9
if-nez v27, :cond_2f0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
:goto_2eb
aput v27, v2, v9
add-int/lit8 v9, v9, 0x1
goto :goto_2cf
:cond_2f0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v28, v12, v9
aget v27, v27, v28
sub-int v27, v27, v7
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
add-int v27, v27, v28
move-object/from16 v0, p0
move/from16 v1, v27
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v27
goto :goto_2eb
:cond_30d
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v9, v27, -0x1
:goto_31d
if-ltz v9, :cond_328
add-int/lit8 v27, v9, 0x1
aget v28, v2, v9
aput v28, v2, v27
add-int/lit8 v9, v9, -0x1
goto :goto_31d
:cond_328
const/16 v27, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
aput v28, v2, v27
:cond_332
const/4 v9, 0x0
:goto_333
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
if-ge v9, v0, :cond_1dd
aget v27, v24, v9
aput v27, v12, v9
add-int/lit8 v9, v9, 0x1
goto :goto_333
:cond_34e
const/4 v4, 0x0
const/4 v9, 0x0
:goto_350
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
if-ge v9, v0, :cond_382
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v28, v12, v9
aget v27, v27, v28
aput v27, v12, v9
aget v27, v12, v9
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_37f
move v4, v9
:cond_37f
add-int/lit8 v9, v9, 0x1
goto :goto_350
:cond_382
const/4 v9, 0x1
:goto_383
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, 0x1
move/from16 v0, v27
if-ge v9, v0, :cond_39e
aget v27, v12, v9
aput v27, v20, v9
add-int/lit8 v9, v9, 0x1
goto :goto_383
:cond_39e
const/4 v3, 0x0
const/4 v9, 0x1
:goto_3a0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move/from16 v0, v27
if-gt v9, v0, :cond_3ef
const/16 v17, 0x1
move v11, v4
:goto_3ad
if-lez v11, :cond_3dc
aget v27, v20, v11
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_3d9
aget v27, v20, v11
mul-int/lit8 v28, v11, 0xb
add-int v27, v27, v28
move-object/from16 v0, p0
move/from16 v1, v27
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v27
aput v27, v20, v11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
aget v28, v20, v11
aget v27, v27, v28
xor-int v17, v17, v27
:cond_3d9
add-int/lit8 v11, v11, -0x1
goto :goto_3ad
:cond_3dc
if-nez v17, :cond_3ec
aput v9, v21, v3
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
sub-int v27, v27, v9
aput v27, v13, v3
add-int/lit8 v3, v3, 0x1
:cond_3ec
add-int/lit8 v9, v9, 0x1
goto :goto_3a0
:cond_3ef
if-eq v4, v3, :cond_3f4
const/4 v3, -0x1
goto/16 :goto_13f
:cond_3f4
const/4 v5, 0x0
const/4 v9, 0x0
:goto_3f6
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move/from16 v0, v27
if-ge v9, v0, :cond_460
const/16 v25, 0x0
if-ge v4, v9, :cond_44e
move v11, v4
:goto_40d
if-ltz v11, :cond_450
add-int/lit8 v27, v9, 0x1
sub-int v27, v27, v11
aget v27, v22, v27
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_44b
aget v27, v12, v11
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_44b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
add-int/lit8 v28, v9, 0x1
sub-int v28, v28, v11
aget v28, v22, v28
aget v29, v12, v11
add-int v28, v28, v29
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v28
aget v27, v27, v28
xor-int v25, v25, v27
:cond_44b
add-int/lit8 v11, v11, -0x1
goto :goto_40d
:cond_44e
move v11, v9
goto :goto_40d
:cond_450
if-eqz v25, :cond_453
move v5, v9
:cond_453
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v27, v0
aget v27, v27, v25
aput v27, v16, v9
add-int/lit8 v9, v9, 0x1
goto :goto_3f6
:cond_460
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
aput v28, v16, v27
add-int/lit8 v11, v3, -0x1
:goto_478
if-ltz v11, :cond_13f
const/4 v14, 0x0
move v9, v5
:goto_47c
if-ltz v9, :cond_4ab
aget v27, v16, v9
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_4a8
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
aget v28, v16, v9
mul-int/lit8 v29, v9, 0xb
aget v30, v21, v11
mul-int v29, v29, v30
add-int v28, v28, v29
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v28
aget v27, v27, v28
xor-int v14, v14, v27
:cond_4a8
add-int/lit8 v9, v9, -0x1
goto :goto_47c
:cond_4ab
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
aget v28, v21, v11
mul-int/lit8 v28, v28, 0xb
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->e:I
move/from16 v29, v0
add-int/lit8 v29, v29, -0x1
mul-int v28, v28, v29
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v29, v0
add-int v28, v28, v29
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v28
aget v15, v27, v28
const/4 v6, 0x0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v27, v0
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
move/from16 v28, v0
sub-int v27, v27, v28
add-int/lit8 v27, v27, -0x1
move/from16 v0, v27
invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I
move-result v27
and-int/lit8 v9, v27, -0x2
:goto_4ea
if-ltz v9, :cond_51d
add-int/lit8 v27, v9, 0x1
aget v27, v12, v27
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v28, v0
move/from16 v0, v27
move/from16 v1, v28
if-eq v0, v1, :cond_51a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v27, v0
add-int/lit8 v28, v9, 0x1
aget v28, v12, v28
mul-int/lit8 v29, v9, 0xb
aget v30, v21, v11
mul-int v29, v29, v30
add-int v28, v28, v29
move-object/from16 v0, p0
move/from16 v1, v28
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v28
aget v27, v27, v28
xor-int v6, v6, v27
:cond_51a
add-int/lit8 v9, v9, -0x2
goto :goto_4ea
:cond_51d
if-nez v6, :cond_522
const/4 v3, -0x1
goto/16 :goto_13f
:cond_522
if-eqz v14, :cond_565
aget v27, v13, v11
aget-byte v28, p1, v27
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
move-object/from16 v29, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v30, v0
aget v30, v30, v14
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v31, v0
aget v31, v31, v15
add-int v30, v30, v31
move-object/from16 v0, p0
iget v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
move/from16 v31, v0
add-int v30, v30, v31
move-object/from16 v0, p0
iget-object v0, v0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
move-object/from16 v31, v0
aget v31, v31, v6
sub-int v30, v30, v31
move-object/from16 v0, p0
move/from16 v1, v30
invoke-direct {v0, v1}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v30
aget v29, v29, v30
xor-int v28, v28, v29
move/from16 v0, v28
int-to-byte v0, v0
move/from16 v28, v0
aput-byte v28, p1, v27
:cond_565
add-int/lit8 v11, v11, -0x1
goto/16 :goto_478
.end method
.method public a([B)[B
.registers 13
const/4 v10, 0x0
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v5, v6
new-array v4, v5, [B
const/4 v1, 0x0
:goto_9
array-length v5, v4
if-ge v1, v5, :cond_11
aput-byte v10, v4, v1
add-int/lit8 v1, v1, 0x1
goto :goto_9
:cond_11
const/4 v1, 0x0
:goto_12
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
add-int/lit8 v5, v5, -0x1
if-gt v1, v5, :cond_a0
aget-byte v5, p1, v1
aget-byte v6, v4, v10
xor-int/2addr v5, v6
if-ltz v5, :cond_57
aget-byte v5, p1, v1
aget-byte v6, v4, v10
xor-int v2, v5, v6
:goto_25
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->h:[I
aget v0, v5, v2
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
if-eq v0, v5, :cond_85
const/4 v3, 0x1
:goto_2e
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v5, v6
add-int/lit8 v5, v5, -0x1
if-gt v3, v5, :cond_66
iget-object v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aget v5, v5, v3
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
if-eq v5, v6, :cond_5f
add-int/lit8 v5, v3, -0x1
aget-byte v6, v4, v3
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget-object v8, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
aget v8, v8, v3
add-int/2addr v8, v0
invoke-direct {p0, v8}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v8
aget v7, v7, v8
xor-int/2addr v6, v7
int-to-byte v6, v6
aput-byte v6, v4, v5
:goto_54
add-int/lit8 v3, v3, 0x1
goto :goto_2e
:cond_57
aget-byte v5, p1, v1
aget-byte v6, v4, v10
xor-int/2addr v5, v6
add-int/lit16 v2, v5, 0x100
goto :goto_25
:cond_5f
add-int/lit8 v5, v3, -0x1
aget-byte v6, v4, v3
aput-byte v6, v4, v5
goto :goto_54
:cond_66
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v5, v6
add-int/lit8 v5, v5, -0x1
iget-object v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->g:[I
iget-object v7, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->f:[I
iget v8, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v9, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v8, v9
aget v7, v7, v8
add-int/2addr v7, v0
invoke-direct {p0, v7}, Lcom/lenovo/anyshare/sdk/internal/cx;->a(I)I
move-result v7
aget v6, v6, v7
int-to-byte v6, v6
aput-byte v6, v4, v5
:goto_82
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_85
const/4 v3, 0x1
:goto_86
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v5, v6
if-ge v3, v5, :cond_96
add-int/lit8 v5, v3, -0x1
aget-byte v6, v4, v3
aput-byte v6, v4, v5
add-int/lit8 v3, v3, 0x1
goto :goto_86
:cond_96
iget v5, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->a:I
iget v6, p0, Lcom/lenovo/anyshare/sdk/internal/cx;->c:I
sub-int/2addr v5, v6
add-int/lit8 v5, v5, -0x1
aput-byte v10, v4, v5
goto :goto_82
:cond_a0
return-object v4
.end method