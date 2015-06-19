.class public final Lcom/google/zxing/h;
.super Ljava/lang/Object;
.source "MultiFormatReader.java"
.implements Lcom/google/zxing/k;
.field private a:Ljava/util/Map;
.field private b:[Lcom/google/zxing/k;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private b(Lcom/google/zxing/c;)Lcom/google/zxing/m;
.registers 7
iget-object v0, p0, Lcom/google/zxing/h;->b:[Lcom/google/zxing/k;
if-eqz v0, :cond_17
iget-object v1, p0, Lcom/google/zxing/h;->b:[Lcom/google/zxing/k;
array-length v2, v1
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_17
aget-object v3, v1, v0
:try_start_c
iget-object v4, p0, Lcom/google/zxing/h;->a:Ljava/util/Map;
invoke-interface {v3, p1, v4}, Lcom/google/zxing/k;->a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
:try_end_11
.catch Lcom/google/zxing/l; {:try_start_c .. :try_end_11} :catch_13
move-result-object v0
return-object v0
:catch_13
move-exception v3
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_17
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method public final a(Lcom/google/zxing/c;)Lcom/google/zxing/m;
.registers 3
iget-object v0, p0, Lcom/google/zxing/h;->b:[Lcom/google/zxing/k;
if-nez v0, :cond_8
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/google/zxing/h;->a(Ljava/util/Map;)V
:cond_8
invoke-direct {p0, p1}, Lcom/google/zxing/h;->b(Lcom/google/zxing/c;)Lcom/google/zxing/m;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/google/zxing/c;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 4
invoke-virtual {p0, p2}, Lcom/google/zxing/h;->a(Ljava/util/Map;)V
invoke-direct {p0, p1}, Lcom/google/zxing/h;->b(Lcom/google/zxing/c;)Lcom/google/zxing/m;
move-result-object v0
return-object v0
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/google/zxing/h;->b:[Lcom/google/zxing/k;
if-eqz v0, :cond_12
iget-object v1, p0, Lcom/google/zxing/h;->b:[Lcom/google/zxing/k;
array-length v2, v1
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_12
aget-object v3, v1, v0
invoke-interface {v3}, Lcom/google/zxing/k;->a()V
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_12
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
iput-object p1, p0, Lcom/google/zxing/h;->a:Ljava/util/Map;
if-eqz p1, :cond_12b
sget-object v0, Lcom/google/zxing/e;->d:Lcom/google/zxing/e;
invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12b
move v3, v2
:goto_f
if-nez p1, :cond_12e
const/4 v0, 0x0
:goto_12
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
if-eqz v0, :cond_da
sget-object v5, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_71
sget-object v5, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;
invoke-interface {v0, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_72
:cond_71
move v1, v2
:cond_72
if-eqz v1, :cond_7e
if-nez v3, :cond_7e
new-instance v2, Lcom/google/zxing/e/i;
invoke-direct {v2, p1}, Lcom/google/zxing/e/i;-><init>(Ljava/util/Map;)V
invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_7e
sget-object v2, Lcom/google/zxing/a;->l:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_8e
new-instance v2, Lcom/google/zxing/g/a;
invoke-direct {v2}, Lcom/google/zxing/g/a;-><init>()V
invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_8e
sget-object v2, Lcom/google/zxing/a;->f:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_9e
new-instance v2, Lcom/google/zxing/c/a;
invoke-direct {v2}, Lcom/google/zxing/c/a;-><init>()V
invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_9e
sget-object v2, Lcom/google/zxing/a;->a:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_ae
new-instance v2, Lcom/google/zxing/a/b;
invoke-direct {v2}, Lcom/google/zxing/a/b;-><init>()V
invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ae
sget-object v2, Lcom/google/zxing/a;->k:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_be
new-instance v2, Lcom/google/zxing/f/a;
invoke-direct {v2}, Lcom/google/zxing/f/a;-><init>()V
invoke-interface {v4, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_be
sget-object v2, Lcom/google/zxing/a;->j:Lcom/google/zxing/a;
invoke-interface {v0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_ce
new-instance v0, Lcom/google/zxing/d/a;
invoke-direct {v0}, Lcom/google/zxing/d/a;-><init>()V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ce
if-eqz v1, :cond_da
if-eqz v3, :cond_da
new-instance v0, Lcom/google/zxing/e/i;
invoke-direct {v0, p1}, Lcom/google/zxing/e/i;-><init>(Ljava/util/Map;)V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_da
invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_11c
if-nez v3, :cond_ea
new-instance v0, Lcom/google/zxing/e/i;
invoke-direct {v0, p1}, Lcom/google/zxing/e/i;-><init>(Ljava/util/Map;)V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_ea
new-instance v0, Lcom/google/zxing/g/a;
invoke-direct {v0}, Lcom/google/zxing/g/a;-><init>()V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/c/a;
invoke-direct {v0}, Lcom/google/zxing/c/a;-><init>()V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/a/b;
invoke-direct {v0}, Lcom/google/zxing/a/b;-><init>()V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/f/a;
invoke-direct {v0}, Lcom/google/zxing/f/a;-><init>()V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/d/a;
invoke-direct {v0}, Lcom/google/zxing/d/a;-><init>()V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
if-eqz v3, :cond_11c
new-instance v0, Lcom/google/zxing/e/i;
invoke-direct {v0, p1}, Lcom/google/zxing/e/i;-><init>(Ljava/util/Map;)V
invoke-interface {v4, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_11c
invoke-interface {v4}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Lcom/google/zxing/k;
invoke-interface {v4, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/k;
iput-object v0, p0, Lcom/google/zxing/h;->b:[Lcom/google/zxing/k;
return-void
:cond_12b
move v3, v1
goto/16 :goto_f
:cond_12e
sget-object v0, Lcom/google/zxing/e;->c:Lcom/google/zxing/e;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
goto/16 :goto_12
.end method