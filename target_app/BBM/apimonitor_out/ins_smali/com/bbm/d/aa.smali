.class final Lcom/bbm/d/aa;
.super Lcom/bbm/j/a;
.source "BbmdsModel.java"
.field private a:Z
.field private d:Ljava/util/List;
.field private final e:Lcom/bbm/j/r;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 3
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/d/aa;->a:Z
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/bbm/d/aa;->d:Ljava/util/List;
iput-object p1, p0, Lcom/bbm/d/aa;->e:Lcom/bbm/j/r;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/j/a;->c:Z
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/d/aa;->e:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_23
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v0, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_99
move v0, v2
:goto_21
move v1, v0
goto :goto_e
:cond_23
if-eqz v1, :cond_2e
iget-boolean v0, p0, Lcom/bbm/d/aa;->a:Z
if-nez v0, :cond_2e
invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
move-result-object v0
:goto_2d
return-object v0
:cond_2e
iput-boolean v2, p0, Lcom/bbm/d/aa;->a:Z
iget-object v1, p0, Lcom/bbm/d/aa;->d:Ljava/util/List;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
new-instance v4, Ljava/util/HashMap;
invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/bbm/d/aa;->e:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:goto_4d
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5f
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v6, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v4, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_4d
:cond_5f
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_63
:goto_63
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_87
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
iget-object v1, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v4, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gp;
if-eqz v1, :cond_63
invoke-static {v0, v1}, Lcom/bbm/util/bg;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_83
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_63
:cond_83
invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_63
:cond_87
invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;
move-result-object v0
invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
invoke-static {v3}, Lcom/bbm/d/gu;->a(Ljava/util/List;)Ljava/util/List;
move-result-object v0
invoke-static {v0, v2}, Lcom/bbm/d/gu;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/bbm/d/aa;->d:Ljava/util/List;
goto :goto_2d
:cond_99
move v0, v1
goto :goto_21
.end method