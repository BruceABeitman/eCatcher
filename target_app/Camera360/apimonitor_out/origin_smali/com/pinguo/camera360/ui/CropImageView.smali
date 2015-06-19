.class public Lcom/pinguo/camera360/ui/CropImageView;
.super Lcom/pinguo/camera360/ui/ImageViewTouchBase;
.source "CropImageView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImageView"


# instance fields
.field public mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/camera360/ui/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field public mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_17

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/pinguo/camera360/ui/CropImageView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_17
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/pinguo/camera360/ui/HighlightView;)V
    .registers 15

    iget-object v1, p1, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_6f

    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/pinguo/camera360/ui/CropImageView;->zoomTo(FFFF)V

    :cond_6f
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/CropImageView;->ensureVisible(Lcom/pinguo/camera360/ui/HighlightView;)V

    return-void
.end method

.method private ensureVisible(Lcom/pinguo/camera360/ui/HighlightView;)V
    .registers 12

    const/4 v9, 0x0

    iget-object v6, p1, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-eqz v1, :cond_3f

    move v0, v1

    :goto_32
    if-eqz v4, :cond_41

    move v3, v4

    :goto_35
    if-nez v0, :cond_39

    if-eqz v3, :cond_3e

    :cond_39
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/pinguo/camera360/ui/CropImageView;->panBy(FF)V

    :cond_3e
    return-void

    :cond_3f
    move v0, v2

    goto :goto_32

    :cond_41
    move v3, v5

    goto :goto_35
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .registers 8

    const/4 v5, 0x1

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    const/4 v2, 0x0

    :goto_b
    iget-object v3, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_29

    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->invalidate()V

    return-void

    :cond_17
    iget-object v3, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/ui/HighlightView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/HighlightView;->setFocus(Z)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_29
    iget-object v3, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/pinguo/camera360/ui/HighlightView;->getHit(FF)I

    move-result v0

    if-eq v0, v5, :cond_4c

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {v1, v5}, Lcom/pinguo/camera360/ui/HighlightView;->setFocus(Z)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    goto :goto_13

    :cond_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_b
.end method


# virtual methods
.method public add(Lcom/pinguo/camera360/ui/HighlightView;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->invalidate()V

    return-void
.end method

.method public bridge synthetic center(ZZ)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method public bridge synthetic clear()V
    .registers 1

    invoke-super {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->clear()V

    return-void
.end method

.method public bridge synthetic getScale()F
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->getScale()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {v1, p1}, Lcom/pinguo/camera360/ui/HighlightView;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 10

    invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->onLayout(ZIIII)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mBitmapDisplayed:Lcom/pinguo/camera360/ui/RotateBitmap;

    invoke-virtual {v1}, Lcom/pinguo/camera360/ui/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_18

    :cond_17
    return-void

    :cond_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v2, v0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    iget-boolean v2, v0, Lcom/pinguo/camera360/ui/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_11

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/ui/CropImageView;->centerBasedOnHighlightView(Lcom/pinguo/camera360/ui/HighlightView;)V

    goto :goto_11
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    iget-boolean v5, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mSaving:Z

    if-eqz v5, :cond_e

    move v5, v6

    :goto_d
    return v5

    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_10e

    :cond_15
    :goto_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_118

    :cond_1c
    :goto_1c
    move v5, v7

    goto :goto_d

    :pswitch_1e
    iget-boolean v5, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_26

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_15

    :cond_26
    const/4 v3, 0x0

    :goto_27
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_15

    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/pinguo/camera360/ui/HighlightView;->getHit(FF)I

    move-result v1

    if-eq v1, v7, :cond_64

    iput v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionEdge:I

    iput-object v2, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mLastY:F

    iget-object v6, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    const/16 v5, 0x20

    if-ne v1, v5, :cond_61

    sget-object v5, Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;->Move:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    :goto_5d
    invoke-virtual {v6, v5}, Lcom/pinguo/camera360/ui/HighlightView;->setMode(Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;)V

    goto :goto_15

    :cond_61
    sget-object v5, Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;->Grow:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    goto :goto_5d

    :cond_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :pswitch_67
    iget-boolean v5, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b3

    const/4 v3, 0x0

    :goto_6c
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_78

    :cond_74
    :goto_74
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    goto :goto_15

    :cond_78
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {v2}, Lcom/pinguo/camera360/ui/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_b0

    iput-object v2, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mCrop:Lcom/pinguo/camera360/ui/HighlightView;

    const/4 v4, 0x0

    :goto_89
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_9f

    invoke-direct {p0, v2}, Lcom/pinguo/camera360/ui/CropImageView;->centerBasedOnHighlightView(Lcom/pinguo/camera360/ui/HighlightView;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/cloud/cropImage/CropImage;

    iput-boolean v6, v5, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mWaitingToPick:Z

    move v5, v7

    goto/16 :goto_d

    :cond_9f
    if-ne v4, v3, :cond_a4

    :goto_a1
    add-int/lit8 v4, v4, 0x1

    goto :goto_89

    :cond_a4
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/pinguo/camera360/ui/HighlightView;

    invoke-virtual {v5, v7}, Lcom/pinguo/camera360/ui/HighlightView;->setHidden(Z)V

    goto :goto_a1

    :cond_b0
    add-int/lit8 v3, v3, 0x1

    goto :goto_6c

    :cond_b3
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    if-eqz v5, :cond_74

    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/ui/CropImageView;->centerBasedOnHighlightView(Lcom/pinguo/camera360/ui/HighlightView;)V

    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    sget-object v6, Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;->None:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/pinguo/camera360/ui/HighlightView;->setMode(Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;)V

    goto :goto_74

    :pswitch_c4
    iget-boolean v5, v0, Lcom/pinguo/camera360/cloud/cropImage/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_cd

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/ui/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_15

    :cond_cd
    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    if-eqz v5, :cond_15

    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    iget v6, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/pinguo/camera360/ui/CropImageView;->mLastX:F

    sub-float/2addr v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget v10, p0, Lcom/pinguo/camera360/ui/CropImageView;->mLastY:F

    sub-float/2addr v9, v10

    invoke-virtual {v5, v6, v8, v9}, Lcom/pinguo/camera360/ui/HighlightView;->handleMotion(IFF)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mLastY:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/CropImageView;->mMotionHighlightView:Lcom/pinguo/camera360/ui/HighlightView;

    invoke-direct {p0, v5}, Lcom/pinguo/camera360/ui/CropImageView;->ensureVisible(Lcom/pinguo/camera360/ui/HighlightView;)V

    goto/16 :goto_15

    :pswitch_f9
    invoke-virtual {p0, v7, v7}, Lcom/pinguo/camera360/ui/CropImageView;->center(ZZ)V

    goto/16 :goto_1c

    :pswitch_fe
    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-nez v5, :cond_1c

    invoke-virtual {p0, v7, v7}, Lcom/pinguo/camera360/ui/CropImageView;->center(ZZ)V

    goto/16 :goto_1c

    nop

    :pswitch_data_10e
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_67
        :pswitch_c4
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x1
        :pswitch_f9
        :pswitch_fe
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .registers 6

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->postTranslate(FF)V

    const/4 v1, 0x0

    :goto_4
    iget-object v2, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_d

    return-void

    :cond_d
    iget-object v2, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v2, v0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic setImageRotateBitmapResetBase(Lcom/pinguo/camera360/ui/RotateBitmap;Z)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/pinguo/camera360/ui/RotateBitmap;Z)V

    return-void
.end method

.method protected zoomIn()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomIn()V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v2, v0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    goto :goto_9
.end method

.method protected zoomOut()V
    .registers 5

    invoke-super {p0}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomOut()V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v2, v0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    goto :goto_9
.end method

.method protected zoomTo(FFF)V
    .registers 8

    invoke-super {p0, p1, p2, p3}, Lcom/pinguo/camera360/ui/ImageViewTouchBase;->zoomTo(FFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    :cond_10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/ui/HighlightView;

    iget-object v2, v0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/pinguo/camera360/ui/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/HighlightView;->invalidate()V

    goto :goto_9
.end method
