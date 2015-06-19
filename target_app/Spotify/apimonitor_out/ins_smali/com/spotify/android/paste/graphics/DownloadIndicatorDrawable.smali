.class public final Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private a:I
.field private b:I
.field private c:J
.field private final d:Lcom/spotify/android/paste/graphics/f;
.field private e:Landroid/graphics/drawable/Drawable;
.field private f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v4, 0x1
invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V
new-instance v0, Lcom/spotify/android/paste/graphics/f;
sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->y:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v0, p1, v1}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
iput-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
const/high16 v0, 0x4180
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/android/paste/graphics/e;->b(FLandroid/content/res/Resources;)I
move-result v0
new-instance v1, Landroid/util/TypedValue;
invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v2
sget v3, Lcom/spotify/android/paste/b;->y:I
invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z
move-result v2
if-eqz v2, :cond_52
iget v1, v1, Landroid/util/TypedValue;->resourceId:I
sget-object v2, Lcom/spotify/android/paste/e;->k:[I
invoke-virtual {p1, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I
move-result v0
invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
iput-object v2, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
const/4 v2, 0x2
const v3, -0xff0100
invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v2
iput v2, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->a:I
const/4 v2, 0x3
const v3, -0x777778
invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I
move-result v2
iput v2, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->b:I
invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V
:cond_52
iget-object v1, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
int-to-float v0, v0
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/graphics/f;->a(F)V
sget-object v0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->a:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
iput-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
return-void
.end method
.method public final a(Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
if-ne v0, p1, :cond_5
:goto_4
return-void
:cond_5
iput-object p1, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
sget-object v1, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->b:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
if-ne v0, v1, :cond_1c
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->c:J
iget-wide v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->c:J
invoke-virtual {p0, p0, v0, v1}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V
:goto_18
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->invalidateSelf()V
goto :goto_4
:cond_1c
invoke-virtual {p0, p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V
goto :goto_18
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->getBounds()Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->setBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->getBounds()Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
sget-object v0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$1;->a:[I
iget-object v1, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
invoke-virtual {v1}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_4a
:goto_28
return-void
:pswitch_29
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
iget v1, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->b:I
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->draw(Landroid/graphics/Canvas;)V
goto :goto_28
:pswitch_36
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
iget v1, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->a:I
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->draw(Landroid/graphics/Canvas;)V
goto :goto_28
:pswitch_43
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
goto :goto_28
nop
:pswitch_data_4a
.packed-switch 0x1
:pswitch_29
:pswitch_36
:pswitch_43
.end packed-switch
.end method
.method public final getIntrinsicHeight()I
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/f;->getIntrinsicHeight()I
move-result v0
return v0
.end method
.method public final getIntrinsicWidth()I
.registers 2
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/f;->getIntrinsicWidth()I
move-result v0
return v0
.end method
.method public final getOpacity()I
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->f:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
sget-object v1, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;->b:Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable$DownloadState;
if-ne v0, v1, :cond_d
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0}, Lcom/spotify/android/paste/graphics/f;->getOpacity()I
move-result v0
goto :goto_c
.end method
.method protected final onBoundsChange(Landroid/graphics/Rect;)V
.registers 3
invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->setBounds(Landroid/graphics/Rect;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V
return-void
.end method
.method public final run()V
.registers 7
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->c:J
sub-long v2, v0, v2
const-wide/16 v4, 0xdac
rem-long/2addr v2, v4
long-to-float v2, v2
const v3, 0x455ac000
div-float/2addr v2, v3
iget-object v3, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
const v4, 0x461c4000
mul-float/2addr v2, v4
float-to-int v2, v2
invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
invoke-virtual {p0}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->invalidateSelf()V
const-wide/16 v2, 0x10
add-long/2addr v0, v2
invoke-virtual {p0, p0, v0, v1}, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V
return-void
.end method
.method public final setAlpha(I)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->setAlpha(I)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
return-void
.end method
.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
.registers 3
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->d:Lcom/spotify/android/paste/graphics/f;
invoke-virtual {v0, p1}, Lcom/spotify/android/paste/graphics/f;->setColorFilter(Landroid/graphics/ColorFilter;)V
iget-object v0, p0, Lcom/spotify/android/paste/graphics/DownloadIndicatorDrawable;->e:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
return-void
.end method