.class final Lcom/bbm/ui/c/bf;
.super Lcom/bbm/j/k;
.source "ChatsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/bf;->a:Lcom/bbm/ui/c/at;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 10
const/4 v5, 0x1
const/4 v3, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->D()Lcom/bbm/j/w;
move-result-object v0
if-nez v0, :cond_d
:goto_c
:cond_c
return-void
:cond_d
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->D()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
if-eqz v0, :cond_8a
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_8a
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v6
move v2, v3
move v4, v3
:goto_29
invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_58
invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gl;
iget-object v7, v1, Lcom/bbm/d/gl;->f:Lcom/bbm/util/bh;
sget-object v8, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v7, v8, :cond_9a
invoke-static {v1}, Lcom/bbm/util/dl;->a(Lcom/bbm/d/gl;)Z
move-result v2
if-eqz v2, :cond_97
invoke-static {v1}, Lcom/bbm/util/dl;->b(Lcom/bbm/d/gl;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v2
invoke-virtual {v2, v1}, Lcom/bbm/d/a;->z(Ljava/lang/String;)Lcom/bbm/d/fl;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d/fl;->h:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_97
move v1, v5
move v2, v5
:goto_55
move v4, v2
move v2, v1
goto :goto_29
:cond_58
if-eqz v2, :cond_c
if-nez v4, :cond_c
iget-object v1, p0, Lcom/bbm/ui/c/bf;->a:Lcom/bbm/ui/c/at;
invoke-static {v1}, Lcom/bbm/ui/c/at;->f(Lcom/bbm/ui/c/at;)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/c/bf;->a:Lcom/bbm/ui/c/at;
invoke-static {v1}, Lcom/bbm/ui/c/at;->g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
move-result-object v1
if-nez v0, :cond_75
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "messageList can not be null"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_75
iput-object v0, v1, Lcom/bbm/ui/e/cd;->b:Ljava/util/List;
invoke-virtual {v1}, Lcom/bbm/ui/e/cd;->a()V
iget-object v0, p0, Lcom/bbm/ui/c/bf;->a:Lcom/bbm/ui/c/at;
iget-object v1, p0, Lcom/bbm/ui/c/bf;->a:Lcom/bbm/ui/c/at;
invoke-static {v1}, Lcom/bbm/ui/c/at;->h(Lcom/bbm/ui/c/at;)Landroid/widget/ExpandableListView;
move-result-object v1
invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z
move-result v1
invoke-static {v0, v1}, Lcom/bbm/ui/c/at;->a(Lcom/bbm/ui/c/at;Z)V
goto :goto_c
:cond_8a
iget-object v0, p0, Lcom/bbm/ui/c/bf;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->f(Lcom/bbm/ui/c/at;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_c
:cond_97
move v1, v5
move v2, v4
goto :goto_55
:cond_9a
move v1, v2
move v2, v4
goto :goto_55
.end method