.class  Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
.super Landroid/view/animation/Animation;
.source "LoadingView.java"
.field private mInnterTexts:[Landroid/widget/TextView;
.method public constructor <init>([Landroid/widget/TextView;)V
.registers 2
invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V
iput-object p1, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
return-void
.end method
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
.registers 11
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x4
const/4 v4, 0x0
float-to-double v0, p1
const-wide v2, 0x3fb999999999999aL
cmpg-double v0, v0, v2
if-gtz v0, :cond_24
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v4
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v6
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v7
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
:goto_23
return-void
:cond_24
float-to-double v0, p1
const-wide v2, 0x3fd999999999999aL
cmpg-double v0, v0, v2
if-gtz v0, :cond_44
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v6
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v7
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_23
:cond_44
float-to-double v0, p1
const-wide v2, 0x3fe6666666666666L
cmpg-double v0, v0, v2
if-gtz v0, :cond_64
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v6
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v7
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_23
:cond_64
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v4
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v6
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->mInnterTexts:[Landroid/widget/TextView;
aget-object v0, v0, v7
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_23
.end method