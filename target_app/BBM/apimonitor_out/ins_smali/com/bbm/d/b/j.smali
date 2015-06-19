.class final Lcom/bbm/d/b/j;
.super Lcom/bbm/j/a;
.source "ConcatenatedList.java"
.field final synthetic a:Lcom/bbm/d/b/i;
.method constructor <init>(Lcom/bbm/d/b/i;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/b/j;->a:Lcom/bbm/d/b/i;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/d/b/j;->a:Lcom/bbm/d/b/i;
iget-object v0, v0, Lcom/bbm/d/b/i;->a:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_13
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_29
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
goto :goto_13
:cond_29
return-object v1
.end method