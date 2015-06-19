.class Lcom/pinguo/album/views/FullImageView$FullPicture;
.super Ljava/lang/Object;
.source "FullImageView.java"

# interfaces
.implements Lcom/pinguo/album/views/FullImageView$Picture;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/FullImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullPicture"
.end annotation


# instance fields
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
.method constructor <init>(Lcom/pinguo/album/views/FullImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mLoadingState:I

    new-instance v0, Lcom/pinguo/album/views/FullImageView$Size;

    invoke-direct {v0}, Lcom/pinguo/album/views/FullImageView$Size;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    return-void
.end method

.method private drawTileView(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
    .registers 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->getImageScale()F

    move-result v7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/FullImageView;->getWidth()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    invoke-virtual {v2}, Lcom/pinguo/album/views/FullImageView;->getHeight()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    const/high16 v16, 0x3f80

    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->getFilmRatio()F

    move-result v10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsCamera:Z

    if-nez v2, :cond_143

    const/high16 v2, 0x3f80

    cmpl-float v2, v10, v2

    if-eqz v2, :cond_143

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPictures:Lcom/pinguo/album/utils/RangeArray;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$20(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/utils/RangeArray;

    move-result-object v2

    const/16 v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/pinguo/album/utils/RangeArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/album/views/FullImageView$Picture;

    invoke-interface {v2}, Lcom/pinguo/album/views/FullImageView$Picture;->isCamera()Z

    move-result v2

    if-nez v2, :cond_143

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v2

    invoke-virtual {v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->inOpeningAnimation()Z

    move-result v2

    if-nez v2, :cond_143

    const/16 v17, 0x1

    :goto_6c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsDeletable:Z

    if-eqz v2, :cond_147

    const/high16 v2, 0x3f80

    cmpl-float v2, v10, v2

    if-nez v2, :cond_147

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v19, v6, 0x2

    move/from16 v0, v19

    if-eq v2, v0, :cond_147

    const/16 v18, 0x1

    :goto_84
    if-eqz v17, :cond_156

    move-object/from16 v0, p2

    iget v11, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v14, v0, Landroid/graphics/Rect;->right:I

    #calls: Lcom/pinguo/album/views/FullImageView;->calculateMoveOutProgress(III)F
    invoke-static {v11, v14, v5}, Lcom/pinguo/album/views/FullImageView;->access$21(III)F

    move-result v13

    const/high16 v2, -0x4080

    const/high16 v19, 0x3f80

    move/from16 v0, v19

    invoke-static {v13, v2, v0}, Lcom/pinguo/album/utils/Utils;->clamp(FFF)F

    move-result v13

    const/4 v2, 0x0

    cmpg-float v2, v13, v2

    if-gez v2, :cond_d3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getScrollScale(F)F
    invoke-static {v2, v13}, Lcom/pinguo/album/views/FullImageView;->access$22(Lcom/pinguo/album/views/FullImageView;F)F

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getScrollAlpha(F)F
    invoke-static {v2, v13}, Lcom/pinguo/album/views/FullImageView;->access$23(Lcom/pinguo/album/views/FullImageView;F)F

    move-result v8

    const/high16 v2, 0x3f80

    move/from16 v0, v16

    #calls: Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F
    invoke-static {v10, v0, v2}, Lcom/pinguo/album/views/FullImageView;->access$24(FFF)F

    move-result v16

    const/high16 v2, 0x3f80

    #calls: Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F
    invoke-static {v10, v8, v2}, Lcom/pinguo/album/views/FullImageView;->access$24(FFF)F

    move-result v8

    mul-float v7, v7, v16

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyAlpha(F)V

    sub-int v2, v14, v11

    if-gt v2, v5, :cond_14b

    int-to-float v2, v5

    const/high16 v19, 0x4000

    div-float v9, v2, v19

    :goto_cf
    #calls: Lcom/pinguo/album/views/FullImageView;->interpolate(FFF)F
    invoke-static {v10, v9, v3}, Lcom/pinguo/album/views/FullImageView;->access$24(FFF)F

    move-result v3

    :cond_d3
    :goto_d3
    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/pinguo/album/views/FullImageView$FullPicture;->setTileViewPosition(FFIIF)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v19, v0

    #getter for: Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;
    invoke-static/range {v19 .. v19}, Lcom/pinguo/album/views/FullImageView;->access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/pinguo/album/views/FullImageView;->renderChild(Lcom/pinguo/album/opengles/GLESCanvas;Lcom/pinguo/album/views/GLBaseView;)V

    const/high16 v2, 0x3f00

    add-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    const/high16 v19, 0x3f00

    add-float v19, v19, v4

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v2, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v19

    move/from16 v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v16

    const/high16 v19, 0x3f00

    add-float v2, v2, v19

    float-to-int v15, v2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsVideo:Z

    if-eqz v2, :cond_12c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v0, p1

    #calls: Lcom/pinguo/album/views/FullImageView;->drawVideoPlayIcon(Lcom/pinguo/album/opengles/GLESCanvas;I)V
    invoke-static {v2, v0, v15}, Lcom/pinguo/album/views/FullImageView;->access$26(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;I)V

    :cond_12c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mLoadingState:I

    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v2, v0, :cond_13f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    move-object/from16 v0, p1

    #calls: Lcom/pinguo/album/views/FullImageView;->drawLoadingFailMessage(Lcom/pinguo/album/opengles/GLESCanvas;)V
    invoke-static {v2, v0}, Lcom/pinguo/album/views/FullImageView;->access$27(Lcom/pinguo/album/views/FullImageView;Lcom/pinguo/album/opengles/GLESCanvas;)V

    :cond_13f
    invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V

    return-void

    :cond_143
    const/16 v17, 0x0

    goto/16 :goto_6c

    :cond_147
    const/16 v18, 0x0

    goto/16 :goto_84

    :cond_14b
    sub-int v2, v14, v11

    int-to-float v2, v2

    mul-float v2, v2, v16

    const/high16 v19, 0x4000

    div-float v9, v2, v19

    goto/16 :goto_cf

    :cond_156
    if-eqz v18, :cond_d3

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    div-int/lit8 v19, v6, 0x2

    sub-int v2, v2, v19

    int-to-float v2, v2

    int-to-float v0, v6

    move/from16 v19, v0

    div-float v12, v2, v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getOffsetAlpha(F)F
    invoke-static {v2, v12}, Lcom/pinguo/album/views/FullImageView;->access$25(Lcom/pinguo/album/views/FullImageView;F)F

    move-result v8

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Lcom/pinguo/album/opengles/GLESCanvas;->multiplyAlpha(F)V

    goto/16 :goto_d3
.end method

.method private setTileViewPosition(FFIIF)V
    .registers 18

    iget-object v9, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v9}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->getImageWidth()I

    move-result v4

    iget-object v9, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v9}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v9

    invoke-virtual {v9}, Lcom/pinguo/album/views/layout/FullImageLayout;->getImageHeight()I

    move-result v3

    int-to-float v9, v4

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    int-to-float v10, p3

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p1

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v1, v9

    int-to-float v9, v3

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x4000

    div-float/2addr v10, v11

    sub-float/2addr v10, p2

    div-float v10, v10, p5

    add-float/2addr v9, v10

    const/high16 v10, 0x3f00

    add-float/2addr v9, v10

    float-to-int v2, v9

    sub-int v5, v4, v1

    sub-int v6, v3, v2

    iget v9, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    sparse-switch v9, :sswitch_data_64

    new-instance v9, Ljava/lang/RuntimeException;

    iget v10, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    :sswitch_4b
    move v7, v1

    move v8, v2

    :goto_4d
    iget-object v9, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v9}, Lcom/pinguo/album/views/FullImageView;->access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v9

    iget v10, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    move/from16 v0, p5

    invoke-virtual {v9, v7, v8, v0, v10}, Lcom/pinguo/album/views/TileImageView;->setPosition(IIFI)Z

    return-void

    :sswitch_5b
    move v7, v2

    move v8, v5

    goto :goto_4d

    :sswitch_5e
    move v7, v5

    move v8, v6

    goto :goto_4d

    :sswitch_61
    move v7, v6

    move v8, v1

    goto :goto_4d

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_4b
        0x5a -> :sswitch_5b
        0xb4 -> :sswitch_5e
        0x10e -> :sswitch_61
    .end sparse-switch
.end method

.method private updateSize()V
    .registers 5

    iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsPanorama:Z

    if-eqz v2, :cond_31

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getPanoramaRotation()I
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$15(Lcom/pinguo/album/views/FullImageView;)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    :goto_c
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v2

    iget v1, v2, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v2

    iget v0, v2, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget v3, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    #calls: Lcom/pinguo/album/views/FullImageView;->getRotated(III)I
    invoke-static {v3, v1, v0}, Lcom/pinguo/album/views/FullImageView;->access$17(III)I

    move-result v3

    iput v3, v2, Lcom/pinguo/album/views/FullImageView$Size;->width:I

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    iget v3, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    #calls: Lcom/pinguo/album/views/FullImageView;->getRotated(III)I
    invoke-static {v3, v0, v1}, Lcom/pinguo/album/views/FullImageView;->access$17(III)I

    move-result v3

    iput v3, v2, Lcom/pinguo/album/views/FullImageView$Size;->height:I

    return-void

    :cond_31
    iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsCamera:Z

    if-eqz v2, :cond_42

    iget-boolean v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsStaticCamera:Z

    if-nez v2, :cond_42

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #calls: Lcom/pinguo/album/views/FullImageView;->getCameraRotation()I
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$16(Lcom/pinguo/album/views/FullImageView;)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    goto :goto_c

    :cond_42
    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v2}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/pinguo/album/views/FullImageView$Model;->getImageRotation(I)I

    move-result v2

    iput v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mRotation:I

    goto :goto_c
.end method


# virtual methods
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/pinguo/album/views/FullImageView$FullPicture;->drawTileView(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mHolding:I
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$11(Lcom/pinguo/album/views/FullImageView;)I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mWantPictureCenterCallbacks:Z
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$18(Lcom/pinguo/album/views/FullImageView;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/album/views/layout/FullImageLayout;->isCenter()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mListener:Lcom/pinguo/album/views/FullImageView$Listener;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$5(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Listener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsCamera:Z

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Listener;->onPictureCenter(Z)V

    goto :goto_d
.end method

.method public forceSize()V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$FullPicture;->updateSize()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mPositionController:Lcom/pinguo/album/views/layout/FullImageLayout;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$1(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/layout/FullImageLayout;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/views/layout/FullImageLayout;->forceImageSize(ILcom/pinguo/album/views/FullImageView$Size;)V

    return-void
.end method

.method public getSize()Lcom/pinguo/album/views/FullImageView$Size;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mSize:Lcom/pinguo/album/views/FullImageView$Size;

    return-object v0
.end method

.method public isCamera()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsCamera:Z

    return v0
.end method

.method public isDeletable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsDeletable:Z

    return v0
.end method

.method public isReady()Z
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    invoke-interface {v0}, Lcom/pinguo/album/opengles/ScreenNail;->isReady()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public reload()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/album/views/TileImageView;->notifyModelInvalidated()V

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsCamera:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isPanorama(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsPanorama:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isStaticCamera(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsStaticCamera:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isVideo(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsVideo:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->isDeletable(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mIsDeletable:Z

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->getLoadingState(I)I

    move-result v0

    iput v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mLoadingState:I

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mModel:Lcom/pinguo/album/views/FullImageView$Model;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$9(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/FullImageView$Model;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/pinguo/album/views/FullImageView$Model;->getScreenNail(I)Lcom/pinguo/album/opengles/ScreenNail;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/pinguo/album/views/FullImageView$FullPicture;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V

    invoke-direct {p0}, Lcom/pinguo/album/views/FullImageView$FullPicture;->updateSize()V

    return-void
.end method

.method public setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mTileView:Lcom/pinguo/album/views/TileImageView;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$14(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/views/TileImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/album/views/TileImageView;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/pinguo/album/views/FullImageView$FullPicture;->this$0:Lcom/pinguo/album/views/FullImageView;

    #getter for: Lcom/pinguo/album/views/FullImageView;->mLoadingTexture:Lcom/pinguo/album/opengles/StringTexture;
    invoke-static {v0}, Lcom/pinguo/album/views/FullImageView;->access$19(Lcom/pinguo/album/views/FullImageView;)Lcom/pinguo/album/opengles/StringTexture;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/pinguo/album/opengles/ScreenNail;->setLoadingTexture(Lcom/pinguo/album/opengles/StringTexture;)V

    :cond_16
    return-void
.end method
