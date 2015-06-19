.class public Lcom/pinguo/camera360/ui/HighlightView;
.super Ljava/lang/Object;
.source "HighlightView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;
    }
.end annotation


# static fields
.field public static final GROW_BOTTOM_EDGE:I = 0x10

.field public static final GROW_LEFT_EDGE:I = 0x2

.field public static final GROW_NONE:I = 0x1

.field public static final GROW_RIGHT_EDGE:I = 0x4

.field public static final GROW_TOP_EDGE:I = 0x8

.field public static final MOVE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "HighlightView"


# instance fields
.field private mCircle:Z

.field mContext:Landroid/view/View;

.field mCropRect:Landroid/graphics/RectF;

.field mDrawRect:Landroid/graphics/Rect;

.field private final mFocusPaint:Landroid/graphics/Paint;

.field mHidden:Z

.field private mImageRect:Landroid/graphics/RectF;

.field private mInitialAspectRatio:F

.field mIsFocused:Z

.field private mMaintainAspectRatio:Z

.field mMatrix:Landroid/graphics/Matrix;

.field private mMode:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

.field private final mNoFocusPaint:Landroid/graphics/Paint;

.field private final mOutlinePaint:Landroid/graphics/Paint;

.field private mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

.field private mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;->None:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMode:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    iput-boolean v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMaintainAspectRatio:Z

    iput-boolean v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCircle:Z

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    iput-object p1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mContext:Landroid/view/View;

    return-void
.end method

.method private computeLayout()Landroid/graphics/Rect;
    .registers 7

    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private init()V
    .registers 3

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020113

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f0202a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected draw(Landroid/graphics/Canvas;)V
    .registers 30
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mHidden:Z

    move/from16 v22, v0

    if-eqz v22, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    new-instance v11, Landroid/graphics/Path;

    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/ui/HighlightView;->hasFocus()Z

    move-result v22

    if-nez v22, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/high16 v23, -0x100

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_8

    :cond_38
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mContext:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mCircle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1aa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->width()I

    move-result v22

    move/from16 v0, v22

    int-to-float v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Rect;->height()I

    move-result v22

    move/from16 v0, v22

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x4000

    div-float v23, v15, v23

    add-float v22, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v24, v7, v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v24, v15, v24

    sget-object v25, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const v23, -0x10fb2a

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    :goto_b5
    sget-object v22, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/ui/HighlightView;->hasFocus()Z

    move-result v22

    if-eqz v22, :cond_1cb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    :goto_ca
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mMode:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    move-object/from16 v22, v0

    sget-object v23, Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;->Grow:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mCircle:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1d3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    const-wide v22, 0x3fe921fb54442d18L

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v24

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide/high16 v26, 0x4000

    div-double v24, v24, v26

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    add-int v22, v22, v6

    div-int/lit8 v23, v15, 0x2

    sub-int v18, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    sub-int v22, v22, v6

    div-int/lit8 v23, v7, 0x2

    sub-int v20, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    add-int v23, v23, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v24

    add-int v24, v24, v20

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableDiagonal:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8

    :cond_1aa
    new-instance v22, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    sget-object v23, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    const/16 v23, -0x7600

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_b5

    :cond_1cb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    goto/16 :goto_ca

    :cond_1d3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    add-int/lit8 v10, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int/lit8 v12, v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    add-int/lit8 v13, v22, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int/lit8 v5, v22, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v17, v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v16, v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v22

    div-int/lit8 v8, v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v22

    div-int/lit8 v9, v22, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v19, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    div-int/lit8 v23, v23, 0x2

    add-int v21, v22, v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v10, v17

    sub-int v24, v21, v16

    add-int v25, v10, v17

    add-int v26, v21, v16

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v12, v17

    sub-int v24, v21, v16

    add-int v25, v12, v17

    add-int v26, v21, v16

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableWidth:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v19, v9

    sub-int v24, v13, v8

    add-int v25, v19, v9

    add-int v26, v13, v8

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    sub-int v23, v19, v9

    sub-int v24, v5, v8

    add-int v25, v19, v9

    add-int v26, v5, v8

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/camera360/ui/HighlightView;->mResizeDrawableHeight:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_8
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .registers 6

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getHit(FF)I
    .registers 15

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v6

    const/high16 v5, 0x41a0

    const/4 v8, 0x1

    iget-boolean v10, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCircle:Z

    if-eqz v10, :cond_60

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    int-to-float v10, v10

    sub-float v1, p1, v10

    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    sub-float v2, p2, v10

    mul-float v10, v1, v1

    mul-float v11, v2, v2

    add-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    iget-object v10, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v7, v10, 0x2

    sub-int v0, v3, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_59

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_50

    const/4 v10, 0x0

    cmpg-float v10, v2, v10

    if-gez v10, :cond_4d

    const/16 v8, 0x8

    :cond_4c
    :goto_4c
    return v8

    :cond_4d
    const/16 v8, 0x10

    goto :goto_4c

    :cond_50
    const/4 v10, 0x0

    cmpg-float v10, v1, v10

    if-gez v10, :cond_57

    const/4 v8, 0x2

    goto :goto_4c

    :cond_57
    const/4 v8, 0x4

    goto :goto_4c

    :cond_59
    if-ge v3, v7, :cond_5e

    const/16 v8, 0x20

    goto :goto_4c

    :cond_5e
    const/4 v8, 0x1

    goto :goto_4c

    :cond_60
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p2, v10

    if-ltz v10, :cond_e1

    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p2, v10

    if-gez v10, :cond_e1

    const/4 v9, 0x1

    :goto_75
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    sub-float/2addr v10, v11

    cmpl-float v10, p1, v10

    if-ltz v10, :cond_e3

    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    const/high16 v11, 0x41a0

    add-float/2addr v10, v11

    cmpg-float v10, p1, v10

    if-gez v10, :cond_e3

    const/4 v4, 0x1

    :goto_8a
    iget v10, v6, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_9c

    if-eqz v9, :cond_9c

    or-int/lit8 v8, v8, 0x2

    :cond_9c
    iget v10, v6, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    sub-float/2addr v10, p1

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_ae

    if-eqz v9, :cond_ae

    or-int/lit8 v8, v8, 0x4

    :cond_ae
    iget v10, v6, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_c0

    if-eqz v4, :cond_c0

    or-int/lit8 v8, v8, 0x8

    :cond_c0
    iget v10, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    sub-float/2addr v10, p2

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    const/high16 v11, 0x41a0

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d2

    if-eqz v4, :cond_d2

    or-int/lit8 v8, v8, 0x10

    :cond_d2
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4c

    float-to-int v10, p1

    float-to-int v11, p2

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_4c

    const/16 v8, 0x20

    goto/16 :goto_4c

    :cond_e1
    const/4 v9, 0x0

    goto :goto_75

    :cond_e3
    const/4 v4, 0x0

    goto :goto_8a
.end method

.method growBy(FF)V
    .registers 11

    const/high16 v1, 0x41c8

    const/high16 v7, 0x4000

    const/4 v6, 0x0

    iget-boolean v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_11

    cmpl-float v4, p1, v6

    if-eqz v4, :cond_db

    iget v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    :cond_11
    :goto_11
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-direct {v2, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    cmpl-float v4, p1, v6

    if-lez v4, :cond_43

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    mul-float v5, v7, p1

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_43

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    move p1, v0

    iget-boolean v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_43

    iget v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mInitialAspectRatio:F

    div-float p2, p1, v4

    :cond_43
    cmpl-float v4, p2, v6

    if-lez v4, :cond_6e

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_6e

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    div-float v0, v4, v7

    move p2, v0

    iget-boolean v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_6e

    iget v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    :cond_6e
    neg-float v4, p1

    neg-float v5, p2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    const/high16 v3, 0x41c8

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_88

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->inset(FF)V

    :cond_88
    iget-boolean v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMaintainAspectRatio:Z

    if-eqz v4, :cond_8f

    iget v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mInitialAspectRatio:F

    div-float/2addr v1, v4

    :cond_8f
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v4, v4, v1

    if-gez v4, :cond_a2

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    neg-float v4, v4

    div-float/2addr v4, v7

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->inset(FF)V

    :cond_a2
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e5

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    :cond_b6
    :goto_b6
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_fb

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    :cond_ca
    :goto_ca
    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    return-void

    :cond_db
    cmpl-float v4, p2, v6

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mInitialAspectRatio:F

    mul-float p1, p2, v4

    goto/16 :goto_11

    :cond_e5
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_b6

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v4, v6}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_b6

    :cond_fb
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_ca

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_ca
.end method

.method handleMotion(IFF)V
    .registers 11

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    if-ne p1, v4, :cond_9

    :goto_8
    return-void

    :cond_9
    const/16 v5, 0x20

    if-ne p1, v5, :cond_2b

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float/2addr v3, p2

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    mul-float/2addr v4, p3

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/ui/HighlightView;->moveBy(FF)V

    goto :goto_8

    :cond_2b
    and-int/lit8 v5, p1, 0x6

    if-nez v5, :cond_30

    const/4 p2, 0x0

    :cond_30
    and-int/lit8 v5, p1, 0x18

    if-nez v5, :cond_35

    const/4 p3, 0x0

    :cond_35
    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v1, p2, v5

    iget-object v5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v2, p3, v5

    and-int/lit8 v5, p1, 0x2

    if-eqz v5, :cond_62

    move v5, v3

    :goto_56
    int-to-float v5, v5

    mul-float/2addr v5, v1

    and-int/lit8 v6, p1, 0x8

    if-eqz v6, :cond_64

    :goto_5c
    int-to-float v3, v3

    mul-float/2addr v3, v2

    invoke-virtual {p0, v5, v3}, Lcom/pinguo/camera360/ui/HighlightView;->growBy(FF)V

    goto :goto_8

    :cond_62
    move v5, v4

    goto :goto_56

    :cond_64
    move v3, v4

    goto :goto_5c
.end method

.method public hasFocus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mIsFocused:Z

    return v0
.end method

.method public invalidate()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    return-void
.end method

.method moveBy(FF)V
    .registers 10

    const/16 v6, -0xa

    const/4 v5, 0x0

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget-object v3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-static {v5, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Rect;->inset(II)V

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setFocus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mIsFocused:Z

    return-void
.end method

.method public setHidden(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mHidden:Z

    return-void
.end method

.method public setMode(Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMode:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    if-eq p1, v0, :cond_b

    iput-object p1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMode:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mContext:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_b
    return-void
.end method

.method public setup(Landroid/graphics/Matrix;Landroid/graphics/Rect;Landroid/graphics/RectF;ZZ)V
    .registers 10

    const/16 v3, 0x7d

    const/16 v2, 0x32

    if-eqz p4, :cond_7

    const/4 p5, 0x1

    :cond_7
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    iput-object p3, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mImageRect:Landroid/graphics/RectF;

    iput-boolean p5, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMaintainAspectRatio:Z

    iput-boolean p4, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCircle:Z

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/pinguo/camera360/ui/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mInitialAspectRatio:F

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->computeLayout()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mNoFocusPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mOutlinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;->None:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    iput-object v0, p0, Lcom/pinguo/camera360/ui/HighlightView;->mMode:Lcom/pinguo/camera360/ui/HighlightView$ModifyMode;

    invoke-direct {p0}, Lcom/pinguo/camera360/ui/HighlightView;->init()V

    return-void
.end method
