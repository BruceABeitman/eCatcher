.class public abstract Lcom/bbm/ui/dy;
.super Landroid/widget/BaseAdapter;
.source "MonitoredAdapter.java"
.implements Landroid/widget/ListAdapter;
.implements Lcom/bbm/j/y;
.field  a:Lcom/bbm/util/fj;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Lcom/bbm/util/fj;
invoke-direct {v0}, Lcom/bbm/util/fj;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/dy;->a:Lcom/bbm/util/fj;
return-void
.end method
.method public abstract a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method
.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/dy;->a:Lcom/bbm/util/fj;
invoke-virtual {v0}, Lcom/bbm/util/fj;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
goto :goto_6
:cond_16
return-void
.end method
.method public c()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/dy;->a:Lcom/bbm/util/fj;
invoke-virtual {v0}, Lcom/bbm/util/fj;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
goto :goto_6
:cond_16
return-void
.end method
.method public abstract getItem(I)Ljava/lang/Object;
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 12
const v7, 0x7f0a0025
const v6, 0x7f0a0023
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {p0, p1}, Lcom/bbm/ui/dy;->getItem(I)Ljava/lang/Object;
move-result-object v4
invoke-virtual {p0, p1}, Lcom/bbm/ui/dy;->getItemViewType(I)I
move-result v5
if-eqz p2, :cond_58
invoke-virtual {p2, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/j/k;
iget-object v1, p0, Lcom/bbm/ui/dy;->a:Lcom/bbm/util/fj;
invoke-virtual {v1, v0}, Lcom/bbm/util/fj;->b(Ljava/lang/Object;)V
invoke-virtual {p2, v6}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/Integer;
if-eqz v1, :cond_54
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
if-ne v1, v5, :cond_54
const/4 v1, 0x1
:goto_2c
move v2, v1
move-object v1, v0
:goto_2e
if-nez v2, :cond_56
move-object v0, v3
:goto_31
if-nez v0, :cond_37
invoke-virtual {p0, p1, v3, p3}, Lcom/bbm/ui/dy;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
:cond_37
new-instance v2, Lcom/bbm/ui/dz;
invoke-direct {v2, p0, v0, v4}, Lcom/bbm/ui/dz;-><init>(Lcom/bbm/ui/dy;Landroid/view/View;Ljava/lang/Object;)V
iget-object v3, p0, Lcom/bbm/ui/dy;->a:Lcom/bbm/util/fj;
invoke-virtual {v3, v2}, Lcom/bbm/util/fj;->a(Ljava/lang/Object;)V
invoke-virtual {v2}, Lcom/bbm/j/k;->c()V
if-eqz v1, :cond_49
invoke-virtual {v1}, Lcom/bbm/j/k;->e()V
:cond_49
invoke-virtual {v0, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v6, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
return-object v0
:cond_54
move v1, v2
goto :goto_2c
:cond_56
move-object v0, p2
goto :goto_31
:cond_58
move-object v1, v3
goto :goto_2e
.end method