.class final Lcom/bbm/ui/c/df;
.super Lcom/bbm/d/b/f;
.source "GroupsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/de;
.method constructor <init>(Lcom/bbm/ui/c/de;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/c/df;->a:Lcom/bbm/ui/c/de;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/g/am;->e()Lcom/bbm/j/w;
move-result-object v5
invoke-interface {v5}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_2c
move v1, v3
:goto_16
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/g/am;->a()Lcom/bbm/j/w;
move-result-object v5
invoke-interface {v5}, Lcom/bbm/j/w;->b()Z
move-result v0
if-eqz v0, :cond_45
:goto_24
if-eqz v3, :cond_5e
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_2b
return-object v0
:cond_2c
move v1, v2
:goto_2d
invoke-interface {v5}, Lcom/bbm/j/w;->d()I
move-result v0
if-ge v1, v0, :cond_8e
invoke-interface {v5, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/a;
new-instance v6, Lcom/bbm/ui/c/ds;
invoke-direct {v6, v0}, Lcom/bbm/ui/c/ds;-><init>(Lcom/bbm/g/a;)V
invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_2d
:cond_45
move v3, v2
:goto_46
invoke-interface {v5}, Lcom/bbm/j/w;->d()I
move-result v0
if-ge v3, v0, :cond_8c
invoke-interface {v5, v3}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/g/ai;
new-instance v6, Lcom/bbm/ui/c/ds;
invoke-direct {v6, v0}, Lcom/bbm/ui/c/ds;-><init>(Lcom/bbm/g/ai;)V
invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_46
:cond_5e
iget-object v0, p0, Lcom/bbm/ui/c/df;->a:Lcom/bbm/ui/c/de;
invoke-static {v0}, Lcom/bbm/ui/c/de;->a(Lcom/bbm/ui/c/de;)Landroid/widget/GridView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/GridView;->getEmptyView()Landroid/view/View;
move-result-object v0
if-nez v0, :cond_82
iget-object v0, p0, Lcom/bbm/ui/c/df;->a:Lcom/bbm/ui/c/de;
invoke-static {v0}, Lcom/bbm/ui/c/de;->b(Lcom/bbm/ui/c/de;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/df;->a:Lcom/bbm/ui/c/de;
invoke-static {v0}, Lcom/bbm/ui/c/de;->a(Lcom/bbm/ui/c/de;)Landroid/widget/GridView;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/c/df;->a:Lcom/bbm/ui/c/de;
invoke-static {v1}, Lcom/bbm/ui/c/de;->b(Lcom/bbm/ui/c/de;)Landroid/view/View;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/GridView;->setEmptyView(Landroid/view/View;)V
:cond_82
new-instance v0, Lcom/bbm/ui/c/dg;
invoke-direct {v0, p0}, Lcom/bbm/ui/c/dg;-><init>(Lcom/bbm/ui/c/df;)V
invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
move-object v0, v4
goto :goto_2b
:cond_8c
move v3, v1
goto :goto_24
:cond_8e
move v1, v2
goto :goto_16
.end method