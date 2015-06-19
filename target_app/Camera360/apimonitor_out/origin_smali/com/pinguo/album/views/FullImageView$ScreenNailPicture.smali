.class Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "FullImageView.java"

# interfaces
.implements Lcom/pinguo/album/views/FullImageView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/FullImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenNailPicture"
.end annotation


# instance fields
.field private mIndex:I

.field private mIsCamera:Z

.field private mIsDeletable:Z

.field private mIsPanorama:Z

.field private mIsStaticCamera:Z

.field private mIsVideo:Z

.field private mLoadingState:I

.field private mRotation:I

.field private mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

.field private mSize:Lcom/pinguo/album/views/FullImageView$Size;

.field final synthetic this$0:Lcom/pinguo/album/views/FullImageView;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/views/FullImageView;I)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mLoadingState:I

    new-instance v0, Lcom/pinguo/album/views/FullImageView$Size;

    invoke-direct {v0}, Lcom/pinguo/album/views/FullImageView$Size;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iput p2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    return-void
.end method

.method private isScreenNailAnimating()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    instance-of v0, v0, Lcom/pinguo/album/opengles/TiledScreenNail;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    check-cast v0, Lcom/pinguo/album/opengles/TiledScreenNail;

    invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledScreenNail;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private updateSize()V
    .registers 6

    iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsPanorama:Z

    if-eqz v2, :cond_41

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$15(Lcom/pinguo/album/views/FullImageView;)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    :goto_c
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    if-eqz v2, :cond_61

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    invoke-interface {v3}, Lcom/pinguo/album/opengles/ScreenNail;->getWidth()I

    move-result v3

    iput v3, v2, Lcom/pinguo/album/views/FullImageView$Size;->width:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget-object v3, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    invoke-interface {v3}, Lcom/pinguo/album/opengles/ScreenNail;->getHeight()I

    move-result v3

    iput v3, v2, Lcom/pinguo/album/views/FullImageView$Size;->height:I

    :goto_24
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget v1, v2, Lcom/pinguo/album/views/FullImageView$Size;->width:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget v0, v2, Lcom/pinguo/album/views/FullImageView$Size;->height:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget v3, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/pinguo/album/views/FullImageView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/pinguo/album/views/FullImageView;->access$17(III)I

    move-result v3

    iput v3, v2, Lcom/pinguo/album/views/FullImageView$Size;->width:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget v3, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    #calls: Lcom/pinguo/album/views/FullImageView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/pinguo/album/views/FullImageView;->access$17(III)I

    move-result v3

    iput v3, v2, Lcom/pinguo/album/views/FullImageView$Size;->height:I

    return-void

    :cond_41
    iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsCamera:Z

    if-eqz v2, :cond_52

    iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getCameraRotation()I
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$16(Lcom/pinguo/album/views/FullImageView;)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    goto :goto_c

    :cond_52
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v2, v3}, Lcom/pinguo/album/views/FullImageView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    goto :goto_c

    :cond_61
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v2

    iget v3, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    iget-object v4, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    invoke-interface {v2, v3, v4}, Lcom/pinguo/album/views/FullImageView$Model;->getImageSize(ILcom/pinguo/album/views/FullImageView$Size;)V

    goto :goto_24
.end method


# virtual methods
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
    .registers 24

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    if-nez v3, :cond_2e

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPrevBound:I
    invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$8(Lcom/pinguo/album/views/FullImageView;)I

    move-result v4

    if-lt v3, v4, :cond_2d

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mNextBound:I
    invoke-static {v4}, Lcom/pinguo/album/views/FullImageView;->access$7(Lcom/pinguo/album/views/FullImageView;)I

    move-result v4

    if-gt v3, v4, :cond_2d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    #calls: Lcom/pinguo/album/views/FullImageView;->drawPlaceHolder(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
    invoke-static {v3, v0, v1}, Lcom/pinguo/album/views/FullImageView;->access$28(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V

    :cond_2d
    :goto_2d
    return-void

    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-virtual {v3}, Lcom/pinguo/album/views/FullImageView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-virtual {v3}, Lcom/pinguo/album/views/FullImageView;->getHeight()I

    move-result v13

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v18

    if-ge v3, v0, :cond_58

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    if-lez v3, :cond_58

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->top:I

    if-ge v3, v13, :cond_58

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    if-gtz v3, :cond_60

    :cond_58
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    invoke-interface {v3}, Lcom/pinguo/album/opengles/ScreenNail;->noDraw()V

    goto :goto_2d

    :cond_60
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/album/views/layout/FullImageLayout;->getFilmRatio()F

    move-result v12

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    if-lez v3, :cond_187

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-eqz v3, :cond_187

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
    invoke-static {v3}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v3}, Lcom/pinguo/album/views/FullImageView$Picture;->isCamera()Z

    move-result v3

    if-nez v3, :cond_187

    const/16 v19, 0x1

    :goto_8f
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsDeletable:Z

    if-eqz v3, :cond_18b

    const/high16 v3, 0x3f80

    cmpl-float v3, v12, v3

    if-nez v3, :cond_18b

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v13, 0x2

    if-eq v3, v4, :cond_18b

    const/16 v20, 0x1

    :goto_a5
    if-eqz v19, :cond_18f

    div-int/lit8 v3, v18, 0x2

    int-to-float v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    int-to-float v4, v4

    #calls: Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F
    invoke-static {v12, v3, v4}, Lcom/pinguo/album/views/FullImageView;->access$24(FFF)F

    move-result v3

    const/high16 v4, 0x3f00

    add-float/2addr v3, v4

    float-to-int v10, v3

    :goto_b7
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    const/4 v3, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    int-to-float v3, v10

    int-to-float v4, v11

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    if-eqz v19, :cond_195

    div-int/lit8 v3, v18, 0x2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v18

    int-to-float v4, v0

    div-float v15, v3, v4

    const/high16 v3, -0x4080

    const/high16 v4, 0x3f80

    invoke-static {v15, v3, v4}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F

    move-result v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getScrollAlpha(F)F
    invoke-static {v3, v15}, Lcom/pinguo/album/views/FullImageView;->access$23(Lcom/pinguo/album/views/FullImageView;F)F

    move-result v9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getScrollScale(F)F
    invoke-static {v3, v15}, Lcom/pinguo/album/views/FullImageView;->access$22(Lcom/pinguo/album/views/FullImageView;F)F

    move-result v17

    const/high16 v3, 0x3f80

    #calls: Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F
    invoke-static {v12, v9, v3}, Lcom/pinguo/album/views/FullImageView;->access$24(FFF)F

    move-result v9

    const/high16 v3, 0x3f80

    move/from16 v0, v17

    #calls: Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F
    invoke-static {v12, v0, v3}, Lcom/pinguo/album/views/FullImageView;->access$24(FFF)F

    move-result v17

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyAlpha(F)V

    const/high16 v3, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v17

    invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->scale(FFF)V

    :cond_10d
    :goto_10d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    if-eqz v3, :cond_121

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    int-to-float v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5, v6}, Lcom/pinguo/album/opengles/GLESCanvas;->rotate(FFFF)V

    :cond_121
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v5

    #calls: Lcom/pinguo/album/views/FullImageView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/pinguo/album/views/FullImageView;->access$17(III)I

    move-result v7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mRotation:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    #calls: Lcom/pinguo/album/views/FullImageView;->getRotated(III)I
    invoke-static {v3, v4, v5}, Lcom/pinguo/album/views/FullImageView;->access$17(III)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    neg-int v4, v7

    div-int/lit8 v5, v4, 0x2

    neg-int v4, v8

    div-int/lit8 v6, v4, 0x2

    move-object/from16 v4, p1

    invoke-interface/range {v3 .. v8}, Lcom/pinguo/album/opengles/ScreenNail;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V

    invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->isScreenNailAnimating()Z

    move-result v3

    if-eqz v3, :cond_15d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-virtual {v3}, Lcom/pinguo/album/views/FullImageView;->invalidate()V

    :cond_15d
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsVideo:Z

    if-eqz v3, :cond_172

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v0, p1

    move/from16 v1, v16

    #calls: Lcom/pinguo/album/views/FullImageView;->drawVideoPlayIcon(Lcom/pinguo/album/opengles/GLESCanvas;I)V
    invoke-static {v3, v0, v1}, Lcom/pinguo/album/views/FullImageView;->access$26(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;I)V

    :cond_172
    move-object/from16 v0, p0

    iget v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mLoadingState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_182

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v0, p1

    #calls: Lcom/pinguo/album/views/FullImageView;->drawLoadingFailMessage(Lcom/pinguo/album/opengles/GLESCanvas;)V
    invoke-static {v3, v0}, Lcom/pinguo/album/views/FullImageView;->access$27(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;)V

    :cond_182
    invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    goto/16 :goto_2d

    :cond_187
    const/16 v19, 0x0

    goto/16 :goto_8f

    :cond_18b
    const/16 v20, 0x0

    goto/16 :goto_a5

    :cond_18f
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    goto/16 :goto_b7

    :cond_195
    if-eqz v20, :cond_10d

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    div-int/lit8 v4, v13, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v4, v13

    div-float v14, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getOffsetAlpha(F)F
    invoke-static {v3, v14}, Lcom/pinguo/album/views/FullImageView;->access$25(Lcom/pinguo/album/views/FullImageView;F)F

    move-result v9

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyAlpha(F)V

    goto/16 :goto_10d
.end method

.method public forceSize()V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->updateSize()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->forceImageSize(ILcom/pinguo/album/views/FullImageView$Size;)V

    return-void
.end method

.method public getSize()Lcom/pinguo/album/views/FullImageView$Size;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsDeletable:Z

    return v0
.end method

.method public reload()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsCamera:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsPanorama:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsStaticCamera:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsVideo:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIsDeletable:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mLoadingState:I

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    iget v1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mIndex:I

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->getScreenNail(I)Lcom/pinguo/album/opengles/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->updateSize()V

    return-void
.end method

.method public setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$ScreenNailPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$19(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/ScreenNail;->setLoadingTexture(Lcom/pinguo/album/opengles/StringTexture;)V

    :cond_d
    return-void
.end method
