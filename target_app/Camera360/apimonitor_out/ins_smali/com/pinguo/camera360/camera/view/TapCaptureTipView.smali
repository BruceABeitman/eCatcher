.class public Lcom/pinguo/camera360/camera/view/TapCaptureTipView;
.super Landroid/view/View;
.source "TapCaptureTipView.java"
.field private backPadding:Landroid/graphics/Rect;
.field private haveText:Z
.field private mAlpha:I
.field private mDelata:F
.field private mLength:F
.field private mOrgHeightPix:F
.field private mPaint:Landroid/graphics/Paint;
.field private mStrokeWidth:F
.field private previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
.field private textPaint:Landroid/graphics/Paint;
.field private textRect:Landroid/graphics/Rect;
.field private touchShotOn:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/high16 v0, 0x4220
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mDelata:F
const/high16 v0, 0x4320
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mLength:F
const/high16 v0, 0x4080
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mStrokeWidth:F
const/high16 v0, 0x44a0
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mOrgHeightPix:F
const/16 v0, 0x99
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mAlpha:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->touchShotOn:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/high16 v0, 0x4220
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mDelata:F
const/high16 v0, 0x4320
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mLength:F
const/high16 v0, 0x4080
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mStrokeWidth:F
const/high16 v0, 0x44a0
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mOrgHeightPix:F
const/16 v0, 0x99
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mAlpha:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->touchShotOn:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v1, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/high16 v0, 0x4220
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mDelata:F
const/high16 v0, 0x4320
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mLength:F
const/high16 v0, 0x4080
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mStrokeWidth:F
const/high16 v0, 0x44a0
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mOrgHeightPix:F
const/16 v0, 0x99
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mAlpha:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
iput-object v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->touchShotOn:Z
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->init()V
return-void
.end method
.method private init()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mAlpha:I
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
const/16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0c0007
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I
move-result v0
int-to-float v0, v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mLength:F
return-void
.end method
.method private initRect()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
if-nez v0, :cond_b
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
:cond_b
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
if-nez v0, :cond_16
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
:cond_16
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
if-nez v0, :cond_21
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
:cond_21
return-void
.end method
.method public isHaveText()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 37
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
if-nez v2, :cond_9
invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
:cond_9
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
invoke-interface {v2}, Lcom/pinguo/camera360/photoedit/PreviewRectInterface;->getTouchTapRect()Landroid/graphics/Rect;
move-result-object v24
if-nez v24, :cond_17
invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
:cond_16
:goto_16
return-void
:cond_17
move-object/from16 v0, v24
iget v0, v0, Landroid/graphics/Rect;->left:I
move/from16 v22, v0
move-object/from16 v0, v24
iget v0, v0, Landroid/graphics/Rect;->right:I
move/from16 v25, v0
move-object/from16 v0, v24
iget v0, v0, Landroid/graphics/Rect;->top:I
move/from16 v28, v0
move-object/from16 v0, v24
iget v14, v0, Landroid/graphics/Rect;->bottom:I
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mOrgHeightPix:F
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I
move-result v5
int-to-float v5, v5
div-float v18, v2, v5
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mStrokeWidth:F
div-float v26, v2, v18
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move/from16 v0, v26
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mDelata:F
div-float v17, v2, v18
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mLength:F
div-float v23, v2, v18
move/from16 v0, v22
int-to-float v2, v0
add-float v3, v17, v2
move/from16 v0, v28
int-to-float v2, v0
add-float v4, v17, v2
move/from16 v0, v25
int-to-float v2, v0
sub-float v29, v2, v17
move/from16 v32, v4
move/from16 v30, v3
int-to-float v2, v14
sub-float v33, v2, v17
move/from16 v31, v29
move/from16 v34, v33
add-float v5, v3, v23
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v2, p1
move v6, v4
invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-float v6, v4, v23
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v2, p1
move v5, v3
invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-float v8, v29, v23
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
move/from16 v6, v29
move/from16 v7, v32
move/from16 v9, v32
invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-float v9, v32, v23
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
move/from16 v6, v29
move/from16 v7, v32
move/from16 v8, v29
invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
add-float v8, v30, v23
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
move/from16 v6, v30
move/from16 v7, v33
move/from16 v9, v33
invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-float v9, v33, v23
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
move/from16 v6, v30
move/from16 v7, v33
move/from16 v8, v30
invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-float v8, v31, v23
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
move/from16 v6, v31
move/from16 v7, v34
move/from16 v9, v34
invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-float v9, v34, v23
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->mPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
move/from16 v6, v31
move/from16 v7, v34
move/from16 v8, v31
invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
if-eqz v2, :cond_16
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->initRect()V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v5, 0x7f0b0048
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F
move-result v27
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
move/from16 v0, v27
invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v5, 0x7f08027e
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
const/4 v5, 0x0
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v7
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
invoke-virtual {v2, v6, v5, v7, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
const/4 v5, -0x1
invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
const/4 v5, 0x1
invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v5, 0x7f020086
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v19
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
move-object/from16 v0, v19
invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z
move-object/from16 v0, v24
iget v2, v0, Landroid/graphics/Rect;->left:I
move-object/from16 v0, v24
iget v5, v0, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v5
int-to-float v2, v2
const/high16 v5, 0x4000
div-float v15, v2, v5
move/from16 v16, v4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v5
int-to-float v0, v2
move/from16 v21, v0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
sub-int/2addr v2, v5
int-to-float v0, v2
move/from16 v20, v0
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v5
int-to-float v2, v2
add-float v13, v2, v21
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->backPadding:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->bottom:I
add-int/2addr v2, v5
int-to-float v2, v2
add-float v12, v2, v20
const/high16 v2, 0x4000
div-float v2, v13, v2
sub-float v2, v15, v2
float-to-int v2, v2
move/from16 v0, v16
float-to-int v5, v0
const/high16 v7, 0x4000
div-float v7, v13, v7
add-float/2addr v7, v15
float-to-int v7, v7
add-float v8, v16, v12
float-to-int v8, v8
move-object/from16 v0, v19
invoke-virtual {v0, v2, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move-object/from16 v0, v19
move-object/from16 v1, p1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
const/4 v7, 0x0
invoke-virtual {v6}, Ljava/lang/String;->length()I
move-result v8
const/high16 v2, 0x4000
div-float v2, v21, v2
sub-float v2, v15, v2
float-to-int v2, v2
int-to-float v9, v2
sub-float v2, v12, v20
const/high16 v5, 0x4000
div-float/2addr v2, v5
add-float v2, v2, v16
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
int-to-float v5, v5
sub-float/2addr v2, v5
float-to-int v2, v2
int-to-float v10, v2
move-object/from16 v0, p0
iget-object v11, v0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->textPaint:Landroid/graphics/Paint;
move-object/from16 v5, p1
invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V
goto/16 :goto_16
.end method
.method public setHaveText(Z)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
if-eq v0, p1, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->invalidate()V
:cond_7
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->haveText:Z
return-void
.end method
.method public setPreviewRectInterface(Lcom/pinguo/camera360/photoedit/PreviewRectInterface;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->previewRectInterface:Lcom/pinguo/camera360/photoedit/PreviewRectInterface;
return-void
.end method
.method public setTouchShotOn(Z)V
.registers 3
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->touchShotOn:Z
if-eqz p1, :cond_13
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->getVisibility()I
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->invalidate()V
:goto_d
return-void
:cond_e
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setVisibility(I)V
goto :goto_d
:cond_13
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/TapCaptureTipView;->setVisibility(I)V
goto :goto_d
.end method