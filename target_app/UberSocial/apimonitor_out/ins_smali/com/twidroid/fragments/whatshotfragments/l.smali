.class public abstract Lcom/twidroid/fragments/whatshotfragments/l;
.super Lcom/twidroid/fragments/base/o;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/base/o;-><init>()V
return-void
.end method
.method protected s_()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/o;->s_()V
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/l;->getListView()Landroid/widget/ListView;
move-result-object v0
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V
new-instance v0, Lcom/twidroid/ui/b/f;
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/l;->v:Lcom/twidroid/ui/themes/r;
iget-object v1, v1, Lcom/twidroid/ui/themes/r;->T:[I
invoke-direct {v0, v1}, Lcom/twidroid/ui/b/f;-><init>([I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/l;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/l;->getListView()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V
return-void
.end method