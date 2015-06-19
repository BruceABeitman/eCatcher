.class public final Lcom/google/zxing/c/a/f;
.super Ljava/lang/Object;
.source "Decoder.java"
.field private final a:Lcom/google/zxing/b/b/c;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/b/b/c;
sget-object v1, Lcom/google/zxing/b/b/a;->f:Lcom/google/zxing/b/b/a;
invoke-direct {v0, v1}, Lcom/google/zxing/b/b/c;-><init>(Lcom/google/zxing/b/b/a;)V
iput-object v0, p0, Lcom/google/zxing/c/a/f;->a:Lcom/google/zxing/b/b/c;
return-void
.end method
.method private a([BI)V
.registers 8
const/4 v0, 0x0
array-length v2, p1
new-array v3, v2, [I
move v1, v0
:goto_5
if-ge v1, v2, :cond_10
aget-byte v4, p1, v1
and-int/lit16 v4, v4, 0xff
aput v4, v3, v1
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_10
array-length v1, p1
sub-int/2addr v1, p2
:try_start_12
iget-object v2, p0, Lcom/google/zxing/c/a/f;->a:Lcom/google/zxing/b/b/c;
invoke-virtual {v2, v3, v1}, Lcom/google/zxing/b/b/c;->a([II)V
:try_end_17
.catch Lcom/google/zxing/b/b/e; {:try_start_12 .. :try_end_17} :catch_21
:goto_17
if-ge v0, p2, :cond_27
aget v1, v3, v0
int-to-byte v1, v1
aput-byte v1, p1, v0
add-int/lit8 v0, v0, 0x1
goto :goto_17
:catch_21
move-exception v0
invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;
move-result-object v0
throw v0
:cond_27
return-void
.end method
.method public final a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/e;
.registers 20
new-instance v10, Lcom/google/zxing/c/a/a;
move-object/from16 v0, p1
invoke-direct {v10, v0}, Lcom/google/zxing/c/a/a;-><init>(Lcom/google/zxing/b/b;)V
iget-object v11, v10, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;
iget-object v1, v10, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;
iget v1, v1, Lcom/google/zxing/c/a/g;->g:I
new-array v12, v1, [B
const/4 v7, 0x0
const/4 v6, 0x4
const/4 v5, 0x0
iget-object v1, v10, Lcom/google/zxing/c/a/a;->a:Lcom/google/zxing/b/b;
iget v13, v1, Lcom/google/zxing/b/b;->b:I
iget-object v1, v10, Lcom/google/zxing/c/a/a;->a:Lcom/google/zxing/b/b;
iget v14, v1, Lcom/google/zxing/b/b;->a:I
const/4 v4, 0x0
const/4 v3, 0x0
const/4 v2, 0x0
const/4 v1, 0x0
move v8, v5
move v9, v7
move v5, v4
move v4, v3
move v3, v2
move v2, v1
:goto_24
if-ne v6, v13, :cond_b0
if-nez v8, :cond_b0
if-nez v5, :cond_b0
add-int/lit8 v7, v9, 0x1
const/4 v1, 0x0
add-int/lit8 v5, v13, -0x1
const/4 v15, 0x0
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_37
const/4 v1, 0x1
:cond_37
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v5, v13, -0x1
const/4 v15, 0x1
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_44
or-int/lit8 v1, v1, 0x1
:cond_44
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v5, v13, -0x1
const/4 v15, 0x2
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_51
or-int/lit8 v1, v1, 0x1
:cond_51
shl-int/lit8 v1, v1, 0x1
const/4 v5, 0x0
add-int/lit8 v15, v14, -0x2
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_5e
or-int/lit8 v1, v1, 0x1
:cond_5e
shl-int/lit8 v1, v1, 0x1
const/4 v5, 0x0
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_6b
or-int/lit8 v1, v1, 0x1
:cond_6b
shl-int/lit8 v1, v1, 0x1
const/4 v5, 0x1
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_78
or-int/lit8 v1, v1, 0x1
:cond_78
shl-int/lit8 v1, v1, 0x1
const/4 v5, 0x2
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_85
or-int/lit8 v1, v1, 0x1
:cond_85
shl-int/lit8 v1, v1, 0x1
const/4 v5, 0x3
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v5, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v5
if-eqz v5, :cond_92
or-int/lit8 v1, v1, 0x1
:cond_92
int-to-byte v1, v1
aput-byte v1, v12, v9
add-int/lit8 v6, v6, -0x2
add-int/lit8 v5, v8, 0x2
const/4 v1, 0x1
move/from16 v16, v2
move v2, v3
move v3, v4
move v4, v1
move/from16 v1, v16
:goto_a1
if-lt v6, v13, :cond_38a
if-lt v5, v14, :cond_38a
iget-object v1, v10, Lcom/google/zxing/c/a/a;->c:Lcom/google/zxing/c/a/g;
iget v1, v1, Lcom/google/zxing/c/a/g;->g:I
if-eq v7, v1, :cond_29b
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_b0
add-int/lit8 v1, v13, -0x2
if-ne v6, v1, :cond_139
if-nez v8, :cond_139
and-int/lit8 v1, v14, 0x3
if-eqz v1, :cond_139
if-nez v4, :cond_139
add-int/lit8 v7, v9, 0x1
const/4 v1, 0x0
add-int/lit8 v4, v13, -0x3
const/4 v15, 0x0
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_c9
const/4 v1, 0x1
:cond_c9
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v4, v13, -0x2
const/4 v15, 0x0
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_d6
or-int/lit8 v1, v1, 0x1
:cond_d6
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v4, v13, -0x1
const/4 v15, 0x0
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_e3
or-int/lit8 v1, v1, 0x1
:cond_e3
shl-int/lit8 v1, v1, 0x1
const/4 v4, 0x0
add-int/lit8 v15, v14, -0x4
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_f0
or-int/lit8 v1, v1, 0x1
:cond_f0
shl-int/lit8 v1, v1, 0x1
const/4 v4, 0x0
add-int/lit8 v15, v14, -0x3
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_fd
or-int/lit8 v1, v1, 0x1
:cond_fd
shl-int/lit8 v1, v1, 0x1
const/4 v4, 0x0
add-int/lit8 v15, v14, -0x2
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_10a
or-int/lit8 v1, v1, 0x1
:cond_10a
shl-int/lit8 v1, v1, 0x1
const/4 v4, 0x0
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_117
or-int/lit8 v1, v1, 0x1
:cond_117
shl-int/lit8 v1, v1, 0x1
const/4 v4, 0x1
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v4, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v4
if-eqz v4, :cond_124
or-int/lit8 v1, v1, 0x1
:cond_124
int-to-byte v1, v1
aput-byte v1, v12, v9
add-int/lit8 v6, v6, -0x2
add-int/lit8 v4, v8, 0x2
const/4 v1, 0x1
move/from16 v16, v2
move v2, v3
move v3, v1
move/from16 v1, v16
move/from16 v17, v5
move v5, v4
move/from16 v4, v17
goto/16 :goto_a1
:cond_139
add-int/lit8 v1, v13, 0x4
if-ne v6, v1, :cond_1c4
const/4 v1, 0x2
if-ne v8, v1, :cond_1c4
and-int/lit8 v1, v14, 0x7
if-nez v1, :cond_1c4
if-nez v3, :cond_1c4
add-int/lit8 v7, v9, 0x1
const/4 v1, 0x0
add-int/lit8 v3, v13, -0x1
const/4 v15, 0x0
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_153
const/4 v1, 0x1
:cond_153
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v3, v13, -0x1
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_161
or-int/lit8 v1, v1, 0x1
:cond_161
shl-int/lit8 v1, v1, 0x1
const/4 v3, 0x0
add-int/lit8 v15, v14, -0x3
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_16e
or-int/lit8 v1, v1, 0x1
:cond_16e
shl-int/lit8 v1, v1, 0x1
const/4 v3, 0x0
add-int/lit8 v15, v14, -0x2
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_17b
or-int/lit8 v1, v1, 0x1
:cond_17b
shl-int/lit8 v1, v1, 0x1
const/4 v3, 0x0
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_188
or-int/lit8 v1, v1, 0x1
:cond_188
shl-int/lit8 v1, v1, 0x1
const/4 v3, 0x1
add-int/lit8 v15, v14, -0x3
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_195
or-int/lit8 v1, v1, 0x1
:cond_195
shl-int/lit8 v1, v1, 0x1
const/4 v3, 0x1
add-int/lit8 v15, v14, -0x2
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_1a2
or-int/lit8 v1, v1, 0x1
:cond_1a2
shl-int/lit8 v1, v1, 0x1
const/4 v3, 0x1
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v3, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v3
if-eqz v3, :cond_1af
or-int/lit8 v1, v1, 0x1
:cond_1af
int-to-byte v1, v1
aput-byte v1, v12, v9
add-int/lit8 v6, v6, -0x2
add-int/lit8 v3, v8, 0x2
const/4 v1, 0x1
move/from16 v16, v2
move v2, v1
move/from16 v1, v16
move/from16 v17, v4
move v4, v5
move v5, v3
move/from16 v3, v17
goto/16 :goto_a1
:cond_1c4
add-int/lit8 v1, v13, -0x2
if-ne v6, v1, :cond_39c
if-nez v8, :cond_39c
and-int/lit8 v1, v14, 0x7
const/4 v7, 0x4
if-ne v1, v7, :cond_39c
if-nez v2, :cond_39c
add-int/lit8 v7, v9, 0x1
const/4 v1, 0x0
add-int/lit8 v2, v13, -0x3
const/4 v15, 0x0
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_1de
const/4 v1, 0x1
:cond_1de
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v2, v13, -0x2
const/4 v15, 0x0
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_1eb
or-int/lit8 v1, v1, 0x1
:cond_1eb
shl-int/lit8 v1, v1, 0x1
add-int/lit8 v2, v13, -0x1
const/4 v15, 0x0
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_1f8
or-int/lit8 v1, v1, 0x1
:cond_1f8
shl-int/lit8 v1, v1, 0x1
const/4 v2, 0x0
add-int/lit8 v15, v14, -0x2
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_205
or-int/lit8 v1, v1, 0x1
:cond_205
shl-int/lit8 v1, v1, 0x1
const/4 v2, 0x0
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_212
or-int/lit8 v1, v1, 0x1
:cond_212
shl-int/lit8 v1, v1, 0x1
const/4 v2, 0x1
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_21f
or-int/lit8 v1, v1, 0x1
:cond_21f
shl-int/lit8 v1, v1, 0x1
const/4 v2, 0x2
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_22c
or-int/lit8 v1, v1, 0x1
:cond_22c
shl-int/lit8 v1, v1, 0x1
const/4 v2, 0x3
add-int/lit8 v15, v14, -0x1
invoke-virtual {v10, v2, v15, v13, v14}, Lcom/google/zxing/c/a/a;->a(IIII)Z
move-result v2
if-eqz v2, :cond_239
or-int/lit8 v1, v1, 0x1
:cond_239
int-to-byte v1, v1
aput-byte v1, v12, v9
add-int/lit8 v6, v6, -0x2
add-int/lit8 v2, v8, 0x2
const/4 v1, 0x1
move/from16 v16, v3
move v3, v4
move v4, v5
move v5, v2
move/from16 v2, v16
goto/16 :goto_a1
:cond_24a
move v6, v1
move v1, v7
:goto_24c
if-ge v8, v13, :cond_399
if-ltz v6, :cond_399
iget-object v7, v10, Lcom/google/zxing/c/a/a;->b:Lcom/google/zxing/b/b;
invoke-virtual {v7, v6, v8}, Lcom/google/zxing/b/b;->a(II)Z
move-result v7
if-nez v7, :cond_399
add-int/lit8 v7, v1, 0x1
invoke-virtual {v10, v8, v6, v13, v14}, Lcom/google/zxing/c/a/a;->b(IIII)I
move-result v9
int-to-byte v9, v9
aput-byte v9, v12, v1
:goto_261
add-int/lit8 v8, v8, -0x2
add-int/lit8 v1, v6, 0x2
if-ltz v8, :cond_269
if-lt v1, v14, :cond_24a
:cond_269
add-int/lit8 v6, v8, 0x1
add-int/lit8 v1, v1, 0x3
move v8, v6
move v6, v1
move v1, v7
:goto_270
if-ltz v8, :cond_396
if-ge v6, v14, :cond_396
iget-object v7, v10, Lcom/google/zxing/c/a/a;->b:Lcom/google/zxing/b/b;
invoke-virtual {v7, v6, v8}, Lcom/google/zxing/b/b;->a(II)Z
move-result v7
if-nez v7, :cond_396
add-int/lit8 v7, v1, 0x1
invoke-virtual {v10, v8, v6, v13, v14}, Lcom/google/zxing/c/a/a;->b(IIII)I
move-result v9
int-to-byte v9, v9
aput-byte v9, v12, v1
:goto_285
add-int/lit8 v8, v8, 0x2
add-int/lit8 v1, v6, -0x2
if-ge v8, v13, :cond_28d
if-gez v1, :cond_392
:cond_28d
add-int/lit8 v6, v8, 0x3
add-int/lit8 v1, v1, 0x1
move/from16 v16, v2
move v2, v3
move v3, v4
move v4, v5
move v5, v1
move/from16 v1, v16
goto/16 :goto_a1
:cond_29b
iget-object v5, v11, Lcom/google/zxing/c/a/g;->f:Lcom/google/zxing/c/a/i;
const/4 v2, 0x0
iget-object v6, v5, Lcom/google/zxing/c/a/i;->b:[Lcom/google/zxing/c/a/h;
array-length v3, v6
const/4 v1, 0x0
:goto_2a2
if-ge v1, v3, :cond_2ac
aget-object v4, v6, v1
iget v4, v4, Lcom/google/zxing/c/a/h;->a:I
add-int/2addr v2, v4
add-int/lit8 v1, v1, 0x1
goto :goto_2a2
:cond_2ac
new-array v8, v2, [Lcom/google/zxing/c/a/b;
const/4 v2, 0x0
array-length v7, v6
const/4 v1, 0x0
move v4, v1
:goto_2b2
if-ge v4, v7, :cond_2d4
aget-object v9, v6, v4
const/4 v1, 0x0
:goto_2b7
iget v3, v9, Lcom/google/zxing/c/a/h;->a:I
if-ge v1, v3, :cond_2d0
iget v10, v9, Lcom/google/zxing/c/a/h;->b:I
iget v3, v5, Lcom/google/zxing/c/a/i;->a:I
add-int v13, v3, v10
add-int/lit8 v3, v2, 0x1
new-instance v14, Lcom/google/zxing/c/a/b;
new-array v13, v13, [B
invoke-direct {v14, v10, v13}, Lcom/google/zxing/c/a/b;-><init>(I[B)V
aput-object v14, v8, v2
add-int/lit8 v1, v1, 0x1
move v2, v3
goto :goto_2b7
:cond_2d0
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_2b2
:cond_2d4
const/4 v1, 0x0
aget-object v1, v8, v1
iget-object v1, v1, Lcom/google/zxing/c/a/b;->b:[B
array-length v1, v1
iget v3, v5, Lcom/google/zxing/c/a/i;->a:I
sub-int v3, v1, v3
add-int/lit8 v7, v3, -0x1
const/4 v4, 0x0
const/4 v1, 0x0
move v6, v1
:goto_2e3
if-ge v6, v7, :cond_2fc
const/4 v1, 0x0
move v5, v1
:goto_2e7
if-ge v5, v2, :cond_2f8
aget-object v1, v8, v5
iget-object v9, v1, Lcom/google/zxing/c/a/b;->b:[B
add-int/lit8 v1, v4, 0x1
aget-byte v4, v12, v4
aput-byte v4, v9, v6
add-int/lit8 v4, v5, 0x1
move v5, v4
move v4, v1
goto :goto_2e7
:cond_2f8
add-int/lit8 v1, v6, 0x1
move v6, v1
goto :goto_2e3
:cond_2fc
iget v1, v11, Lcom/google/zxing/c/a/g;->a:I
const/16 v5, 0x18
if-ne v1, v5, :cond_31d
const/4 v1, 0x1
move v7, v1
:goto_304
if-eqz v7, :cond_320
const/16 v1, 0x8
:goto_308
const/4 v5, 0x0
move v6, v5
:goto_30a
if-ge v6, v1, :cond_322
aget-object v5, v8, v6
iget-object v9, v5, Lcom/google/zxing/c/a/b;->b:[B
add-int/lit8 v10, v3, -0x1
add-int/lit8 v5, v4, 0x1
aget-byte v4, v12, v4
aput-byte v4, v9, v10
add-int/lit8 v4, v6, 0x1
move v6, v4
move v4, v5
goto :goto_30a
:cond_31d
const/4 v1, 0x0
move v7, v1
goto :goto_304
:cond_320
move v1, v2
goto :goto_308
:cond_322
const/4 v1, 0x0
aget-object v1, v8, v1
iget-object v1, v1, Lcom/google/zxing/c/a/b;->b:[B
array-length v9, v1
move v1, v4
:goto_329
if-ge v3, v9, :cond_34c
const/4 v4, 0x0
move v6, v4
move v4, v1
:goto_32e
if-ge v6, v2, :cond_348
if-eqz v7, :cond_346
const/4 v1, 0x7
if-le v6, v1, :cond_346
add-int/lit8 v1, v3, -0x1
:goto_337
aget-object v5, v8, v6
iget-object v10, v5, Lcom/google/zxing/c/a/b;->b:[B
add-int/lit8 v5, v4, 0x1
aget-byte v4, v12, v4
aput-byte v4, v10, v1
add-int/lit8 v1, v6, 0x1
move v4, v5
move v6, v1
goto :goto_32e
:cond_346
move v1, v3
goto :goto_337
:cond_348
add-int/lit8 v3, v3, 0x1
move v1, v4
goto :goto_329
:cond_34c
array-length v2, v12
if-eq v1, v2, :cond_355
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v1
:cond_355
array-length v3, v8
const/4 v2, 0x0
array-length v4, v8
const/4 v1, 0x0
:goto_359
if-ge v1, v4, :cond_363
aget-object v5, v8, v1
iget v5, v5, Lcom/google/zxing/c/a/b;->a:I
add-int/2addr v2, v5
add-int/lit8 v1, v1, 0x1
goto :goto_359
:cond_363
new-array v4, v2, [B
const/4 v1, 0x0
move v2, v1
:goto_367
if-ge v2, v3, :cond_385
aget-object v1, v8, v2
iget-object v5, v1, Lcom/google/zxing/c/a/b;->b:[B
iget v6, v1, Lcom/google/zxing/c/a/b;->a:I
move-object/from16 v0, p0
invoke-direct {v0, v5, v6}, Lcom/google/zxing/c/a/f;->a([BI)V
const/4 v1, 0x0
:goto_375
if-ge v1, v6, :cond_381
mul-int v7, v1, v3
add-int/2addr v7, v2
aget-byte v9, v5, v1
aput-byte v9, v4, v7
add-int/lit8 v1, v1, 0x1
goto :goto_375
:cond_381
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_367
:cond_385
invoke-static {v4}, Lcom/google/zxing/c/a/c;->a([B)Lcom/google/zxing/b/e;
move-result-object v1
return-object v1
:cond_38a
move v8, v5
move v9, v7
move v5, v4
move v4, v3
move v3, v2
move v2, v1
goto/16 :goto_24
:cond_392
move v6, v1
move v1, v7
goto/16 :goto_270
:cond_396
move v7, v1
goto/16 :goto_285
:cond_399
move v7, v1
goto/16 :goto_261
:cond_39c
move v1, v9
move/from16 v16, v6
move v6, v8
move/from16 v8, v16
goto/16 :goto_24c
.end method