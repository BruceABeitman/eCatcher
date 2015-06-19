.class final Lcom/bbm/ui/activities/aex;
.super Lcom/bbm/ui/ef;
.source "SelectContactActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/SelectContactActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/SelectContactActivity;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300ee
invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/aey;
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/aey;-><init>(Lcom/bbm/ui/activities/aex;B)V
const v0, 0x7f0a044f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/aey;->a:Landroid/widget/TextView;
const v0, 0x7f0a04d2
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/aey;->b:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a04d3
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/aey;->c:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/d/gp;
iget-object v0, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 11
const v7, 0x7f0901ae
const v6, 0x7f09000f
const/4 v5, 0x0
const/4 v2, 0x0
check-cast p2, Lcom/bbm/d/gp;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/aey;
iget-object v1, v0, Lcom/bbm/ui/activities/aey;->a:Landroid/widget/TextView;
invoke-static {p2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->u(Lcom/bbm/ui/activities/SelectContactActivity;)Z
move-result v1
if-eqz v1, :cond_30
iget-object v3, v0, Lcom/bbm/ui/activities/aey;->a:Landroid/widget/TextView;
iget-boolean v1, p2, Lcom/bbm/d/gp;->w:Z
if-eqz v1, :cond_9a
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->v(Lcom/bbm/ui/activities/SelectContactActivity;)Landroid/graphics/drawable/Drawable;
move-result-object v1
:goto_2d
invoke-virtual {v3, v1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
:cond_30
iget-object v1, v0, Lcom/bbm/ui/activities/aey;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v2, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->w(Lcom/bbm/ui/activities/SelectContactActivity;)Lcom/bbm/d/a;
move-result-object v2
iget-object v3, p2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iget-object v4, p2, Lcom/bbm/d/gp;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v4}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1, p2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_9c
iget-object v2, v0, Lcom/bbm/ui/activities/aey;->c:Landroid/widget/TextView;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/ui/activities/aey;->c:Landroid/widget/TextView;
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
:goto_59
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
iget-object v2, p2, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_77
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->c(Lcom/bbm/ui/activities/SelectContactActivity;)Ljava/util/ArrayList;
move-result-object v1
invoke-static {p2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_a4
:cond_77
const/4 v1, 0x1
invoke-virtual {p1, v1}, Landroid/view/View;->setActivated(Z)V
iget-object v1, v0, Lcom/bbm/ui/activities/aey;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, v0, Lcom/bbm/ui/activities/aey;->c:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
:goto_99
return-void
:cond_9a
move-object v1, v2
goto :goto_2d
:cond_9c
iget-object v1, v0, Lcom/bbm/ui/activities/aey;->c:Landroid/widget/TextView;
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_59
:cond_a4
invoke-virtual {p1, v5}, Landroid/view/View;->setActivated(Z)V
iget-object v1, v0, Lcom/bbm/ui/activities/aey;->a:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v2
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, v0, Lcom/bbm/ui/activities/aey;->c:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/aex;->b:Lcom/bbm/ui/activities/SelectContactActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/SelectContactActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_99
.end method
.method public final areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x0
return v0
.end method