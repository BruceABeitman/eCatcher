.class Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;
.super Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;
.source "FullImageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/layout/FullImageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmRatio"
.end annotation


# instance fields
.field public mCurrentRatio:F

.field public mFromRatio:F

.field public mToRatio:F

.field final synthetic this$0:Lcom/pinguo/album/views/layout/FullImageLayout;


# direct methods
.method private constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/album/views/layout/FullImageLayout;Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;-><init>(Lcom/pinguo/album/views/layout/FullImageLayout;)V

    return-void
.end method

.method private doAnimation(FI)Z
    .registers 5

    iput p2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mAnimationKind:I

    iget v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mCurrentRatio:F

    iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mFromRatio:F

    iput p1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mToRatio:F

    invoke-static {}, Lcom/pinguo/album/animations/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mAnimationStartTime:J

    invoke-static {}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$15()[I

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mAnimationKind:I

    aget v0, v0, v1

    iput v0, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mAnimationDuration:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->advanceAnimation()Z

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected interpolate(F)Z
    .registers 6

    const/4 v0, 0x1

    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_c

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mToRatio:F

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mCurrentRatio:F

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mFromRatio:F

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mToRatio:F

    iget v3, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mFromRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mCurrentRatio:F

    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mCurrentRatio:F

    iget v2, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mToRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public startSnapback()Z
    .registers 3

    iget-object v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->this$0:Lcom/pinguo/album/views/layout/FullImageLayout;

    #getter for: Lcom/pinguo/album/views/layout/FullImageLayout;->mFilmMode:Z
    invoke-static {v1}, Lcom/pinguo/album/views/layout/FullImageLayout;->access$4(Lcom/pinguo/album/views/layout/FullImageLayout;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/high16 v0, 0x3f80

    :goto_a
    iget v1, p0, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_14

    const/4 v1, 0x0

    :goto_11
    return v1

    :cond_12
    const/4 v0, 0x0

    goto :goto_a

    :cond_14
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/pinguo/album/views/layout/FullImageLayout$FilmRatio;->doAnimation(FI)Z

    move-result v1

    goto :goto_11
.end method
