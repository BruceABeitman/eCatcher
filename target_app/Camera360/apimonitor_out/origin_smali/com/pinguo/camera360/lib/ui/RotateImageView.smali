.class public Lcom/pinguo/camera360/lib/ui/RotateImageView;
.super Lcom/pinguo/camera360/lib/ui/TwoStateImageView;
.source "RotateImageView.java"

# interfaces
.implements Lcom/pinguo/camera360/lib/ui/Rotatable;


# static fields
.field private static final ANIMATION_SPEED:I = 0x10e


# instance fields
.field private mAnimationEndTime:J

.field private mAnimationStartTime:J

.field private mClockwise:Z

.field private mCurrentDegree:I

.field private mEnableAnimation:Z

.field private mStartDegree:I

.field private mTargetDegree:I

.field private mThumb:Landroid/graphics/Bitmap;

.field private mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

.field private mThumbs:[Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mStartDegree:I

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mEnableAnimation:Z

    iput-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationStartTime:J

    iput-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationEndTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/lib/ui/TwoStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mStartDegree:I

    iput v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mClockwise:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mEnableAnimation:Z

    iput-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationStartTime:J

    iput-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationEndTime:J

    return-void
.end method


# virtual methods
.method protected getDegree()I
    .registers 2

    iget v0, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 26

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v0, v4, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    sub-int v18, v20, v21

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    sub-int v8, v20, v21

    if-eqz v18, :cond_6

    if-eqz v8, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    move/from16 v21, v0

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_73

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationEndTime:J

    move-wide/from16 v20, v0

    cmp-long v20, v15, v20

    if-gez v20, :cond_15f

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationStartTime:J

    move-wide/from16 v20, v0

    sub-long v20, v15, v20

    move-wide/from16 v0, v20

    long-to-int v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mStartDegree:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mClockwise:Z

    move/from16 v21, v0

    if-eqz v21, :cond_152

    :goto_5c
    mul-int/lit16 v0, v6, 0x10e

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v21, v0

    add-int v5, v20, v21

    if-ltz v5, :cond_155

    rem-int/lit16 v5, v5, 0x168

    :goto_6c
    move-object/from16 v0, p0

    iput v5, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->invalidate()V

    :cond_73
    :goto_73
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingLeft()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingTop()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingRight()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingBottom()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getWidth()I

    move-result v20

    sub-int v20, v20, v10

    sub-int v19, v20, v13

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getHeight()I

    move-result v20

    sub-int v20, v20, v17

    sub-int v9, v20, v3

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v14

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_16d

    if-lt v9, v8, :cond_16d

    move/from16 v0, v19

    move/from16 v1, v18

    if-gt v0, v1, :cond_16d

    if-gt v9, v8, :cond_16d

    const/4 v11, 0x0

    :goto_a8
    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v20

    sget-object v21, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_e7

    if-eqz v11, :cond_e7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    int-to-float v0, v9

    move/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    div-float v21, v21, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(FF)F

    move-result v12

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    int-to-float v0, v9

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v12, v12, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_e7
    int-to-float v0, v10

    move/from16 v20, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    add-float v20, v20, v21

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v9

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v22, v22, v23

    add-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    div-float v20, v20, v21

    neg-int v0, v8

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_6

    :cond_152
    neg-int v6, v6

    goto/16 :goto_5c

    :cond_155
    rem-int/lit16 v0, v5, 0x168

    move/from16 v20, v0

    move/from16 v0, v20

    add-int/lit16 v5, v0, 0x168

    goto/16 :goto_6c

    :cond_15f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    goto/16 :goto_73

    :cond_16d
    const/4 v11, 0x1

    goto/16 :goto_a8
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .registers 11

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_12

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingRight()I

    move-result v4

    sub-int v1, v3, v4

    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getPaddingBottom()I

    move-result v4

    sub-int v0, v3, v4

    invoke-static {p1, v1, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_3e

    iget-boolean v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mEnableAnimation:Z

    if-nez v3, :cond_61

    :cond_3e
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v3, v3, v7

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5d
    invoke-virtual {p0, v8}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setVisibility(I)V

    goto :goto_11

    :cond_61
    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    aget-object v4, v4, v7

    aput-object v4, v3, v8

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget-object v6, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumb:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    aput-object v4, v3, v7

    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbs:[Landroid/graphics/drawable/Drawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mThumbTransition:Landroid/graphics/drawable/TransitionDrawable;

    const/16 v4, 0x1f4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    goto :goto_5d
.end method

.method public setOrientation(IZ)V
    .registers 8

    iput-boolean p2, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mEnableAnimation:Z

    if-ltz p1, :cond_b

    rem-int/lit16 p1, p1, 0x168

    :goto_6
    iget v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    if-ne p1, v1, :cond_10

    :goto_a
    return-void

    :cond_b
    rem-int/lit16 v1, p1, 0x168

    add-int/lit16 p1, v1, 0x168

    goto :goto_6

    :cond_10
    iput p1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    iget-boolean v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mEnableAnimation:Z

    if-eqz v1, :cond_4a

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationStartTime:J

    iget v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    iget v2, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    sub-int v0, v1, v2

    if-ltz v0, :cond_45

    :goto_28
    const/16 v1, 0xb4

    if-le v0, v1, :cond_2e

    add-int/lit16 v0, v0, -0x168

    :cond_2e
    if-ltz v0, :cond_48

    const/4 v1, 0x1

    :goto_31
    iput-boolean v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mClockwise:Z

    iget-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationStartTime:J

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    div-int/lit16 v3, v3, 0x10e

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mAnimationEndTime:J

    :goto_41
    invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/RotateImageView;->invalidate()V

    goto :goto_a

    :cond_45
    add-int/lit16 v0, v0, 0x168

    goto :goto_28

    :cond_48
    const/4 v1, 0x0

    goto :goto_31

    :cond_4a
    iget v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mTargetDegree:I

    iput v1, p0, Lcom/pinguo/camera360/lib/ui/RotateImageView;->mCurrentDegree:I

    goto :goto_41
.end method
