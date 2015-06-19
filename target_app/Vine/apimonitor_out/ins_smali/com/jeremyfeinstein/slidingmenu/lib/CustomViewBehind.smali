.class public Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"
.field private static final MARGIN_THRESHOLD:I = 0x30
.field private static final TAG:Ljava/lang/String; = "CustomViewBehind"
.field private mChildrenEnabled:Z
.field private mContent:Landroid/view/View;
.field private mFadeDegree:F
.field private mFadeEnabled:Z
.field private final mFadePaint:Landroid/graphics/Paint;
.field private mMarginThreshold:I
.field private mMode:I
.field private mScrollScale:F
.field private mSecondaryContent:Landroid/view/View;
.field private mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;
.field private mSelectedView:Landroid/view/View;
.field private mSelectorDrawable:Landroid/graphics/Bitmap;
.field private mSelectorEnabled:Z
.field private mShadowDrawable:Landroid/graphics/drawable/Drawable;
.field private mShadowWidth:I
.field private mTouchMode:I
.field private mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
.field private mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
.field private mWidthOffset:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x1
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;
iput-boolean v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z
const/high16 v0, 0x4240
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
return-void
.end method
.method private getSelectorTop()I
.registers 4
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getTop()I
move-result v0
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v1
iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
sub-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
return v0
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
if-eqz v0, :cond_19
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F
move-result v1
invoke-interface {v0, p1, v1}, Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;->transformCanvas(Landroid/graphics/Canvas;F)V
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:goto_18
return-void
:cond_19
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
goto :goto_18
.end method
.method public drawFade(Landroid/view/View;Landroid/graphics/Canvas;F)V
.registers 13
const/4 v2, 0x0
const/4 v3, 0x0
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F
const/high16 v1, 0x437f
mul-float/2addr v0, v1
const/high16 v1, 0x3f80
sub-float/2addr v1, p3
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v1
mul-float/2addr v0, v1
float-to-int v6, v0
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;
invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
const/4 v7, 0x0
const/4 v8, 0x0
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v0, :cond_40
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int v7, v0, v1
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v8
:goto_32
:cond_32
int-to-float v1, v7
int-to-float v3, v8
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;
move-object v0, p2
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
goto :goto_6
:cond_40
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x1
if-ne v0, v1, :cond_54
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v7
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int v8, v0, v1
goto :goto_32
:cond_54
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x2
if-ne v0, v1, :cond_32
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int v7, v0, v1
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v8
int-to-float v1, v7
int-to-float v3, v8
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v0
int-to-float v4, v0
iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadePaint:Landroid/graphics/Paint;
move-object v0, p2
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v7
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int v8, v0, v1
goto :goto_32
.end method
.method public drawSelector(Landroid/view/View;Landroid/graphics/Canvas;F)V
.registers 12
const/4 v7, 0x0
const/4 v6, 0x0
iget-boolean v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z
if-nez v4, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
if-eqz v4, :cond_6
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
if-eqz v4, :cond_6
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
sget v5, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I
invoke-virtual {v4, v5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/String;
const-string v4, "CustomViewBehindSelectedView"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6
invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
int-to-float v4, v4
mul-float/2addr v4, p3
float-to-int v1, v4
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v4, :cond_4d
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
sub-int v0, v2, v1
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v4
invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
int-to-float v5, v0
invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I
move-result v6
int-to-float v6, v6
invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
:cond_49
:goto_49
invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V
goto :goto_6
:cond_4d
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v5, 0x1
if-ne v4, v5, :cond_49
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v0
add-int v2, v0, v1
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v4
invoke-virtual {p2, v0, v6, v2, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
iget-object v5, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I
move-result v5
sub-int v5, v2, v5
int-to-float v5, v5
invoke-direct {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getSelectorTop()I
move-result v6
int-to-float v6, v6
invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto :goto_49
.end method
.method public drawShadow(Landroid/view/View;Landroid/graphics/Canvas;)V
.registers 8
const/4 v4, 0x0
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_9
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I
if-gtz v1, :cond_a
:goto_9
:cond_9
return-void
:cond_a
const/4 v0, 0x0
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v1, :cond_29
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I
sub-int v0, v1, v2
:cond_17
:goto_17
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I
add-int/2addr v2, v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v3
invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_9
:cond_29
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v2, 0x1
if-ne v1, v2, :cond_33
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v0
goto :goto_17
:cond_33
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v2, 0x2
if-ne v1, v2, :cond_17
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_51
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v0
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I
add-int/2addr v2, v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getHeight()I
move-result v3
invoke-virtual {v1, v0, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_51
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I
sub-int v0, v1, v2
goto :goto_17
.end method
.method public getAbsLeftBound(Landroid/view/View;)I
.registers 4
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-eqz v0, :cond_9
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x2
if-ne v0, v1, :cond_13
:cond_9
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int/2addr v0, v1
:goto_12
return v0
:cond_13
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x1
if-ne v0, v1, :cond_1d
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_12
:cond_1d
const/4 v0, 0x0
goto :goto_12
.end method
.method public getAbsRightBound(Landroid/view/View;)I
.registers 4
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v0, :cond_9
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
:goto_8
return v0
:cond_9
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x1
if-eq v0, v1, :cond_13
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x2
if-ne v0, v1, :cond_1d
:cond_13
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int/2addr v0, v1
goto :goto_8
:cond_1d
const/4 v0, 0x0
goto :goto_8
.end method
.method public getBehindWidth()I
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v0
return v0
.end method
.method public getContent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
return-object v0
.end method
.method public getMarginThreshold()I
.registers 2
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
return v0
.end method
.method public getMenuLeft(Landroid/view/View;I)I
.registers 5
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v0, :cond_1b
packed-switch p2, :pswitch_data_50
:goto_7
:pswitch_7
:cond_7
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
:goto_b
return v0
:pswitch_c
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int/2addr v0, v1
goto :goto_b
:pswitch_16
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_b
:cond_1b
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x1
if-ne v0, v1, :cond_33
packed-switch p2, :pswitch_data_5a
:pswitch_23
goto :goto_7
:pswitch_24
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
goto :goto_b
:pswitch_29
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int/2addr v0, v1
goto :goto_b
:cond_33
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v1, 0x2
if-ne v0, v1, :cond_7
packed-switch p2, :pswitch_data_64
:pswitch_3b
goto :goto_7
:pswitch_3c
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
sub-int/2addr v0, v1
goto :goto_b
:pswitch_46
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int/2addr v0, v1
goto :goto_b
:pswitch_data_64
.packed-switch 0x0
:pswitch_3c
:pswitch_3b
:pswitch_46
.end packed-switch
:pswitch_data_5a
.packed-switch 0x0
:pswitch_24
:pswitch_23
:pswitch_29
.end packed-switch
:pswitch_data_50
.packed-switch 0x0
:pswitch_c
:pswitch_7
:pswitch_16
.end packed-switch
.end method
.method public getMenuPage(I)I
.registers 6
const/4 v0, 0x2
const/4 v1, 0x0
const/4 v3, 0x1
if-le p1, v3, :cond_d
move p1, v0
:goto_6
:cond_6
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v2, :cond_11
if-le p1, v3, :cond_11
:goto_c
return v1
:cond_d
if-ge p1, v3, :cond_6
move p1, v1
goto :goto_6
:cond_11
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-ne v1, v3, :cond_19
if-ge p1, v3, :cond_19
move v1, v0
goto :goto_c
:cond_19
move v1, p1
goto :goto_c
.end method
.method public getMode()I
.registers 2
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
return v0
.end method
.method public getScrollScale()F
.registers 2
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F
return v0
.end method
.method public getSecondaryContent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
return-object v0
.end method
.method public marginTouchAllowed(Landroid/view/View;I)Z
.registers 9
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v0
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v1
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v4, :cond_18
if-lt p2, v0, :cond_16
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
add-int/2addr v4, v0
if-gt p2, v4, :cond_16
:cond_15
:goto_15
return v2
:cond_16
move v2, v3
goto :goto_15
:cond_18
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-ne v4, v2, :cond_26
if-gt p2, v1, :cond_24
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
sub-int v4, v1, v4
if-ge p2, v4, :cond_15
:cond_24
move v2, v3
goto :goto_15
:cond_26
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v5, 0x2
if-ne v4, v5, :cond_3c
if-lt p2, v0, :cond_32
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
add-int/2addr v4, v0
if-le p2, v4, :cond_15
:cond_32
if-gt p2, v1, :cond_3a
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
sub-int v4, v1, v4
if-ge p2, v4, :cond_15
:cond_3a
move v2, v3
goto :goto_15
:cond_3c
move v2, v3
goto :goto_15
.end method
.method public menuClosedSlideAllowed(F)Z
.registers 6
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v0, 0x1
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v2, :cond_e
cmpl-float v2, p1, v3
if-lez v2, :cond_c
:goto_b
:cond_b
return v0
:cond_c
move v0, v1
goto :goto_b
:cond_e
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-ne v2, v0, :cond_18
cmpg-float v2, p1, v3
if-ltz v2, :cond_b
move v0, v1
goto :goto_b
:cond_18
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v3, 0x2
if-eq v2, v3, :cond_b
move v0, v1
goto :goto_b
.end method
.method public menuOpenSlideAllowed(F)Z
.registers 6
const/4 v3, 0x0
const/4 v1, 0x0
const/4 v0, 0x1
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v2, :cond_e
cmpg-float v2, p1, v3
if-gez v2, :cond_c
:goto_b
:cond_b
return v0
:cond_c
move v0, v1
goto :goto_b
:cond_e
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-ne v2, v0, :cond_18
cmpl-float v2, p1, v3
if-gtz v2, :cond_b
move v0, v1
goto :goto_b
:cond_18
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v3, 0x2
if-eq v2, v3, :cond_b
move v0, v1
goto :goto_b
.end method
.method public menuOpenTouchAllowed(Landroid/view/View;IF)Z
.registers 5
iget v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I
packed-switch v0, :pswitch_data_e
const/4 v0, 0x0
:goto_6
return v0
:pswitch_7
const/4 v0, 0x1
goto :goto_6
:pswitch_9
invoke-virtual {p0, p1, p2, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->menuTouchInQuickReturn(Landroid/view/View;IF)Z
move-result v0
goto :goto_6
:pswitch_data_e
.packed-switch 0x0
:pswitch_9
:pswitch_7
.end packed-switch
.end method
.method public menuTouchInQuickReturn(Landroid/view/View;IF)Z
.registers 8
const/4 v3, 0x2
const/4 v0, 0x1
const/4 v1, 0x0
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-eqz v2, :cond_d
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-ne v2, v3, :cond_19
if-nez p2, :cond_19
:cond_d
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
int-to-float v2, v2
cmpl-float v2, p3, v2
if-ltz v2, :cond_17
:cond_16
:goto_16
return v0
:cond_17
move v0, v1
goto :goto_16
:cond_19
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-eq v2, v0, :cond_23
iget v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-ne v2, v3, :cond_2e
if-ne p2, v3, :cond_2e
:cond_23
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v2
int-to-float v2, v2
cmpg-float v2, p3, v2
if-lez v2, :cond_16
move v0, v1
goto :goto_16
:cond_2e
move v0, v1
goto :goto_16
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected onLayout(ZIIII)V
.registers 11
const/4 v4, 0x0
sub-int v1, p4, p2
sub-int v0, p5, p3
iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I
sub-int v3, v1, v3
invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V
iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I
sub-int v3, v1, v3
invoke-virtual {v2, v4, v4, v3, v0}, Landroid/view/View;->layout(IIII)V
:cond_1b
return-void
.end method
.method protected onMeasure(II)V
.registers 9
const/4 v5, 0x0
invoke-static {v5, p1}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I
move-result v3
invoke-static {v5, p2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I
move-result v2
invoke-virtual {p0, v3, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setMeasuredDimension(II)V
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I
sub-int v4, v3, v4
invoke-static {p1, v5, v4}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I
move-result v1
invoke-static {p2, v5, v2}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getChildMeasureSpec(III)I
move-result v0
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
if-eqz v4, :cond_26
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
invoke-virtual {v4, v1, v0}, Landroid/view/View;->measure(II)V
:cond_26
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public scrollBehindTo(Landroid/view/View;II)V
.registers 9
const/4 v3, 0x0
const/4 v2, 0x4
const/4 v0, 0x0
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
if-nez v1, :cond_28
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
if-lt p2, v1, :cond_e
const/4 v0, 0x4
:cond_e
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int/2addr v1, p2
int-to-float v1, v1
iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F
mul-float/2addr v1, v3
float-to-int v1, v1
invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
:goto_1b
:cond_1b
if-ne v0, v2, :cond_24
const-string v1, "CustomViewBehind"
const-string v2, "behind INVISIBLE"
invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
:cond_24
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->setVisibility(I)V
return-void
:cond_28
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v4, 0x1
if-ne v1, v4, :cond_4e
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
if-gt p2, v1, :cond_34
const/4 v0, 0x4
:cond_34
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I
move-result v3
sub-int/2addr v1, v3
int-to-float v1, v1
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v3
sub-int v3, p2, v3
int-to-float v3, v3
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F
mul-float/2addr v3, v4
add-float/2addr v1, v3
float-to-int v1, v1
invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
goto :goto_1b
:cond_4e
iget v1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
const/4 v4, 0x2
if-ne v1, v4, :cond_1b
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
if-lt p2, v1, :cond_82
move v1, v2
:goto_5c
invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
if-gt p2, v1, :cond_84
move v1, v2
:goto_68
invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V
if-nez p2, :cond_86
move v0, v2
:goto_6e
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v1
if-gt p2, v1, :cond_88
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
add-int/2addr v1, p2
int-to-float v1, v1
iget v3, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F
mul-float/2addr v1, v3
float-to-int v1, v1
invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
goto :goto_1b
:cond_82
move v1, v3
goto :goto_5c
:cond_84
move v1, v3
goto :goto_68
:cond_86
move v0, v3
goto :goto_6e
:cond_88
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v1
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getWidth()I
move-result v3
sub-int/2addr v1, v3
int-to-float v1, v1
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->getBehindWidth()I
move-result v3
sub-int v3, p2, v3
int-to-float v3, v3
iget v4, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F
mul-float/2addr v3, v4
add-float/2addr v1, v3
float-to-int v1, v1
invoke-virtual {p0, v1, p3}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->scrollTo(II)V
goto/16 :goto_1b
.end method
.method public scrollTo(II)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V
:cond_a
return-void
.end method
.method public setCanvasTransformer(Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTransformer:Lcom/jeremyfeinstein/slidingmenu/lib/SlidingMenu$CanvasTransformer;
return-void
.end method
.method public setChildrenEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mChildrenEnabled:Z
return-void
.end method
.method public setContent(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V
return-void
.end method
.method public setCustomViewAbove(Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mViewAbove:Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewAbove;
return-void
.end method
.method public setFadeDegree(F)V
.registers 4
const/high16 v0, 0x3f80
cmpl-float v0, p1, v0
if-gtz v0, :cond_b
const/4 v0, 0x0
cmpg-float v0, p1, v0
if-gez v0, :cond_13
:cond_b
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "The BehindFadeDegree must be between 0.0f and 1.0f"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_13
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeDegree:F
return-void
.end method
.method public setFadeEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mFadeEnabled:Z
return-void
.end method
.method public setMarginThreshold(I)V
.registers 2
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMarginThreshold:I
return-void
.end method
.method public setMode(I)V
.registers 4
if-eqz p1, :cond_5
const/4 v0, 0x1
if-ne p1, v0, :cond_19
:cond_5
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mContent:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_f
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_19
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mMode:I
return-void
.end method
.method public setScrollScale(F)V
.registers 2
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mScrollScale:F
return-void
.end method
.method public setSecondaryContent(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryContent:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V
return-void
.end method
.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSecondaryShadowDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V
return-void
.end method
.method public setSelectedView(Landroid/view/View;)V
.registers 5
const/4 v2, 0x0
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
sget v1, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I
invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
iput-object v2, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
:cond_e
if-eqz p1, :cond_24
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_24
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
iget-object v0, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectedView:Landroid/view/View;
sget v1, Lcom/jeremyfeinstein/slidingmenu/lib/R$id;->selected_view:I
const-string v2, "CustomViewBehindSelectedView"
invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V
:cond_24
return-void
.end method
.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorDrawable:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->refreshDrawableState()V
return-void
.end method
.method public setSelectorEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mSelectorEnabled:Z
return-void
.end method
.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V
return-void
.end method
.method public setShadowWidth(I)V
.registers 2
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mShadowWidth:I
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->invalidate()V
return-void
.end method
.method public setTouchMode(I)V
.registers 2
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mTouchMode:I
return-void
.end method
.method public setWidthOffset(I)V
.registers 2
iput p1, p0, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->mWidthOffset:I
invoke-virtual {p0}, Lcom/jeremyfeinstein/slidingmenu/lib/CustomViewBehind;->requestLayout()V
return-void
.end method