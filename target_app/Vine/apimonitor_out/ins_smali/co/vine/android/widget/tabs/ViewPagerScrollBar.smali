.class public Lco/vine/android/widget/tabs/ViewPagerScrollBar;
.super Landroid/view/View;
.source "ViewPagerScrollBar.java"
.field private mColorIds:[I
.field private mHeight:I
.field private mNavBottomSet:Z
.field private mOffset:I
.field private mOffsetPixels:I
.field private final mPaint:Landroid/graphics/Paint;
.field private mPosition:I
.field private mRange:I
.field private final mTabBounds:Landroid/graphics/RectF;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x0
const v1, 0x7f010046
invoke-direct {p0, p1, v0, v1}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const v0, 0x7f010046
invoke-direct {p0, p1, p2, v0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 11
const/4 v5, 0x1
const/4 v6, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v6, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mHeight:I
iput v5, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mRange:I
iput v6, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffset:I
iput-boolean v6, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mNavBottomSet:Z
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
iput-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
new-instance v4, Landroid/graphics/RectF;
invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V
iput-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mTabBounds:Landroid/graphics/RectF;
sget-object v4, Lco/vine/android/R$styleable;->ViewPagerScrollBar:[I
invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v4, 0x2
invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v1
invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v4
iput v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mHeight:I
if-lez v1, :cond_60
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;
move-result-object v3
invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I
move-result v4
new-array v4, v4, [I
iput-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
const/4 v2, 0x0
:goto_3f
invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I
move-result v4
if-ge v2, v4, :cond_50
iget-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
invoke-virtual {v3, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v5
aput v5, v4, v2
add-int/lit8 v2, v2, 0x1
goto :goto_3f
:cond_50
invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
iget-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
iget-object v5, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
aget v5, v5, v6
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V
:goto_5c
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
:cond_60
iget-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
const/4 v5, -0x1
invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v5
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V
goto :goto_5c
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mTabBounds:Landroid/graphics/RectF;
iget-object v1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V
iget-boolean v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mNavBottomSet:Z
if-nez v0, :cond_d
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->getHeight()I
move-result v0
iput v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffset:I
:cond_d
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->updateBounds()V
return-void
.end method
.method public scroll(II)V
.registers 4
iput p1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPosition:I
iget v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mRange:I
div-int v0, p2, v0
int-to-float v0, v0
invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F
move-result v0
float-to-int v0, v0
iput v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffsetPixels:I
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->updateBounds()V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->invalidate()V
return-void
.end method
.method public setColorIds(I)V
.registers 5
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
move-result-object v0
iput-object v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
iget-object v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
iget-object v1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
const/4 v2, 0x0
aget v1, v1, v2
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->requestLayout()V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->invalidate()V
return-void
.end method
.method public setLineColor(I)V
.registers 3
iget-object v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method public setNavOffset(I)V
.registers 3
iput p1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffset:I
const/4 v0, 0x1
iput-boolean v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mNavBottomSet:Z
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->updateBounds()V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->invalidate()V
return-void
.end method
.method public setPageColor(I)V
.registers 4
iget-object v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
if-eqz v0, :cond_d
iget-object v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPaint:Landroid/graphics/Paint;
iget-object v1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mColorIds:[I
aget v1, v1, p1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
:cond_d
return-void
.end method
.method public setPosition(I)V
.registers 3
iput p1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPosition:I
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffsetPixels:I
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->updateBounds()V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->invalidate()V
return-void
.end method
.method public setRange(I)V
.registers 4
iput p1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mRange:I
iget v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mRange:I
if-nez v0, :cond_13
const/4 v0, 0x1
iput v0, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mRange:I
new-instance v0, Lco/vine/android/VineLoggingException;
const-string v1, "Someone is trying to set the range to be 0, defaulting back to 1."
invoke-direct {v0, v1}, Lco/vine/android/VineLoggingException;-><init>(Ljava/lang/String;)V
invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
:cond_13
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->requestLayout()V
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->invalidate()V
return-void
.end method
.method public updateBounds()V
.registers 9
invoke-virtual {p0}, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->getWidth()I
move-result v4
iget v5, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mRange:I
div-int/2addr v4, v5
int-to-float v3, v4
iget v1, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffsetPixels:I
iget v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mPosition:I
int-to-float v4, v4
mul-float v2, v3, v4
int-to-float v4, v1
add-float v0, v4, v2
iget-object v4, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mTabBounds:Landroid/graphics/RectF;
iget v5, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffset:I
iget v6, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mHeight:I
sub-int/2addr v5, v6
int-to-float v5, v5
add-float v6, v0, v3
iget v7, p0, Lco/vine/android/widget/tabs/ViewPagerScrollBar;->mOffset:I
int-to-float v7, v7
invoke-virtual {v4, v0, v5, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V
return-void
.end method