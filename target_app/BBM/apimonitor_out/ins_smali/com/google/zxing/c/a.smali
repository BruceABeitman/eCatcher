.class public final Lcom/google/zxing/c/a;
.super Ljava/lang/Object;
.source "DataMatrixReader.java"
.implements Lcom/google/zxing/k;
.field private static final a:[Lcom/google/zxing/o;
.field private final b:Lcom/google/zxing/c/a/f;
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
new-array v0, v0, [Lcom/google/zxing/o;
sput-object v0, Lcom/google/zxing/c/a;->a:[Lcom/google/zxing/o;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/zxing/c/a/f;
invoke-direct {v0}, Lcom/google/zxing/c/a/f;-><init>()V
iput-object v0, p0, Lcom/google/zxing/c/a;->b:Lcom/google/zxing/c/a/f;
return-void
.end method
.method public final a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 16
if-eqz p2, :cond_b0
sget-object v0, Lcom/google/zxing/e;->b:Lcom/google/zxing/e;
invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b0
invoke-virtual {p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v2
invoke-virtual {v2}, Lcom/google/zxing/b/b;->a()[I
move-result-object v1
invoke-virtual {v2}, Lcom/google/zxing/b/b;->b()[I
move-result-object v3
if-eqz v1, :cond_1a
if-nez v3, :cond_1f
:cond_1a
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_1f
iget v4, v2, Lcom/google/zxing/b/b;->a:I
const/4 v0, 0x0
aget v0, v1, v0
const/4 v5, 0x1
aget v5, v1, v5
:goto_27
if-ge v0, v4, :cond_32
invoke-virtual {v2, v0, v5}, Lcom/google/zxing/b/b;->a(II)Z
move-result v6
if-eqz v6, :cond_32
add-int/lit8 v0, v0, 0x1
goto :goto_27
:cond_32
if-ne v0, v4, :cond_39
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_39
const/4 v4, 0x0
aget v4, v1, v4
sub-int v4, v0, v4
if-nez v4, :cond_45
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_45
const/4 v0, 0x1
aget v0, v1, v0
const/4 v5, 0x1
aget v5, v3, v5
const/4 v6, 0x0
aget v1, v1, v6
const/4 v6, 0x0
aget v3, v3, v6
sub-int/2addr v3, v1
add-int/lit8 v3, v3, 0x1
div-int/2addr v3, v4
sub-int/2addr v5, v0
add-int/lit8 v5, v5, 0x1
div-int/2addr v5, v4
if-lez v3, :cond_5d
if-gtz v5, :cond_62
:cond_5d
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_62
shr-int/lit8 v6, v4, 0x1
add-int v7, v0, v6
add-int/2addr v6, v1
new-instance v8, Lcom/google/zxing/b/b;
invoke-direct {v8, v3, v5}, Lcom/google/zxing/b/b;-><init>(II)V
const/4 v0, 0x0
move v1, v0
:goto_6e
if-ge v1, v5, :cond_8a
mul-int v0, v1, v4
add-int v9, v7, v0
const/4 v0, 0x0
:goto_75
if-ge v0, v3, :cond_86
mul-int v10, v0, v4
add-int/2addr v10, v6
invoke-virtual {v2, v10, v9}, Lcom/google/zxing/b/b;->a(II)Z
move-result v10
if-eqz v10, :cond_83
invoke-virtual {v8, v0, v1}, Lcom/google/zxing/b/b;->b(II)V
:cond_83
add-int/lit8 v0, v0, 0x1
goto :goto_75
:cond_86
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_6e
:cond_8a
iget-object v0, p0, Lcom/google/zxing/c/a;->b:Lcom/google/zxing/c/a/f;
invoke-virtual {v0, v8}, Lcom/google/zxing/c/a/f;->a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/e;
move-result-object v1
sget-object v0, Lcom/google/zxing/c/a;->a:[Lcom/google/zxing/o;
:goto_92
new-instance v2, Lcom/google/zxing/m;
iget-object v3, v1, Lcom/google/zxing/b/e;->b:Ljava/lang/String;
iget-object v4, v1, Lcom/google/zxing/b/e;->a:[B
sget-object v5, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;
invoke-direct {v2, v3, v4, v0, v5}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
iget-object v0, v1, Lcom/google/zxing/b/e;->c:Ljava/util/List;
if-eqz v0, :cond_a6
sget-object v3, Lcom/google/zxing/n;->c:Lcom/google/zxing/n;
invoke-virtual {v2, v3, v0}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V
:cond_a6
iget-object v0, v1, Lcom/google/zxing/b/e;->d:Ljava/lang/String;
if-eqz v0, :cond_af
sget-object v1, Lcom/google/zxing/n;->d:Lcom/google/zxing/n;
invoke-virtual {v2, v1, v0}, Lcom/google/zxing/m;->a(Lcom/google/zxing/n;Ljava/lang/Object;)V
:cond_af
return-object v2
:cond_b0
new-instance v9, Lcom/google/zxing/c/b/a;
invoke-virtual {p1}, Lcom/google/zxing/c;->a()Lcom/google/zxing/b/b;
move-result-object v0
invoke-direct {v9, v0}, Lcom/google/zxing/c/b/a;-><init>(Lcom/google/zxing/b/b;)V
iget-object v0, v9, Lcom/google/zxing/c/b/a;->b:Lcom/google/zxing/b/a/b;
invoke-virtual {v0}, Lcom/google/zxing/b/a/b;->a()[Lcom/google/zxing/o;
move-result-object v0
const/4 v1, 0x0
aget-object v5, v0, v1
const/4 v1, 0x1
aget-object v6, v0, v1
const/4 v1, 0x2
aget-object v7, v0, v1
const/4 v1, 0x3
aget-object v8, v0, v1
new-instance v1, Ljava/util/ArrayList;
const/4 v0, 0x4
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v9, v5, v6}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v9, v5, v7}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v9, v6, v8}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v9, v7, v8}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/c/b/c;
const/4 v2, 0x0
invoke-direct {v0, v2}, Lcom/google/zxing/c/b/c;-><init>(B)V
invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
const/4 v0, 0x0
invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/zxing/c/b/b;
const/4 v2, 0x1
invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/c/b/b;
new-instance v10, Ljava/util/HashMap;
invoke-direct {v10}, Ljava/util/HashMap;-><init>()V
iget-object v2, v0, Lcom/google/zxing/c/b/b;->a:Lcom/google/zxing/o;
invoke-static {v10, v2}, Lcom/google/zxing/c/b/a;->a(Ljava/util/Map;Lcom/google/zxing/o;)V
iget-object v0, v0, Lcom/google/zxing/c/b/b;->b:Lcom/google/zxing/o;
invoke-static {v10, v0}, Lcom/google/zxing/c/b/a;->a(Ljava/util/Map;Lcom/google/zxing/o;)V
iget-object v0, v1, Lcom/google/zxing/c/b/b;->a:Lcom/google/zxing/o;
invoke-static {v10, v0}, Lcom/google/zxing/c/b/a;->a(Ljava/util/Map;Lcom/google/zxing/o;)V
iget-object v0, v1, Lcom/google/zxing/c/b/b;->b:Lcom/google/zxing/o;
invoke-static {v10, v0}, Lcom/google/zxing/c/b/a;->a(Ljava/util/Map;Lcom/google/zxing/o;)V
const/4 v2, 0x0
const/4 v0, 0x0
const/4 v1, 0x0
invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v11
move-object v3, v0
move-object v4, v2
move-object v2, v1
:goto_12b
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_152
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/zxing/o;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v12, 0x2
if-ne v0, v12, :cond_14c
move-object v3, v1
goto :goto_12b
:cond_14c
if-nez v4, :cond_150
move-object v4, v1
goto :goto_12b
:cond_150
move-object v2, v1
goto :goto_12b
:cond_152
if-eqz v4, :cond_158
if-eqz v3, :cond_158
if-nez v2, :cond_15d
:cond_158
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
:cond_15d
const/4 v0, 0x3
new-array v0, v0, [Lcom/google/zxing/o;
const/4 v1, 0x0
aput-object v4, v0, v1
const/4 v1, 0x1
aput-object v3, v0, v1
const/4 v1, 0x2
aput-object v2, v0, v1
invoke-static {v0}, Lcom/google/zxing/o;->a([Lcom/google/zxing/o;)V
const/4 v1, 0x0
aget-object v3, v0, v1
const/4 v1, 0x1
aget-object v2, v0, v1
const/4 v1, 0x2
aget-object v1, v0, v1
invoke-interface {v10, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_244
move-object v0, v5
:goto_17c
invoke-virtual {v9, v1, v0}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v4
iget v5, v4, Lcom/google/zxing/c/b/b;->c:I
invoke-virtual {v9, v3, v0}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v4
iget v4, v4, Lcom/google/zxing/c/b/b;->c:I
and-int/lit8 v6, v5, 0x1
const/4 v7, 0x1
if-ne v6, v7, :cond_18f
add-int/lit8 v5, v5, 0x1
:cond_18f
add-int/lit8 v6, v5, 0x2
and-int/lit8 v5, v4, 0x1
const/4 v7, 0x1
if-ne v5, v7, :cond_198
add-int/lit8 v4, v4, 0x1
:cond_198
add-int/lit8 v7, v4, 0x2
mul-int/lit8 v4, v6, 0x4
mul-int/lit8 v5, v7, 0x7
if-ge v4, v5, :cond_1a6
mul-int/lit8 v4, v7, 0x4
mul-int/lit8 v5, v6, 0x7
if-lt v4, v5, :cond_294
:cond_1a6
invoke-static {v2, v3}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v4
int-to-float v4, v4
int-to-float v5, v6
div-float v5, v4, v5
invoke-static {v1, v0}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v4
iget v8, v0, Lcom/google/zxing/o;->a:F
iget v10, v1, Lcom/google/zxing/o;->a:F
sub-float/2addr v8, v10
int-to-float v10, v4
div-float/2addr v8, v10
iget v10, v0, Lcom/google/zxing/o;->b:F
iget v11, v1, Lcom/google/zxing/o;->b:F
sub-float/2addr v10, v11
int-to-float v4, v4
div-float/2addr v10, v4
new-instance v4, Lcom/google/zxing/o;
iget v11, v0, Lcom/google/zxing/o;->a:F
mul-float/2addr v8, v5
add-float/2addr v8, v11
iget v11, v0, Lcom/google/zxing/o;->b:F
mul-float/2addr v5, v10
add-float/2addr v5, v11
invoke-direct {v4, v8, v5}, Lcom/google/zxing/o;-><init>(FF)V
invoke-static {v2, v1}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v5
int-to-float v5, v5
int-to-float v8, v7
div-float v8, v5, v8
invoke-static {v3, v0}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v5
iget v10, v0, Lcom/google/zxing/o;->a:F
iget v11, v3, Lcom/google/zxing/o;->a:F
sub-float/2addr v10, v11
int-to-float v11, v5
div-float/2addr v10, v11
iget v11, v0, Lcom/google/zxing/o;->b:F
iget v12, v3, Lcom/google/zxing/o;->b:F
sub-float/2addr v11, v12
int-to-float v5, v5
div-float/2addr v11, v5
new-instance v5, Lcom/google/zxing/o;
iget v12, v0, Lcom/google/zxing/o;->a:F
mul-float/2addr v10, v8
add-float/2addr v10, v12
iget v12, v0, Lcom/google/zxing/o;->b:F
mul-float/2addr v8, v11
add-float/2addr v8, v12
invoke-direct {v5, v10, v8}, Lcom/google/zxing/o;-><init>(FF)V
invoke-virtual {v9, v4}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;)Z
move-result v8
if-nez v8, :cond_259
invoke-virtual {v9, v5}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;)Z
move-result v4
if-nez v4, :cond_291
const/4 v4, 0x0
:cond_201
:goto_201
if-nez v4, :cond_204
move-object v4, v0
:cond_204
invoke-virtual {v9, v1, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
iget v5, v0, Lcom/google/zxing/c/b/b;->c:I
invoke-virtual {v9, v3, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
iget v6, v0, Lcom/google/zxing/c/b/b;->c:I
and-int/lit8 v0, v5, 0x1
const/4 v7, 0x1
if-ne v0, v7, :cond_217
add-int/lit8 v5, v5, 0x1
:cond_217
and-int/lit8 v0, v6, 0x1
const/4 v7, 0x1
if-ne v0, v7, :cond_21e
add-int/lit8 v6, v6, 0x1
:cond_21e
iget-object v0, v9, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
invoke-static/range {v0 .. v6}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/b/b;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;II)Lcom/google/zxing/b/b;
move-result-object v0
:goto_224
new-instance v5, Lcom/google/zxing/b/g;
const/4 v6, 0x4
new-array v6, v6, [Lcom/google/zxing/o;
const/4 v7, 0x0
aput-object v1, v6, v7
const/4 v1, 0x1
aput-object v2, v6, v1
const/4 v1, 0x2
aput-object v3, v6, v1
const/4 v1, 0x3
aput-object v4, v6, v1
invoke-direct {v5, v0, v6}, Lcom/google/zxing/b/g;-><init>(Lcom/google/zxing/b/b;[Lcom/google/zxing/o;)V
iget-object v0, p0, Lcom/google/zxing/c/a;->b:Lcom/google/zxing/c/a/f;
iget-object v1, v5, Lcom/google/zxing/b/g;->d:Lcom/google/zxing/b/b;
invoke-virtual {v0, v1}, Lcom/google/zxing/c/a/f;->a(Lcom/google/zxing/b/b;)Lcom/google/zxing/b/e;
move-result-object v1
iget-object v0, v5, Lcom/google/zxing/b/g;->e:[Lcom/google/zxing/o;
goto/16 :goto_92
:cond_244
invoke-interface {v10, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_24d
move-object v0, v6
goto/16 :goto_17c
:cond_24d
invoke-interface {v10, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_256
move-object v0, v7
goto/16 :goto_17c
:cond_256
move-object v0, v8
goto/16 :goto_17c
:cond_259
invoke-virtual {v9, v5}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;)Z
move-result v8
if-eqz v8, :cond_201
invoke-virtual {v9, v1, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v8
iget v8, v8, Lcom/google/zxing/c/b/b;->c:I
sub-int v8, v6, v8
invoke-static {v8}, Ljava/lang/Math;->abs(I)I
move-result v8
invoke-virtual {v9, v3, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v10
iget v10, v10, Lcom/google/zxing/c/b/b;->c:I
sub-int v10, v7, v10
invoke-static {v10}, Ljava/lang/Math;->abs(I)I
move-result v10
add-int/2addr v8, v10
invoke-virtual {v9, v1, v5}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v10
iget v10, v10, Lcom/google/zxing/c/b/b;->c:I
sub-int/2addr v6, v10
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
invoke-virtual {v9, v3, v5}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v10
iget v10, v10, Lcom/google/zxing/c/b/b;->c:I
sub-int/2addr v7, v10
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
add-int/2addr v6, v7
if-le v8, v6, :cond_201
:cond_291
move-object v4, v5
goto/16 :goto_201
:cond_294
invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I
move-result v5
invoke-static {v2, v3}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v4
int-to-float v4, v4
int-to-float v6, v5
div-float v6, v4, v6
invoke-static {v1, v0}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v4
iget v7, v0, Lcom/google/zxing/o;->a:F
iget v8, v1, Lcom/google/zxing/o;->a:F
sub-float/2addr v7, v8
int-to-float v8, v4
div-float/2addr v7, v8
iget v8, v0, Lcom/google/zxing/o;->b:F
iget v10, v1, Lcom/google/zxing/o;->b:F
sub-float/2addr v8, v10
int-to-float v4, v4
div-float/2addr v8, v4
new-instance v4, Lcom/google/zxing/o;
iget v10, v0, Lcom/google/zxing/o;->a:F
mul-float/2addr v7, v6
add-float/2addr v7, v10
iget v10, v0, Lcom/google/zxing/o;->b:F
mul-float/2addr v6, v8
add-float/2addr v6, v10
invoke-direct {v4, v7, v6}, Lcom/google/zxing/o;-><init>(FF)V
invoke-static {v2, v1}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v6
int-to-float v6, v6
int-to-float v5, v5
div-float/2addr v6, v5
invoke-static {v3, v0}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;Lcom/google/zxing/o;)I
move-result v5
iget v7, v0, Lcom/google/zxing/o;->a:F
iget v8, v3, Lcom/google/zxing/o;->a:F
sub-float/2addr v7, v8
int-to-float v8, v5
div-float/2addr v7, v8
iget v8, v0, Lcom/google/zxing/o;->b:F
iget v10, v3, Lcom/google/zxing/o;->b:F
sub-float/2addr v8, v10
int-to-float v5, v5
div-float/2addr v8, v5
new-instance v5, Lcom/google/zxing/o;
iget v10, v0, Lcom/google/zxing/o;->a:F
mul-float/2addr v7, v6
add-float/2addr v7, v10
iget v10, v0, Lcom/google/zxing/o;->b:F
mul-float/2addr v6, v8
add-float/2addr v6, v10
invoke-direct {v5, v7, v6}, Lcom/google/zxing/o;-><init>(FF)V
invoke-virtual {v9, v4}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;)Z
move-result v6
if-nez v6, :cond_317
invoke-virtual {v9, v5}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;)Z
move-result v4
if-nez v4, :cond_341
const/4 v4, 0x0
:goto_2f2
:cond_2f2
if-nez v4, :cond_2f5
move-object v4, v0
:cond_2f5
invoke-virtual {v9, v1, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v0
iget v0, v0, Lcom/google/zxing/c/b/b;->c:I
invoke-virtual {v9, v3, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v5
iget v5, v5, Lcom/google/zxing/c/b/b;->c:I
invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I
move-result v0
add-int/lit8 v5, v0, 0x1
and-int/lit8 v0, v5, 0x1
const/4 v6, 0x1
if-ne v0, v6, :cond_30e
add-int/lit8 v5, v5, 0x1
:cond_30e
iget-object v0, v9, Lcom/google/zxing/c/b/a;->a:Lcom/google/zxing/b/b;
move v6, v5
invoke-static/range {v0 .. v6}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/b/b;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;Lcom/google/zxing/o;II)Lcom/google/zxing/b/b;
move-result-object v0
goto/16 :goto_224
:cond_317
invoke-virtual {v9, v5}, Lcom/google/zxing/c/b/a;->a(Lcom/google/zxing/o;)Z
move-result v6
if-eqz v6, :cond_2f2
invoke-virtual {v9, v1, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v6
iget v6, v6, Lcom/google/zxing/c/b/b;->c:I
invoke-virtual {v9, v3, v4}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v7
iget v7, v7, Lcom/google/zxing/c/b/b;->c:I
sub-int/2addr v6, v7
invoke-static {v6}, Ljava/lang/Math;->abs(I)I
move-result v6
invoke-virtual {v9, v1, v5}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v7
iget v7, v7, Lcom/google/zxing/c/b/b;->c:I
invoke-virtual {v9, v3, v5}, Lcom/google/zxing/c/b/a;->b(Lcom/google/zxing/o;Lcom/google/zxing/o;)Lcom/google/zxing/c/b/b;
move-result-object v8
iget v8, v8, Lcom/google/zxing/c/b/b;->c:I
sub-int/2addr v7, v8
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
if-le v6, v7, :cond_2f2
:cond_341
move-object v4, v5
goto :goto_2f2
.end method
.method public final a()V
.registers 1
return-void
.end method