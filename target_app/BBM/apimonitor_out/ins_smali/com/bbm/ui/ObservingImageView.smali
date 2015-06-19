.class public Lcom/bbm/ui/ObservingImageView;
.super Landroid/widget/ImageView;
.source "ObservingImageView.java"
.field private a:Lcom/bbm/j/r;
.field protected b:Z
.field protected c:Z
.field protected final d:Lcom/bbm/j/k;
.field private final e:Landroid/os/Handler;
.field private f:Z
.field private final g:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->c:Z
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->e:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/ej;
invoke-direct {v0, p0}, Lcom/bbm/ui/ej;-><init>(Lcom/bbm/ui/ObservingImageView;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/ek;
invoke-direct {v0, p0}, Lcom/bbm/ui/ek;-><init>(Lcom/bbm/ui/ObservingImageView;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->g:Ljava/lang/Runnable;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->c:Z
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->e:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/ej;
invoke-direct {v0, p0}, Lcom/bbm/ui/ej;-><init>(Lcom/bbm/ui/ObservingImageView;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/ek;
invoke-direct {v0, p0}, Lcom/bbm/ui/ek;-><init>(Lcom/bbm/ui/ObservingImageView;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->g:Ljava/lang/Runnable;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->c:Z
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->e:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/ej;
invoke-direct {v0, p0}, Lcom/bbm/ui/ej;-><init>(Lcom/bbm/ui/ObservingImageView;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/ek;
invoke-direct {v0, p0}, Lcom/bbm/ui/ek;-><init>(Lcom/bbm/ui/ObservingImageView;)V
iput-object v0, p0, Lcom/bbm/ui/ObservingImageView;->g:Ljava/lang/Runnable;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/ObservingImageView;)Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->a:Lcom/bbm/j/r;
return-object v0
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-virtual {p0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iput-object v1, p0, Lcom/bbm/ui/ObservingImageView;->a:Lcom/bbm/j/r;
return-void
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
return v0
.end method
.method public final d()V
.registers 6
iget-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
invoke-virtual {p0}, Lcom/bbm/ui/ObservingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_4
instance-of v1, v0, Lcom/bbm/ui/cl;
if-eqz v1, :cond_4
check-cast v0, Lcom/bbm/ui/cl;
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
iget-boolean v3, p0, Lcom/bbm/ui/ObservingImageView;->c:Z
if-eqz v3, :cond_4
invoke-virtual {v0}, Lcom/bbm/ui/cl;->f()J
move-result-wide v3
sub-long/2addr v1, v3
const-wide/16 v3, 0x1f40
cmp-long v1, v1, v3
if-lez v1, :cond_4
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/cl;->a(J)V
invoke-virtual {p0}, Lcom/bbm/ui/ObservingImageView;->invalidate()V
goto :goto_4
.end method
.method public getObservableImage()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->a:Lcom/bbm/j/r;
return-object v0
.end method
.method protected onAttachedToWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
return-void
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 12
const-wide/16 v8, 0x0
const/4 v7, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/ObservingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_53
instance-of v1, v0, Lcom/bbm/ui/cl;
if-eqz v1, :cond_53
check-cast v0, Lcom/bbm/ui/cl;
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v1
invoke-virtual {v0}, Lcom/bbm/ui/cl;->f()J
move-result-wide v3
cmp-long v3, v3, v8
if-nez v3, :cond_1e
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/cl;->a(J)V
:cond_1e
iget-boolean v3, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
if-eqz v3, :cond_31
iget-boolean v3, p0, Lcom/bbm/ui/ObservingImageView;->c:Z
if-eqz v3, :cond_65
invoke-virtual {v0}, Lcom/bbm/ui/cl;->f()J
move-result-wide v3
sub-long/2addr v1, v3
const-wide/16 v3, 0x1f40
cmp-long v1, v1, v3
if-lez v1, :cond_65
:cond_31
iget-boolean v1, p0, Lcom/bbm/ui/ObservingImageView;->f:Z
if-nez v1, :cond_53
:try_start_35
invoke-virtual {v0}, Lcom/bbm/ui/cl;->d()Landroid/graphics/Bitmap;
move-result-object v1
const/4 v0, 0x0
if-eqz v1, :cond_4d
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
if-lez v0, :cond_57
if-lez v2, :cond_57
const/4 v3, 0x0
invoke-static {v1, v2, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
:goto_4d
:cond_4d
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Landroid/graphics/Bitmap;)V
:goto_50
:try_end_50
.catch Ljava/lang/OutOfMemoryError; {:try_start_35 .. :try_end_50} :catch_5c
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/ObservingImageView;->f:Z
:goto_53
:cond_53
invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V
return-void
:try_start_57
:cond_57
invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
:try_end_5a
.catch Ljava/lang/OutOfMemoryError; {:try_start_57 .. :try_end_5a} :catch_5c
move-result-object v0
goto :goto_4d
:catch_5c
move-exception v0
const-string v0, "Cannot stop animation"
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_50
:cond_65
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-virtual {v0}, Lcom/bbm/ui/cl;->e()I
move-result v3
int-to-long v3, v3
invoke-virtual {v0}, Lcom/bbm/ui/cl;->g()J
move-result-wide v5
cmp-long v5, v5, v8
if-eqz v5, :cond_7f
invoke-virtual {v0}, Lcom/bbm/ui/cl;->g()J
move-result-wide v5
add-long/2addr v5, v3
cmp-long v5, v1, v5
if-ltz v5, :cond_85
:cond_7f
invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/cl;->b(J)V
invoke-virtual {v0}, Lcom/bbm/ui/cl;->c()V
:cond_85
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->e:Landroid/os/Handler;
iget-object v1, p0, Lcom/bbm/ui/ObservingImageView;->g:Ljava/lang/Runnable;
invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
iput-boolean v7, p0, Lcom/bbm/ui/ObservingImageView;->f:Z
goto :goto_53
.end method
.method public setAnimationAllowed(Z)V
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/ObservingImageView;->b:Z
return-void
.end method
.method public setImageResource(I)V
.registers 2
invoke-virtual {p0, p1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(I)V
return-void
.end method
.method public setLimitedLengthAnimation(Z)V
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/ObservingImageView;->c:Z
return-void
.end method
.method public setObservableImage(I)V
.registers 4
:try_start_0
new-instance v0, Lcom/bbm/d/fd;
invoke-virtual {p0}, Lcom/bbm/ui/ObservingImageView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
:goto_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
const-string v0, "File transfer can\'t load image"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_10
.end method
.method public setObservableImage(Landroid/graphics/Bitmap;)V
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
invoke-virtual {p0}, Lcom/bbm/ui/ObservingImageView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p1}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
return-void
.end method
.method public setObservableImage(Lcom/bbm/d/fd;)V
.registers 3
new-instance v0, Lcom/bbm/util/cr;
invoke-direct {v0, p1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
return-void
.end method
.method public setObservableImage(Lcom/bbm/j/r;)V
.registers 3
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->a:Lcom/bbm/j/r;
if-eq p1, v0, :cond_e
iput-object p1, p0, Lcom/bbm/ui/ObservingImageView;->a:Lcom/bbm/j/r;
iget-object v0, p0, Lcom/bbm/ui/ObservingImageView;->d:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
:cond_e
return-void
.end method
.method public setObservableImage(Lcom/bbm/ui/cl;)V
.registers 4
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
invoke-direct {v1, p1}, Lcom/bbm/d/fd;-><init>(Lcom/bbm/ui/cl;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
return-void
.end method
.method public setObservableImage(Ljava/lang/String;)V
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/d/fd;
invoke-virtual {p0}, Lcom/bbm/ui/ObservingImageView;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p1}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
return-void
.end method