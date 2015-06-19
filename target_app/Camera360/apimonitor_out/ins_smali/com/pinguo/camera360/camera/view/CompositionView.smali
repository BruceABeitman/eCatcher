.class public Lcom/pinguo/camera360/camera/view/CompositionView;
.super Landroid/view/View;
.source "CompositionView.java"
.field public static final TYPE_GOLDEN_RATIO:I = 0x0
.field public static final TYPE_MODERN_PROPROTION:I = 0x1
.field private mCompositionType:I
.field private mComsPaint:Landroid/graphics/Paint;
.field private mDensity:F
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mDensity:F
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CompositionView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
iput v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mDensity:F
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CompositionView;->init()V
return-void
.end method
.method private drawComposition(Landroid/graphics/Canvas;)V
.registers 20
new-instance v10, Landroid/graphics/Rect;
invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CompositionView;->getWidth()I
move-result v13
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/CompositionView;->getHeight()I
move-result v7
div-int/lit8 v8, v13, 0xa
div-int/lit8 v9, v7, 0xa
sub-int v1, v13, v8
sub-int v2, v7, v9
invoke-virtual {v10, v8, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V
move-object/from16 v0, p0
iget v1, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mCompositionType:I
packed-switch v1, :pswitch_data_104
:goto_1f
return-void
:pswitch_20
int-to-float v1, v7
const v2, 0x3f1e353f
mul-float/2addr v1, v2
float-to-int v0, v1
move/from16 v16, v0
mul-int/lit8 v1, v16, 0x1
div-int/lit8 v12, v1, 0x28
iget v1, v10, Landroid/graphics/Rect;->left:I
add-int/2addr v1, v12
int-to-float v2, v1
move/from16 v0, v16
int-to-float v3, v0
iget v1, v10, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v12
int-to-float v4, v1
move/from16 v0, v16
int-to-float v5, v0
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-int v16, v7, v16
iget v1, v10, Landroid/graphics/Rect;->left:I
add-int/2addr v1, v12
int-to-float v2, v1
move/from16 v0, v16
int-to-float v3, v0
iget v1, v10, Landroid/graphics/Rect;->right:I
sub-int/2addr v1, v12
int-to-float v4, v1
move/from16 v0, v16
int-to-float v5, v0
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
int-to-float v1, v13
const v2, 0x3f1e353f
mul-float/2addr v1, v2
float-to-int v14, v1
mul-int/lit8 v1, v14, 0x1
div-int/lit8 v11, v1, 0x3c
int-to-float v2, v14
iget v1, v10, Landroid/graphics/Rect;->top:I
add-int/2addr v1, v11
int-to-float v3, v1
int-to-float v4, v14
iget v1, v10, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v1, v11
int-to-float v5, v1
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-int v14, v13, v14
int-to-float v2, v14
iget v1, v10, Landroid/graphics/Rect;->top:I
add-int/2addr v1, v11
int-to-float v3, v1
int-to-float v4, v14
iget v1, v10, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v1, v11
int-to-float v5, v1
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
goto :goto_1f
:pswitch_8f
int-to-float v1, v7
const v2, 0x3f350481
mul-float/2addr v1, v2
float-to-int v0, v1
move/from16 v16, v0
mul-int/lit8 v1, v16, 0x1
div-int/lit8 v17, v1, 0x5
iget v1, v10, Landroid/graphics/Rect;->left:I
add-int v1, v1, v17
int-to-float v2, v1
move/from16 v0, v16
int-to-float v3, v0
iget v1, v10, Landroid/graphics/Rect;->right:I
sub-int v1, v1, v17
int-to-float v4, v1
move/from16 v0, v16
int-to-float v5, v0
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-int v16, v7, v16
iget v1, v10, Landroid/graphics/Rect;->left:I
add-int v1, v1, v17
int-to-float v2, v1
move/from16 v0, v16
int-to-float v3, v0
iget v1, v10, Landroid/graphics/Rect;->right:I
sub-int v1, v1, v17
int-to-float v4, v1
move/from16 v0, v16
int-to-float v5, v0
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
int-to-float v1, v13
const v2, 0x3f350481
mul-float/2addr v1, v2
float-to-int v14, v1
mul-int/lit8 v1, v14, 0x1
div-int/lit8 v15, v1, 0x14
int-to-float v2, v14
iget v1, v10, Landroid/graphics/Rect;->top:I
add-int/2addr v1, v15
int-to-float v3, v1
int-to-float v4, v14
iget v1, v10, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v1, v15
int-to-float v5, v1
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
sub-int v14, v13, v14
int-to-float v2, v14
iget v1, v10, Landroid/graphics/Rect;->top:I
add-int/2addr v1, v15
int-to-float v3, v1
int-to-float v4, v14
iget v1, v10, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v1, v15
int-to-float v5, v1
move-object/from16 v0, p0
iget-object v6, v0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
move-object/from16 v1, p1
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
goto/16 :goto_1f
nop
:pswitch_data_104
.packed-switch 0x0
:pswitch_20
:pswitch_8f
.end packed-switch
.end method
.method private init()V
.registers 4
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
const/16 v1, 0x7f
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
const/high16 v1, 0x3f80
iget v2, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mDensity:F
mul-float/2addr v1, v2
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mComsPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 2
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/CompositionView;->drawComposition(Landroid/graphics/Canvas;)V
return-void
.end method
.method public setCompostionType(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/CompositionView;->mCompositionType:I
return-void
.end method