.class public final Lcom/bbm/d/b/c;
.super Lcom/bbm/d/a/a/a;
.source "CachedObservableList.java"
.implements Lcom/bbm/j/j;
.implements Lcom/bbm/j/r;
.field  a:Lcom/bbm/j/r;
.field  b:Ljava/util/List;
.field protected final d:Lcom/bbm/util/fj;
.field private final e:Lcom/bbm/j/h;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/d/a/a/a;-><init>()V
new-instance v0, Lcom/bbm/util/fj;
invoke-direct {v0}, Lcom/bbm/util/fj;-><init>()V
iput-object v0, p0, Lcom/bbm/d/b/c;->d:Lcom/bbm/util/fj;
new-instance v0, Lcom/bbm/d/b/d;
invoke-direct {v0, p0}, Lcom/bbm/d/b/d;-><init>(Lcom/bbm/d/b/c;)V
iput-object v0, p0, Lcom/bbm/d/b/c;->e:Lcom/bbm/j/h;
iput-object p1, p0, Lcom/bbm/d/b/c;->a:Lcom/bbm/j/r;
:try_start_13
new-instance v1, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/bbm/d/b/c;->a:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v1, p0, Lcom/bbm/d/b/c;->b:Ljava/util/List;
:goto_22
:try_end_22
.catch Lcom/bbm/j/z; {:try_start_13 .. :try_end_22} :catch_2a
iget-object v0, p0, Lcom/bbm/d/b/c;->a:Lcom/bbm/j/r;
iget-object v1, p0, Lcom/bbm/d/b/c;->e:Lcom/bbm/j/h;
invoke-interface {v0, v1}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V
return-void
:catch_2a
move-exception v0
goto :goto_22
.end method
.method public final a(I)Ljava/lang/Object;
.registers 3
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/b/c;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final a(Lcom/bbm/d/b/e;)V
.registers 3
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/d/b/c;->d:Lcom/bbm/util/fj;
invoke-virtual {v0, p1}, Lcom/bbm/util/fj;->a(Ljava/lang/Object;)V
return-void
.end method
.method final a(Ljava/util/List;Ljava/util/List;)V
.registers 6
new-instance v1, Ljava/util/LinkedList;
invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V
iget-object v0, p0, Lcom/bbm/d/b/c;->d:Lcom/bbm/util/fj;
invoke-virtual {v0}, Lcom/bbm/util/fj;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1b
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/b/e;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_b
:cond_1b
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_2f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/b/e;
invoke-interface {v0, p1, p2}, Lcom/bbm/d/b/e;->a(Ljava/util/Collection;Ljava/util/Collection;)V
goto :goto_1f
:cond_2f
return-void
.end method
.method public final d()I
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/b/c;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final synthetic e()Ljava/lang/Object;
.registers 2
invoke-static {p0}, Lcom/bbm/j/p;->a(Lcom/bbm/j/g;)V
iget-object v0, p0, Lcom/bbm/d/b/c;->b:Ljava/util/List;
invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
move-result-object v0
return-object v0
.end method