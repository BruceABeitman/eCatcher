.class  Lcom/pinguo/camera360/gallery/ui/PositionController$Box;
.super Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;
.source "PositionController.java"
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
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;-><init>(Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;)V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController;Lcom/pinguo/camera360/gallery/ui/PositionController$Box;)V
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;-><init>(Lcom/pinguo/camera360/gallery/ui/PositionController;)V
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/gallery/ui/PositionController$Box;IFI)Z
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->doAnimation(IFI)Z
move-result v0
return v0
.end method
.method private doAnimation(IFI)Z
.registers 6
invoke-virtual {p0, p2}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->clampScale(F)F
move-result p2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
if-ne v0, p1, :cond_14
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
cmpl-float v0, v0, p2
if-nez v0, :cond_14
const/16 v0, 0x9
if-eq p3, v0, :cond_14
const/4 v0, 0x0
:goto_13
return v0
:cond_14
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationKind:I
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mFromY:I
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mFromScale:F
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToY:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToScale:F
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->startTime()J
move-result-wide v0
iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationStartTime:J
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$17()[I
move-result-object v0
aget v0, v0, p3
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationDuration:I
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->advanceAnimation()Z
const/4 v0, 0x1
goto :goto_13
.end method
.method private interpolateFlingPage(F)Z
.registers 8
const/4 v2, 0x0
const/high16 v5, 0x3f00
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;
move-result-object v3
invoke-virtual {v3, p1}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->computeScrollOffset(F)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
#calls: Lcom/pinguo/camera360/gallery/ui/PositionController;->calculateStableBound(F)V
invoke-static {v3, v4}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$20(Lcom/pinguo/camera360/gallery/ui/PositionController;F)V
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getCurrY()I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundTop:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$23(Lcom/pinguo/camera360/gallery/ui/PositionController;)I
move-result v3
if-le v0, v3, :cond_5b
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundTop:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$23(Lcom/pinguo/camera360/gallery/ui/PositionController;)I
move-result v4
if-ne v3, v4, :cond_5b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getCurrVelocityY()I
move-result v3
neg-int v3, v3
int-to-float v3, v3
add-float/2addr v3, v5
float-to-int v1, v3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v3
if-eqz v3, :cond_53
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v3
const/4 v4, 0x2
invoke-interface {v3, v1, v4}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->onAbsorb(II)V
:cond_53
:goto_53
const/high16 v3, 0x3f80
cmpl-float v3, p1, v3
if-ltz v3, :cond_5a
const/4 v2, 0x1
:cond_5a
return v2
:cond_5b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundBottom:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$24(Lcom/pinguo/camera360/gallery/ui/PositionController;)I
move-result v3
if-ge v0, v3, :cond_53
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundBottom:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$24(Lcom/pinguo/camera360/gallery/ui/PositionController;)I
move-result v4
if-ne v3, v4, :cond_53
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mPageScroller:Lcom/pinguo/camera360/gallery/ui/FlingScroller;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$19(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/FlingScroller;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getCurrVelocityY()I
move-result v3
int-to-float v3, v3
add-float/2addr v3, v5
float-to-int v1, v3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v3
if-eqz v3, :cond_53
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v3
invoke-interface {v3, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->onAbsorb(II)V
goto :goto_53
.end method
.method private interpolateLinear(F)Z
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
const/high16 v3, 0x3f80
cmpl-float v3, p1, v3
if-ltz v3, :cond_11
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToY:I
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToScale:F
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
:goto_10
:cond_10
return v1
:cond_11
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mFromY:I
int-to-float v3, v3
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToY:I
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mFromY:I
sub-int/2addr v4, v5
int-to-float v4, v4
mul-float/2addr v4, p1
add-float/2addr v3, v4
float-to-int v3, v3
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mFromScale:F
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToScale:F
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mFromScale:F
sub-float/2addr v4, v5
mul-float/2addr v4, p1
add-float/2addr v3, v4
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationKind:I
const/16 v4, 0x9
if-ne v3, v4, :cond_3b
invoke-static {p1}, Lcom/pinguo/camera360/gallery/ui/CaptureAnimation;->calculateScale(F)F
move-result v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
mul-float/2addr v1, v0
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
move v1, v2
goto :goto_10
:cond_3b
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToY:I
if-ne v3, v4, :cond_49
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mToScale:F
cmpl-float v3, v3, v4
if-eqz v3, :cond_10
:cond_49
move v1, v2
goto :goto_10
.end method
.method public clampScale(F)F
.registers 5
const v0, 0x3f333333
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMin:F
mul-float/2addr v0, v1
const v1, 0x3fb33333
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMax:F
mul-float/2addr v1, v2
invoke-static {p1, v0, v1}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v0
return v0
.end method
.method protected interpolate(F)Z
.registers 4
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationKind:I
const/4 v1, 0x6
if-ne v0, v1, :cond_a
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->interpolateFlingPage(F)Z
move-result v0
:goto_9
return v0
:cond_a
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->interpolateLinear(F)Z
move-result v0
goto :goto_9
.end method
.method public startSnapback()Z
.registers 11
const/4 v5, 0x0
iget-wide v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationStartTime:J
const-wide/16 v8, -0x1
cmp-long v6, v6, v8
if-eqz v6, :cond_a
:goto_9
:cond_9
return v5
:cond_a
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationKind:I
if-nez v6, :cond_22
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v6
if-eqz v6, :cond_22
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v6
invoke-interface {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->isHoldingDown()Z
move-result v6
if-nez v6, :cond_9
:cond_22
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mAnimationKind:I
const/16 v7, 0x8
if-ne v6, v7, :cond_3c
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v6
if-eqz v6, :cond_3c
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mListener:Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$0(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;
move-result-object v6
invoke-interface {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController$Listener;->isHoldingDelete()Z
move-result v6
if-nez v6, :cond_9
:cond_3c
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mInScaling:Z
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$1(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z
move-result v6
if-eqz v6, :cond_50
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoxes:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$2(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/util/RangeArray;
move-result-object v6
invoke-virtual {v6, v5}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v6
if-eq p0, v6, :cond_9
:cond_50
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoxes:Lcom/pinguo/camera360/gallery/util/RangeArray;
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$2(Lcom/pinguo/camera360/gallery/ui/PositionController;)Lcom/pinguo/camera360/gallery/util/RangeArray;
move-result-object v6
invoke-virtual {v6, v5}, Lcom/pinguo/camera360/gallery/util/RangeArray;->get(I)Ljava/lang/Object;
move-result-object v6
if-ne p0, v6, :cond_d4
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mExtraScalingRange:Z
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$3(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z
move-result v6
if-eqz v6, :cond_9c
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMin:F
const v7, 0x3f333333
mul-float v3, v6, v7
:goto_6d
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mExtraScalingRange:Z
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$3(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z
move-result v6
if-eqz v6, :cond_9f
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMax:F
const v7, 0x3fb33333
mul-float v2, v6, v7
:goto_7c
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
invoke-static {v6, v3, v2}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v0
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmMode:Z
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$4(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z
move-result v6
if-eqz v6, :cond_a2
const/4 v4, 0x0
:goto_8b
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentY:I
if-ne v6, v4, :cond_95
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
cmpl-float v6, v6, v0
if-eqz v6, :cond_9
:cond_95
const/4 v5, 0x2
invoke-direct {p0, v4, v0, v5}, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->doAnimation(IFI)Z
move-result v5
goto/16 :goto_9
:cond_9c
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMin:F
goto :goto_6d
:cond_9f
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMax:F
goto :goto_7c
:cond_a2
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$7()I
move-result v7
#calls: Lcom/pinguo/camera360/gallery/ui/PositionController;->calculateStableBound(FI)V
invoke-static {v6, v0, v7}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$8(Lcom/pinguo/camera360/gallery/ui/PositionController;FI)V
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#calls: Lcom/pinguo/camera360/gallery/ui/PositionController;->viewTallerThanScaledImage(F)Z
invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$21(Lcom/pinguo/camera360/gallery/ui/PositionController;F)Z
move-result v6
if-nez v6, :cond_c3
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mCurrentScale:F
sub-float v1, v6, v0
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFocusY:F
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$22(Lcom/pinguo/camera360/gallery/ui/PositionController;)F
move-result v6
mul-float/2addr v6, v1
const/high16 v7, 0x3f00
add-float/2addr v6, v7
float-to-int v6, v6
add-int/2addr v4, v6
:cond_c3
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundTop:I
invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$23(Lcom/pinguo/camera360/gallery/ui/PositionController;)I
move-result v6
iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;
#getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mBoundBottom:I
invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$24(Lcom/pinguo/camera360/gallery/ui/PositionController;)I
move-result v7
invoke-static {v4, v6, v7}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I
move-result v4
goto :goto_8b
:cond_d4
const/4 v4, 0x0
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$Box;->mScaleMin:F
goto :goto_8b
.end method