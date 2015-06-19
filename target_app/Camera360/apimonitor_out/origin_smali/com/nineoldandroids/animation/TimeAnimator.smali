.class public Lcom/nineoldandroids/animation/TimeAnimator;
.super Lcom/nineoldandroids/animation/ValueAnimator;
.source "TimeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

.field private mPreviousTime:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/nineoldandroids/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    return-void
.end method


# virtual methods
.method animateValue(F)V
    .registers 2

    return-void
.end method

.method animationFrame(J)Z
    .registers 9

    const-wide/16 v4, 0x0

    iget v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPlayingState:I

    if-nez v0, :cond_11

    const/4 v0, 0x1

    iput v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPlayingState:I

    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_29

    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_27

    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    sub-long v2, p1, v0

    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_34

    :goto_1f
    iput-wide p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    iget-object v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lcom/nineoldandroids/animation/TimeAnimator;JJ)V

    :cond_27
    const/4 v0, 0x0

    return v0

    :cond_29
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    sub-long v0, p1, v0

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mStartTime:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mSeekTime:J

    goto :goto_11

    :cond_34
    iget-wide v0, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mPreviousTime:J

    sub-long v4, p1, v0

    goto :goto_1f
.end method

.method initAnimation()V
    .registers 1

    return-void
.end method

.method public setTimeListener(Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/nineoldandroids/animation/TimeAnimator;->mListener:Lcom/nineoldandroids/animation/TimeAnimator$TimeListener;

    return-void
.end method
