.class public Lcom/slidingmenu/lib/CustomViewBehind;
.super Landroid/view/ViewGroup;
.source "CustomViewBehind.java"
.field  a:I
.field  b:Landroid/view/View;
.field  c:Landroid/view/View;
.field final d:I
.field  e:I
.field  f:Z
.field final g:Landroid/graphics/Paint;
.field  h:F
.field  i:Landroid/graphics/drawable/Drawable;
.field  j:Landroid/graphics/drawable/Drawable;
.field  k:I
.field  l:F
.field  m:Z
.field  n:Landroid/graphics/Bitmap;
.field  o:Landroid/view/View;
.field private p:Lcom/slidingmenu/lib/CustomViewAbove;
.field private q:I
.field private r:Lcom/slidingmenu/lib/g;
.field private s:Z
.field private t:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/slidingmenu/lib/CustomViewBehind;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
const/4 v2, 0x1
invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->a:I
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->g:Landroid/graphics/Paint;
iput-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->m:Z
const/high16 v0, 0x4240
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->d:I
return-void
.end method
.method private a(II)V
.registers 8
const/high16 v4, 0x4000
const/4 v3, 0x0
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->q:I
sub-int v1, p1, v1
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->q:I
sub-int v1, p1, v1
invoke-virtual {v0, v3, v3, v1, p2}, Landroid/view/View;->layout(IIII)V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
if-eqz v0, :cond_3b
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->q:I
sub-int v1, p1, v1
invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v1
invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
iget v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->q:I
sub-int v1, p1, v1
invoke-virtual {v0, v3, v3, v1, p2}, Landroid/view/View;->layout(IIII)V
:cond_3b
return-void
.end method
.method public final a(Landroid/view/View;IF)Z
.registers 8
const/4 v3, 0x2
const/4 v1, 0x1
const/4 v0, 0x0
iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-eqz v2, :cond_d
iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v2, v3, :cond_18
if-nez p2, :cond_18
:cond_d
invoke-virtual {p1}, Landroid/view/View;->getLeft()I
move-result v2
int-to-float v2, v2
cmpl-float v2, p3, v2
if-ltz v2, :cond_17
move v0, v1
:cond_17
:goto_17
return v0
:cond_18
iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-eq v2, v1, :cond_22
iget v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
if-ne v2, v3, :cond_17
if-ne p2, v3, :cond_17
:cond_22
invoke-virtual {p1}, Landroid/view/View;->getRight()I
move-result v2
int-to-float v2, v2
cmpg-float v2, p3, v2
if-gtz v2, :cond_17
move v0, v1
goto :goto_17
.end method
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->r:Lcom/slidingmenu/lib/g;
if-eqz v0, :cond_15
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->r:Lcom/slidingmenu/lib/g;
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->p:Lcom/slidingmenu/lib/CustomViewAbove;
invoke-virtual {v0}, Lcom/slidingmenu/lib/CustomViewAbove;->getPercentOpen()F
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:goto_14
return-void
:cond_15
invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V
goto :goto_14
.end method
.method public getBehindWidth()I
.registers 2
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getWidth()I
move-result v0
return v0
.end method
.method public getContent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
return-object v0
.end method
.method public getMode()I
.registers 2
iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
return v0
.end method
.method public getScrollScale()F
.registers 2
iget v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->h:F
return v0
.end method
.method public getSecondaryContent()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
return-object v0
.end method
.method  getSelectorTop()I
.registers 4
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTop()I
move-result v0
iget-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getHeight()I
move-result v1
iget-object v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
sub-int/2addr v1, v2
div-int/lit8 v1, v1, 0x2
add-int/2addr v0, v1
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->s:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected onLayout(ZIIII)V
.registers 9
sub-int v0, p4, p2
sub-int v1, p5, p3
iget-boolean v2, p0, Lcom/slidingmenu/lib/CustomViewBehind;->t:Z
if-eqz v2, :cond_b
invoke-direct {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->a(II)V
:cond_b
return-void
.end method
.method protected onMeasure(II)V
.registers 5
const/4 v1, 0x0
invoke-static {v1, p1}, Lcom/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I
move-result v0
invoke-static {v1, p2}, Lcom/slidingmenu/lib/CustomViewBehind;->getDefaultSize(II)I
move-result v1
invoke-virtual {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->setMeasuredDimension(II)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->s:Z
if-nez v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public scrollTo(II)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->scrollTo(II)V
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->r:Lcom/slidingmenu/lib/g;
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V
:cond_a
return-void
.end method
.method public setCanvasTransformer(Lcom/slidingmenu/lib/g;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->r:Lcom/slidingmenu/lib/g;
return-void
.end method
.method public setChildrenEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->s:Z
return-void
.end method
.method public setContent(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V
return-void
.end method
.method public setCustomViewAbove(Lcom/slidingmenu/lib/CustomViewAbove;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->p:Lcom/slidingmenu/lib/CustomViewAbove;
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
iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->l:F
return-void
.end method
.method public setFadeEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->f:Z
return-void
.end method
.method public setMenuVisible(Z)V
.registers 5
iget-boolean v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->t:Z
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->t:Z
if-eq p1, v0, :cond_1b
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getRight()I
move-result v0
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getLeft()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getBottom()I
move-result v1
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->getTop()I
move-result v2
sub-int/2addr v1, v2
invoke-direct {p0, v0, v1}, Lcom/slidingmenu/lib/CustomViewBehind;->a(II)V
:cond_1b
return-void
.end method
.method public setMode(I)V
.registers 4
if-eqz p1, :cond_5
const/4 v0, 0x1
if-ne p1, v0, :cond_19
:cond_5
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->b:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_f
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_19
iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->e:I
return-void
.end method
.method public setScrollScale(F)V
.registers 2
iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->h:F
return-void
.end method
.method public setSecondaryContent(Landroid/view/View;)V
.registers 3
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->c:Landroid/view/View;
invoke-virtual {p0, v0}, Lcom/slidingmenu/lib/CustomViewBehind;->addView(Landroid/view/View;)V
return-void
.end method
.method public setSecondaryShadowDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->j:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V
return-void
.end method
.method public setSelectedView(Landroid/view/View;)V
.registers 5
const/4 v1, 0x0
const v2, 0x7f0a0029
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
iput-object v1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
:cond_f
if-eqz p1, :cond_23
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_23
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
iget-object v0, p0, Lcom/slidingmenu/lib/CustomViewBehind;->o:Landroid/view/View;
const-string v1, "CustomViewBehindSelectedView"
invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V
:cond_23
return-void
.end method
.method public setSelectorBitmap(Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->n:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->refreshDrawableState()V
return-void
.end method
.method public setSelectorEnabled(Z)V
.registers 2
iput-boolean p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->m:Z
return-void
.end method
.method public setShadowDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
iput-object p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->i:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V
return-void
.end method
.method public setShadowWidth(I)V
.registers 2
iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->k:I
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->invalidate()V
return-void
.end method
.method public setTouchMode(I)V
.registers 2
iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->a:I
return-void
.end method
.method public setVisibility(I)V
.registers 2
invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V
return-void
.end method
.method public setWidthOffset(I)V
.registers 2
iput p1, p0, Lcom/slidingmenu/lib/CustomViewBehind;->q:I
invoke-virtual {p0}, Lcom/slidingmenu/lib/CustomViewBehind;->requestLayout()V
return-void
.end method