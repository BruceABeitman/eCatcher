.class public Lcom/pinguo/camera360/ui/LimitWordEditText;
.super Landroid/widget/EditText;
.source "LimitWordEditText.java"
.field private mMaxLength:I
.field private mTextPaint:Landroid/text/TextPaint;
.method private constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/ui/LimitWordEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 3
invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-direct {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->init()V
return-void
.end method
.method private init()V
.registers 5
const/16 v1, 0x28
iput v1, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mMaxLength:I
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->getPaint()Landroid/text/TextPaint;
move-result-object v0
new-instance v1, Landroid/text/TextPaint;
const/4 v2, 0x1
invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(I)V
iput-object v1, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
iget-object v1, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
iget v2, v0, Landroid/text/TextPaint;->density:F
iput v2, v1, Landroid/text/TextPaint;->density:F
iget-object v1, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
const-string/jumbo v2, "#dbdbdb"
invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
move-result v2
invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V
iget-object v1, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
const/high16 v2, 0x4150
iget-object v3, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
iget v3, v3, Landroid/text/TextPaint;->density:F
mul-float/2addr v2, v3
invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 13
invoke-super {p0, p1}, Landroid/widget/EditText;->onDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->getText()Landroid/text/Editable;
move-result-object v8
invoke-interface {v8}, Landroid/text/Editable;->length()I
move-result v8
rsub-int/lit8 v8, v8, 0x28
invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->getMeasuredWidth()I
move-result v7
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->getMeasuredHeight()I
move-result v1
new-instance v5, Landroid/graphics/Rect;
invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V
iget-object v8, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
const/4 v9, 0x0
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v10
invoke-virtual {v8, v3, v9, v10, v5}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
invoke-virtual {v5}, Landroid/graphics/Rect;->width()I
move-result v6
invoke-virtual {v5}, Landroid/graphics/Rect;->height()I
move-result v4
sub-int v2, v7, v6
sub-int v0, v1, v4
invoke-virtual {p0}, Lcom/pinguo/camera360/ui/LimitWordEditText;->getPaddingRight()I
move-result v8
sub-int v8, v2, v8
int-to-float v8, v8
int-to-float v9, v0
iget-object v10, p0, Lcom/pinguo/camera360/ui/LimitWordEditText;->mTextPaint:Landroid/text/TextPaint;
invoke-virtual {p1, v3, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return-void
.end method