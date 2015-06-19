.class public final Lcom/bbm/ui/activities/sg;
.super Lcom/bbm/ui/ef;
.source "GroupPictureCommentsActivity.java"
.field final synthetic b:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
.method public constructor <init>(Lcom/bbm/ui/activities/GroupPictureCommentsActivity;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/sg;->b:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-direct {p0, p2}, Lcom/bbm/ui/ef;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method protected final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
iget-object v0, p0, Lcom/bbm/ui/activities/sg;->b:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300ce
const/4 v2, 0x0
invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/sh;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/sh;-><init>(Lcom/bbm/ui/activities/sg;)V
const v0, 0x7f0a0482
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, v2, Lcom/bbm/ui/activities/sh;->a:Lcom/bbm/ui/ObservingImageView;
const v0, 0x7f0a0483
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, v2, Lcom/bbm/ui/activities/sh;->b:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a0484
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, v2, Lcom/bbm/ui/activities/sh;->c:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a0485
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/sh;->d:Landroid/widget/TextView;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, Lcom/bbm/g/ag;
iget-object v0, p1, Lcom/bbm/g/ag;->c:Ljava/lang/String;
return-object v0
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 7
check-cast p2, Lcom/bbm/g/ag;
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/sh;
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v2, p2, Lcom/bbm/g/ag;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v1
iget-object v1, v1, Lcom/bbm/g/o;->a:Ljava/lang/String;
invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
move-result-object v1
if-nez v1, :cond_6f
iget-object v1, v0, Lcom/bbm/ui/activities/sh;->a:Lcom/bbm/ui/ObservingImageView;
iget-object v2, p0, Lcom/bbm/ui/activities/sg;->b:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0200d6
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_2e
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v1
iget-object v1, v1, Lcom/bbm/d;->c:Lcom/bbm/g/am;
iget-object v2, p2, Lcom/bbm/g/ag;->d:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;
move-result-object v1
invoke-static {v1}, Lcom/bbm/d/b/a;->a(Lcom/bbm/g/o;)Lcom/google/b/a/l;
move-result-object v2
iget-object v3, v0, Lcom/bbm/ui/activities/sh;->b:Lcom/bbm/ui/InlineImageTextView;
invoke-static {v2, v1}, Lcom/bbm/d/b/a;->a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v1, p2, Lcom/bbm/g/ag;->a:Z
if-eqz v1, :cond_75
iget-object v1, v0, Lcom/bbm/ui/activities/sh;->c:Lcom/bbm/ui/InlineImageTextView;
iget-object v2, p0, Lcom/bbm/ui/activities/sg;->b:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0400
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:goto_5d
iget-object v0, v0, Lcom/bbm/ui/activities/sh;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/activities/sg;->b:Lcom/bbm/ui/activities/GroupPictureCommentsActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupPictureCommentsActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-wide v2, p2, Lcom/bbm/g/ag;->e:J
invoke-static {v1, v2, v3}, Lcom/bbm/util/bd;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_6f
iget-object v2, v0, Lcom/bbm/ui/activities/sh;->a:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v2, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_2e
:cond_75
iget-object v1, v0, Lcom/bbm/ui/activities/sh;->c:Lcom/bbm/ui/InlineImageTextView;
iget-object v2, p2, Lcom/bbm/g/ag;->b:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_5d
.end method