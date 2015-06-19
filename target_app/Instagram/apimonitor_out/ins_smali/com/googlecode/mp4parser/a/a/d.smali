.class public final Lcom/googlecode/mp4parser/a/a/d;
.super Ljava/lang/Object;
.source "TwoSecondIntersectionFinder.java"
.implements Lcom/googlecode/mp4parser/a/a/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Lcom/googlecode/mp4parser/a/e;)J
.registers 9
const-wide/16 v0, 0x0
invoke-interface {p0}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
move-wide v1, v0
:goto_b
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v4
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v6
mul-long/2addr v4, v6
add-long v0, v1, v4
move-wide v1, v0
goto :goto_b
:cond_24
return-wide v1
.end method
.method public final a(Lcom/googlecode/mp4parser/a/e;Lcom/googlecode/mp4parser/a/c;)[J
.registers 15
invoke-interface {p1}, Lcom/googlecode/mp4parser/a/e;->g()Ljava/util/List;
move-result-object v5
const-wide/16 v0, 0x0
invoke-virtual {p2}, Lcom/googlecode/mp4parser/a/c;->a()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
move-wide v1, v0
:goto_f
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_30
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/googlecode/mp4parser/a/e;
invoke-static {v0}, Lcom/googlecode/mp4parser/a/a/d;->a(Lcom/googlecode/mp4parser/a/e;)J
move-result-wide v3
invoke-interface {v0}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v0
invoke-virtual {v0}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v7
div-long/2addr v3, v7
long-to-double v3, v3
cmpg-double v0, v1, v3
if-gez v0, :cond_a2
move-wide v0, v3
:goto_2e
move-wide v1, v0
goto :goto_f
:cond_30
const-wide/high16 v3, 0x4000
div-double v0, v1, v3
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v0, v0
add-int/lit8 v0, v0, -0x1
if-gtz v0, :cond_3e
const/4 v0, 0x1
:cond_3e
new-array v6, v0, [J
const-wide/16 v0, -0x1
invoke-static {v6, v0, v1}, Ljava/util/Arrays;->fill([JJ)V
const/4 v0, 0x0
const-wide/16 v1, 0x1
aput-wide v1, v6, v0
const-wide/16 v1, 0x0
const/4 v4, 0x0
invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_51
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_8a
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/k;
const/4 v3, 0x0
:goto_5e
int-to-long v8, v3
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->a()J
move-result-wide v10
cmp-long v5, v8, v10
if-gez v5, :cond_51
invoke-interface {p1}, Lcom/googlecode/mp4parser/a/e;->k()Lcom/googlecode/mp4parser/a/f;
move-result-object v5
invoke-virtual {v5}, Lcom/googlecode/mp4parser/a/f;->b()J
move-result-wide v8
div-long v8, v1, v8
const-wide/16 v10, 0x2
div-long/2addr v8, v10
long-to-int v5, v8
add-int/lit8 v8, v5, 0x1
array-length v5, v6
if-ge v8, v5, :cond_51
add-int/lit8 v5, v4, 0x1
add-int/lit8 v4, v4, 0x1
int-to-long v9, v4
aput-wide v9, v6, v8
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/k;->b()J
move-result-wide v8
add-long/2addr v1, v8
add-int/lit8 v3, v3, 0x1
move v4, v5
goto :goto_5e
:cond_8a
add-int/lit8 v0, v4, 0x1
int-to-long v0, v0
array-length v2, v6
add-int/lit8 v2, v2, -0x1
:goto_90
if-ltz v2, :cond_a1
aget-wide v3, v6, v2
const-wide/16 v7, -0x1
cmp-long v3, v3, v7
if-nez v3, :cond_9c
aput-wide v0, v6, v2
:cond_9c
aget-wide v0, v6, v2
add-int/lit8 v2, v2, -0x1
goto :goto_90
:cond_a1
return-object v6
:cond_a2
move-wide v0, v1
goto :goto_2e
.end method