.class public Lcom/pinguo/camera360/shop/view/LoadingFailView;
.super Landroid/widget/RelativeLayout;
.source "LoadingFailView.java"
.field private mIconImage:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/LoadingFailView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a033a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingFailView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingFailView;->mIconImage:Landroid/widget/ImageView;
return-void
.end method
.method protected onVisibilityChanged(Landroid/view/View;I)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V
return-void
.end method
.method public startAnimtion()V
.registers 7
const/high16 v5, 0x4000
new-instance v0, Landroid/view/animation/RotateAnimation;
const/high16 v1, 0x42b4
const/4 v2, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/shop/view/LoadingFailView;->mIconImage:Landroid/widget/ImageView;
invoke-virtual {v3}, Landroid/widget/ImageView;->getMeasuredWidth()I
move-result v3
int-to-float v3, v3
div-float/2addr v3, v5
iget-object v4, p0, Lcom/pinguo/camera360/shop/view/LoadingFailView;->mIconImage:Landroid/widget/ImageView;
invoke-virtual {v4}, Landroid/widget/ImageView;->getMeasuredHeight()I
move-result v4
int-to-float v4, v4
div-float/2addr v4, v5
invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V
const-wide/16 v1, 0x258
invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingFailView;->mIconImage:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method