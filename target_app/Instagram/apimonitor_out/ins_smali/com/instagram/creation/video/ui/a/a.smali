.class public final Lcom/instagram/creation/video/ui/a/a;
.super Ljava/lang/Object;
.source "PreviewIndicatorHelper.java"
.implements Lcom/instagram/creation/video/d/b;
.field private a:Landroid/view/View;
.field private b:Landroid/view/View;
.field private c:Landroid/view/animation/Animation;
.field private d:Landroid/view/animation/Animation;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
.registers 8
const-wide/16 v4, 0xfa
const/4 v3, 0x1
const/high16 v2, 0x3f80
const/4 v1, 0x0
iput-object p1, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;
invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V
new-instance v0, Landroid/view/animation/AlphaAnimation;
invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;
invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;
invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V
return-object p0
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/creation/video/ui/a/a;->d:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_18
return-void
.end method
.method public final b(Landroid/view/View;)Lcom/instagram/creation/video/ui/a/a;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;
return-object p0
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
iget-object v1, p0, Lcom/instagram/creation/video/ui/a/a;->c:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
:cond_18
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_f
return-void
.end method
.method public final d()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->a:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_f
return-void
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_a
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/instagram/creation/video/ui/a/a;->b:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_a
return-void
.end method