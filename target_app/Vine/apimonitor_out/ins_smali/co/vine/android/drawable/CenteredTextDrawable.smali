.class public Lco/vine/android/drawable/CenteredTextDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "CenteredTextDrawable.java"
.field private final mDrawableBounds:Landroid/graphics/Rect;
.field private mDrawables:[Landroid/graphics/drawable/Drawable;
.field private mDrawablesMinHeight:I
.field private mDrawablesMinWidth:I
.field private final mPaint:Landroid/graphics/Paint;
.field private mText:Ljava/lang/String;
.field private final mTextBounds:Landroid/graphics/Rect;
.field private mTextMinHeight:I
.field private mTextMinWidth:I
.field private final mTextPadding:Landroid/graphics/Rect;
.method public varargs constructor <init>(Landroid/content/res/Resources;[I)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-static {p1, p2}, Lco/vine/android/drawable/CenteredTextDrawable;->getDrawablesFromIds(Landroid/content/res/Resources;[I)[Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-direct {p0, v0}, Lco/vine/android/drawable/CenteredTextDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public varargs constructor <init>([Landroid/graphics/drawable/Drawable;)V
.registers 3
.parameter
.end parameter
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
invoke-virtual {p0, p1}, Lco/vine/android/drawable/CenteredTextDrawable;->setDrawables([Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->init()Landroid/graphics/Paint;
move-result-object v0
iput-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextBounds:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
return-void
.end method
.method private static varargs getDrawablesFromIds(Landroid/content/res/Resources;[I)[Landroid/graphics/drawable/Drawable;
.registers 10
array-length v7, p1
new-array v2, v7, [Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
move-object v0, p1
array-length v6, v0
const/4 v5, 0x0
move v4, v3
:goto_8
if-ge v5, v6, :cond_18
aget v1, v0, v5
add-int/lit8 v3, v4, 0x1
invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v7
aput-object v7, v2, v4
add-int/lit8 v5, v5, 0x1
move v4, v3
goto :goto_8
:cond_18
return-object v2
.end method
.method private init()Landroid/graphics/Paint;
.registers 3
new-instance v0, Landroid/graphics/Paint;
const/16 v1, 0x41
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
const/high16 v1, 0x4200
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V
return-object v0
.end method
.method private updateTextBounds()V
.registers 8
iget-object v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mText:Ljava/lang/String;
if-nez v3, :cond_45
const-string v1, ""
:goto_6
iget-object v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
const/4 v4, 0x0
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v5
iget-object v6, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextBounds:Landroid/graphics/Rect;
invoke-virtual {v3, v1, v4, v5, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
iget-object v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextBounds:Landroid/graphics/Rect;
invoke-virtual {v3}, Landroid/graphics/Rect;->height()I
move-result v3
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
add-int/2addr v3, v4
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
add-int v0, v3, v4
iget v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawablesMinHeight:I
invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I
move-result v3
iput v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextMinHeight:I
iget-object v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextBounds:Landroid/graphics/Rect;
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v3
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->left:I
add-int/2addr v3, v4
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
add-int v2, v3, v4
iget v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawablesMinWidth:I
invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I
move-result v3
iput v3, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextMinWidth:I
return-void
:cond_45
iget-object v1, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mText:Ljava/lang/String;
goto :goto_6
.end method
.method public draw(Landroid/graphics/Canvas;)V
.registers 11
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
invoke-virtual {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->getBounds()Landroid/graphics/Rect;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;
array-length v3, v0
const/4 v2, 0x0
:goto_d
if-ge v2, v3, :cond_1c
aget-object v1, v0, v2
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
add-int/lit8 v2, v2, 0x1
goto :goto_d
:cond_1c
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->left:I
iget-object v6, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
add-int/2addr v5, v6
iput v5, v4, Landroid/graphics/Rect;->left:I
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->top:I
iget-object v6, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->top:I
add-int/2addr v5, v6
iput v5, v4, Landroid/graphics/Rect;->top:I
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->bottom:I
iget-object v6, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v5, v6
iput v5, v4, Landroid/graphics/Rect;->bottom:I
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
iget v5, v4, Landroid/graphics/Rect;->right:I
iget-object v6, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->right:I
sub-int/2addr v5, v6
iput v5, v4, Landroid/graphics/Rect;->right:I
iget-object v4, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mText:Ljava/lang/String;
iget-object v5, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F
move-result v5
iget-object v6, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawableBounds:Landroid/graphics/Rect;
invoke-virtual {v6}, Landroid/graphics/Rect;->exactCenterY()F
move-result v6
iget-object v7, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextBounds:Landroid/graphics/Rect;
invoke-virtual {v7}, Landroid/graphics/Rect;->height()I
move-result v7
int-to-float v7, v7
const/high16 v8, 0x3f00
mul-float/2addr v7, v8
add-float/2addr v6, v7
iget-object v7, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
return-void
.end method
.method public getIntrinsicHeight()I
.registers 2
iget v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextMinHeight:I
return v0
.end method
.method public getIntrinsicWidth()I
.registers 2
iget v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextMinWidth:I
return v0
.end method
.method public getOpacity()I
.registers 3
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I
move-result v0
const/16 v1, 0xff
if-ge v0, v1, :cond_c
const/4 v0, -0x3
:goto_b
return v0
:cond_c
const/4 v0, -0x1
goto :goto_b
.end method
.method public setAlpha(I)V
.registers 3
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V
return-void
.end method
.method public setColorFilter(ILandroid/graphics/ColorFilter;)V
.registers 4
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;
aget-object v0, v0, p1
invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method
.method public setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
return-void
.end method
.method public varargs setDrawables([Landroid/graphics/drawable/Drawable;)V
.registers 9
.parameter
.end parameter
iput-object p1, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;
const/4 v2, 0x0
const/4 v5, 0x0
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawables:[Landroid/graphics/drawable/Drawable;
array-length v4, v0
const/4 v3, 0x0
:goto_8
if-ge v3, v4, :cond_1f
aget-object v1, v0, v3
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I
move-result v6
invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I
move-result v2
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I
move-result v6
invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I
move-result v5
add-int/lit8 v3, v3, 0x1
goto :goto_8
:cond_1f
iput v2, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawablesMinHeight:I
iput v5, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mDrawablesMinWidth:I
return-void
.end method
.method public setText(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mText:Ljava/lang/String;
invoke-direct {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->updateTextBounds()V
invoke-virtual {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->invalidateSelf()V
return-void
.end method
.method public setTextColor(I)V
.registers 3
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V
invoke-virtual {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->invalidateSelf()V
return-void
.end method
.method public setTextPadding(Landroid/graphics/Rect;)V
.registers 4
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v1, p1, Landroid/graphics/Rect;->left:I
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v1, p1, Landroid/graphics/Rect;->right:I
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v1, p1, Landroid/graphics/Rect;->top:I
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mTextPadding:Landroid/graphics/Rect;
iget v1, p1, Landroid/graphics/Rect;->bottom:I
iput v1, v0, Landroid/graphics/Rect;->bottom:I
return-void
.end method
.method public setTextSize(F)V
.registers 3
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V
invoke-direct {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->updateTextBounds()V
invoke-virtual {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->invalidateSelf()V
return-void
.end method
.method public setTypeFace(Landroid/graphics/Typeface;)V
.registers 3
iget-object v0, p0, Lco/vine/android/drawable/CenteredTextDrawable;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
invoke-direct {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->updateTextBounds()V
invoke-virtual {p0}, Lco/vine/android/drawable/CenteredTextDrawable;->invalidateSelf()V
return-void
.end method