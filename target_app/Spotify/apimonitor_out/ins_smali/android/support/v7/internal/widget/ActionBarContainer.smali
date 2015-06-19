.class public Landroid/support/v7/internal/widget/ActionBarContainer;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field private a:Z
.field private b:Landroid/view/View;
.field private c:Landroid/support/v7/internal/widget/ActionBarView;
.field private d:Landroid/graphics/drawable/Drawable;
.field private e:Landroid/graphics/drawable/Drawable;
.field private f:Landroid/graphics/drawable/Drawable;
.field private g:Z
.field private h:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/4 v1, 0x0
const/4 v0, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v2, 0x0
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
sget-object v2, Landroid/support/v7/a/k;->a:[I
invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v2
const/16 v3, 0xa
invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
const/16 v3, 0xb
invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getId()I
move-result v3
sget v4, Landroid/support/v7/a/f;->C:I
if-ne v3, v4, :cond_31
iput-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
const/16 v3, 0xc
invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v3
iput-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
:cond_31
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
if-eqz v2, :cond_42
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_40
:goto_3c
:cond_3c
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V
return-void
:cond_40
move v0, v1
goto :goto_3c
:cond_42
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_4a
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_3c
:cond_4a
move v0, v1
goto :goto_3c
.end method
.method private static a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
.registers 5
invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v0
instance-of v1, p0, Landroid/graphics/drawable/ColorDrawable;
if-eqz v1, :cond_21
invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z
move-result v1
if-nez v1, :cond_21
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xb
if-ge v1, v2, :cond_21
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z
invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
:goto_20
return-void
:cond_21
invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_20
.end method
.method public final a(Landroid/graphics/drawable/Drawable;)V
.registers 9
const/4 v0, 0x1
const/4 v1, 0x0
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_11
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_11
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-eqz p1, :cond_39
invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
if-eqz v2, :cond_39
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarView;->getLeft()I
move-result v3
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarView;->getTop()I
move-result v4
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ActionBarView;->getRight()I
move-result v5
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActionBarView;->getBottom()I
move-result v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_39
iget-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
if-eqz v2, :cond_4a
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_48
:cond_41
:goto_41
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setWillNotDraw(Z)V
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V
return-void
:cond_48
move v0, v1
goto :goto_41
:cond_4a
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-nez v2, :cond_52
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_41
:cond_52
move v0, v1
goto :goto_41
.end method
.method public final a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V
.registers 4
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
if-eqz v0, :cond_9
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->removeView(Landroid/view/View;)V
:cond_9
iput-object p1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
if-eqz p1, :cond_1e
invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->addView(Landroid/view/View;)V
invoke-virtual {p1}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
const/4 v1, -0x1
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
const/4 v1, -0x2
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/support/v7/internal/widget/ScrollingTabContainerView;->a(Z)V
:cond_1e
return-void
.end method
.method protected drawableStateChanged()V
.registers 3
invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_18
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_2d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_2d
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v0
if-eqz v0, :cond_42
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getDrawableState()[I
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z
:cond_42
return-void
.end method
.method public onDraw(Landroid/graphics/Canvas;)V
.registers 3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getWidth()I
move-result v0
if-eqz v0, :cond_c
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I
move-result v0
if-nez v0, :cond_d
:cond_c
:goto_c
return-void
:cond_d
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
if-eqz v0, :cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
invoke-static {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
goto :goto_c
:cond_1b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
invoke-static {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
:cond_24
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_c
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Z
if-eqz v0, :cond_c
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
invoke-static {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;)V
goto :goto_c
.end method
.method public onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V
sget v0, Landroid/support/v7/a/f;->a:I
invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v7/internal/widget/ActionBarView;
iput-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
return-void
.end method
.method public onHoverEvent(Landroid/view/MotionEvent;)Z
.registers 3
const/4 v0, 0x1
return v0
.end method
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->a:Z
if-nez v0, :cond_a
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
if-eqz v0, :cond_c
:cond_a
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public onLayout(ZIIII)V
.registers 14
const/16 v4, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
if-eqz v0, :cond_51
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-eq v0, v4, :cond_51
move v0, v1
:goto_14
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
if-eqz v3, :cond_58
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getVisibility()I
move-result v3
if-eq v3, v4, :cond_58
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v3
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I
move-result v4
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ActionBarView;->o()I
move-result v5
and-int/lit8 v5, v5, 0x2
if-nez v5, :cond_73
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getChildCount()I
move-result v5
move v3, v2
:goto_39
if-ge v3, v5, :cond_53
invoke-virtual {p0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->getChildAt(I)Landroid/view/View;
move-result-object v6
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
if-eq v6, v7, :cond_4e
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActionBarView;->p()Z
move-result v7
if-nez v7, :cond_4e
invoke-virtual {v6, v4}, Landroid/view/View;->offsetTopAndBottom(I)V
:cond_4e
add-int/lit8 v3, v3, 0x1
goto :goto_39
:cond_51
move v0, v2
goto :goto_14
:cond_53
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v3, p2, v2, p4, v4}, Landroid/view/View;->layout(IIII)V
:goto_58
:cond_58
iget-boolean v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
if-eqz v3, :cond_7b
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_ca
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I
move-result v3
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredHeight()I
move-result v4
invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:goto_6d
if-eqz v1, :cond_72
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->invalidate()V
:cond_72
return-void
:cond_73
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
sub-int v4, v3, v4
invoke-virtual {v5, p2, v4, p4, v3}, Landroid/view/View;->layout(IIII)V
goto :goto_58
:cond_7b
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_c8
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v4}, Landroid/support/v7/internal/widget/ActionBarView;->getLeft()I
move-result v4
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v5}, Landroid/support/v7/internal/widget/ActionBarView;->getTop()I
move-result v5
iget-object v6, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v6}, Landroid/support/v7/internal/widget/ActionBarView;->getRight()I
move-result v6
iget-object v7, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v7}, Landroid/support/v7/internal/widget/ActionBarView;->getBottom()I
move-result v7
invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move v3, v1
:goto_9d
if-eqz v0, :cond_a4
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_a4
move v2, v1
:cond_a4
iput-boolean v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Z
if-eqz v2, :cond_c6
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v2}, Landroid/view/View;->getLeft()I
move-result v2
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getTop()I
move-result v3
iget-object v4, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getRight()I
move-result v4
iget-object v5, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v5}, Landroid/view/View;->getBottom()I
move-result v5
invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
goto :goto_6d
:cond_c6
move v1, v3
goto :goto_6d
:cond_c8
move v3, v2
goto :goto_9d
:cond_ca
move v1, v2
goto :goto_6d
.end method
.method public onMeasure(II)V
.registers 7
invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
if-nez v0, :cond_8
:cond_7
:goto_7
return-void
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->p()Z
move-result v1
if-eqz v1, :cond_46
const/4 v0, 0x0
:goto_19
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
if-eqz v1, :cond_7
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getVisibility()I
move-result v1
const/16 v2, 0x8
if-eq v1, v2, :cond_7
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
const/high16 v2, -0x8000
if-ne v1, v2, :cond_7
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-virtual {p0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getMeasuredWidth()I
move-result v2
iget-object v3, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->b:Landroid/view/View;
invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I
move-result v3
add-int/2addr v0, v3
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {p0, v2, v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->setMeasuredDimension(II)V
goto :goto_7
:cond_46
iget-object v1, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->c:Landroid/support/v7/internal/widget/ActionBarView;
invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarView;->getMeasuredHeight()I
move-result v1
iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I
add-int/2addr v1, v2
iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I
add-int/2addr v0, v1
goto :goto_19
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z
const/4 v0, 0x1
return v0
.end method
.method public setVisibility(I)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V
if-nez p1, :cond_23
const/4 v0, 0x1
:goto_7
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_10
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_10
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_19
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_19
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_22
iget-object v2, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z
:cond_22
return-void
:cond_23
move v0, v1
goto :goto_7
.end method
.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
.registers 3
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->d:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_8
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
if-eqz v0, :cond_1e
:cond_8
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->e:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_10
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->h:Z
if-nez v0, :cond_1e
:cond_10
iget-object v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->f:Landroid/graphics/drawable/Drawable;
if-ne p1, v0, :cond_18
iget-boolean v0, p0, Landroid/support/v7/internal/widget/ActionBarContainer;->g:Z
if-nez v0, :cond_1e
:cond_18
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
move-result v0
if-eqz v0, :cond_20
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method