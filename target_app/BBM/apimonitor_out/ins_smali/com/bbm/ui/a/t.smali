.class final Lcom/bbm/ui/a/t;
.super Ljava/lang/Object;
.source "GroupMessageListAdapter.java"
.implements Lcom/bbm/j/h;
.field final synthetic a:Lcom/bbm/ui/a/s;
.method constructor <init>(Lcom/bbm/ui/a/s;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/a/t;->a:Lcom/bbm/ui/a/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/a/t;->a:Lcom/bbm/ui/a/s;
invoke-virtual {v0}, Lcom/bbm/ui/a/s;->a()V
iget-object v0, p0, Lcom/bbm/ui/a/t;->a:Lcom/bbm/ui/a/s;
invoke-static {v0}, Lcom/bbm/ui/a/s;->a(Lcom/bbm/ui/a/s;)Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_41
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Lcom/bbm/ui/a/t;->a:Lcom/bbm/ui/a/s;
invoke-static {v1}, Lcom/bbm/ui/a/s;->b(Lcom/bbm/ui/a/s;)Lcom/bbm/util/fj;
move-result-object v1
iget-object v1, v1, Lcom/bbm/util/fj;->a:Ljava/util/WeakHashMap;
invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_2f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_41
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/a/y;
iget v2, v0, Lcom/bbm/ui/a/y;->f:I
invoke-virtual {v0, v2}, Lcom/bbm/ui/a/y;->a(I)V
goto :goto_2f
:cond_41
iget-object v0, p0, Lcom/bbm/ui/a/t;->a:Lcom/bbm/ui/a/s;
invoke-virtual {v0}, Lcom/bbm/ui/a/s;->notifyDataSetChanged()V
return-void
.end method