.class public final Lcom/bbm/util/ch;
.super Ljava/lang/Object;
.source "ListUtils.java"
.method public static a(Ljava/util/Collection;Ljava/util/Collection;Lcom/bbm/util/cj;)Lcom/bbm/util/ci;
.registers 9
new-instance v0, Lcom/bbm/util/ci;
new-instance v1, Ljava/util/HashSet;
invoke-direct {v1}, Ljava/util/HashSet;-><init>()V
new-instance v2, Ljava/util/HashSet;
invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
invoke-direct {v0, v1, v2}, Lcom/bbm/util/ci;-><init>(Ljava/util/Collection;Ljava/util/Collection;)V
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_18
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_2a
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
invoke-interface {p2, v3}, Lcom/bbm/util/cj;->a(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_18
:cond_2a
invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_2e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_57
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
invoke-interface {p2, v3}, Lcom/bbm/util/cj;->a(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
if-eqz v5, :cond_51
invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4d
iget-object v3, v0, Lcom/bbm/util/ci;->c:Ljava/util/Collection;
invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
:cond_4d
invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2e
:cond_51
iget-object v4, v0, Lcom/bbm/util/ci;->b:Ljava/util/Collection;
invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
goto :goto_2e
:cond_57
new-instance v2, Ljava/util/HashSet;
invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v1
invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
iput-object v2, v0, Lcom/bbm/util/ci;->a:Ljava/util/Collection;
return-object v0
.end method