.class  Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"
.implements Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
.field private mIsDeletable:Z
.field private mIsVideo:Z
.field private mLoadingState:I
.field private mRotation:I
.field private mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
.method constructor <init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;)V
.registers 3
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mLoadingState:I
new-instance v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
return-void
.end method
.method private setTileViewPosition(FFIIF)V
.registers 18
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getImageWidth()I
move-result v4
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getImageHeight()I
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
iget v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mRotation:I
sparse-switch v9, :sswitch_data_64
new-instance v9, Ljava/lang/RuntimeException;
iget v10, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mRotation:I
invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v9
:sswitch_4b
move v7, v1
move v8, v2
:goto_4d
iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v9
iget v10, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mRotation:I
move/from16 v0, p5
invoke-virtual {v9, v7, v8, v0, v10}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->setPosition(IIFI)Z
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
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v2
const/4 v3, 0x0
invoke-interface {v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getImageRotation(I)I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mRotation:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v2
iget v1, v2, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v2
iget v0, v2, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mRotation:I
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
invoke-static {v3, v1, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$6(III)I
move-result v3
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->width:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mRotation:I
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$6(III)I
move-result v3
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->height:I
return-void
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
.registers 23
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getImageScale()F
move-result v7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I
move-result v6
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterX()F
move-result v3
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->exactCenterY()F
move-result v4
const/high16 v16, 0x3f80
const/4 v2, 0x3
move-object/from16 v0, p1
invoke-interface {v0, v2}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getFilmRatio()F
move-result v10
const/high16 v2, 0x3f80
cmpl-float v2, v10, v2
if-eqz v2, :cond_125
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v2
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->inOpeningAnimation()Z
move-result v2
if-nez v2, :cond_125
const/16 v17, 0x1
:goto_4e
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mIsDeletable:Z
if-eqz v2, :cond_129
const/high16 v2, 0x3f80
cmpl-float v2, v10, v2
if-nez v2, :cond_129
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I
move-result v2
div-int/lit8 v19, v6, 0x2
move/from16 v0, v19
if-eq v2, v0, :cond_129
const/16 v18, 0x1
:goto_66
if-eqz v17, :cond_138
move-object/from16 v0, p2
iget v11, v0, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p2
iget v14, v0, Landroid/graphics/Rect;->right:I
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->calculateMoveOutProgress(III)F
invoke-static {v11, v14, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$7(III)F
move-result v13
const/high16 v2, -0x4080
const/high16 v19, 0x3f80
move/from16 v0, v19
invoke-static {v13, v2, v0}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v13
const/4 v2, 0x0
cmpg-float v2, v13, v2
if-gez v2, :cond_b5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getScrollScale(F)F
invoke-static {v2, v13}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$8(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
move-result v16
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getScrollAlpha(F)F
invoke-static {v2, v13}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$9(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
move-result v8
const/high16 v2, 0x3f80
move/from16 v0, v16
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
invoke-static {v10, v0, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$10(FFF)F
move-result v16
const/high16 v2, 0x3f80
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
invoke-static {v10, v8, v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$10(FFF)F
move-result v8
mul-float v7, v7, v16
move-object/from16 v0, p1
invoke-interface {v0, v8}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
sub-int v2, v14, v11
if-gt v2, v5, :cond_12d
int-to-float v2, v5
const/high16 v19, 0x4000
div-float v9, v2, v19
:goto_b1
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
invoke-static {v10, v9, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$10(FFF)F
move-result v3
:goto_b5
:cond_b5
move-object/from16 v2, p0
invoke-direct/range {v2 .. v7}, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->setTileViewPosition(FFIIF)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v19, v0
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static/range {v19 .. v19}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v19
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v2, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->renderChild(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Lcom/pinguo/camera360/gallery/ui/GLView;)V
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
invoke-interface {v0, v2, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
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
iget-boolean v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mIsVideo:Z
if-eqz v2, :cond_10e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v0, p1
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawVideoPlayIcon(Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
invoke-static {v2, v0, v15}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$12(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
:cond_10e
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mLoadingState:I
const/16 v19, 0x2
move/from16 v0, v19
if-ne v2, v0, :cond_121
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v0, p1
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawLoadingFailMessage(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
invoke-static {v2, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$13(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
:cond_121
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
return-void
:cond_125
const/16 v17, 0x0
goto/16 :goto_4e
:cond_129
const/16 v18, 0x0
goto/16 :goto_66
:cond_12d
sub-int v2, v14, v11
int-to-float v2, v2
mul-float v2, v2, v16
const/high16 v19, 0x4000
div-float v9, v2, v19
goto/16 :goto_b1
:cond_138
if-eqz v18, :cond_b5
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I
move-result v2
div-int/lit8 v19, v6, 0x2
sub-int v2, v2, v19
int-to-float v2, v2
int-to-float v0, v6
move/from16 v19, v0
div-float v12, v2, v19
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getOffsetAlpha(F)F
invoke-static {v2, v12}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$11(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
move-result v8
move-object/from16 v0, p1
invoke-interface {v0, v8}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
goto/16 :goto_b5
.end method
.method public forceSize()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->updateSize()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v0
const/4 v1, 0x0
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->forceImageSize(ILcom/pinguo/camera360/gallery/ui/PhotoView$Size;)V
return-void
.end method
.method public getSize()Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
return-object v0
.end method
.method public isDeletable()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mIsDeletable:Z
return v0
.end method
.method public reload()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v0
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->notifyModelInvalidated()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->isDeletable(I)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mIsDeletable:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getLoadingState(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mLoadingState:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getScreenNail(I)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->isVideo(I)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->mIsVideo:Z
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->updateSize()V
return-void
.end method
.method public setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$FullPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mTileView:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$4(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/TileImageView;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
return-void
.end method