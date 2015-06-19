.class public Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;
.super Landroid/view/View;
.source "SwitchCheckBox.java"
.field private bStatus:Z
.field private fPoint:F
.field private mGestureDetector:Landroid/view/GestureDetector;
.field private final strOFF:Ljava/lang/String;
.field private final strON:Ljava/lang/String;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->bStatus:Z
const-string/jumbo v0, "ON"
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->strON:Ljava/lang/String;
const-string/jumbo v0, "OFF"
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->strOFF:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->fPoint:F
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->setLongClickable(Z)V
new-instance v0, Landroid/view/GestureDetector;
new-instance v1, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;-><init>(Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox$LearnGestureListener;)V
invoke-direct {v0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->mGestureDetector:Landroid/view/GestureDetector;
return-void
.end method
.method private drawBox(Landroid/graphics/Canvas;F)V
.registers 14
neg-float p2, p2
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
const/4 v6, 0x1
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getWidth()I
move-result v6
div-int/lit8 v1, v6, 0x2
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getHeight()I
move-result v6
div-int/lit8 v2, v6, 0x2
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getHeight()I
move-result v6
div-int/lit8 v6, v6, 0x2
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getHeight()I
move-result v7
div-int/lit8 v7, v7, 0x5
add-int v3, v6, v7
const/16 v6, 0x33
const/16 v7, 0x33
const/16 v8, 0xee
invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I
move-result v6
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V
new-instance v6, Landroid/graphics/RectF;
const/4 v7, 0x0
int-to-float v8, v1
add-float/2addr v8, p2
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getHeight()I
move-result v9
int-to-float v9, v9
invoke-direct {v6, p2, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V
const/high16 v7, 0x4080
const/high16 v8, 0x4080
invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
const/16 v6, 0x33
const/16 v7, 0x33
const/16 v8, 0x33
invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I
move-result v6
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V
new-instance v6, Landroid/graphics/RectF;
mul-int/lit8 v7, v1, 0x2
int-to-float v7, v7
add-float/2addr v7, p2
const/4 v8, 0x0
mul-int/lit8 v9, v1, 0x3
int-to-float v9, v9
add-float/2addr v9, p2
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getHeight()I
move-result v10
int-to-float v10, v10
invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V
const/high16 v7, 0x4080
const/high16 v8, 0x4080
invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
const/16 v6, 0x66
const/16 v7, 0x66
const/16 v8, 0x66
invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I
move-result v6
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V
new-instance v6, Landroid/graphics/RectF;
int-to-float v7, v1
add-float/2addr v7, p2
const/high16 v8, 0x4080
sub-float/2addr v7, v8
const/4 v8, 0x0
mul-int/lit8 v9, v1, 0x2
int-to-float v9, v9
add-float/2addr v9, p2
const/high16 v10, 0x4080
add-float/2addr v9, v10
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getHeight()I
move-result v10
int-to-float v10, v10
invoke-direct {v6, v7, v8, v9, v10}, Landroid/graphics/RectF;-><init>(FFFF)V
const/4 v7, 0x0
const/4 v8, 0x0
invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V
const/16 v6, 0xff
const/16 v7, 0xff
const/16 v8, 0xff
invoke-static {v6, v7, v8}, Landroid/graphics/Color;->rgb(III)I
move-result v6
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V
int-to-float v6, v2
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V
new-instance v5, Landroid/graphics/Rect;
invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V
const-string/jumbo v6, "ON"
const/4 v7, 0x0
const-string/jumbo v8, "ON"
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
invoke-virtual {v0, v6, v7, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
invoke-virtual {v5}, Landroid/graphics/Rect;->width()I
move-result v4
const-string/jumbo v6, "ON"
sub-int v7, v1, v4
div-int/lit8 v7, v7, 0x2
int-to-float v7, v7
add-float/2addr v7, p2
int-to-float v8, v3
invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
const-string/jumbo v6, "OFF"
const/4 v7, 0x0
const-string/jumbo v8, "OFF"
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v8
invoke-virtual {v0, v6, v7, v8, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
invoke-virtual {v5}, Landroid/graphics/Rect;->width()I
move-result v4
const-string/jumbo v6, "OFF"
mul-int/lit8 v7, v1, 0x2
int-to-float v7, v7
add-float/2addr v7, p2
sub-int v8, v1, v4
div-int/lit8 v8, v8, 0x2
int-to-float v8, v8
add-float/2addr v7, v8
int-to-float v8, v3
invoke-virtual {p1, v6, v7, v8, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return-void
.end method
.method public getStatus()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->bStatus:Z
return v0
.end method
.method public onDraw(Landroid/graphics/Canvas;)V
.registers 3
iget-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->bStatus:Z
if-eqz v0, :cond_9
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->drawBox(Landroid/graphics/Canvas;F)V
:goto_8
return-void
:cond_9
iget v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->fPoint:F
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->drawBox(Landroid/graphics/Canvas;F)V
goto :goto_8
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->mGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public setOff()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->bStatus:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->getWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
int-to-float v0, v0
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->fPoint:F
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->invalidate()V
return-void
.end method
.method public setOn()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->bStatus:Z
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->fPoint:F
invoke-virtual {p0}, Lcom/pinguo/camera360/cloud/struct/SwitchCheckBox;->invalidate()V
return-void
.end method