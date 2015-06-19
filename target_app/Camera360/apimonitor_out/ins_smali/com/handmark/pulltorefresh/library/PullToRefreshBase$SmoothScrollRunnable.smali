.class final Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"
.implements Ljava/lang/Runnable;
.field private mContinueRunning:Z
.field private mCurrentY:I
.field private final mDuration:J
.field private final mInterpolator:Landroid/view/animation/Interpolator;
.field private mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
.field private final mScrollFromY:I
.field private final mScrollToY:I
.field private mStartTime:J
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
.registers 9
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J
const/4 v0, -0x1
iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I
iput p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I
iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I
#getter for: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->mScrollAnimationInterpolator:Landroid/view/animation/Interpolator;
invoke-static {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$0(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;
iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J
iput-object p6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
return-void
.end method
.method public run()V
.registers 10
const-wide/16 v7, 0x3e8
iget-wide v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J
const-wide/16 v5, -0x1
cmp-long v3, v3, v5
if-nez v3, :cond_20
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iput-wide v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J
:goto_10
iget-boolean v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z
if-eqz v3, :cond_58
iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I
iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I
if-eq v3, v4, :cond_58
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-static {v3, p0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
:cond_1f
:goto_1f
return-void
:cond_20
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
iget-wide v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J
sub-long/2addr v3, v5
mul-long/2addr v3, v7
iget-wide v5, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J
div-long v1, v3, v5
invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J
move-result-wide v3
const-wide/16 v5, 0x0
invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J
move-result-wide v1
iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I
iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I
sub-int/2addr v3, v4
int-to-float v3, v3
iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;
long-to-float v5, v1
const/high16 v6, 0x447a
div-float/2addr v5, v6
invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F
move-result v4
mul-float/2addr v3, v4
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v0
iget v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I
sub-int/2addr v3, v0
iput v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I
invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V
goto :goto_10
:cond_58
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
if-eqz v3, :cond_1f
iget-object v3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
invoke-interface {v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V
goto :goto_1f
.end method
.method public stop()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z
return-void
.end method