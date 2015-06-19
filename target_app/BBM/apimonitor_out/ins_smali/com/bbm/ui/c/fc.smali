.class final Lcom/bbm/ui/c/fc;
.super Lcom/bbm/ui/a/r;
.source "PeopleYouKnowFragment.java"
.field final synthetic i:Lcom/bbm/ui/c/ey;
.method public constructor <init>(Lcom/bbm/ui/c/ey;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;Lcom/bbm/util/b/d;)V
.registers 6
iput-object p1, p0, Lcom/bbm/ui/c/fc;->i:Lcom/bbm/ui/c/ey;
invoke-direct {p0, p2, p3, p4, p5}, Lcom/bbm/ui/a/r;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;Lcom/bbm/util/b/d;)V
return-void
.end method
.method protected final a(Landroid/view/View;Lcom/bbm/iceberg/j;)V
.registers 5
const v1, 0x7f0a0464
invoke-super {p0, p1, p2}, Lcom/bbm/ui/a/r;->a(Landroid/view/View;Lcom/bbm/iceberg/j;)V
iget-object v0, p0, Lcom/bbm/ui/c/fc;->i:Lcom/bbm/ui/c/ey;
invoke-static {v0}, Lcom/bbm/ui/c/ey;->e(Lcom/bbm/ui/c/ey;)Lcom/bbm/util/cr;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_22
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:goto_21
return-void
:cond_22
invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_21
.end method
.method protected final a(Landroid/view/View;Lcom/bbm/ui/c/hj;)V
.registers 5
check-cast p1, Lcom/bbm/ui/ListHeaderView;
sget-object v0, Lcom/bbm/ui/c/hj;->b:Lcom/bbm/ui/c/hj;
if-ne p2, v0, :cond_16
iget-object v0, p0, Lcom/bbm/ui/c/fc;->f:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0e037a
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
:cond_16
invoke-virtual {p0, p2}, Lcom/bbm/ui/c/fc;->b(Ljava/lang/Object;)I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setRightLabel(Ljava/lang/String;)V
return-void
.end method
.method protected final bridge synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/bbm/ui/c/hj;
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/c/fc;->a(Landroid/view/View;Lcom/bbm/ui/c/hj;)V
return-void
.end method
.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
.registers 3
check-cast p2, Lcom/bbm/iceberg/j;
invoke-virtual {p0, p1, p2}, Lcom/bbm/ui/c/fc;->a(Landroid/view/View;Lcom/bbm/iceberg/j;)V
return-void
.end method