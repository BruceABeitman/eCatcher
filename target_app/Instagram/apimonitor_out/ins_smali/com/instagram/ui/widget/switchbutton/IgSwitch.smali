.class public Lcom/instagram/ui/widget/switchbutton/IgSwitch;
.super Landroid/widget/CompoundButton;
.source "IgSwitch.java"
.field private a:Landroid/graphics/drawable/Drawable;
.field private b:Landroid/graphics/drawable/Drawable;
.field private c:Landroid/graphics/drawable/Drawable;
.field private d:Landroid/graphics/Rect;
.field private e:I
.field private f:F
.field private g:I
.field private h:Landroid/view/VelocityTracker;
.field private i:F
.field private j:F
.field private k:I
.field private l:I
.field private m:I
.field private n:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;
invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a()V
return-void
.end method
.method static synthetic a(Lcom/instagram/ui/widget/switchbutton/IgSwitch;F)F
.registers 2
iput p1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
return p1
.end method
.method static synthetic a(Lcom/instagram/ui/widget/switchbutton/IgSwitch;)I
.registers 2
iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
return v0
.end method
.method private a()V
.registers 3
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->setClickable(Z)V
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;
move-result-object v0
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I
move-result v1
iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I
move-result v0
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->m:I
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/au;->toggle:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/au;->toggle_active:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getResources()Landroid/content/res/Resources;
move-result-object v0
sget v1, Lcom/facebook/au;->toggle_nub:I
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I
sub-int/2addr v0, v1
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
return-void
.end method
.method private a(Landroid/view/MotionEvent;)V
.registers 4
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v0
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V
invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
return-void
.end method
.method private a(Z)V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z
invoke-virtual {p0, p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->setChecked(Z)V
return-void
.end method
.method private a(FF)Z
.registers 8
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I
move-result v0
iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I
move-result v1
int-to-float v1, v1
iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
const/high16 v3, 0x3f00
add-float/2addr v2, v3
add-float/2addr v1, v2
iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
int-to-float v2, v2
sub-float/2addr v1, v2
float-to-int v1, v1
iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I
add-int/2addr v2, v1
iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
mul-int/lit8 v3, v3, 0x2
add-int/2addr v2, v3
iget-object v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
add-int/2addr v3, v0
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
mul-int/lit8 v4, v4, 0x2
add-int/2addr v3, v4
int-to-float v1, v1
cmpl-float v1, p1, v1
if-lez v1, :cond_41
int-to-float v1, v2
cmpg-float v1, p1, v1
if-gez v1, :cond_41
int-to-float v0, v0
cmpl-float v0, p2, v0
if-lez v0, :cond_41
int-to-float v0, v3
cmpg-float v0, p2, v0
if-gez v0, :cond_41
const/4 v0, 0x1
:goto_40
return v0
:cond_41
const/4 v0, 0x0
goto :goto_40
.end method
.method private b(Landroid/view/MotionEvent;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
if-ne v0, v1, :cond_37
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isEnabled()Z
move-result v0
if-eqz v0, :cond_37
move v0, v1
:goto_11
invoke-direct {p0, p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Landroid/view/MotionEvent;)V
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
const/16 v3, 0x3e8
invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->abs(F)F
move-result v3
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->m:I
int-to-float v4, v4
cmpl-float v3, v3, v4
if-lez v3, :cond_3b
const/4 v3, 0x0
cmpl-float v0, v0, v3
if-lez v0, :cond_39
:goto_33
invoke-direct {p0, v1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Z)V
:goto_36
return-void
:cond_37
move v0, v2
goto :goto_11
:cond_39
move v1, v2
goto :goto_33
:cond_3b
invoke-direct {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getTargetCheckedState()Z
move-result v1
goto :goto_33
:cond_40
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isChecked()Z
move-result v0
invoke-direct {p0, v0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(Z)V
goto :goto_36
.end method
.method private getTargetCheckedState()Z
.registers 3
iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
div-int/lit8 v1, v1, 0x2
int-to-float v1, v1
cmpl-float v0, v0, v1
if-ltz v0, :cond_d
const/4 v0, 0x1
:goto_c
return v0
:cond_d
const/4 v0, 0x0
goto :goto_c
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/CompoundButton;->onDetachedFromWindow()V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
:cond_f
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 8
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V
iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
int-to-float v1, v1
div-float/2addr v0, v1
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;
const/high16 v2, 0x437f
mul-float/2addr v0, v2
float-to-int v0, v0
invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I
move-result v2
add-int/2addr v2, v0
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I
move-result v3
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->e:I
add-int/2addr v0, v4
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I
move-result v4
add-int/2addr v0, v4
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I
move-result v4
iget-object v5, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->c:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 12
invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I
move-result v2
iget-object v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I
move-result v4
add-int/2addr v3, v4
iget-object v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->d:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isChecked()Z
move-result v0
if-eqz v0, :cond_40
iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
int-to-float v0, v0
:goto_3d
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
return-void
:cond_40
const/4 v0, 0x0
goto :goto_3d
.end method
.method protected onMeasure(II)V
.registers 6
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingLeft()I
move-result v1
add-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingRight()I
move-result v1
add-int/2addr v0, v1
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingTop()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getPaddingBottom()I
move-result v2
add-int/2addr v1, v2
invoke-virtual {p0, v0, v1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->setMeasuredDimension(II)V
return-void
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/4 v5, 0x2
const/4 v0, 0x1
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
if-nez v1, :cond_c
invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;
move-result-object v1
iput-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
:cond_c
iget-object v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V
invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I
move-result v1
packed-switch v1, :pswitch_data_b2
:goto_18
:cond_18
:pswitch_18
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
:goto_1c
:cond_1c
return v0
:pswitch_1d
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->isEnabled()Z
move-result v3
if-eqz v3, :cond_18
invoke-direct {p0, v1, v2}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->a(FF)Z
move-result v3
if-eqz v3, :cond_18
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I
iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F
iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->j:F
goto :goto_18
:pswitch_38
iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I
packed-switch v1, :pswitch_data_be
goto :goto_18
:pswitch_3e
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F
sub-float v3, v1, v3
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
int-to-float v4, v4
cmpl-float v3, v3, v4
if-gtz v3, :cond_64
iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->j:F
sub-float v3, v2, v3
invoke-static {v3}, Ljava/lang/Math;->abs(F)F
move-result v3
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->l:I
int-to-float v4, v4
cmpl-float v3, v3, v4
if-lez v3, :cond_18
:cond_64
iput v5, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getParent()Landroid/view/ViewParent;
move-result-object v3
invoke-interface {v3, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V
iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F
iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->j:F
goto :goto_1c
:pswitch_72
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
iget v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F
sub-float v2, v1, v2
const/4 v3, 0x0
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
add-float/2addr v2, v4
iget v4, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
int-to-float v4, v4
invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F
move-result v2
invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F
move-result v2
iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
cmpl-float v3, v2, v3
if-eqz v3, :cond_1c
iput v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
iput v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->i:F
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->invalidate()V
goto :goto_1c
:pswitch_97
iget v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I
if-ne v1, v5, :cond_a0
invoke-direct {p0, p1}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->b(Landroid/view/MotionEvent;)V
goto/16 :goto_1c
:cond_a0
const/4 v0, 0x0
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->k:I
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V
iget-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->h:Landroid/view/VelocityTracker;
goto/16 :goto_18
:pswitch_data_be
.packed-switch 0x0
:pswitch_18
:pswitch_3e
:pswitch_72
.end packed-switch
:pswitch_data_b2
.packed-switch 0x0
:pswitch_1d
:pswitch_97
:pswitch_38
:pswitch_97
.end packed-switch
.end method
.method public performClick()Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z
invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z
move-result v0
return v0
.end method
.method public setChecked(Z)V
.registers 6
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V
if-eqz p1, :cond_23
iget v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->g:I
:goto_8
iget-boolean v2, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z
if-eqz v2, :cond_25
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->getWindowToken()Landroid/os/IBinder;
move-result-object v2
if-eqz v2, :cond_25
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->clearAnimation()V
new-instance v2, Lcom/instagram/ui/widget/switchbutton/a;
iget v3, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
int-to-float v0, v0
invoke-direct {v2, p0, v3, v0, v1}, Lcom/instagram/ui/widget/switchbutton/a;-><init>(Lcom/instagram/ui/widget/switchbutton/IgSwitch;FFB)V
invoke-virtual {p0, v2}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->startAnimation(Landroid/view/animation/Animation;)V
:goto_20
iput-boolean v1, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->n:Z
return-void
:cond_23
move v0, v1
goto :goto_8
:cond_25
int-to-float v0, v0
iput v0, p0, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->f:F
invoke-virtual {p0}, Lcom/instagram/ui/widget/switchbutton/IgSwitch;->invalidate()V
goto :goto_20
.end method