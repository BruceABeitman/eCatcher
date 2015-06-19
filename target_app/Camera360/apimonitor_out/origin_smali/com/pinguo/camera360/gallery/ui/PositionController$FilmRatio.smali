.class Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;
.super Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;
.source "PositionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/PositionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FilmRatio"
.end annotation


# instance fields
.field public mCurrentRatio:F

.field public mFromRatio:F

.field public mToRatio:F

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;-><init>(Lcom/pinguo/camera360/gallery/ui/PositionController$Animatable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/gallery/ui/PositionController;Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;-><init>(Lcom/pinguo/camera360/gallery/ui/PositionController;)V

    return-void
.end method

.method private doAnimation(FI)Z
    .registers 5

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mAnimationKind:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mFromRatio:F

    iput p1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mToRatio:F

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mAnimationStartTime:J

    invoke-static {}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$17()[I

    move-result-object v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mAnimationKind:I

    aget v0, v0, v1

    iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mAnimationDuration:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->advanceAnimation()Z

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

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mToRatio:F

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mCurrentRatio:F

    :cond_b
    :goto_b
    return v0

    :cond_c
    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mFromRatio:F

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mToRatio:F

    iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mFromRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mCurrentRatio:F

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_b

    const/4 v0, 0x0

    goto :goto_b
.end method

.method public startSnapback()Z
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->this$0:Lcom/pinguo/camera360/gallery/ui/PositionController;

    #getter for: Lcom/pinguo/camera360/gallery/ui/PositionController;->mFilmMode:Z
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/PositionController;->access$4(Lcom/pinguo/camera360/gallery/ui/PositionController;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/high16 v0, 0x3f80

    :goto_a
    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1a

    iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->mToRatio:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1a

    const/4 v1, 0x0

    :goto_17
    return v1

    :cond_18
    const/4 v0, 0x0

    goto :goto_a

    :cond_1a
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PositionController$FilmRatio;->doAnimation(FI)Z

    move-result v1

    goto :goto_17
.end method
