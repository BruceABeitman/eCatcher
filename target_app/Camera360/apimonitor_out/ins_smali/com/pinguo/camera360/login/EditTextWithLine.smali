.class public Lcom/pinguo/camera360/login/EditTextWithLine;
.super Landroid/widget/EditText;
.source "EditTextWithLine.java"
.field private mPaint:Landroid/graphics/Paint;
.field private mRect:Landroid/graphics/Rect;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V
invoke-direct {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->init()V
return-void
.end method
.method private init()V
.registers 3
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mPaint:Landroid/graphics/Paint;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mRect:Landroid/graphics/Rect;
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 9
iget-object v5, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mPaint:Landroid/graphics/Paint;
iget-object v6, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mRect:Landroid/graphics/Rect;
const/4 v0, 0x0
invoke-virtual {p0, v0, v6}, Lcom/pinguo/camera360/login/EditTextWithLine;->getLineBounds(ILandroid/graphics/Rect;)I
iget v0, v6, Landroid/graphics/Rect;->left:I
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->getPaddingLeft()I
move-result v1
sub-int/2addr v0, v1
int-to-float v1, v0
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->getHeight()I
move-result v0
add-int/lit8 v0, v0, -0x1
int-to-float v2, v0
iget v0, v6, Landroid/graphics/Rect;->right:I
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->getPaddingRight()I
move-result v3
add-int/2addr v0, v3
int-to-float v3, v0
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->getHeight()I
move-result v0
add-int/lit8 v0, v0, -0x1
int-to-float v4, v0
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V
return-void
.end method
.method public setCustomPaint(Landroid/graphics/Paint;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/login/EditTextWithLine;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p0}, Lcom/pinguo/camera360/login/EditTextWithLine;->invalidate()V
return-void
.end method