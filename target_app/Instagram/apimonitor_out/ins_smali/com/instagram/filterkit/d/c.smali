.class public final Lcom/instagram/filterkit/d/c;
.super Ljava/lang/Object;
.source "GlResources.java"
.field private final a:Lcom/instagram/filterkit/d/b;
.field private final b:Lcom/instagram/filterkit/d/f;
.field private final c:Ljava/util/Set;
.field private final d:Ljava/util/Set;
.field private final e:Ljava/util/Set;
.field private final f:Ljava/util/Map;
.field private final g:Landroid/util/SparseArray;
.field private final h:Ljava/util/Set;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/filterkit/d/b;
invoke-direct {v0}, Lcom/instagram/filterkit/d/b;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
new-instance v0, Landroid/util/SparseArray;
invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
new-instance v0, Ljava/util/HashSet;
invoke-direct {v0}, Ljava/util/HashSet;-><init>()V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;
new-instance v0, Lcom/instagram/filterkit/d/f;
invoke-direct {v0, p1}, Lcom/instagram/filterkit/d/f;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
return-void
.end method
.method public static a(Lcom/instagram/filterkit/e/g;)V
.registers 1
if-eqz p0, :cond_5
invoke-interface {p0}, Lcom/instagram/filterkit/e/g;->e()V
:cond_5
return-void
.end method
.method private c()V
.registers 5
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v2
iget-object v3, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {v3, v2, v0}, Lcom/instagram/filterkit/d/f;->a(II)V
goto :goto_6
:cond_28
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
return-void
.end method
.method private d(Lcom/instagram/filterkit/d/e;)V
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
invoke-virtual {v0, p1}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/e;)V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final a()Lcom/instagram/filterkit/d/b;
.registers 2
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;
return-object v0
.end method
.method public final a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
invoke-virtual {v0, p1, p2}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/e;Ljava/lang/String;)Lcom/instagram/filterkit/e/a;
move-result-object v0
return-object v0
.end method
.method public final a(I)Lcom/instagram/filterkit/e/b;
.registers 7
const/4 v4, 0x0
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
invoke-virtual {v0, p1}, Lcom/instagram/filterkit/d/f;->a(I)Lcom/instagram/filterkit/e/b;
move-result-object v1
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v0, p1, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, -0x1
invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
return-object v1
.end method
.method public final a(II)Lcom/instagram/filterkit/e/b;
.registers 5
new-instance v0, Lcom/instagram/filterkit/d/a;
iget-object v1, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;
invoke-direct {v0, p1, p2}, Lcom/instagram/filterkit/d/a;-><init>(II)V
return-object v0
.end method
.method public final a(ILcom/instagram/filterkit/d/e;)Lcom/instagram/filterkit/e/b;
.registers 5
invoke-virtual {p0, p1}, Lcom/instagram/filterkit/d/c;->a(I)Lcom/instagram/filterkit/e/b;
move-result-object v0
if-eqz p2, :cond_10
iget-object v1, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_10
return-object v0
.end method
.method public final a(Lcom/instagram/filterkit/e/g;Lcom/instagram/filterkit/d/e;)V
.registers 8
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_45
:goto_a
if-eqz v0, :cond_44
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
move-object v0, p1
check-cast v0, Lcom/instagram/filterkit/e/b;
invoke-virtual {v2, v0}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/e/b;)V
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
invoke-interface {p1}, Lcom/instagram/filterkit/e/g;->c()I
move-result v3
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->g:Landroid/util/SparseArray;
invoke-interface {p1}, Lcom/instagram/filterkit/e/g;->c()I
move-result v4
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
add-int/lit8 v0, v0, 0x1
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->h:Ljava/util/Set;
invoke-interface {p1}, Lcom/instagram/filterkit/e/g;->c()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
:cond_44
return-void
:cond_45
if-eqz p2, :cond_59
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_59
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_a
:cond_59
move v0, v1
goto :goto_a
.end method
.method public final a(Lcom/instagram/filterkit/d/e;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final a(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z
.registers 6
const/4 v2, 0x1
const/4 v1, 0x0
if-nez p2, :cond_6
move v0, v1
:goto_5
return v0
:cond_6
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/d/e;
if-eqz v0, :cond_16
if-ne p2, v0, :cond_14
move v0, v2
goto :goto_5
:cond_14
move v0, v1
goto :goto_5
:cond_16
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move v0, v2
goto :goto_5
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->a:Lcom/instagram/filterkit/d/b;
invoke-static {p1}, Lcom/instagram/filterkit/d/b;->a(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final b()V
.registers 4
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_18
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/d/e;
iget-object v2, p0, Lcom/instagram/filterkit/d/c;->b:Lcom/instagram/filterkit/d/f;
invoke-virtual {v2, v0}, Lcom/instagram/filterkit/d/f;->a(Lcom/instagram/filterkit/d/e;)V
goto :goto_6
:cond_18
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->d:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_23
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_33
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/e/b;
invoke-interface {v0}, Lcom/instagram/filterkit/e/b;->e()V
goto :goto_23
:cond_33
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_42
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_52
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/e/g;
invoke-interface {v0}, Lcom/instagram/filterkit/e/g;->e()V
goto :goto_42
:cond_52
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0}, Ljava/util/Map;->clear()V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_5d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/filterkit/d/e;
invoke-interface {v0, p0}, Lcom/instagram/filterkit/d/e;->a(Lcom/instagram/filterkit/d/c;)V
goto :goto_5d
:cond_6d
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
invoke-interface {v0}, Ljava/util/Set;->clear()V
invoke-direct {p0}, Lcom/instagram/filterkit/d/c;->c()V
return-void
.end method
.method public final b(Lcom/instagram/filterkit/d/e;)V
.registers 3
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public final b(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)Z
.registers 4
if-eqz p2, :cond_a
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eq p2, v0, :cond_c
:cond_a
const/4 v0, 0x0
:goto_b
return v0
:cond_c
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
const/4 v0, 0x1
goto :goto_b
.end method
.method public final c(Lcom/instagram/filterkit/d/e;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/filterkit/d/c;->d(Lcom/instagram/filterkit/d/e;)V
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_e
invoke-interface {p1, p0}, Lcom/instagram/filterkit/d/e;->a(Lcom/instagram/filterkit/d/c;)V
:cond_e
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->c:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
return-void
.end method
.method public final c(Lcom/instagram/filterkit/e/b;Lcom/instagram/filterkit/d/e;)V
.registers 4
if-eqz p2, :cond_17
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->f:Ljava/util/Map;
invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface {p1}, Lcom/instagram/filterkit/e/b;->e()V
:cond_16
:goto_16
return-void
:cond_17
iget-object v0, p0, Lcom/instagram/filterkit/d/c;->e:Ljava/util/Set;
invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {p1}, Lcom/instagram/filterkit/e/b;->e()V
goto :goto_16
.end method