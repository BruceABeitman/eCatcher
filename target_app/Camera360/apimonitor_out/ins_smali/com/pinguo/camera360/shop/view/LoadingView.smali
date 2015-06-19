.class public Lcom/pinguo/camera360/shop/view/LoadingView;
.super Landroid/widget/RelativeLayout;
.source "LoadingView.java"
.field private mDotsAnim:Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
.field private mDotsContainer:Landroid/widget/LinearLayout;
.field private mDotsTexts:[Landroid/widget/TextView;
.field private mIconImage:Landroid/widget/ImageView;
.field private mShakeAnim:Landroid/view/animation/Animation;
.field private mSweatImage:Landroid/widget/ImageView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method protected onFinishInflate()V
.registers 4
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a033b
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mSweatImage:Landroid/widget/ImageView;
const v0, 0x7f0a033a
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mIconImage:Landroid/widget/ImageView;
const v0, 0x7f0a033d
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsContainer:Landroid/widget/LinearLayout;
const/4 v0, 0x3
new-array v0, v0, [Landroid/widget/TextView;
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsTexts:[Landroid/widget/TextView;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsTexts:[Landroid/widget/TextView;
const/4 v2, 0x0
const v0, 0x7f0a033e
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v1, v2
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsTexts:[Landroid/widget/TextView;
const/4 v2, 0x1
const v0, 0x7f0a033f
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v1, v2
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsTexts:[Landroid/widget/TextView;
const/4 v2, 0x2
const v0, 0x7f0a0340
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/shop/view/LoadingView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
aput-object v0, v1, v2
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LoadingView;->getContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f04002d
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mShakeAnim:Landroid/view/animation/Animation;
new-instance v0, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsTexts:[Landroid/widget/TextView;
invoke-direct {v0, v1}, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;-><init>([Landroid/widget/TextView;)V
iput-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsAnim:Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsAnim:Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
const-wide/16 v1, 0x320
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsAnim:Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;->setRepeatCount(I)V
return-void
.end method
.method public onWindowFocusChanged(Z)V
.registers 2
invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V
if-eqz p1, :cond_8
invoke-virtual {p0}, Lcom/pinguo/camera360/shop/view/LoadingView;->startAnimation()V
:cond_8
return-void
.end method
.method public startAnimation()V
.registers 4
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mSweatImage:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/AnimationDrawable;
invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mIconImage:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mShakeAnim:Landroid/view/animation/Animation;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
iget-object v1, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsContainer:Landroid/widget/LinearLayout;
iget-object v2, p0, Lcom/pinguo/camera360/shop/view/LoadingView;->mDotsAnim:Lcom/pinguo/camera360/shop/view/LoadingView$DotsAnimation;
invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method