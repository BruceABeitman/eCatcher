.class public abstract Lcom/instagram/ui/menu/e;
.super Lcom/instagram/base/a/c;
.source "IgMenuFragment.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/base/a/c;-><init>()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->layout_listview:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/base/a/c;->a(Landroid/os/Bundle;)V
new-instance v0, Lcom/instagram/ui/menu/r;
invoke-virtual {p0}, Lcom/instagram/ui/menu/e;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/menu/r;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/instagram/ui/menu/e;->a(Landroid/widget/ListAdapter;)V
return-void
.end method
.method public a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Lcom/instagram/base/a/c;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/ui/menu/e;->o()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/at;->row_text_padding:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0}, Lcom/instagram/ui/menu/e;->q_()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v2, v0, v2, v0}, Landroid/widget/ListView;->setPadding(IIII)V
invoke-virtual {p0}, Lcom/instagram/ui/menu/e;->q_()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setClipToPadding(Z)V
return-void
.end method
.method protected final a(Ljava/util/Collection;)V
.registers 3
invoke-virtual {p0}, Lcom/instagram/ui/menu/e;->c()Landroid/widget/ListAdapter;
move-result-object v0
check-cast v0, Lcom/instagram/ui/menu/r;
invoke-virtual {v0, p1}, Lcom/instagram/ui/menu/r;->a(Ljava/util/Collection;)V
return-void
.end method