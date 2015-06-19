.class final Lcom/bbm/d/b/u;
.super Ljava/lang/Object;
.source "TransformingList.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/d/b/r;
.method constructor <init>(Lcom/bbm/d/b/r;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/b/u;->a:Lcom/bbm/d/b/r;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/d/b/u;->a:Lcom/bbm/d/b/r;
iget-boolean v1, v0, Lcom/bbm/d/b/r;->h:Z
if-eqz v1, :cond_c
iget-object v1, v0, Lcom/bbm/d/b/r;->j:Ljava/lang/Runnable;
invoke-static {v1}, Lcom/bbm/j/p;->a(Ljava/lang/Runnable;)V
:cond_c
iget-object v4, v0, Lcom/bbm/d/b/r;->e:Ljava/util/Map;
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/d/b/u;->a:Lcom/bbm/d/b/r;
iget-object v0, v0, Lcom/bbm/d/b/r;->f:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v6
invoke-virtual {v5, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V
move v2, v3
:goto_25
if-ge v2, v6, :cond_3c
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/j/r;
invoke-interface {v1}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v1
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v2, 0x1
move v2, v1
goto :goto_25
:cond_3c
iget-object v0, p0, Lcom/bbm/d/b/u;->a:Lcom/bbm/d/b/r;
iput-object v5, v0, Lcom/bbm/d/b/r;->g:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/bbm/d/b/u;->a:Lcom/bbm/d/b/r;
iput-boolean v3, v0, Lcom/bbm/d/b/r;->i:Z
return-void
.end method