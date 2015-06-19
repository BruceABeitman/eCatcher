.class public final Lcom/google/zxing/g/a;
.super Ljava/lang/Object;
.source "QRCodeReader.java"
.implements Lcom/google/zxing/k;
.field private static final a:[Lcom/google/zxing/o;
.field private final b:Lcom/google/zxing/g/a/m;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/zxing/o;
sput-object v0, Lcom/google/zxing/g/a;->a:[Lcom/google/zxing/o;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/g/a/m;
invoke-direct {v0}, Lcom/google/zxing/g/a/m;-><init>()V
iput-object v0, p0, Lcom/google/zxing/g/a;->b:Lcom/google/zxing/g/a/m;
return-void
.end method
.method public final a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 19
if-eqz p2, :cond_ef
sget-object v1, Lcom/google/zxing/e;->b:Lcom/google/zxing/e;
move-object/from16 v0, p2
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_ef
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v6
invoke-virtual {v6}, Lcom/google/zxing/b/b;->a()[I
move-result-object v7
invoke-virtual {v6}, Lcom/google/zxing/b/b;->b()[I
move-result-object v8
if-eqz v7, :cond_1c
if-nez v8, :cond_21
:cond_1c
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_21
iget v9, v6, Lcom/google/zxing/b/b;->b:I
iget v10, v6, Lcom/google/zxing/b/b;->a:I
const/4 v1, 0x0
aget v4, v7, v1
const/4 v1, 0x1
aget v2, v7, v1
const/4 v3, 0x1
const/4 v1, 0x0
move v5, v4
move v4, v2
:goto_2f
if-ge v5, v10, :cond_4d
if-ge v4, v9, :cond_4d
invoke-virtual {v6, v5, v4}, Lcom/google/zxing/b/b;->a(II)Z
move-result v2
if-eq v3, v2, :cond_36e
add-int/lit8 v2, v1, 0x1
const/4 v1, 0x5
if-eq v2, v1, :cond_4d
if-nez v3, :cond_4b
const/4 v1, 0x1
:goto_41
move v15, v2
move v2, v1
move v1, v15
:goto_44
add-int/lit8 v5, v5, 0x1
add-int/lit8 v3, v4, 0x1
move v4, v3
move v3, v2
goto :goto_2f
:cond_4b
const/4 v1, 0x0
goto :goto_41
:cond_4d
if-eq v5, v10, :cond_51
if-ne v4, v9, :cond_56
:cond_51
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_56
const/4 v1, 0x0
aget v1, v7, v1
sub-int v1, v5, v1
int-to-float v1, v1
const/high16 v2, 0x40e0
div-float v3, v1, v2
const/4 v1, 0x1
aget v2, v7, v1
const/4 v1, 0x1
aget v4, v8, v1
const/4 v1, 0x0
aget v5, v7, v1
const/4 v1, 0x0
aget v1, v8, v1
sub-int v7, v4, v2
sub-int v8, v1, v5
if-eq v7, v8, :cond_75
sub-int v1, v4, v2
add-int/2addr v1, v5
:cond_75
sub-int/2addr v1, v5
add-int/lit8 v1, v1, 0x1
int-to-float v1, v1
div-float/2addr v1, v3
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v7
sub-int v1, v4, v2
add-int/lit8 v1, v1, 0x1
int-to-float v1, v1
div-float/2addr v1, v3
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v4
if-lez v7, :cond_8c
if-gtz v4, :cond_91
:cond_8c
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_91
if-eq v4, v7, :cond_98
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_98
const/high16 v1, 0x4000
div-float v1, v3, v1
float-to-int v1, v1
add-int v8, v2, v1
add-int/2addr v5, v1
new-instance v9, Lcom/google/zxing/b/b;
invoke-direct {v9, v7, v4}, Lcom/google/zxing/b/b;-><init>(II)V
const/4 v1, 0x0
move v2, v1
:goto_a7
if-ge v2, v4, :cond_c5
int-to-float v1, v2
mul-float/2addr v1, v3
float-to-int v1, v1
add-int v10, v8, v1
const/4 v1, 0x0
:goto_af
if-ge v1, v7, :cond_c1
int-to-float v11, v1
mul-float/2addr v11, v3
float-to-int v11, v11
add-int/2addr v11, v5
invoke-virtual {v6, v11, v10}, Lcom/google/zxing/b/b;->a(II)Z
move-result v11
if-eqz v11, :cond_be
invoke-virtual {v9, v1, v2}, Lcom/google/zxing/b/b;->b(II)V
:cond_be
add-int/lit8 v1, v1, 0x1
goto :goto_af
:cond_c1
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_a7
:cond_c5
move-object/from16 v0, p0
iget-object v1, v0, Lcom/google/zxing/g/a;->b:Lcom/google/zxing/g/a/m;
move-object/from16 v0, p2
invoke-virtual {v1, v9, v0}, Lcom/google/zxing/g/a/m;->a(Lcom/google/zxing/b/b;Ljava/util/Map;)Lcom/google/zxing/b/e;
move-result-object v2
sget-object v1, Lcom/google/zxing/g/a;->a:[Lcom/google/zxing/o;
:goto_d1
new-instance v3, Lcom/google/zxing/m;
iget-object v4, v2, Lcom/google/zxing/b/e;->b:Ljava/lang/String;
iget-object v5, v2, Lcom/google/zxing/b/e;->a:[B
sget-object v6, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;
invoke-direct {v3, v4, v5, v1, v6}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
iget-object v1, v2, Lcom/google/zxing/b/e;->c:Ljava/util/List;
if-eqz v1, :cond_e5
sget-object v4, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;
invoke-virtual {v3, v4, v1}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V
:cond_e5
iget-object v1, v2, Lcom/google/zxing/b/e;->d:Ljava/lang/String;
if-eqz v1, :cond_ee
sget-object v2, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;
invoke-virtual {v3, v2, v1}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V
:cond_ee
return-object v3
:cond_ef
new-instance v7, Lcom/google/zxing/g/b/c;
invoke-virtual/range {p1 .. p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v1
invoke-direct {v7, v1}, Lcom/google/zxing/g/b/c;-><init>(Lcom/google/zxing/b/b;)V
if-nez p2, :cond_160
const/4 v1, 0x0
:goto_fb
iput-object v1, v7, Lcom/google/zxing/g/b/c;->b:Lcom/google/zxing/p;
new-instance v8, Lcom/google/zxing/g/b/e;
iget-object v1, v7, Lcom/google/zxing/g/b/c;->a:Lcom/google/zxing/b/b;
iget-object v2, v7, Lcom/google/zxing/g/b/c;->b:Lcom/google/zxing/p;
invoke-direct {v8, v1, v2}, Lcom/google/zxing/g/b/e;-><init>(Lcom/google/zxing/b/b;Lcom/google/zxing/p;)V
if-eqz p2, :cond_16b
sget-object v1, Lcom/google/zxing/e;->d:Lcom/google/zxing/e;
move-object/from16 v0, p2
invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_16b
const/4 v1, 0x1
:goto_113
iget-object v2, v8, Lcom/google/zxing/g/b/e;->a:Lcom/google/zxing/b/b;
iget v9, v2, Lcom/google/zxing/b/b;->b:I
iget-object v2, v8, Lcom/google/zxing/g/b/e;->a:Lcom/google/zxing/b/b;
iget v10, v2, Lcom/google/zxing/b/b;->a:I
mul-int/lit8 v2, v9, 0x3
div-int/lit16 v2, v2, 0xe4
const/4 v3, 0x3
if-lt v2, v3, :cond_124
if-eqz v1, :cond_36b
:cond_124
const/4 v1, 0x3
:goto_125
const/4 v5, 0x0
const/4 v2, 0x5
new-array v11, v2, [I
add-int/lit8 v4, v1, -0x1
move v2, v1
:goto_12c
if-ge v4, v9, :cond_25e
if-nez v5, :cond_25e
const/4 v1, 0x0
const/4 v3, 0x0
aput v3, v11, v1
const/4 v1, 0x1
const/4 v3, 0x0
aput v3, v11, v1
const/4 v1, 0x2
const/4 v3, 0x0
aput v3, v11, v1
const/4 v1, 0x3
const/4 v3, 0x0
aput v3, v11, v1
const/4 v1, 0x4
const/4 v3, 0x0
aput v3, v11, v1
const/4 v1, 0x0
const/4 v3, 0x0
:goto_146
if-ge v3, v10, :cond_244
iget-object v6, v8, Lcom/google/zxing/g/b/e;->a:Lcom/google/zxing/b/b;
invoke-virtual {v6, v3, v4}, Lcom/google/zxing/b/b;->a(II)Z
move-result v6
if-eqz v6, :cond_16d
and-int/lit8 v6, v1, 0x1
const/4 v12, 0x1
if-ne v6, v12, :cond_157
add-int/lit8 v1, v1, 0x1
:cond_157
aget v6, v11, v1
add-int/lit8 v6, v6, 0x1
aput v6, v11, v1
:goto_15d
add-int/lit8 v3, v3, 0x1
goto :goto_146
:cond_160
sget-object v1, Lcom/google/zxing/e;->h:Lcom/google/zxing/e;
move-object/from16 v0, p2
invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/p;
goto :goto_fb
:cond_16b
const/4 v1, 0x0
goto :goto_113
:cond_16d
and-int/lit8 v6, v1, 0x1
if-nez v6, :cond_23c
const/4 v6, 0x4
if-ne v1, v6, :cond_232
invoke-static {v11}, Lcom/google/zxing/g/b/e;->a([I)Z
move-result v1
if-eqz v1, :cond_215
invoke-virtual {v8, v11, v4, v3}, Lcom/google/zxing/g/b/e;->a([III)Z
move-result v1
if-eqz v1, :cond_1f8
const/4 v6, 0x2
iget-boolean v1, v8, Lcom/google/zxing/g/b/e;->c:Z
if-eqz v1, :cond_1a2
invoke-virtual {v8}, Lcom/google/zxing/g/b/e;->a()Z
move-result v1
:goto_189
const/4 v2, 0x0
const/4 v5, 0x0
const/4 v12, 0x0
aput v12, v11, v5
const/4 v5, 0x1
const/4 v12, 0x0
aput v12, v11, v5
const/4 v5, 0x2
const/4 v12, 0x0
aput v12, v11, v5
const/4 v5, 0x3
const/4 v12, 0x0
aput v12, v11, v5
const/4 v5, 0x4
const/4 v12, 0x0
aput v12, v11, v5
move v5, v1
move v1, v2
move v2, v6
goto :goto_15d
:cond_1a2
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const/4 v2, 0x1
if-le v1, v2, :cond_1f6
const/4 v1, 0x0
iget-object v2, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v12
move-object v2, v1
:goto_1b3
:cond_1b3
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1f6
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
iget v13, v1, Lcom/google/zxing/g/b/d;->d:I
const/4 v14, 0x2
if-lt v13, v14, :cond_1b3
if-nez v2, :cond_1c8
move-object v2, v1
goto :goto_1b3
:cond_1c8
const/4 v12, 0x1
iput-boolean v12, v8, Lcom/google/zxing/g/b/e;->c:Z
iget v12, v2, Lcom/google/zxing/o;->a:F
iget v13, v1, Lcom/google/zxing/o;->a:F
sub-float/2addr v12, v13
invoke-static {v12}, Ljava/lang/Math;->abs(F)F
move-result v12
iget v2, v2, Lcom/google/zxing/o;->b:F
iget v1, v1, Lcom/google/zxing/o;->b:F
sub-float v1, v2, v1
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
sub-float v1, v12, v1
float-to-int v1, v1
div-int/lit8 v1, v1, 0x2
:goto_1e3
const/4 v2, 0x2
aget v2, v11, v2
if-le v1, v2, :cond_367
const/4 v2, 0x2
aget v2, v11, v2
sub-int/2addr v1, v2
add-int/lit8 v1, v1, -0x2
add-int v2, v4, v1
add-int/lit8 v1, v10, -0x1
:goto_1f2
move v3, v1
move v4, v2
move v1, v5
goto :goto_189
:cond_1f6
const/4 v1, 0x0
goto :goto_1e3
:cond_1f8
const/4 v1, 0x0
const/4 v6, 0x2
aget v6, v11, v6
aput v6, v11, v1
const/4 v1, 0x1
const/4 v6, 0x3
aget v6, v11, v6
aput v6, v11, v1
const/4 v1, 0x2
const/4 v6, 0x4
aget v6, v11, v6
aput v6, v11, v1
const/4 v1, 0x3
const/4 v6, 0x1
aput v6, v11, v1
const/4 v1, 0x4
const/4 v6, 0x0
aput v6, v11, v1
const/4 v1, 0x3
goto/16 :goto_15d
:cond_215
const/4 v1, 0x0
const/4 v6, 0x2
aget v6, v11, v6
aput v6, v11, v1
const/4 v1, 0x1
const/4 v6, 0x3
aget v6, v11, v6
aput v6, v11, v1
const/4 v1, 0x2
const/4 v6, 0x4
aget v6, v11, v6
aput v6, v11, v1
const/4 v1, 0x3
const/4 v6, 0x1
aput v6, v11, v1
const/4 v1, 0x4
const/4 v6, 0x0
aput v6, v11, v1
const/4 v1, 0x3
goto/16 :goto_15d
:cond_232
add-int/lit8 v1, v1, 0x1
aget v6, v11, v1
add-int/lit8 v6, v6, 0x1
aput v6, v11, v1
goto/16 :goto_15d
:cond_23c
aget v6, v11, v1
add-int/lit8 v6, v6, 0x1
aput v6, v11, v1
goto/16 :goto_15d
:cond_244
invoke-static {v11}, Lcom/google/zxing/g/b/e;->a([I)Z
move-result v1
if-eqz v1, :cond_25b
invoke-virtual {v8, v11, v4, v10}, Lcom/google/zxing/g/b/e;->a([III)Z
move-result v1
if-eqz v1, :cond_25b
const/4 v1, 0x0
aget v2, v11, v1
iget-boolean v1, v8, Lcom/google/zxing/g/b/e;->c:Z
if-eqz v1, :cond_25b
invoke-virtual {v8}, Lcom/google/zxing/g/b/e;->a()Z
move-result v5
:cond_25b
add-int/2addr v4, v2
goto/16 :goto_12c
:cond_25e
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v4
const/4 v1, 0x3
if-ge v4, v1, :cond_26c
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v1
throw v1
:cond_26c
const/4 v1, 0x3
if-le v4, v1, :cond_2de
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v3, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
move v3, v2
move v2, v1
:goto_279
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_28c
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
iget v1, v1, Lcom/google/zxing/g/b/d;->c:F
add-float/2addr v3, v1
mul-float/2addr v1, v1
add-float/2addr v1, v2
move v2, v1
goto :goto_279
:cond_28c
int-to-float v1, v4
div-float/2addr v3, v1
int-to-float v1, v4
div-float v1, v2, v1
mul-float v2, v3, v3
sub-float/2addr v1, v2
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v1
double-to-float v1, v1
iget-object v2, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
new-instance v4, Lcom/google/zxing/g/b/g;
const/4 v5, 0x0
invoke-direct {v4, v3, v5}, Lcom/google/zxing/g/b/g;-><init>(FB)V
invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const v2, 0x3e4ccccd
mul-float/2addr v2, v3
invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F
move-result v4
const/4 v1, 0x0
move v2, v1
:goto_2af
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-ge v2, v1, :cond_2de
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const/4 v5, 0x3
if-le v1, v5, :cond_2de
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
iget v1, v1, Lcom/google/zxing/g/b/d;->c:F
sub-float/2addr v1, v3
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
cmpl-float v1, v1, v4
if-lez v1, :cond_2da
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
add-int/lit8 v2, v2, -0x1
:cond_2da
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_2af
:cond_2de
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const/4 v2, 0x3
if-le v1, v2, :cond_324
const/4 v1, 0x0
iget-object v2, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move v2, v1
:goto_2ef
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_300
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
iget v1, v1, Lcom/google/zxing/g/b/d;->c:F
add-float/2addr v1, v2
move v2, v1
goto :goto_2ef
:cond_300
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
int-to-float v1, v1
div-float v1, v2, v1
iget-object v2, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
new-instance v3, Lcom/google/zxing/g/b/f;
const/4 v4, 0x0
invoke-direct {v3, v1, v4}, Lcom/google/zxing/g/b/f;-><init>(FB)V
invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
const/4 v2, 0x3
iget-object v3, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
invoke-interface {v1, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->clear()V
:cond_324
const/4 v1, 0x3
new-array v2, v1, [Lcom/google/zxing/g/b/d;
const/4 v3, 0x0
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
const/4 v4, 0x0
invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
aput-object v1, v2, v3
const/4 v3, 0x1
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
const/4 v4, 0x1
invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
aput-object v1, v2, v3
const/4 v3, 0x2
iget-object v1, v8, Lcom/google/zxing/g/b/e;->b:Ljava/util/List;
const/4 v4, 0x2
invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/g/b/d;
aput-object v1, v2, v3
invoke-static {v2}, Lcom/google/zxing/o;->a([Lcom/google/zxing/o;)V
new-instance v1, Lcom/google/zxing/g/b/h;
invoke-direct {v1, v2}, Lcom/google/zxing/g/b/h;-><init>([Lcom/google/zxing/g/b/d;)V
invoke-virtual {v7, v1}, Lcom/google/zxing/g/b/c;->a(Lcom/google/zxing/g/b/h;)Lcom/google/zxing/b/g;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/zxing/g/a;->b:Lcom/google/zxing/g/a/m;
iget-object v3, v1, Lcom/google/zxing/b/g;->d:Lcom/google/zxing/b/b;
move-object/from16 v0, p2
invoke-virtual {v2, v3, v0}, Lcom/google/zxing/g/a/m;->a(Lcom/google/zxing/b/b;Ljava/util/Map;)Lcom/google/zxing/b/e;
move-result-object v2
iget-object v1, v1, Lcom/google/zxing/b/g;->e:[Lcom/google/zxing/o;
goto/16 :goto_d1
:cond_367
move v1, v3
move v2, v4
goto/16 :goto_1f2
:cond_36b
move v1, v2
goto/16 :goto_125
:cond_36e
move v2, v3
goto/16 :goto_44
.end method
.method public final a()V
.registers 1
return-void
.end method