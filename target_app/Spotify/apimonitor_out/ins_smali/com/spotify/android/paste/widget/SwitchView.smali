.class public Lcom/spotify/android/paste/widget/SwitchView;
.super Landroid/widget/CompoundButton;
.source "SourceFile"
.field private static final h:[I
.field private a:Landroid/graphics/drawable/Drawable;
.field private b:I
.field private c:Lcom/spotify/android/paste/widget/n;
.field private d:Landroid/view/animation/Transformation;
.field private e:Landroid/view/animation/AlphaAnimation;
.field private f:Z
.field private final g:Landroid/graphics/Rect;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x1
new-array v0, v0, [I
const/4 v1, 0x0
const v2, 0x1010142
aput v2, v0, v1
sput-object v0, Lcom/spotify/android/paste/widget/SwitchView;->h:[I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/spotify/android/paste/b;->v:I
invoke-direct {p0, p1, p2, v0}, Lcom/spotify/android/paste/widget/SwitchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/spotify/android/paste/widget/n;
invoke-direct {v0, v4}, Lcom/spotify/android/paste/widget/n;-><init>(B)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->c:Lcom/spotify/android/paste/widget/n;
new-instance v0, Landroid/view/animation/Transformation;
invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->d:Landroid/view/animation/Transformation;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->g:Landroid/graphics/Rect;
const-class v0, Lcom/spotify/android/paste/widget/SwitchView;
invoke-static {v0, p0}, Lcom/spotify/android/paste/widget/f;->a(Ljava/lang/Class;Ljava/lang/Object;)V
sget-object v0, Lcom/spotify/android/paste/widget/SwitchView;->h:[I
invoke-virtual {p1, p2, v0, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_33
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
:cond_33
iput-object v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
if-eqz v1, :cond_4f
iget-object v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v2
iget-object v3, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_4f
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p0, v5}, Lcom/spotify/android/paste/widget/SwitchView;->setClickable(Z)V
const/high16 v0, 0x41c0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v0
iput v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->b:I
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iput-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
iget-object v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->c:Lcom/spotify/android/paste/widget/n;
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
const-wide/16 v1, -0x1
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
return-void
.end method
.method private a()F
.registers 3
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_c
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
if-gtz v1, :cond_10
:cond_c
const v0, 0x3fd9999a
:goto_f
return v0
:cond_10
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v1
int-to-float v1, v1
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
int-to-float v0, v0
div-float v0, v1, v0
goto :goto_f
.end method
.method protected drawableStateChanged()V
.registers 5
const/4 v1, 0x1
invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V
const/4 v0, 0x0
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
if-eqz v2, :cond_1b
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v2
if-eqz v2, :cond_1b
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getDrawableState()[I
move-result-object v0
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move v0, v1
:cond_1b
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_2f
invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z
move-result v3
if-eqz v3, :cond_2f
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getDrawableState()[I
move-result-object v0
invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z
move v0, v1
:cond_2f
if-eqz v0, :cond_34
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
:cond_34
return-void
.end method
.method protected getSuggestedMinimumHeight()I
.registers 2
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v0
:goto_a
if-gtz v0, :cond_e
iget v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->b:I
:cond_e
return v0
:cond_f
const/4 v0, 0x0
goto :goto_a
.end method
.method protected getSuggestedMinimumWidth()I
.registers 3
invoke-direct {p0}, Lcom/spotify/android/paste/widget/SwitchView;->a()F
move-result v0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getSuggestedMinimumHeight()I
move-result v1
int-to-float v1, v1
mul-float/2addr v0, v1
float-to-int v0, v0
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 8
const/4 v2, 0x0
const/4 v1, 0x0
invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getPaddingLeft()I
move-result v0
int-to-float v0, v0
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getPaddingTop()I
move-result v3
int-to-float v3, v3
invoke-virtual {p1, v0, v3}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->isChecked()Z
move-result v0
if-eqz v0, :cond_7f
const/high16 v0, 0x3f80
:goto_1d
iget-boolean v3, p0, Lcom/spotify/android/paste/widget/SwitchView;->f:Z
if-nez v3, :cond_31
iget-object v3, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v3}, Landroid/view/animation/AlphaAnimation;->hasStarted()Z
move-result v3
if-eqz v3, :cond_44
iget-object v3, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v3}, Landroid/view/animation/AlphaAnimation;->hasEnded()Z
move-result v3
if-nez v3, :cond_44
:cond_31
iput-boolean v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->f:Z
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J
move-result-wide v3
iget-object v5, p0, Lcom/spotify/android/paste/widget/SwitchView;->d:Landroid/view/animation/Transformation;
invoke-virtual {v0, v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->d:Landroid/view/animation/Transformation;
invoke-virtual {v0}, Landroid/view/animation/Transformation;->getAlpha()F
move-result v0
:cond_44
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v3
if-eqz v3, :cond_58
const v4, 0x461c4000
mul-float/2addr v4, v0
float-to-int v4, v4
invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
move-result v4
if-eqz v4, :cond_58
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
:cond_58
iget-object v4, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_7b
if-eqz v3, :cond_71
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Rect;->width()I
move-result v2
iget-object v3, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;
move-result-object v3
invoke-virtual {v3}, Landroid/graphics/Rect;->width()I
move-result v3
sub-int/2addr v2, v3
:cond_71
int-to-float v2, v2
mul-float/2addr v0, v2
invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_7b
invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
return-void
:cond_7f
move v0, v1
goto :goto_1d
.end method
.method protected onLayout(ZIIII)V
.registers 12
const/4 v5, 0x0
invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->g:Landroid/graphics/Rect;
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->a:Landroid/graphics/drawable/Drawable;
sub-int v1, p5, p3
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->g:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v2, v2
int-to-float v3, p5
int-to-float v4, p3
sub-float/2addr v3, v4
iget-object v4, p0, Lcom/spotify/android/paste/widget/SwitchView;->g:Landroid/graphics/Rect;
invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
move-result v4
int-to-float v4, v4
div-float/2addr v3, v4
mul-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
:cond_2b
return-void
.end method
.method protected onMeasure(II)V
.registers 6
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->getSuggestedMinimumHeight()I
move-result v0
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v1
sparse-switch v1, :sswitch_data_3a
:goto_b
invoke-direct {p0}, Lcom/spotify/android/paste/widget/SwitchView;->a()F
move-result v1
int-to-float v2, v0
mul-float/2addr v1, v2
float-to-int v1, v1
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
sparse-switch v2, :sswitch_data_44
:goto_19
invoke-virtual {p0, v1, v0}, Lcom/spotify/android/paste/widget/SwitchView;->setMeasuredDimension(II)V
return-void
:sswitch_1d
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
goto :goto_b
:sswitch_22
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I
move-result v0
goto :goto_b
:sswitch_2b
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
goto :goto_19
:sswitch_30
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I
move-result v1
goto :goto_19
nop
:sswitch_data_3a
.sparse-switch
-0x80000000 -> :sswitch_22
0x40000000 -> :sswitch_1d
.end sparse-switch
:sswitch_data_44
.sparse-switch
-0x80000000 -> :sswitch_30
0x40000000 -> :sswitch_2b
.end sparse-switch
.end method
.method public toggle()V
.registers 4
const/4 v1, 0x1
invoke-super {p0}, Landroid/widget/CompoundButton;->toggle()V
iget-object v2, p0, Lcom/spotify/android/paste/widget/SwitchView;->c:Lcom/spotify/android/paste/widget/n;
invoke-virtual {p0}, Lcom/spotify/android/paste/widget/SwitchView;->isChecked()Z
move-result v0
if-nez v0, :cond_20
move v0, v1
:goto_d
invoke-virtual {v2, v0}, Lcom/spotify/android/paste/widget/n;->a(Z)V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V
iget-object v0, p0, Lcom/spotify/android/paste/widget/SwitchView;->e:Landroid/view/animation/AlphaAnimation;
invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V
iput-boolean v1, p0, Lcom/spotify/android/paste/widget/SwitchView;->f:Z
invoke-static {p0}, Landroid/support/v4/view/at;->c(Landroid/view/View;)V
return-void
:cond_20
const/4 v0, 0x0
goto :goto_d
.end method