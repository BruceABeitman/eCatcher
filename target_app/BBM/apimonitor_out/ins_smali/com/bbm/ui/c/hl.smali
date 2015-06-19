.class final Lcom/bbm/ui/c/hl;
.super Lcom/bbm/d/b/f;
.source "UpdatesFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/hk;
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/hl;->a:Lcom/bbm/ui/c/hk;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 14
const/4 v3, 0x0
const/4 v2, 0x1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v6
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v0
invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_22
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_28
:cond_22
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_27
return-object v0
:cond_28
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/c/hl;->a:Lcom/bbm/ui/c/hk;
invoke-static {v5}, Lcom/bbm/ui/c/hk;->a(Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_a3
move v1, v2
:goto_36
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v0}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v4
if-eqz v4, :cond_a5
move v1, v2
:cond_47
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->B()Lcom/bbm/util/ay;
move-result-object v4
sget-object v0, Lcom/bbm/util/ay;->b:Lcom/bbm/util/ay;
if-ne v4, v0, :cond_126
if-nez v1, :cond_5d
iget-object v0, p0, Lcom/bbm/ui/c/hl;->a:Lcom/bbm/ui/c/hk;
invoke-static {v5}, Lcom/bbm/ui/c/hk;->b(Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_114
:cond_5d
move v0, v2
:goto_5e
sget-object v1, Lcom/bbm/util/ay;->c:Lcom/bbm/util/ay;
if-ne v4, v1, :cond_7c
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/af;->s()Z
move-result v1
if-eqz v1, :cond_7c
new-instance v1, Lcom/bbm/util/ew;
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v4
invoke-virtual {v4}, Lcom/bbm/af;->r()J
move-result-wide v6
invoke-direct {v1, v6, v7}, Lcom/bbm/util/ew;-><init>(J)V
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_7c
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v1
const-string v4, "adsEnabled"
invoke-virtual {v1, v4}, Lcom/bbm/b/q;->a(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v1
iget-object v1, v1, Lcom/bbm/util/bl;->a:Lorg/json/JSONObject;
const-string v4, "value"
invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v1
if-eqz v1, :cond_123
if-nez v0, :cond_9a
iget-object v0, p0, Lcom/bbm/ui/c/hl;->a:Lcom/bbm/ui/c/hk;
invoke-static {v5}, Lcom/bbm/ui/c/hk;->c(Ljava/util/ArrayList;)Z
move-result v0
if-eqz v0, :cond_9b
:cond_9a
move v3, v2
:goto_9b
:cond_9b
if-eqz v3, :cond_117
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_27
:cond_a3
move v1, v3
goto :goto_36
:cond_a5
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
:cond_af
:goto_af
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_47
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/a;
iget-boolean v4, v0, Lcom/bbm/g/a;->i:Z
if-nez v4, :cond_af
iget-object v8, v0, Lcom/bbm/g/a;->v:Ljava/lang/String;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->c:Lcom/bbm/g/am;
invoke-virtual {v0, v8}, Lcom/bbm/g/am;->c(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v9
invoke-interface {v9}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_d3
move v1, v2
goto :goto_af
:cond_d3
move v4, v3
:goto_d4
invoke-interface {v9}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v4, v0, :cond_af
invoke-interface {v9}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ak;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v10
iget-object v10, v10, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v11, v0, Lcom/bbm/g/ak;->c:Ljava/lang/String;
invoke-virtual {v10, v11}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v10
iget-object v11, v10, Lcom/bbm/g/o;->g:Lcom/bbm/util/bh;
sget-object v12, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v11, v12, :cond_103
move v1, v2
:goto_ff
:cond_ff
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_d4
:cond_103
iget-object v10, v10, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v6, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v10
if-nez v10, :cond_ff
new-instance v10, Lcom/bbm/util/ew;
invoke-direct {v10, v0, v8}, Lcom/bbm/util/ew;-><init>(Lcom/bbm/g/ak;Ljava/lang/String;)V
invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_ff
:cond_114
move v0, v3
goto/16 :goto_5e
:cond_117
iget-object v0, p0, Lcom/bbm/ui/c/hl;->a:Lcom/bbm/ui/c/hk;
invoke-static {v0}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;)Ljava/util/Comparator;
move-result-object v0
invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
move-object v0, v5
goto/16 :goto_27
:cond_123
move v3, v0
goto/16 :goto_9b
:cond_126
move v0, v1
goto/16 :goto_5e
.end method