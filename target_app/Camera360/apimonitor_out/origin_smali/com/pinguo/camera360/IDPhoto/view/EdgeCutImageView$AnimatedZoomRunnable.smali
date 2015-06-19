.class Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "EdgeCutImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;FFFF)V
    .registers 8

    iput-object p1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mFocalX:F

    iput p5, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mFocalY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mStartTime:J

    iput p2, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mZoomStart:F

    iput p3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .registers 7

    const/high16 v5, 0x3f80

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr v1, v5

    const/high16 v2, 0x4348

    div-float v0, v1, v2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    #getter for: Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->sInterpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->access$2(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-direct {p0}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->interpolate()F

    move-result v2

    iget v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mZoomStart:F

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mZoomEnd:F

    iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mZoomStart:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v2

    add-float v1, v3, v4

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    invoke-virtual {v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->getScale()F

    move-result v3

    div-float v0, v1, v3

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    #getter for: Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->mSuppMatrix:Landroid/graphics/Matrix;
    invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->access$0(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)Landroid/graphics/Matrix;

    move-result-object v3

    iget v4, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v0, v0, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    #calls: Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->checkAndDisplayMatrix()V
    invoke-static {v3}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->access$1(Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;)V

    const/high16 v3, 0x3f80

    cmpg-float v3, v2, v3

    if-gez v3, :cond_35

    iget-object v3, p0, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView$AnimatedZoomRunnable;->this$0:Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, p0, v4, v5}, Lcom/pinguo/camera360/IDPhoto/view/EdgeCutImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_35
    return-void
.end method
