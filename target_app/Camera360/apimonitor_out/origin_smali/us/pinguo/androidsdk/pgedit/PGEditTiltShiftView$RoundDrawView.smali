.class public Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;
.super Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;
.source "PGEditTiltShiftView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RoundDrawView"
.end annotation


# instance fields
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;


# direct methods
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$DrawView;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)V

    invoke-virtual {p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->refreshStatus()V

    return-void
.end method


# virtual methods
.method public drawView(Landroid/graphics/Canvas;)V
    .registers 7

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->isShowCropView:Z
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Z

    move-result v0

    if-eqz v0, :cond_b1

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F

    move-result v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v1

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getRound()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mInSidePaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v0

    invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F

    move-result v0

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoLeft:I
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v1

    invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F

    move-result v1

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoTop:I
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J

    move-result-wide v2

    long-to-float v2, v2

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v3

    invoke-virtual {v3}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getRound()F

    move-result v3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getStep()F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mOutSidePaint:Landroid/graphics/Paint;
    invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_b1
    return-void
.end method

.method public move(Landroid/view/MotionEvent;)V
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mIsPointer2:Z
    invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->moveView(Landroid/view/MotionEvent;)V

    :cond_12
    :goto_12
    return-void

    :cond_13
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->scaleView(Landroid/view/MotionEvent;)V

    goto :goto_12
.end method

.method public moveView(Landroid/view/MotionEvent;)V
    .registers 10

    const/high16 v7, 0x3f80

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F

    move-result v5

    sub-float v0, v4, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F

    move-result v5

    sub-float v2, v4, v5

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoWidth:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v4

    int-to-float v4, v4

    div-float v1, v0, v4

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->photoHeight:I
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)I

    move-result v4

    int-to-float v4, v4

    div-float v3, v2, v4

    cmpl-float v4, v0, v6

    if-lez v4, :cond_a3

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F

    move-result v4

    add-float/2addr v4, v1

    cmpl-float v4, v4, v7

    if-lez v4, :cond_8e

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V

    :goto_49
    cmpl-float v4, v2, v6

    if-lez v4, :cond_e8

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F

    move-result v4

    add-float/2addr v4, v3

    cmpl-float v4, v4, v7

    if-lez v4, :cond_d2

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4, v7}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V

    :goto_65
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastX:F
    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastY:F
    invoke-static {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;F)V

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    move-result-object v4

    if-eqz v4, :cond_8d

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    move-result-object v4

    invoke-interface {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V

    :cond_8d
    return-void

    :cond_8e
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F

    move-result v5

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V

    goto :goto_49

    :cond_a3
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F

    move-result v4

    add-float/2addr v4, v1

    cmpg-float v4, v4, v6

    if-gez v4, :cond_bc

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4, v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V

    goto :goto_49

    :cond_bc
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterX()F

    move-result v5

    add-float/2addr v5, v1

    invoke-virtual {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterX(F)V

    goto/16 :goto_49

    :cond_d2
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V

    goto/16 :goto_65

    :cond_e8
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F

    move-result v4

    add-float/2addr v4, v3

    cmpg-float v4, v4, v6

    if-gez v4, :cond_102

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4, v6}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V

    goto/16 :goto_65

    :cond_102
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getCenterY()F

    move-result v5

    add-float/2addr v5, v3

    invoke-virtual {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setCenterY(F)V

    goto/16 :goto_65
.end method

.method public scaleView(Landroid/view/MotionEvent;)V
    .registers 12

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #calls: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->distanceBetweenFingers(Landroid/view/MotionEvent;)D
    invoke-static {v4, p1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;Landroid/view/MotionEvent;)D

    move-result-wide v0

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)D

    move-result-wide v4

    sub-double v4, v0, v4

    iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->diagonalLine:J
    invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    long-to-double v6, v6

    div-double v2, v4, v6

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getRound()F

    move-result v4

    double-to-float v5, v2

    add-float/2addr v4, v5

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mMinRoundRate:F
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F

    move-result v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5b

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mMinRoundRate:F
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)F

    move-result v5

    invoke-virtual {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setRound(F)V

    :goto_3f
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #setter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mLastDistance:D
    invoke-static {v4, v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;D)V

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    invoke-virtual {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->invalidate()V

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    move-result-object v4

    if-eqz v4, :cond_5a

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftViewListener:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;

    move-result-object v4

    invoke-interface {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$TiltShiftViewListener;->move()V

    :cond_5a
    return-void

    :cond_5b
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v4

    iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView$RoundDrawView;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;

    #getter for: Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->mTiltShiftMenusBean:Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;
    invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditTiltShiftView;)Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;

    move-result-object v5

    invoke-virtual {v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->getRound()F

    move-result v5

    double-to-float v6, v2

    add-float/2addr v5, v6

    invoke-virtual {v4, v5}, Lus/pinguo/androidsdk/pgedit/PGEditMenusBean$PGEditTiltShiftMenusBean;->setRound(F)V

    goto :goto_3f
.end method
