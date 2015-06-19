.class public abstract Lcom/instagram/ui/d/c;
.super Lcom/instagram/ui/d/a;
.source "PagingNoResultsEnhancedAdapter.java"
.field protected m:Z
.field protected final n:Lcom/instagram/ui/widget/loadmore/c;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z
new-instance v0, Lcom/instagram/ui/widget/loadmore/f;
invoke-direct {v0}, Lcom/instagram/ui/widget/loadmore/f;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/ui/widget/loadmore/c;)V
.registers 4
invoke-direct {p0, p1}, Lcom/instagram/ui/d/a;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z
iput-object p2, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;
return-void
.end method
.method protected abstract a()Landroid/view/View;
.end method
.method public final b(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->c(Ljava/util/List;)V
return-void
.end method
.method public final c(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->notifyDataSetChanged()V
return-void
.end method
.method public final d(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
if-eqz p1, :cond_c
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
:cond_c
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->notifyDataSetChanged()V
return-void
.end method
.method public final e(Ljava/util/List;)V
.registers 5
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_4
:cond_4
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_1a
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
iget-object v2, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_4
invoke-interface {v0}, Ljava/util/Iterator;->remove()V
goto :goto_4
:cond_1a
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->notifyDataSetChanged()V
return-void
.end method
.method public getCount()I
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-lez v2, :cond_1c
iget-object v2, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
iget-object v3, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;
invoke-interface {v3}, Lcom/instagram/ui/widget/loadmore/c;->g()Z
move-result v3
if-eqz v3, :cond_1a
:goto_18
add-int/2addr v0, v2
:goto_19
:cond_19
return v0
:cond_1a
move v0, v1
goto :goto_18
:cond_1c
iget-boolean v2, p0, Lcom/instagram/ui/d/c;->m:Z
if-nez v2, :cond_19
move v0, v1
goto :goto_19
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge p1, v0, :cond_f
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
:goto_e
return-object v0
:cond_f
const/4 v0, 0x0
goto :goto_e
.end method
.method public getItemViewType(I)I
.registers 3
iget-boolean v0, p0, Lcom/instagram/ui/d/c;->m:Z
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/instagram/ui/d/c;->k:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p1, v0, :cond_20
iget-object v0, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;
invoke-interface {v0}, Lcom/instagram/ui/widget/loadmore/c;->g()Z
move-result v0
if-eqz v0, :cond_20
const/4 v0, 0x2
goto :goto_d
:cond_20
const/4 v0, 0x0
goto :goto_d
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 6
invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->getItemViewType(I)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_1e
if-nez p2, :cond_11
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->e()Landroid/content/Context;
move-result-object v0
invoke-static {v0, p3}, Lcom/instagram/ui/widget/loadmore/d;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
:cond_11
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/loadmore/e;
iget-object v1, p0, Lcom/instagram/ui/d/c;->n:Lcom/instagram/ui/widget/loadmore/c;
invoke-static {v0, v1}, Lcom/instagram/ui/widget/loadmore/d;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V
move-object v0, p2
:goto_1d
return-object v0
:cond_1e
invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->getItemViewType(I)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_2a
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->a()Landroid/view/View;
move-result-object v0
goto :goto_1d
:cond_2a
invoke-super {p0, p1, p2, p3}, Lcom/instagram/ui/d/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
goto :goto_1d
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x3
return v0
.end method
.method public isEmpty()Z
.registers 2
invoke-virtual {p0}, Lcom/instagram/ui/d/c;->getCount()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isEnabled(I)Z
.registers 4
invoke-virtual {p0, p1}, Lcom/instagram/ui/d/c;->getItemViewType(I)I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_9
const/4 v0, 0x0
:goto_8
return v0
:cond_9
invoke-super {p0, p1}, Lcom/instagram/ui/d/a;->isEnabled(I)Z
move-result v0
goto :goto_8
.end method