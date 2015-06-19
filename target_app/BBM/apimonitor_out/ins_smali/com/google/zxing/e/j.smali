.class public final Lcom/google/zxing/e/j;
.super Lcom/google/zxing/e/k;
.source "MultiFormatUPCEANReader.java"
.field private final a:[Lcom/google/zxing/e/p;
.method public constructor <init>(Ljava/util/Map;)V
.registers 5
invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V
if-nez p1, :cond_6a
const/4 v0, 0x0
:goto_6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
if-eqz v0, :cond_3d
sget-object v2, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_73
new-instance v2, Lcom/google/zxing/e/e;
invoke-direct {v2}, Lcom/google/zxing/e/e;-><init>()V
invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:goto_1d
:cond_1d
sget-object v2, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2d
new-instance v2, Lcom/google/zxing/e/f;
invoke-direct {v2}, Lcom/google/zxing/e/f;-><init>()V
invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_2d
sget-object v2, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3d
new-instance v0, Lcom/google/zxing/e/q;
invoke-direct {v0}, Lcom/google/zxing/e/q;-><init>()V
invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_3d
invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_5b
new-instance v0, Lcom/google/zxing/e/e;
invoke-direct {v0}, Lcom/google/zxing/e/e;-><init>()V
invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/f;
invoke-direct {v0}, Lcom/google/zxing/e/f;-><init>()V
invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/q;
invoke-direct {v0}, Lcom/google/zxing/e/q;-><init>()V
invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_5b
invoke-interface {v1}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Lcom/google/zxing/e/p;
invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/e/p;
iput-object v0, p0, Lcom/google/zxing/e/j;->a:[Lcom/google/zxing/e/p;
return-void
:cond_6a
sget-object v0, Lcom/google/zxing/e;->c:Lcom/google/zxing/e;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
goto :goto_6
:cond_73
sget-object v2, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_1d
new-instance v2, Lcom/google/zxing/e/l;
invoke-direct {v2}, Lcom/google/zxing/e/l;-><init>()V
invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_1d
.end method
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 11
const/4 v3, 0x1
const/4 v2, 0x0
invoke-static {p2}, Lcom/google/zxing/e/p;->a(Lcom/google/zxing/b/a;)[I
move-result-object v1
iget-object v4, p0, Lcom/google/zxing/e/j;->a:[Lcom/google/zxing/e/p;
array-length v5, v4
move v0, v2
:goto_a
if-ge v0, v5, :cond_5f
aget-object v6, v4, v0
:try_start_e
invoke-virtual {v6, p1, p2, v1, p3}, Lcom/google/zxing/e/p;->a(ILcom/google/zxing/b/a;[ILjava/util/Map;)Lcom/google/zxing/m;
:try_end_11
.catch Lcom/google/zxing/l; {:try_start_e .. :try_end_11} :catch_5b
move-result-object v1
iget-object v0, v1, Lcom/google/zxing/m;->d:Lcom/google/zxing/a;
sget-object v4, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;
if-ne v0, v4, :cond_4c
iget-object v0, v1, Lcom/google/zxing/m;->a:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v4, 0x30
if-ne v0, v4, :cond_4c
move v4, v3
:goto_23
if-nez p3, :cond_4e
const/4 v0, 0x0
:goto_26
if-eqz v0, :cond_30
sget-object v5, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_57
:cond_30
move v0, v3
:goto_31
if-eqz v4, :cond_59
if-eqz v0, :cond_59
new-instance v0, Lcom/google/zxing/m;
iget-object v2, v1, Lcom/google/zxing/m;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v2
iget-object v3, v1, Lcom/google/zxing/m;->b:[B
iget-object v4, v1, Lcom/google/zxing/m;->c:[Lcom/google/zxing/o;
sget-object v5, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;
invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/zxing/m;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/o;Lcom/google/zxing/a;)V
iget-object v1, v1, Lcom/google/zxing/m;->e:Ljava/util/Map;
invoke-virtual {v0, v1}, Lcom/google/zxing/m;->a(Ljava/util/Map;)V
:goto_4b
return-object v0
:cond_4c
move v4, v2
goto :goto_23
:cond_4e
sget-object v0, Lcom/google/zxing/e;->c:Lcom/google/zxing/e;
invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
goto :goto_26
:cond_57
move v0, v2
goto :goto_31
:cond_59
move-object v0, v1
goto :goto_4b
:catch_5b
move-exception v6
add-int/lit8 v0, v0, 0x1
goto :goto_a
:cond_5f
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method public final a()V
.registers 5
iget-object v1, p0, Lcom/google/zxing/e/j;->a:[Lcom/google/zxing/e/p;
array-length v2, v1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_e
aget-object v3, v1, v0
invoke-interface {v3}, Lcom/google/zxing/k;->a()V
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_e
return-void
.end method