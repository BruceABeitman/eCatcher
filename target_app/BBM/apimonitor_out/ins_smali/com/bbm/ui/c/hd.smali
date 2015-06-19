.class final Lcom/bbm/ui/c/hd;
.super Lcom/bbm/d/b/f;
.source "StoreFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/gz;
.method constructor <init>(Lcom/bbm/ui/c/gz;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/hd;->a:Lcom/bbm/ui/c/gz;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 12
const/4 v3, 0x0
const/4 v2, 0x1
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/bbm/ui/c/hd;->a:Lcom/bbm/ui/c/gz;
iget-object v0, v0, Lcom/bbm/ui/c/gz;->a:Ljava/util/List;
if-nez v0, :cond_b7
move v1, v2
:goto_e
iget-object v0, p0, Lcom/bbm/ui/c/hd;->a:Lcom/bbm/ui/c/gz;
invoke-static {v0}, Lcom/bbm/ui/c/gz;->j(Lcom/bbm/ui/c/gz;)Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->A()Lcom/bbm/j/w;
move-result-object v0
new-instance v5, Ljava/util/HashSet;
invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v6
if-eqz v6, :cond_66
move v1, v2
:cond_24
if-nez v1, :cond_ad
new-instance v6, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/bbm/ui/c/hd;->a:Lcom/bbm/ui/c/gz;
iget-object v0, v0, Lcom/bbm/ui/c/gz;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V
new-instance v7, Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/HashSet;->size()I
move-result v0
invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(I)V
iget-object v0, p0, Lcom/bbm/ui/c/hd;->a:Lcom/bbm/ui/c/gz;
iget-object v0, v0, Lcom/bbm/ui/c/gz;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v8
:goto_44
invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_a0
invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/b/j;
iget-object v9, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
invoke-virtual {v5, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_92
invoke-virtual {v0, v2}, Lcom/bbm/l/b/j;->a(Z)V
new-instance v9, Lcom/bbm/ui/c/hf;
sget-object v10, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;
invoke-direct {v9, v10, v0}, Lcom/bbm/ui/c/hf;-><init>(Lcom/bbm/ui/c/hg;Lcom/bbm/l/b/j;)V
invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_44
:cond_66
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
:goto_70
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_24
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gj;
sget-object v7, Lcom/bbm/ui/c/he;->a:[I
iget-object v8, v0, Lcom/bbm/d/gj;->g:Lcom/bbm/util/bh;
invoke-virtual {v8}, Lcom/bbm/util/bh;->ordinal()I
move-result v8
aget v7, v7, v8
packed-switch v7, :pswitch_data_ba
goto :goto_70
:pswitch_8a
move v1, v2
goto :goto_70
:pswitch_8c
iget-object v0, v0, Lcom/bbm/d/gj;->a:Ljava/lang/String;
invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
goto :goto_70
:cond_92
invoke-virtual {v0, v3}, Lcom/bbm/l/b/j;->a(Z)V
new-instance v9, Lcom/bbm/ui/c/hf;
sget-object v10, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;
invoke-direct {v9, v10, v0}, Lcom/bbm/ui/c/hf;-><init>(Lcom/bbm/ui/c/hg;Lcom/bbm/l/b/j;)V
invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_44
:cond_a0
invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
new-instance v0, Lcom/bbm/ui/gp;
sget-object v2, Lcom/bbm/ui/c/hg;->b:Lcom/bbm/ui/c/hg;
invoke-direct {v0, v6, v2}, Lcom/bbm/ui/gp;-><init>(Ljava/util/List;Ljava/lang/Object;)V
invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ad
if-eqz v1, :cond_b5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_b4
return-object v0
:cond_b5
move-object v0, v4
goto :goto_b4
:cond_b7
move v1, v3
goto/16 :goto_e
:pswitch_data_ba
.packed-switch 0x1
:pswitch_8a
:pswitch_8c
.end packed-switch
.end method