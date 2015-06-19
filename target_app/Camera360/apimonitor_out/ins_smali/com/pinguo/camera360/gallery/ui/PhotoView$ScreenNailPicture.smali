.class  Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;
.super Ljava/lang/Object;
.source "PhotoView.java"
.implements Lcom/pinguo/camera360/gallery/ui/PhotoView$Picture;
.field private mIndex:I
.field private mIsCamera:Z
.field private mIsDeletable:Z
.field private mIsPanorama:Z
.field private mIsVideo:Z
.field private mLoadingState:I
.field private mRotation:I
.field private mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.field private mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/PhotoView;I)V
.registers 4
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mLoadingState:I
new-instance v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
invoke-direct {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
return-void
.end method
.method private isScreenNailAnimating()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
instance-of v0, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->isAnimating()Z
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
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsPanorama:Z
if-eqz v2, :cond_41
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getPanoramaRotation()I
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$17(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
:goto_c
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
if-eqz v2, :cond_5d
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getWidth()I
move-result v3
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->width:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getHeight()I
move-result v3
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->height:I
:goto_24
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget v1, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->width:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget v0, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->height:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
invoke-static {v3, v1, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$6(III)I
move-result v3
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->width:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$6(III)I
move-result v3
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;->height:I
return-void
:cond_41
iget-boolean v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsCamera:Z
if-eqz v2, :cond_4e
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getCameraRotation()I
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$18(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
goto :goto_c
:cond_4e
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
invoke-interface {v2, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getImageRotation(I)I
move-result v2
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
goto :goto_c
:cond_5d
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v2}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v2
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
invoke-interface {v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getImageSize(ILcom/pinguo/camera360/gallery/ui/PhotoView$Size;)V
goto :goto_24
.end method
.method public draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
.registers 24
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
if-nez v3, :cond_2e
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPrevBound:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$14(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
move-result v4
if-lt v3, v4, :cond_2d
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mNextBound:I
invoke-static {v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$15(Lcom/pinguo/camera360/gallery/ui/PhotoView;)I
move-result v4
if-gt v3, v4, :cond_2d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v0, p1
move-object/from16 v1, p2
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawPlaceHolder(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$16(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/Rect;)V
:goto_2d
:cond_2d
return-void
:cond_2e
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getWidth()I
move-result v18
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->getHeight()I
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
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v3}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->noDraw()V
goto :goto_2d
:cond_60
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v3
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PositionController;->getFilmRatio()F
move-result v12
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
if-lez v3, :cond_172
const/high16 v3, 0x3f80
cmpl-float v3, v12, v3
if-eqz v3, :cond_172
const/16 v19, 0x1
:goto_7a
move-object/from16 v0, p0
iget-boolean v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z
if-eqz v3, :cond_176
const/high16 v3, 0x3f80
cmpl-float v3, v12, v3
if-nez v3, :cond_176
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I
move-result v3
div-int/lit8 v4, v13, 0x2
if-eq v3, v4, :cond_176
const/16 v20, 0x1
:goto_90
if-eqz v19, :cond_17a
div-int/lit8 v3, v18, 0x2
int-to-float v3, v3
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I
move-result v4
int-to-float v4, v4
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
invoke-static {v12, v3, v4}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$10(FFF)F
move-result v3
const/high16 v4, 0x3f00
add-float/2addr v3, v4
float-to-int v10, v3
:goto_a2
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I
move-result v11
const/4 v3, 0x3
move-object/from16 v0, p1
invoke-interface {v0, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
int-to-float v3, v10
int-to-float v4, v11
move-object/from16 v0, p1
invoke-interface {v0, v3, v4}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
if-eqz v19, :cond_180
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
invoke-static {v15, v3, v4}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(FFF)F
move-result v15
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getScrollAlpha(F)F
invoke-static {v3, v15}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$9(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
move-result v9
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getScrollScale(F)F
invoke-static {v3, v15}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$8(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
move-result v17
const/high16 v3, 0x3f80
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
invoke-static {v12, v9, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$10(FFF)F
move-result v9
const/high16 v3, 0x3f80
move/from16 v0, v17
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->interpolate(FFF)F
invoke-static {v12, v0, v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$10(FFF)F
move-result v17
move-object/from16 v0, p1
invoke-interface {v0, v9}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
const/high16 v3, 0x3f80
move-object/from16 v0, p1
move/from16 v1, v17
move/from16 v2, v17
invoke-interface {v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->scale(FFF)V
:goto_f8
:cond_f8
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
if-eqz v3, :cond_10c
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
int-to-float v3, v3
const/4 v4, 0x0
const/4 v5, 0x0
const/high16 v6, 0x3f80
move-object/from16 v0, p1
invoke-interface {v0, v3, v4, v5, v6}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->rotate(FFFF)V
:cond_10c
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I
move-result v4
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I
move-result v5
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$6(III)I
move-result v7
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mRotation:I
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I
move-result v4
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I
move-result v5
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getRotated(III)I
invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$6(III)I
move-result v8
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
neg-int v4, v7
div-int/lit8 v5, v4, 0x2
neg-int v4, v8
div-int/lit8 v6, v4, 0x2
move-object/from16 v4, p1
invoke-interface/range {v3 .. v8}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->isScreenNailAnimating()Z
move-result v3
if-eqz v3, :cond_148
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->invalidate()V
:cond_148
invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I
move-result v16
move-object/from16 v0, p0
iget-boolean v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z
if-eqz v3, :cond_15d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v0, p1
move/from16 v1, v16
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawVideoPlayIcon(Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
invoke-static {v3, v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$12(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;I)V
:cond_15d
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mLoadingState:I
const/4 v4, 0x2
if-ne v3, v4, :cond_16d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
move-object/from16 v0, p1
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->drawLoadingFailMessage(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
invoke-static {v3, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$13(Lcom/pinguo/camera360/gallery/ui/PhotoView;Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
:cond_16d
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
goto/16 :goto_2d
:cond_172
const/16 v19, 0x0
goto/16 :goto_7a
:cond_176
const/16 v20, 0x0
goto/16 :goto_90
:cond_17a
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerX()I
move-result v10
goto/16 :goto_a2
:cond_180
if-eqz v20, :cond_f8
invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->centerY()I
move-result v3
div-int/lit8 v4, v13, 0x2
sub-int/2addr v3, v4
int-to-float v3, v3
int-to-float v4, v13
div-float v14, v3, v4
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#calls: Lcom/pinguo/camera360/gallery/ui/PhotoView;->getOffsetAlpha(F)F
invoke-static {v3, v14}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$11(Lcom/pinguo/camera360/gallery/ui/PhotoView;F)F
move-result v9
move-object/from16 v0, p1
invoke-interface {v0, v9}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->multiplyAlpha(F)V
goto/16 :goto_f8
.end method
.method public forceSize()V
.registers 4
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->updateSize()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mPositionController:Lcom/pinguo/camera360/gallery/ui/PositionController;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$1(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PositionController;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
invoke-virtual {v0, v1, v2}, Lcom/pinguo/camera360/gallery/ui/PositionController;->forceImageSize(ILcom/pinguo/camera360/gallery/ui/PhotoView$Size;)V
return-void
.end method
.method public getSize()Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mSize:Lcom/pinguo/camera360/gallery/ui/PhotoView$Size;
return-object v0
.end method
.method public isDeletable()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z
return v0
.end method
.method public reload()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->isDeletable(I)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsDeletable:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getLoadingState(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mLoadingState:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->isVideo(I)Z
move-result v0
iput-boolean v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIsVideo:Z
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->this$0:Lcom/pinguo/camera360/gallery/ui/PhotoView;
#getter for: Lcom/pinguo/camera360/gallery/ui/PhotoView;->mModel:Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView;->access$5(Lcom/pinguo/camera360/gallery/ui/PhotoView;)Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mIndex:I
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/PhotoView$Model;->getScreenNail(I)Lcom/pinguo/camera360/gallery/ui/ScreenNail;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->updateSize()V
return-void
.end method
.method public setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/PhotoView$ScreenNailPicture;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
return-void
.end method