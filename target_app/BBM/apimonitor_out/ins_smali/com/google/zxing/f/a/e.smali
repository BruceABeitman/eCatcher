.class public final Lcom/google/zxing/f/a/e;
.super Ljava/lang/Object;
.source "Decoder.java"
.field private final a:Lcom/google/zxing/f/a/a/a;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/f/a/a/a;
invoke-direct {v0}, Lcom/google/zxing/f/a/a/a;-><init>()V
iput-object v0, p0, Lcom/google/zxing/f/a/e;->a:Lcom/google/zxing/f/a/a/a;
return-void
.end method
.method public final a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/e;
.registers 20
new-instance v1, Lcom/google/zxing/f/a/a;
move-object/from16 v0, p1
invoke-direct {v1, v0}, Lcom/google/zxing/f/a/a;-><init>(Lcom/google/zxing/b/b;)V
iget-object v2, v1, Lcom/google/zxing/f/a/a;->a:Lcom/google/zxing/b/b;
iget v12, v2, Lcom/google/zxing/b/b;->a:I
iget-object v2, v1, Lcom/google/zxing/f/a/a;->a:Lcom/google/zxing/b/b;
iget v13, v2, Lcom/google/zxing/b/b;->b:I
const/16 v2, 0x3a1
new-array v2, v2, [I
iput-object v2, v1, Lcom/google/zxing/f/a/a;->d:[I
new-array v2, v12, [I
const/16 v3, 0x3a1
new-array v5, v3, [I
const/4 v9, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v6, 0x0
const/4 v4, 0x0
const/4 v3, 0x1
move v10, v3
move v11, v7
move v3, v6
move v6, v9
:goto_25
if-ge v10, v13, :cond_aa
const/16 v7, 0x5a
if-lt v3, v7, :cond_30
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_30
const/4 v9, 0x0
const/4 v7, 0x0
move/from16 v17, v7
move v7, v9
move/from16 v9, v17
:goto_37
if-ge v9, v12, :cond_50
iget-object v14, v1, Lcom/google/zxing/f/a/a;->a:Lcom/google/zxing/b/b;
invoke-virtual {v14, v9, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v14
iget-object v15, v1, Lcom/google/zxing/f/a/a;->a:Lcom/google/zxing/b/b;
add-int/lit8 v16, v10, -0x1
move/from16 v0, v16
invoke-virtual {v15, v9, v0}, Lcom/google/zxing/b/b;->a(II)Z
move-result v15
if-eq v14, v15, :cond_4d
add-int/lit8 v7, v7, 0x1
:cond_4d
add-int/lit8 v9, v9, 0x1
goto :goto_37
:cond_50
int-to-float v7, v7
const/high16 v9, 0x40c0
cmpg-float v7, v7, v9
if-gtz v7, :cond_87
const/4 v7, 0x0
:goto_58
if-ge v7, v12, :cond_6b
iget-object v9, v1, Lcom/google/zxing/f/a/a;->a:Lcom/google/zxing/b/b;
invoke-virtual {v9, v7, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v9
if-eqz v9, :cond_68
aget v9, v2, v7
add-int/lit8 v9, v9, 0x1
aput v9, v2, v7
:cond_68
add-int/lit8 v7, v7, 0x1
goto :goto_58
:cond_6b
add-int/lit8 v9, v11, 0x1
add-int/lit8 v7, v9, 0x1
int-to-float v7, v7
const/high16 v11, 0x4000
cmpl-float v7, v7, v11
if-ltz v7, :cond_2a4
const/4 v7, 0x1
move v8, v6
move v6, v7
move v7, v9
:goto_7a
add-int/lit8 v9, v4, 0x1
add-int/lit8 v4, v10, 0x1
move v10, v4
move v11, v7
move v4, v9
move/from16 v17, v6
move v6, v8
move/from16 v8, v17
goto :goto_25
:cond_87
if-eqz v8, :cond_a1
invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/f/a/a;->a([III[II)I
move-result v6
const/4 v4, -0x1
if-ne v6, v4, :cond_95
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_95
const/4 v4, 0x0
:goto_96
if-ge v4, v12, :cond_9e
const/4 v7, 0x0
aput v7, v2, v4
add-int/lit8 v4, v4, 0x1
goto :goto_96
:cond_9e
add-int/lit8 v3, v3, 0x1
const/4 v4, 0x0
:cond_a1
const/4 v8, 0x0
const/4 v7, 0x0
move/from16 v17, v7
move v7, v8
move v8, v6
move/from16 v6, v17
goto :goto_7a
:cond_aa
if-eqz v8, :cond_bd
const/16 v7, 0x5a
if-lt v3, v7, :cond_b5
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_b5
invoke-virtual/range {v1 .. v6}, Lcom/google/zxing/f/a/a;->a([III[II)I
move-result v6
add-int/lit8 v2, v3, 0x1
iput v2, v1, Lcom/google/zxing/f/a/a;->b:I
:cond_bd
iget-object v2, v1, Lcom/google/zxing/f/a/a;->d:[I
iget v3, v1, Lcom/google/zxing/f/a/a;->c:I
invoke-static {v2, v3}, Lcom/google/zxing/f/a/a;->a([II)[I
move-result-object v2
iput-object v2, v1, Lcom/google/zxing/f/a/a;->d:[I
invoke-static {v5, v6}, Lcom/google/zxing/f/a/a;->a([II)[I
move-result-object v8
array-length v2, v8
if-nez v2, :cond_d3
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_d3
iget v2, v1, Lcom/google/zxing/f/a/a;->e:I
const/4 v3, 0x1
add-int/lit8 v2, v2, 0x1
shl-int v7, v3, v2
iget-object v3, v1, Lcom/google/zxing/f/a/a;->d:[I
array-length v1, v3
div-int/lit8 v2, v7, 0x2
add-int/lit8 v2, v2, 0x3
if-gt v1, v2, :cond_e9
if-ltz v7, :cond_e9
const/16 v1, 0x200
if-le v7, v1, :cond_ee
:cond_e9
invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;
move-result-object v1
throw v1
:cond_ee
move-object/from16 v0, p0
iget-object v9, v0, Lcom/google/zxing/f/a/e;->a:Lcom/google/zxing/f/a/a/a;
new-instance v4, Lcom/google/zxing/f/a/a/c;
iget-object v1, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {v4, v1, v8}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
new-array v5, v7, [I
const/4 v1, 0x0
move v2, v7
:goto_fd
if-lez v2, :cond_113
iget-object v6, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
iget-object v6, v6, Lcom/google/zxing/f/a/a/b;->b:[I
aget v6, v6, v2
invoke-virtual {v4, v6}, Lcom/google/zxing/f/a/a/c;->b(I)I
move-result v6
sub-int v10, v7, v2
aput v6, v5, v10
if-eqz v6, :cond_110
const/4 v1, 0x1
:cond_110
add-int/lit8 v2, v2, -0x1
goto :goto_fd
:cond_113
if-eqz v1, :cond_275
iget-object v1, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
iget-object v1, v1, Lcom/google/zxing/f/a/a/b;->e:Lcom/google/zxing/f/a/a/c;
array-length v4, v3
const/4 v2, 0x0
:goto_11b
if-ge v2, v4, :cond_149
aget v6, v3, v2
iget-object v10, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
array-length v11, v8
add-int/lit8 v11, v11, -0x1
sub-int v6, v11, v6
iget-object v10, v10, Lcom/google/zxing/f/a/a/b;->b:[I
aget v6, v10, v6
new-instance v10, Lcom/google/zxing/f/a/a/c;
iget-object v11, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
const/4 v12, 0x2
new-array v12, v12, [I
const/4 v13, 0x0
iget-object v14, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
const/4 v15, 0x0
invoke-virtual {v14, v15, v6}, Lcom/google/zxing/f/a/a/b;->c(II)I
move-result v6
aput v6, v12, v13
const/4 v6, 0x1
const/4 v13, 0x1
aput v13, v12, v6
invoke-direct {v10, v11, v12}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
invoke-virtual {v1, v10}, Lcom/google/zxing/f/a/a/c;->c(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
move-result-object v1
add-int/lit8 v2, v2, 0x1
goto :goto_11b
:cond_149
new-instance v1, Lcom/google/zxing/f/a/a/c;
iget-object v2, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {v1, v2, v5}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
iget-object v2, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
const/4 v3, 0x1
invoke-virtual {v2, v7, v3}, Lcom/google/zxing/f/a/a/b;->a(II)Lcom/google/zxing/f/a/a/c;
move-result-object v2
iget-object v3, v2, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v3, v3
add-int/lit8 v3, v3, -0x1
iget-object v4, v1, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v4, v4
add-int/lit8 v4, v4, -0x1
if-ge v3, v4, :cond_29d
:goto_163
iget-object v3, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
iget-object v4, v3, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
iget-object v3, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
iget-object v3, v3, Lcom/google/zxing/f/a/a/b;->e:Lcom/google/zxing/f/a/a/c;
move-object v5, v4
move-object v6, v2
move-object v2, v1
move-object v4, v3
:goto_16f
iget-object v1, v6, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v1, v1
add-int/lit8 v1, v1, -0x1
div-int/lit8 v3, v7, 0x2
if-lt v1, v3, :cond_216
invoke-virtual {v6}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v1
if-eqz v1, :cond_183
invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;
move-result-object v1
throw v1
:cond_183
iget-object v1, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
iget-object v1, v1, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
iget-object v3, v6, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v3, v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v6, v3}, Lcom/google/zxing/f/a/a/c;->a(I)I
move-result v3
iget-object v10, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v10, v3}, Lcom/google/zxing/f/a/a/b;->a(I)I
move-result v10
move-object v3, v2
:goto_197
iget-object v2, v3, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v2, v2
add-int/lit8 v2, v2, -0x1
iget-object v11, v6, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v11, v11
add-int/lit8 v11, v11, -0x1
if-lt v2, v11, :cond_204
invoke-virtual {v3}, Lcom/google/zxing/f/a/a/c;->a()Z
move-result v2
if-nez v2, :cond_204
iget-object v2, v3, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v2, v2
add-int/lit8 v2, v2, -0x1
iget-object v11, v6, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v11, v11
add-int/lit8 v11, v11, -0x1
sub-int v11, v2, v11
iget-object v2, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
iget-object v12, v3, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v12, v12
add-int/lit8 v12, v12, -0x1
invoke-virtual {v3, v12}, Lcom/google/zxing/f/a/a/c;->a(I)I
move-result v12
invoke-virtual {v2, v12, v10}, Lcom/google/zxing/f/a/a/b;->d(II)I
move-result v12
iget-object v2, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v2, v11, v12}, Lcom/google/zxing/f/a/a/b;->a(II)Lcom/google/zxing/f/a/a/c;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/google/zxing/f/a/a/c;->a(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
move-result-object v2
if-gez v11, :cond_1d6
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v1
:cond_1d6
if-nez v12, :cond_1e3
iget-object v1, v6, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v1, v1, Lcom/google/zxing/f/a/a/b;->d:Lcom/google/zxing/f/a/a/c;
:goto_1dc
invoke-virtual {v3, v1}, Lcom/google/zxing/f/a/a/c;->b(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
move-result-object v1
move-object v3, v1
move-object v1, v2
goto :goto_197
:cond_1e3
iget-object v1, v6, Lcom/google/zxing/f/a/a/c;->b:[I
array-length v13, v1
add-int v1, v13, v11
new-array v11, v1, [I
const/4 v1, 0x0
:goto_1eb
if-ge v1, v13, :cond_1fc
iget-object v14, v6, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
iget-object v15, v6, Lcom/google/zxing/f/a/a/c;->b:[I
aget v15, v15, v1
invoke-virtual {v14, v15, v12}, Lcom/google/zxing/f/a/a/b;->d(II)I
move-result v14
aput v14, v11, v1
add-int/lit8 v1, v1, 0x1
goto :goto_1eb
:cond_1fc
new-instance v1, Lcom/google/zxing/f/a/a/c;
iget-object v12, v6, Lcom/google/zxing/f/a/a/c;->a:Lcom/google/zxing/f/a/a/b;
invoke-direct {v1, v12, v11}, Lcom/google/zxing/f/a/a/c;-><init>(Lcom/google/zxing/f/a/a/b;[I)V
goto :goto_1dc
:cond_204
invoke-virtual {v1, v4}, Lcom/google/zxing/f/a/a/c;->c(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
move-result-object v1
invoke-virtual {v1, v5}, Lcom/google/zxing/f/a/a/c;->b(Lcom/google/zxing/f/a/a/c;)Lcom/google/zxing/f/a/a/c;
move-result-object v1
invoke-virtual {v1}, Lcom/google/zxing/f/a/a/c;->b()Lcom/google/zxing/f/a/a/c;
move-result-object v1
move-object v5, v4
move-object v2, v6
move-object v4, v1
move-object v6, v3
goto/16 :goto_16f
:cond_216
const/4 v1, 0x0
invoke-virtual {v4, v1}, Lcom/google/zxing/f/a/a/c;->a(I)I
move-result v1
if-nez v1, :cond_222
invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;
move-result-object v1
throw v1
:cond_222
iget-object v2, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
invoke-virtual {v2, v1}, Lcom/google/zxing/f/a/a/b;->a(I)I
move-result v1
invoke-virtual {v4, v1}, Lcom/google/zxing/f/a/a/c;->c(I)Lcom/google/zxing/f/a/a/c;
move-result-object v2
invoke-virtual {v6, v1}, Lcom/google/zxing/f/a/a/c;->c(I)Lcom/google/zxing/f/a/a/c;
move-result-object v1
const/4 v3, 0x2
new-array v3, v3, [Lcom/google/zxing/f/a/a/c;
const/4 v4, 0x0
aput-object v2, v3, v4
const/4 v2, 0x1
aput-object v1, v3, v2
const/4 v1, 0x0
aget-object v1, v3, v1
const/4 v2, 0x1
aget-object v2, v3, v2
invoke-virtual {v9, v1}, Lcom/google/zxing/f/a/a/a;->a(Lcom/google/zxing/f/a/a/c;)[I
move-result-object v3
invoke-virtual {v9, v2, v1, v3}, Lcom/google/zxing/f/a/a/a;->a(Lcom/google/zxing/f/a/a/c;Lcom/google/zxing/f/a/a/c;[I)[I
move-result-object v2
const/4 v1, 0x0
:goto_248
array-length v4, v3
if-ge v1, v4, :cond_275
array-length v4, v8
add-int/lit8 v4, v4, -0x1
iget-object v5, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
aget v6, v3, v1
if-nez v6, :cond_25a
new-instance v1, Ljava/lang/IllegalArgumentException;
invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v1
:cond_25a
iget-object v5, v5, Lcom/google/zxing/f/a/a/b;->c:[I
aget v5, v5, v6
sub-int/2addr v4, v5
if-gez v4, :cond_266
invoke-static {}, Lcom/google/zxing/d;->a()Lcom/google/zxing/d;
move-result-object v1
throw v1
:cond_266
iget-object v5, v9, Lcom/google/zxing/f/a/a/a;->a:Lcom/google/zxing/f/a/a/b;
aget v6, v8, v4
aget v10, v2, v1
invoke-virtual {v5, v6, v10}, Lcom/google/zxing/f/a/a/b;->c(II)I
move-result v5
aput v5, v8, v4
add-int/lit8 v1, v1, 0x1
goto :goto_248
:cond_275
array-length v1, v8
const/4 v2, 0x4
if-ge v1, v2, :cond_27e
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_27e
const/4 v1, 0x0
aget v1, v8, v1
array-length v2, v8
if-le v1, v2, :cond_289
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_289
if-nez v1, :cond_293
array-length v1, v8
if-ge v7, v1, :cond_298
const/4 v1, 0x0
array-length v2, v8
sub-int/2addr v2, v7
aput v2, v8, v1
:cond_293
invoke-static {v8}, Lcom/google/zxing/f/a/b;->a([I)Lcom/google/zxing/b/e;
move-result-object v1
return-object v1
:cond_298
invoke-static {}, Lcom/google/zxing/f;->a()Lcom/google/zxing/f;
move-result-object v1
throw v1
:cond_29d
move-object/from16 v17, v2
move-object v2, v1
move-object/from16 v1, v17
goto/16 :goto_163
:cond_2a4
move v7, v9
move/from16 v17, v8
move v8, v6
move/from16 v6, v17
goto/16 :goto_7a
.end method