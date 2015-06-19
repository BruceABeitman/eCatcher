.class public Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;
.super Landroid/widget/FrameLayout;
.source "CloudCircleProgressView.java"
.field private mAnimSet:Landroid/view/animation/AnimationSet;
.field private mCloudIV:Landroid/widget/ImageView;
.field private mProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;
.field private mRunnable:Ljava/lang/Runnable;
.field private mStop:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mRunnable:Ljava/lang/Runnable;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->inflateLayout(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mRunnable:Ljava/lang/Runnable;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->inflateLayout(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->init(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;
invoke-direct {v0, p0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView$1;-><init>(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)V
iput-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mRunnable:Ljava/lang/Runnable;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->inflateLayout(Landroid/content/Context;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->init(Landroid/content/Context;)V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mCloudIV:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;)Landroid/view/animation/AnimationSet;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
return-object v0
.end method
.method private inflateLayout(Landroid/content/Context;)V
.registers 6
const-string/jumbo v2, "layout_inflater"
invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/LayoutInflater;
const v2, 0x7f0300cb
const/4 v3, 0x1
invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v2, 0x7f0a0462
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/ImageView;
iput-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mCloudIV:Landroid/widget/ImageView;
const v2, 0x7f0a0461
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;
iput-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;
return-void
.end method
.method private init(Landroid/content/Context;)V
.registers 8
const/4 v5, 0x1
const/4 v4, 0x0
new-instance v2, Landroid/view/animation/AnimationSet;
invoke-direct {v2, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V
iput-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v2, 0x3f80
invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
new-instance v1, Landroid/view/animation/TranslateAnimation;
const/high16 v2, 0x4248
const/high16 v3, -0x3db8
invoke-direct {v1, v2, v3, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
invoke-virtual {v2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
invoke-virtual {v2, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
const-wide/16 v3, 0x3e8
invoke-virtual {v2, v3, v4}, Landroid/view/animation/AnimationSet;->setDuration(J)V
iget-object v2, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mAnimSet:Landroid/view/animation/AnimationSet;
invoke-virtual {v2, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
return-void
.end method
.method public setProgress(I)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mProgressView:Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/nearbytransfer/view/CircleProgressBarView;->setProgress(I)V
const/16 v0, 0x64
if-lt p1, v0, :cond_c
invoke-virtual {p0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->stopCloud()V
:cond_c
return-void
.end method
.method public startCloud()V
.registers 3
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mRunnable:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->post(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mCloudIV:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public stopCloud()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mStop:Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mRunnable:Ljava/lang/Runnable;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->removeCallbacks(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/pinguo/camera360/nearbytransfer/view/CloudCircleProgressView;->mCloudIV:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method