.class  Lcom/pinguo/album/views/layout/FullImageLayout$Box;
.super Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;
.source "FullImageLayout.java"
.field public mAbsoluteX:I
.field public mCurrentScale:F
.field public mCurrentY:I
.field public mFromScale:F
.field public mFromY:I
.field public mImageH:I
.field public mImageW:I
.field public mScaleMax:F
.field public mScaleMin:F
.field public mToScale:F
.field public mToY:I
.field public mUseViewSize:Z
.field final synthetic this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
.method private constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$Box;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/album/views/layout/FullImageLayout$Box;IFI)Z
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
move-result v0
return v0
.end method
.method private doAnimation(IFI)Z
.registers 6
invoke-virtual {p0, p2}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->clampScale(F)F
move-result p2
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
if-ne v0, p1, :cond_14
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
cmpl-float v0, v0, p2
if-nez v0, :cond_14
const/16 v0, 0x9
if-eq p3, v0, :cond_14
const/4 v0, 0x0
:goto_13
return v0
:cond_14
iput p3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromY:I
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromScale:F
iput p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToY:I
iput p2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->startTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
invoke-static {}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$15()[I
move-result-object v0
aget v0, v0, p3
iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationDuration:I
invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->advanceAnimation()Z
const/4 v0, 0x1
goto :goto_13
.end method
.method private interpolateFlingPage(F)Z
.registers 8
const/4 v2, 0x0
const/high16 v5, 0x3f00
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;
move-result-object v3
invoke-virtual {v3, p1}, Lcom/pinguo/album/views/utils/FlingScroller;->computeScrollOffset(F)V
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
#calls: Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(F)V
invoke-static {v3, v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$20(Lcom/pinguo/album/views/layout/FullImageLayout;F)V
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/album/views/utils/FlingScroller;->getCurrY()I
move-result v3
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$23(Lcom/pinguo/album/views/layout/FullImageLayout;)I
move-result v3
if-le v0, v3, :cond_53
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
invoke-static {v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$23(Lcom/pinguo/album/views/layout/FullImageLayout;)I
move-result v4
if-ne v3, v4, :cond_53
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/album/views/utils/FlingScroller;->getCurrVelocityY()I
move-result v3
neg-int v3, v3
int-to-float v3, v3
add-float/2addr v3, v5
float-to-int v1, v3
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
move-result-object v3
const/4 v4, 0x2
invoke-interface {v3, v1, v4}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onAbsorb(II)V
:goto_4b
:cond_4b
const/high16 v3, 0x3f80
cmpl-float v3, p1, v3
if-ltz v3, :cond_52
const/4 v2, 0x1
:cond_52
return v2
:cond_53
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$24(Lcom/pinguo/album/views/layout/FullImageLayout;)I
move-result v3
if-ge v0, v3, :cond_4b
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget-object v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
invoke-static {v4}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$24(Lcom/pinguo/album/views/layout/FullImageLayout;)I
move-result v4
if-ne v3, v4, :cond_4b
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mPageScroller:Lcom/pinguo/album/views/utils/FlingScroller;
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$19(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/utils/FlingScroller;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/album/views/utils/FlingScroller;->getCurrVelocityY()I
move-result v3
int-to-float v3, v3
add-float/2addr v3, v5
float-to-int v1, v3
iget-object v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
invoke-static {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
move-result-object v3
invoke-interface {v3, v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->onAbsorb(II)V
goto :goto_4b
.end method
.method private interpolateLinear(F)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v3, 0x3f80
cmpl-float v3, p1, v3
if-ltz v3, :cond_11
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToY:I
iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
iput v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
:goto_10
:cond_10
return v1
:cond_11
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromY:I
int-to-float v3, v3
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToY:I
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromY:I
sub-int/2addr v4, v5
int-to-float v4, v4
mul-float/2addr v4, p1
add-float/2addr v3, v4
float-to-int v3, v3
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromScale:F
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
iget v5, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mFromScale:F
sub-float/2addr v4, v5
mul-float/2addr v4, p1
add-float/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
const/16 v4, 0x9
if-ne v3, v4, :cond_3b
invoke-static {p1}, Lcom/pinguo/album/animations/CaptureAnim;->calculateScale(F)F
move-result v0
iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
mul-float/2addr v1, v0
iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
move v1, v2
goto :goto_10
:cond_3b
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToY:I
if-ne v3, v4, :cond_49
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mToScale:F
cmpl-float v3, v3, v4
if-eqz v3, :cond_10
:cond_49
move v1, v2
goto :goto_10
.end method
.method public clampScale(F)F
.registers 5
const v0, 0x3f333333
iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
mul-float/2addr v0, v1
const v1, 0x3fb33333
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
mul-float/2addr v1, v2
invoke-static {p1, v0, v1}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v0
return v0
.end method
.method protected interpolate(F)Z
.registers 4
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
const/4 v1, 0x6
if-ne v0, v1, :cond_a
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->interpolateFlingPage(F)Z
move-result v0
:goto_9
return v0
:cond_a
invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->interpolateLinear(F)Z
move-result v0
goto :goto_9
.end method
.method public startSnapback()Z
.registers 11
const/4 v5, 0x0
iget-wide v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationStartTime:J
const-wide/16 v8, -0x1
cmp-long v6, v6, v8
if-eqz v6, :cond_a
:cond_9
:goto_9
return v5
:cond_a
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
if-nez v6, :cond_1a
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
move-result-object v6
invoke-interface {v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->isHoldingDown()Z
move-result v6
if-nez v6, :cond_9
:cond_1a
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mAnimationKind:I
const/16 v7, 0x8
if-ne v6, v7, :cond_2c
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mListener:Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$0(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/views/layout/FullImageLayout$Listener;
move-result-object v6
invoke-interface {v6}, Lcom/pinguo/album/views/layout/FullImageLayout$Listener;->isHoldingDelete()Z
move-result v6
if-nez v6, :cond_9
:cond_2c
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mInScale:Z
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$1(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
move-result v6
if-eqz v6, :cond_40
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$2(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v6
invoke-virtual {v6, v5}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v6
if-eq p0, v6, :cond_9
:cond_40
iget v4, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoxes:Lcom/pinguo/album/utils/RangeArray;
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$2(Lcom/pinguo/album/views/layout/FullImageLayout;)Lcom/pinguo/album/utils/RangeArray;
move-result-object v6
invoke-virtual {v6, v5}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v6
if-ne p0, v6, :cond_c4
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$3(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
move-result v6
if-eqz v6, :cond_8c
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
const v7, 0x3f333333
mul-float v3, v6, v7
:goto_5d
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mExtraScalingRange:Z
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$3(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
move-result v6
if-eqz v6, :cond_8f
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
const v7, 0x3fb33333
mul-float v2, v6, v7
:goto_6c
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
invoke-static {v6, v3, v2}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F
move-result v0
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$4(Lcom/pinguo/album/views/layout/FullImageLayout;)Z
move-result v6
if-eqz v6, :cond_92
const/4 v4, 0x0
:goto_7b
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentY:I
if-ne v6, v4, :cond_85
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
cmpl-float v6, v6, v0
if-eqz v6, :cond_9
:cond_85
const/4 v5, 0x2
invoke-direct {p0, v4, v0, v5}, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->doAnimation(IFI)Z
move-result v5
goto/16 :goto_9
:cond_8c
iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
goto :goto_5d
:cond_8f
iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMax:F
goto :goto_6c
:cond_92
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
invoke-static {}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$5()I
move-result v7
#calls: Lcom/pinguo/album/views/layout/FullImageLayout;->calculateStableBound(FI)V
invoke-static {v6, v0, v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$6(Lcom/pinguo/album/views/layout/FullImageLayout;FI)V
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#calls: Lcom/pinguo/album/views/layout/FullImageLayout;->viewTallerThanScaledImage(F)Z
invoke-static {v6, v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$21(Lcom/pinguo/album/views/layout/FullImageLayout;F)Z
move-result v6
if-nez v6, :cond_b3
iget v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mCurrentScale:F
sub-float v1, v6, v0
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFocusY:F
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$22(Lcom/pinguo/album/views/layout/FullImageLayout;)F
move-result v6
mul-float/2addr v6, v1
const/high16 v7, 0x3f00
add-float/2addr v6, v7
float-to-int v6, v6
add-int/2addr v4, v6
:cond_b3
iget-object v6, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundTop:I
invoke-static {v6}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$23(Lcom/pinguo/album/views/layout/FullImageLayout;)I
move-result v6
iget-object v7, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;
#getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mBoundBottom:I
invoke-static {v7}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$24(Lcom/pinguo/album/views/layout/FullImageLayout;)I
move-result v7
invoke-static {v4, v6, v7}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v4
goto :goto_7b
:cond_c4
const/4 v4, 0x0
iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$Box;->mScaleMin:F
goto :goto_7b
.end method