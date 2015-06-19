.class public final Lcom/google/zxing/g/b/c;
.super Ljava/lang/Object;
.source "Detector.java"
.field public final a:Lcom/google/zxing/b/b;
.field public b:Lcom/google/zxing/p;
.method public constructor <init>(Lcom/google/zxing/b/b;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
return-void
.end method
.method private a(IIII)F
.registers 12
const/4 v2, 0x0
const/high16 v1, 0x3f80
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/zxing/g/b/c;->b(IIII)F
move-result v4
sub-int v0, p3, p1
sub-int v0, p1, v0
if-gez v0, :cond_31
int-to-float v3, p1
sub-int v0, p1, v0
int-to-float v0, v0
div-float v0, v3, v0
move v3, v2
:goto_14
int-to-float v5, p2
sub-int v6, p4, p2
int-to-float v6, v6
mul-float/2addr v0, v6
sub-float v0, v5, v0
float-to-int v0, v0
if-gez v0, :cond_4a
int-to-float v5, p2
sub-int v0, p2, v0
int-to-float v0, v0
div-float v0, v5, v0
:goto_24
int-to-float v5, p1
sub-int/2addr v3, p1
int-to-float v3, v3
mul-float/2addr v0, v3
add-float/2addr v0, v5
float-to-int v0, v0
invoke-direct {p0, p1, p2, v0, v2}, Lcom/google/zxing/g/b/c;->b(IIII)F
move-result v0
add-float/2addr v0, v4
sub-float/2addr v0, v1
return v0
:cond_31
iget-object v3, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v3, v3, Lcom/google/zxing/b/b;->a:I
if-lt v0, v3, :cond_66
iget-object v3, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v3, v3, Lcom/google/zxing/b/b;->a:I
add-int/lit8 v3, v3, -0x1
sub-int/2addr v3, p1
int-to-float v3, v3
sub-int/2addr v0, p1
int-to-float v0, v0
div-float v0, v3, v0
iget-object v3, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v3, v3, Lcom/google/zxing/b/b;->a:I
add-int/lit8 v3, v3, -0x1
goto :goto_14
:cond_4a
iget-object v2, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v2, v2, Lcom/google/zxing/b/b;->b:I
if-lt v0, v2, :cond_63
iget-object v2, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v2, v2, Lcom/google/zxing/b/b;->b:I
add-int/lit8 v2, v2, -0x1
sub-int/2addr v2, p2
int-to-float v2, v2
sub-int/2addr v0, p2
int-to-float v0, v0
div-float v0, v2, v0
iget-object v2, p0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v2, v2, Lcom/google/zxing/b/b;->b:I
add-int/lit8 v2, v2, -0x1
goto :goto_24
:cond_63
move v2, v0
move v0, v1
goto :goto_24
:cond_66
move v3, v0
move v0, v1
goto :goto_14
.end method
.method private a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
.registers 9
const/high16 v5, 0x40e0
iget v0, p1, Lcom/google/zxing/o;->a:F
float-to-int v0, v0
iget v1, p1, Lcom/google/zxing/o;->b:F
float-to-int v1, v1
iget v2, p2, Lcom/google/zxing/o;->a:F
float-to-int v2, v2
iget v3, p2, Lcom/google/zxing/o;->b:F
float-to-int v3, v3
invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/zxing/g/b/c;->a(IIII)F
move-result v0
iget v1, p2, Lcom/google/zxing/o;->a:F
float-to-int v1, v1
iget v2, p2, Lcom/google/zxing/o;->b:F
float-to-int v2, v2
iget v3, p1, Lcom/google/zxing/o;->a:F
float-to-int v3, v3
iget v4, p1, Lcom/google/zxing/o;->b:F
float-to-int v4, v4
invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/zxing/g/b/c;->a(IIII)F
move-result v1
invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z
move-result v2
if-eqz v2, :cond_2b
div-float v0, v1, v5
:goto_2a
return v0
:cond_2b
invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z
move-result v2
if-eqz v2, :cond_33
div-float/2addr v0, v5
goto :goto_2a
:cond_33
add-float/2addr v0, v1
const/high16 v1, 0x4160
div-float/2addr v0, v1
goto :goto_2a
.end method
.method private b(IIII)F
.registers 24
sub-int v3, p4, p2
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
sub-int v4, p3, p1
invoke-static {v4}, Ljava/lang/Math;->abs(I)I
move-result v4
if-le v3, v4, :cond_5e
const/4 v3, 0x1
move v12, v3
:goto_10
if-eqz v12, :cond_9a
:goto_12
sub-int v3, p4, p2
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v13
sub-int v3, p3, p1
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v14
neg-int v3, v13
shr-int/lit8 v5, v3, 0x1
move/from16 v0, p2
move/from16 v1, p4
if-ge v0, v1, :cond_61
const/4 v3, 0x1
move v11, v3
:goto_29
move/from16 v0, p1
move/from16 v1, p3
if-ge v0, v1, :cond_64
const/4 v3, 0x1
:goto_30
const/4 v6, 0x0
add-int v15, p4, v11
move/from16 v8, p2
move v10, v5
move/from16 v5, p1
:goto_38
if-eq v8, v15, :cond_98
if-eqz v12, :cond_66
move v9, v5
:goto_3d
if-eqz v12, :cond_68
move v7, v8
:goto_40
const/4 v4, 0x1
if-ne v6, v4, :cond_6a
const/4 v4, 0x1
:goto_44
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-virtual {v0, v9, v7}, Lcom/google/zxing/b/b;->a(II)Z
move-result v7
if-ne v4, v7, :cond_96
const/4 v4, 0x2
if-ne v6, v4, :cond_6c
move/from16 v0, p2
move/from16 v1, p1
invoke-static {v8, v5, v0, v1}, Lcom/google/zxing/b/a/a;->a(IIII)F
move-result v3
:goto_5d
return v3
:cond_5e
const/4 v3, 0x0
move v12, v3
goto :goto_10
:cond_61
const/4 v3, -0x1
move v11, v3
goto :goto_29
:cond_64
const/4 v3, -0x1
goto :goto_30
:cond_66
move v9, v8
goto :goto_3d
:cond_68
move v7, v5
goto :goto_40
:cond_6a
const/4 v4, 0x0
goto :goto_44
:cond_6c
add-int/lit8 v7, v6, 0x1
:goto_6e
add-int v6, v10, v14
if-lez v6, :cond_93
move/from16 v0, p3
if-eq v5, v0, :cond_7f
add-int v4, v5, v3
sub-int v5, v6, v13
:goto_7a
add-int/2addr v8, v11
move v6, v7
move v10, v5
move v5, v4
goto :goto_38
:cond_7f
move v3, v7
:goto_80
const/4 v4, 0x2
if-ne v3, v4, :cond_90
add-int v3, p4, v11
move/from16 v0, p3
move/from16 v1, p2
move/from16 v2, p1
invoke-static {v3, v0, v1, v2}, Lcom/google/zxing/b/a/a;->a(IIII)F
move-result v3
goto :goto_5d
:cond_90
const/high16 v3, 0x7fc0
goto :goto_5d
:cond_93
move v4, v5
move v5, v6
goto :goto_7a
:cond_96
move v7, v6
goto :goto_6e
:cond_98
move v3, v6
goto :goto_80
:cond_9a
move/from16 v17, p4
move/from16 p4, p3
move/from16 p3, v17
move/from16 v18, p2
move/from16 p2, p1
move/from16 p1, v18
goto/16 :goto_12
.end method
.method public final a(Lcom/google/zxing/g/b/h;)Lcom/google/zxing/b/g;
.registers 26
move-object/from16 v0, p1
iget-object v0, v0, Lcom/google/zxing/g/b/h;->b:Lcom/google/zxing/g/b/d;
move-object/from16 v21, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/google/zxing/g/b/h;->c:Lcom/google/zxing/g/b/d;
move-object/from16 v22, v0
move-object/from16 v0, p1
iget-object v0, v0, Lcom/google/zxing/g/b/h;->a:Lcom/google/zxing/g/b/d;
move-object/from16 v23, v0
move-object/from16 v0, p0
move-object/from16 v1, v21
move-object/from16 v2, v22
invoke-direct {v0, v1, v2}, Lcom/google/zxing/g/b/c;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v3
move-object/from16 v0, p0
move-object/from16 v1, v21
move-object/from16 v2, v23
invoke-direct {v0, v1, v2}, Lcom/google/zxing/g/b/c;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v4
add-float/2addr v3, v4
const/high16 v4, 0x4000
div-float v9, v3, v4
const/high16 v3, 0x3f80
cmpg-float v3, v9, v3
if-gez v3, :cond_36
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v3
throw v3
:cond_36
invoke-static/range {v21 .. v22}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v3
div-float/2addr v3, v9
const/high16 v4, 0x3f00
add-float/2addr v3, v4
float-to-int v3, v3
move-object/from16 v0, v21
move-object/from16 v1, v23
invoke-static {v0, v1}, Lcom/google/zxing/o;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)F
move-result v4
div-float/2addr v4, v9
const/high16 v5, 0x3f00
add-float/2addr v4, v5
float-to-int v4, v4
add-int/2addr v3, v4
shr-int/lit8 v3, v3, 0x1
add-int/lit8 v3, v3, 0x7
and-int/lit8 v4, v3, 0x3
packed-switch v4, :pswitch_data_28c
:pswitch_56
move/from16 v19, v3
:goto_58
invoke-static/range {v19 .. v19}, Lcom/google/zxing/g/a/q;->a(I)Lcom/google/zxing/g/a/q;
move-result-object v3
invoke-virtual {v3}, Lcom/google/zxing/g/a/q;->a()I
move-result v4
add-int/lit8 v4, v4, -0x7
const/4 v11, 0x0
iget-object v3, v3, Lcom/google/zxing/g/a/q;->b:[I
array-length v3, v3
if-lez v3, :cond_287
move-object/from16 v0, v22
iget v3, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, v21
iget v5, v0, Lcom/google/zxing/o;->a:F
sub-float/2addr v3, v5
move-object/from16 v0, v23
iget v5, v0, Lcom/google/zxing/o;->a:F
add-float/2addr v3, v5
move-object/from16 v0, v22
iget v5, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, v21
iget v6, v0, Lcom/google/zxing/o;->b:F
sub-float/2addr v5, v6
move-object/from16 v0, v23
iget v6, v0, Lcom/google/zxing/o;->b:F
add-float/2addr v5, v6
const/high16 v6, 0x3f80
const/high16 v7, 0x4040
int-to-float v4, v4
div-float v4, v7, v4
sub-float v4, v6, v4
move-object/from16 v0, v21
iget v6, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, v21
iget v7, v0, Lcom/google/zxing/o;->a:F
sub-float/2addr v3, v7
mul-float/2addr v3, v4
add-float/2addr v3, v6
float-to-int v13, v3
move-object/from16 v0, v21
iget v3, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, v21
iget v6, v0, Lcom/google/zxing/o;->b:F
sub-float/2addr v5, v6
mul-float/2addr v4, v5
add-float/2addr v3, v4
float-to-int v14, v3
const/4 v3, 0x4
move v12, v3
:goto_a7
const/16 v3, 0x10
if-gt v12, v3, :cond_287
int-to-float v3, v12
mul-float/2addr v3, v9
float-to-int v3, v3
const/4 v4, 0x0
sub-int v5, v13, v3
:try_start_b1
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v4, v4, Lcom/google/zxing/b/b;->a:I
add-int/lit8 v4, v4, -0x1
add-int v6, v13, v3
invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I
move-result v7
sub-int v4, v7, v5
int-to-float v4, v4
const/high16 v6, 0x4040
mul-float/2addr v6, v9
cmpg-float v4, v4, v6
if-gez v4, :cond_e8
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v3
throw v3
:try_end_d2
.catch Lcom/google/zxing/i; {:try_start_b1 .. :try_end_d2} :catch_d2
:catch_d2
move-exception v3
shl-int/lit8 v3, v12, 0x1
move v12, v3
goto :goto_a7
:pswitch_d7
add-int/lit8 v3, v3, 0x1
move/from16 v19, v3
goto/16 :goto_58
:pswitch_dd
add-int/lit8 v3, v3, -0x1
move/from16 v19, v3
goto/16 :goto_58
:pswitch_e3
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v3
throw v3
:cond_e8
const/4 v4, 0x0
sub-int v6, v14, v3
:try_start_eb
invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I
move-result v6
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget v4, v4, Lcom/google/zxing/b/b;->b:I
add-int/lit8 v4, v4, -0x1
add-int/2addr v3, v14
invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I
move-result v8
sub-int v3, v8, v6
int-to-float v3, v3
const/high16 v4, 0x4040
mul-float/2addr v4, v9
cmpg-float v3, v3, v4
if-gez v3, :cond_10b
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v3
throw v3
:cond_10b
new-instance v3, Lcom/google/zxing/g/b/b;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
sub-int/2addr v7, v5
sub-int/2addr v8, v6
move-object/from16 v0, p0
iget-object v10, v0, Lcom/google/zxing/g/b/c;->b:Lcom/google/zxing/p;
invoke-direct/range {v3 .. v10}, Lcom/google/zxing/g/b/b;-><init>(Lcom/google/zxing/b/b;IIIIFLcom/google/zxing/p;)V
iget v6, v3, Lcom/google/zxing/g/b/b;->c:I
iget v8, v3, Lcom/google/zxing/g/b/b;->f:I
iget v4, v3, Lcom/google/zxing/g/b/b;->e:I
add-int v10, v6, v4
iget v4, v3, Lcom/google/zxing/g/b/b;->d:I
shr-int/lit8 v5, v8, 0x1
add-int v15, v4, v5
const/4 v4, 0x3
new-array v0, v4, [I
move-object/from16 v16, v0
const/4 v4, 0x0
move v7, v4
:goto_12f
if-ge v7, v8, :cond_23c
and-int/lit8 v4, v7, 0x1
if-nez v4, :cond_157
add-int/lit8 v4, v7, 0x1
shr-int/lit8 v4, v4, 0x1
:goto_139
add-int v17, v15, v4
const/4 v4, 0x0
const/4 v5, 0x0
aput v5, v16, v4
const/4 v4, 0x1
const/4 v5, 0x0
aput v5, v16, v4
const/4 v4, 0x2
const/4 v5, 0x0
aput v5, v16, v4
move v5, v6
:goto_148
if-ge v5, v10, :cond_15d
iget-object v4, v3, Lcom/google/zxing/g/b/b;->a:Lcom/google/zxing/b/b;
move/from16 v0, v17
invoke-virtual {v4, v5, v0}, Lcom/google/zxing/b/b;->a(II)Z
move-result v4
if-nez v4, :cond_15d
add-int/lit8 v5, v5, 0x1
goto :goto_148
:cond_157
add-int/lit8 v4, v7, 0x1
shr-int/lit8 v4, v4, 0x1
neg-int v4, v4
goto :goto_139
:cond_15d
const/4 v4, 0x0
:goto_15e
if-ge v5, v10, :cond_222
iget-object v0, v3, Lcom/google/zxing/g/b/b;->a:Lcom/google/zxing/b/b;
move-object/from16 v18, v0
move-object/from16 v0, v18
move/from16 v1, v17
invoke-virtual {v0, v5, v1}, Lcom/google/zxing/b/b;->a(II)Z
move-result v18
if-eqz v18, :cond_213
const/16 v18, 0x1
move/from16 v0, v18
if-eq v4, v0, :cond_21b
const/16 v18, 0x2
move/from16 v0, v18
if-ne v4, v0, :cond_20a
move-object/from16 v0, v16
invoke-virtual {v3, v0}, Lcom/google/zxing/g/b/b;->a([I)Z
move-result v4
if-eqz v4, :cond_1f4
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v3, v0, v1, v5}, Lcom/google/zxing/g/b/b;->a([III)Lcom/google/zxing/g/b/a;
:try_end_189
.catch Lcom/google/zxing/i; {:try_start_eb .. :try_end_189} :catch_d2
move-result-object v4
if-eqz v4, :cond_1f4
move-object v3, v4
:goto_18d
move-object/from16 v20, v3
:goto_18f
move/from16 v0, v19
int-to-float v3, v0
const/high16 v4, 0x4060
sub-float v5, v3, v4
if-eqz v20, :cond_254
move-object/from16 v0, v20
iget v15, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, v20
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v16, v0
const/high16 v3, 0x4040
sub-float v7, v5, v3
move v8, v7
:goto_1a7
const/high16 v3, 0x4060
const/high16 v4, 0x4060
const/high16 v6, 0x4060
const/high16 v9, 0x4060
move-object/from16 v0, v21
iget v11, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, v21
iget v12, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, v22
iget v13, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, v22
iget v14, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, v23
iget v0, v0, Lcom/google/zxing/o;->a:F
move/from16 v17, v0
move-object/from16 v0, v23
iget v0, v0, Lcom/google/zxing/o;->b:F
move/from16 v18, v0
move v10, v5
invoke-static/range {v3 .. v18}, Lcom/google/zxing/b/k;->a(FFFFFFFFFFFFFFFF)Lcom/google/zxing/b/k;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
invoke-static {}, Lcom/google/zxing/b/i;->a()Lcom/google/zxing/b/i;
move-result-object v5
move/from16 v0, v19
move/from16 v1, v19
invoke-virtual {v5, v4, v0, v1, v3}, Lcom/google/zxing/b/i;->a(Lcom/google/zxing/b/b;IILcom/google/zxing/b/k;)Lcom/google/zxing/b/b;
move-result-object v4
if-nez v20, :cond_276
const/4 v3, 0x3
new-array v3, v3, [Lcom/google/zxing/o;
const/4 v5, 0x0
aput-object v23, v3, v5
const/4 v5, 0x1
aput-object v21, v3, v5
const/4 v5, 0x2
aput-object v22, v3, v5
:goto_1ee
new-instance v5, Lcom/google/zxing/b/g;
invoke-direct {v5, v4, v3}, Lcom/google/zxing/b/g;-><init>(Lcom/google/zxing/b/b;[Lcom/google/zxing/o;)V
return-object v5
:cond_1f4
const/4 v4, 0x0
const/16 v18, 0x2
:try_start_1f7
aget v18, v16, v18
aput v18, v16, v4
const/4 v4, 0x1
const/16 v18, 0x1
aput v18, v16, v4
const/4 v4, 0x2
const/16 v18, 0x0
aput v18, v16, v4
const/4 v4, 0x1
:goto_206
add-int/lit8 v5, v5, 0x1
goto/16 :goto_15e
:cond_20a
add-int/lit8 v4, v4, 0x1
aget v18, v16, v4
add-int/lit8 v18, v18, 0x1
aput v18, v16, v4
goto :goto_206
:cond_213
const/16 v18, 0x1
move/from16 v0, v18
if-ne v4, v0, :cond_21b
add-int/lit8 v4, v4, 0x1
:cond_21b
aget v18, v16, v4
add-int/lit8 v18, v18, 0x1
aput v18, v16, v4
goto :goto_206
:cond_222
move-object/from16 v0, v16
invoke-virtual {v3, v0}, Lcom/google/zxing/g/b/b;->a([I)Z
move-result v4
if-eqz v4, :cond_237
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v3, v0, v1, v10}, Lcom/google/zxing/g/b/b;->a([III)Lcom/google/zxing/g/b/a;
move-result-object v4
if-eqz v4, :cond_237
move-object v3, v4
goto/16 :goto_18d
:cond_237
add-int/lit8 v4, v7, 0x1
move v7, v4
goto/16 :goto_12f
:cond_23c
iget-object v4, v3, Lcom/google/zxing/g/b/b;->b:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->isEmpty()Z
move-result v4
if-nez v4, :cond_24f
iget-object v3, v3, Lcom/google/zxing/g/b/b;->b:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/google/zxing/g/b/a;
goto/16 :goto_18d
:cond_24f
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v3
throw v3
:cond_254
:try_end_254
.catch Lcom/google/zxing/i; {:try_start_1f7 .. :try_end_254} :catch_d2
move-object/from16 v0, v22
iget v3, v0, Lcom/google/zxing/o;->a:F
move-object/from16 v0, v21
iget v4, v0, Lcom/google/zxing/o;->a:F
sub-float/2addr v3, v4
move-object/from16 v0, v23
iget v4, v0, Lcom/google/zxing/o;->a:F
add-float v15, v3, v4
move-object/from16 v0, v22
iget v3, v0, Lcom/google/zxing/o;->b:F
move-object/from16 v0, v21
iget v4, v0, Lcom/google/zxing/o;->b:F
sub-float/2addr v3, v4
move-object/from16 v0, v23
iget v4, v0, Lcom/google/zxing/o;->b:F
add-float v16, v3, v4
move v7, v5
move v8, v5
goto/16 :goto_1a7
:cond_276
const/4 v3, 0x4
new-array v3, v3, [Lcom/google/zxing/o;
const/4 v5, 0x0
aput-object v23, v3, v5
const/4 v5, 0x1
aput-object v21, v3, v5
const/4 v5, 0x2
aput-object v22, v3, v5
const/4 v5, 0x3
aput-object v20, v3, v5
goto/16 :goto_1ee
:cond_287
move-object/from16 v20, v11
goto/16 :goto_18f
nop
:pswitch_data_28c
.packed-switch 0x0
:pswitch_d7
:pswitch_56
:pswitch_dd
:pswitch_e3
.end packed-switch
.end method