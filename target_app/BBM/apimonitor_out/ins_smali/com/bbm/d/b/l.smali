.class public abstract Lcom/bbm/d/b/l;
.super Lcom/bbm/d/b/f;
.source "ConvertedList.java"
.field  a:Lcom/bbm/j/r;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 2
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
iput-object p1, p0, Lcom/bbm/d/b/l;->a:Lcom/bbm/j/r;
return-void
.end method
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method
.method protected final a()Ljava/util/List;
.registers 4
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/d/b/l;->a:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_11
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_23
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
invoke-virtual {p0, v2}, Lcom/bbm/d/b/l;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_23
return-object v1
.end method