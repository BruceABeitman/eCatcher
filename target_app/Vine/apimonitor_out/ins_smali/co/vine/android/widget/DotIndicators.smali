.class public Lco/vine/android/widget/DotIndicators;
.super Landroid/view/View;
.source "DotIndicators.java"
.field private mActivePos:I
.field private mDotHeight:I
.field private mDotPadding:I
.field private mDotWidth:I
.field private mFinalIconOff:Landroid/graphics/Bitmap;
.field private mFinalIconOn:Landroid/graphics/Bitmap;
.field private mFinalIconWidth:I
.field private mHeight:I
.field private mNum:I
.field private mOff:Landroid/graphics/Bitmap;
.field private mOffAlpha:Z
.field private mOffAlphaValue:I
.field private mOn:Landroid/graphics/Bitmap;
.field private mPaint:Landroid/graphics/Paint;
.field private mShowFinalIcon:Z
.field private mWidth:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lco/vine/android/widget/DotIndicators;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/DotIndicators;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 12
const/16 v5, 0x64
const/4 v7, 0x1
const/4 v6, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v4, Lco/vine/android/R$styleable;->DotIndicators:[I
invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const v4, 0x7f020221
invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v2
const v4, 0x7f020222
invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v3
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v4
iput-object v4, p0, Lco/vine/android/widget/DotIndicators;->mOff:Landroid/graphics/Bitmap;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-static {v4, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v4
iput-object v4, p0, Lco/vine/android/widget/DotIndicators;->mOn:Landroid/graphics/Bitmap;
const/4 v4, 0x2
invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
if-eq v1, v5, :cond_3a
iput-boolean v7, p0, Lco/vine/android/widget/DotIndicators;->mOffAlpha:Z
iput v1, p0, Lco/vine/android/widget/DotIndicators;->mOffAlphaValue:I
:cond_3a
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f020220
invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v4
iput-object v4, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconOn:Landroid/graphics/Bitmap;
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f02021f
invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v4
iput-object v4, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconOff:Landroid/graphics/Bitmap;
const/4 v4, 0x3
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I
move-result v4
iput v4, p0, Lco/vine/android/widget/DotIndicators;->mDotPadding:I
iget-object v4, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconOff:Landroid/graphics/Bitmap;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
iput v4, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconWidth:I
iget-object v4, p0, Lco/vine/android/widget/DotIndicators;->mOn:Landroid/graphics/Bitmap;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
iput v4, p0, Lco/vine/android/widget/DotIndicators;->mDotWidth:I
iget-object v4, p0, Lco/vine/android/widget/DotIndicators;->mOn:Landroid/graphics/Bitmap;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
iput v4, p0, Lco/vine/android/widget/DotIndicators;->mDotHeight:I
iput-boolean v7, p0, Lco/vine/android/widget/DotIndicators;->mShowFinalIcon:Z
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
iput-object v4, p0, Lco/vine/android/widget/DotIndicators;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 12
const/4 v9, 0x0
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mHeight:I
if-eqz v5, :cond_10
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mWidth:I
if-eqz v5, :cond_10
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
if-nez v5, :cond_11
:cond_10
:goto_10
return-void
:cond_11
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
div-int/lit8 v5, v5, 0x2
int-to-double v5, v5
invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D
move-result-wide v5
double-to-int v2, v5
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mWidth:I
div-int/lit8 v3, v5, 0x2
iget-boolean v5, p0, Lco/vine/android/widget/DotIndicators;->mShowFinalIcon:Z
if-eqz v5, :cond_64
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mDotWidth:I
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mDotPadding:I
add-int/2addr v5, v6
mul-int/2addr v5, v2
sub-int v5, v3, v5
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconWidth:I
div-int/lit8 v6, v6, 0x2
sub-int v1, v5, v6
:goto_31
iget-boolean v5, p0, Lco/vine/android/widget/DotIndicators;->mShowFinalIcon:Z
if-eqz v5, :cond_6d
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
rem-int/lit8 v5, v5, 0x2
if-eqz v5, :cond_43
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mDotWidth:I
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mDotPadding:I
add-int/2addr v5, v6
div-int/lit8 v5, v5, 0x2
sub-int/2addr v1, v5
:goto_43
:cond_43
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mHeight:I
div-int/lit8 v5, v5, 0x2
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mDotHeight:I
sub-int v4, v5, v6
const/4 v0, 0x0
:goto_4c
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
if-ge v0, v5, :cond_96
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mActivePos:I
if-ne v5, v0, :cond_79
iget-object v5, p0, Lco/vine/android/widget/DotIndicators;->mOn:Landroid/graphics/Bitmap;
int-to-float v6, v1
int-to-float v7, v4
invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
:goto_5b
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mDotWidth:I
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mDotPadding:I
add-int/2addr v5, v6
add-int/2addr v1, v5
add-int/lit8 v0, v0, 0x1
goto :goto_4c
:cond_64
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mDotWidth:I
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mDotPadding:I
add-int/2addr v5, v6
mul-int/2addr v5, v2
sub-int v1, v3, v5
goto :goto_31
:cond_6d
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
rem-int/lit8 v5, v5, 0x2
if-nez v5, :cond_43
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mDotPadding:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v1, v5
goto :goto_43
:cond_79
iget-boolean v5, p0, Lco/vine/android/widget/DotIndicators;->mOffAlpha:Z
if-eqz v5, :cond_8e
iget-object v5, p0, Lco/vine/android/widget/DotIndicators;->mPaint:Landroid/graphics/Paint;
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mOffAlphaValue:I
invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v5, p0, Lco/vine/android/widget/DotIndicators;->mOn:Landroid/graphics/Bitmap;
int-to-float v6, v1
int-to-float v7, v4
iget-object v8, p0, Lco/vine/android/widget/DotIndicators;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto :goto_5b
:cond_8e
iget-object v5, p0, Lco/vine/android/widget/DotIndicators;->mOff:Landroid/graphics/Bitmap;
int-to-float v6, v1
int-to-float v7, v4
invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto :goto_5b
:cond_96
iget-boolean v5, p0, Lco/vine/android/widget/DotIndicators;->mShowFinalIcon:Z
if-eqz v5, :cond_10
iget v5, p0, Lco/vine/android/widget/DotIndicators;->mActivePos:I
iget v6, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
if-ne v5, v6, :cond_a9
iget-object v5, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconOn:Landroid/graphics/Bitmap;
int-to-float v6, v1
int-to-float v7, v4
invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto/16 :goto_10
:cond_a9
iget-object v5, p0, Lco/vine/android/widget/DotIndicators;->mFinalIconOff:Landroid/graphics/Bitmap;
int-to-float v6, v1
int-to-float v7, v4
invoke-virtual {p1, v5, v6, v7, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto/16 :goto_10
.end method
.method protected onSizeChanged(IIII)V
.registers 5
invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V
iput p1, p0, Lco/vine/android/widget/DotIndicators;->mWidth:I
iput p2, p0, Lco/vine/android/widget/DotIndicators;->mHeight:I
return-void
.end method
.method public setActiveDot(I)V
.registers 2
iput p1, p0, Lco/vine/android/widget/DotIndicators;->mActivePos:I
invoke-virtual {p0}, Lco/vine/android/widget/DotIndicators;->invalidate()V
return-void
.end method
.method public setFinalIcon(Z)V
.registers 2
iput-boolean p1, p0, Lco/vine/android/widget/DotIndicators;->mShowFinalIcon:Z
return-void
.end method
.method public setNumberOfDots(I)V
.registers 2
iput p1, p0, Lco/vine/android/widget/DotIndicators;->mNum:I
return-void
.end method