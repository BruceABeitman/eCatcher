.class public Lcom/glympse/android/controls/BusyImage;
.super Landroid/widget/ImageView;
.source "BusyImage.java"
.field private _animating:Z
.field private _busy:Z
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/glympse/android/controls/BusyImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
sget v0, Lcom/glympse/android/controls/R$attr;->glympseBusyImageStyle:I
invoke-direct {p0, p1, p2, v0}, Lcom/glympse/android/controls/BusyImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
sget-object v0, Lcom/glympse/android/controls/R$styleable;->GlympseBusyImage:[I
const/4 v1, 0x0
invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
.end method
.method public clearAnimation()V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/glympse/android/controls/BusyImage;->_animating:Z
if-eqz v0, :cond_a
invoke-super {p0}, Landroid/widget/ImageView;->clearAnimation()V
iput-boolean v1, p0, Lcom/glympse/android/controls/BusyImage;->_animating:Z
:cond_a
iput-boolean v1, p0, Lcom/glympse/android/controls/BusyImage;->_busy:Z
return-void
.end method
.method public isBusy()Z
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/controls/BusyImage;->_busy:Z
return v0
.end method
.method protected onDetachedFromWindow()V
.registers 1
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->clearAnimation()V
invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V
return-void
.end method
.method public setBusy()V
.registers 2
iget-boolean v0, p0, Lcom/glympse/android/controls/BusyImage;->_busy:Z
if-nez v0, :cond_f
sget v0, Lcom/glympse/android/controls/R$drawable;->glympse_x_icon_busy:I
invoke-virtual {p0, v0}, Lcom/glympse/android/controls/BusyImage;->setImageResource(I)V
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->startAnimation()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/glympse/android/controls/BusyImage;->_busy:Z
:cond_f
return-void
.end method
.method public setImageBitmap(Landroid/graphics/Bitmap;)V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->clearAnimation()V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->clearAnimation()V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-void
.end method
.method public setImageResource(I)V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->clearAnimation()V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V
return-void
.end method
.method public setImageURI(Landroid/net/Uri;)V
.registers 2
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->clearAnimation()V
invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
return-void
.end method
.method public setVisibility(I)V
.registers 2
if-eqz p1, :cond_5
invoke-virtual {p0}, Lcom/glympse/android/controls/BusyImage;->clearAnimation()V
:cond_5
invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public startAnimation()V
.registers 8
const/high16 v4, 0x3f00
const/4 v3, 0x1
iget-boolean v0, p0, Lcom/glympse/android/controls/BusyImage;->_animating:Z
if-nez v0, :cond_29
new-instance v0, Landroid/view/animation/RotateAnimation;
const/4 v1, 0x0
const v2, 0x470ca000
move v5, v3
move v6, v4
invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/32 v1, 0x1adb0
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/glympse/android/controls/BusyImage;->startAnimation(Landroid/view/animation/Animation;)V
iput-boolean v3, p0, Lcom/glympse/android/controls/BusyImage;->_animating:Z
:cond_29
return-void
.end method