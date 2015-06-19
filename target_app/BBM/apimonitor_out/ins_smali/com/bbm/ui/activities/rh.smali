.class final Lcom/bbm/ui/activities/rh;
.super Lcom/bbm/ui/gk;
.source "GroupPictureActivity.java"
.field final synthetic f:Lcom/bbm/ui/activities/GroupPictureActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;Landroid/content/Context;Lcom/bbm/j/r;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v0
invoke-direct {p0, p2, p3, v0}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
return-void
.end method
.method protected final a()Landroid/view/View;
.registers 4
new-instance v1, Lcom/bbm/ui/ListHeaderView;
iget-object v0, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-direct {v1, v0}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V
move-object v0, v1
check-cast v0, Lcom/bbm/ui/ListHeaderView;
const/16 v2, 0x8
invoke-virtual {v0, v2}, Lcom/bbm/ui/ListHeaderView;->setRightLabelViewVisibility(I)V
return-object v1
.end method
.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
.registers 6
iget-object v0, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300a8
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/ri;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/ri;-><init>(Lcom/bbm/ui/activities/rh;)V
const v0, 0x7f0a0408
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/SquaredObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/ri;->a:Lcom/bbm/ui/SquaredObservingImageView;
const v0, 0x7f0a0409
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/ri;->b:Landroid/widget/ImageView;
const v0, 0x7f0a040a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/ri;->c:Landroid/widget/ImageView;
const v0, 0x7f0a040b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ri;->d:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
check-cast p1, Lcom/bbm/ui/activities/rg;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p1, Lcom/bbm/ui/activities/rg;->b:Lcom/bbm/ui/activities/rf;
invoke-virtual {v1}, Lcom/bbm/ui/activities/rf;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p1, Lcom/bbm/ui/activities/rg;->a:Lcom/bbm/g/af;
iget-object v1, v1, Lcom/bbm/g/af;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 5
check-cast p2, Lcom/bbm/ui/activities/rf;
check-cast p1, Lcom/bbm/ui/ListHeaderView;
sget-object v0, Lcom/bbm/ui/activities/rf;->a:Lcom/bbm/ui/activities/rf;
if-ne p2, v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
const v1, 0x7f0e0602
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_11
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
return-void
:cond_15
iget-object v0, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
const v1, 0x7f0e0102
invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_11
.end method
.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
.registers 10
const/16 v3, 0x8
const/4 v2, 0x0
check-cast p2, Lcom/bbm/ui/activities/rg;
iget-object v4, p2, Lcom/bbm/ui/activities/rg;->a:Lcom/bbm/g/af;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/ri;
iget-object v1, p2, Lcom/bbm/ui/activities/rg;->b:Lcom/bbm/ui/activities/rf;
sget-object v5, Lcom/bbm/ui/activities/rf;->a:Lcom/bbm/ui/activities/rf;
if-ne v1, v5, :cond_98
const/4 v1, 0x1
:goto_14
if-eqz v1, :cond_9b
iget-object v1, v0, Lcom/bbm/ui/activities/ri;->d:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v2, v4, Lcom/bbm/g/af;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->d(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v1
iget-object v2, v0, Lcom/bbm/ui/activities/ri;->d:Landroid/widget/TextView;
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
invoke-interface {v1}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, v0, Lcom/bbm/ui/activities/ri;->b:Landroid/widget/ImageView;
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ri;->c:Landroid/widget/ImageView;
:cond_4a
move v2, v3
:goto_4b
:cond_4b
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->l(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/util/b/d;
move-result-object v1
iget-object v2, v4, Lcom/bbm/g/af;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v1
if-nez v1, :cond_90
iget-object v1, v4, Lcom/bbm/g/af;->j:Ljava/lang/String;
iget-object v2, v0, Lcom/bbm/ui/activities/ri;->a:Lcom/bbm/ui/SquaredObservingImageView;
invoke-virtual {v2}, Lcom/bbm/ui/SquaredObservingImageView;->getWidth()I
move-result v2
iget-object v3, v0, Lcom/bbm/ui/activities/ri;->a:Lcom/bbm/ui/SquaredObservingImageView;
invoke-virtual {v3}, Lcom/bbm/ui/SquaredObservingImageView;->getHeight()I
move-result v3
invoke-static {v1, v2, v3}, Lcom/bbm/util/b/g;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/GroupPictureActivity;->l(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/util/b/d;
move-result-object v2
iget-object v3, v4, Lcom/bbm/g/af;->j:Ljava/lang/String;
new-instance v5, Lcom/bbm/d/fd;
iget-object v6, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-virtual {v6}, Lcom/bbm/ui/activities/GroupPictureActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-direct {v5, v6, v1}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v2, v3, v5}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V
iget-object v1, p0, Lcom/bbm/ui/activities/rh;->f:Lcom/bbm/ui/activities/GroupPictureActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->l(Lcom/bbm/ui/activities/GroupPictureActivity;)Lcom/bbm/util/b/d;
move-result-object v1
iget-object v2, v4, Lcom/bbm/g/af;->j:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v1
:cond_90
iget-object v0, v0, Lcom/bbm/ui/activities/ri;->a:Lcom/bbm/ui/SquaredObservingImageView;
iget-object v1, v1, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, v1}, Lcom/bbm/ui/SquaredObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
:cond_98
move v1, v2
goto/16 :goto_14
:cond_9b
iget-object v1, v0, Lcom/bbm/ui/activities/ri;->d:Landroid/widget/TextView;
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v5, v0, Lcom/bbm/ui/activities/ri;->b:Landroid/widget/ImageView;
iget-boolean v1, v4, Lcom/bbm/g/af;->b:Z
if-eqz v1, :cond_b5
move v1, v2
:goto_a7
invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/ui/activities/ri;->c:Landroid/widget/ImageView;
iget-boolean v5, v4, Lcom/bbm/g/af;->d:Z
if-nez v5, :cond_4b
iget-boolean v5, v4, Lcom/bbm/g/af;->e:Z
if-eqz v5, :cond_4a
goto :goto_4b
:cond_b5
move v1, v3
goto :goto_a7
.end method