.class public final Lcom/google/zxing/e/i;
.super Lcom/google/zxing/e/k;
.source "MultiFormatOneDReader.java"
.field private final a:[Lcom/google/zxing/e/k;
.method public constructor <init>(Ljava/util/Map;)V
.registers 6
invoke-direct {p0}, Lcom/google/zxing/e/k;-><init>()V
if-nez p1, :cond_106
const/4 v0, 0x0
move-object v1, v0
:goto_7
if-eqz p1, :cond_111
sget-object v0, Lcom/google/zxing/e;->g:Lcom/google/zxing/e;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_111
const/4 v0, 0x1
:goto_12
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz v1, :cond_b1
sget-object v3, Lcom/google/zxing/a;->h:Lcom/google/zxing/a;
invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_39
sget-object v3, Lcom/google/zxing/a;->o:Lcom/google/zxing/a;
invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_39
sget-object v3, Lcom/google/zxing/a;->g:Lcom/google/zxing/a;
invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_39
sget-object v3, Lcom/google/zxing/a;->p:Lcom/google/zxing/a;
invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_41
:cond_39
new-instance v3, Lcom/google/zxing/e/j;
invoke-direct {v3, p1}, Lcom/google/zxing/e/j;-><init>(Ljava/util/Map;)V
invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_41
sget-object v3, Lcom/google/zxing/a;->c:Lcom/google/zxing/a;
invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_51
new-instance v3, Lcom/google/zxing/e/c;
invoke-direct {v3, v0}, Lcom/google/zxing/e/c;-><init>(Z)V
invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_51
sget-object v0, Lcom/google/zxing/a;->d:Lcom/google/zxing/a;
invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_61
new-instance v0, Lcom/google/zxing/e/d;
invoke-direct {v0}, Lcom/google/zxing/e/d;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_61
sget-object v0, Lcom/google/zxing/a;->e:Lcom/google/zxing/a;
invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_71
new-instance v0, Lcom/google/zxing/e/b;
invoke-direct {v0}, Lcom/google/zxing/e/b;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_71
sget-object v0, Lcom/google/zxing/a;->i:Lcom/google/zxing/a;
invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_81
new-instance v0, Lcom/google/zxing/e/h;
invoke-direct {v0}, Lcom/google/zxing/e/h;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_81
sget-object v0, Lcom/google/zxing/a;->b:Lcom/google/zxing/a;
invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_91
new-instance v0, Lcom/google/zxing/e/a;
invoke-direct {v0}, Lcom/google/zxing/e/a;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_91
sget-object v0, Lcom/google/zxing/a;->m:Lcom/google/zxing/a;
invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a1
new-instance v0, Lcom/google/zxing/e/a/e;
invoke-direct {v0}, Lcom/google/zxing/e/a/e;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_a1
sget-object v0, Lcom/google/zxing/a;->n:Lcom/google/zxing/a;
invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_b1
new-instance v0, Lcom/google/zxing/e/a/a/b;
invoke-direct {v0}, Lcom/google/zxing/e/a/a/b;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_b1
invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z
move-result v0
if-eqz v0, :cond_f7
new-instance v0, Lcom/google/zxing/e/j;
invoke-direct {v0, p1}, Lcom/google/zxing/e/j;-><init>(Ljava/util/Map;)V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/c;
invoke-direct {v0}, Lcom/google/zxing/e/c;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/a;
invoke-direct {v0}, Lcom/google/zxing/e/a;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/d;
invoke-direct {v0}, Lcom/google/zxing/e/d;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/b;
invoke-direct {v0}, Lcom/google/zxing/e/b;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/h;
invoke-direct {v0}, Lcom/google/zxing/e/h;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/a/e;
invoke-direct {v0}, Lcom/google/zxing/e/a/e;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/google/zxing/e/a/a/b;
invoke-direct {v0}, Lcom/google/zxing/e/a/a/b;-><init>()V
invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_f7
invoke-interface {v2}, Ljava/util/Collection;->size()I
move-result v0
new-array v0, v0, [Lcom/google/zxing/e/k;
invoke-interface {v2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/google/zxing/e/k;
iput-object v0, p0, Lcom/google/zxing/e/i;->a:[Lcom/google/zxing/e/k;
return-void
:cond_106
sget-object v0, Lcom/google/zxing/e;->c:Lcom/google/zxing/e;
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
move-object v1, v0
goto/16 :goto_7
:cond_111
const/4 v0, 0x0
goto/16 :goto_12
.end method
.method public final a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
.registers 8
iget-object v1, p0, Lcom/google/zxing/e/i;->a:[Lcom/google/zxing/e/k;
array-length v2, v1
const/4 v0, 0x0
:goto_4
if-ge v0, v2, :cond_11
aget-object v3, v1, v0
:try_start_8
invoke-virtual {v3, p1, p2, p3}, Lcom/google/zxing/e/k;->a(ILcom/google/zxing/b/a;Ljava/util/Map;)Lcom/google/zxing/m;
:try_end_b
.catch Lcom/google/zxing/l; {:try_start_8 .. :try_end_b} :catch_d
move-result-object v0
return-object v0
:catch_d
move-exception v3
add-int/lit8 v0, v0, 0x1
goto :goto_4
:cond_11
invoke-static {}, Lcom/google/zxing/i;->a()Lcom/google/zxing/i;
move-result-object v0
throw v0
.end method
.method public final a()V
.registers 5
iget-object v1, p0, Lcom/google/zxing/e/i;->a:[Lcom/google/zxing/e/k;
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