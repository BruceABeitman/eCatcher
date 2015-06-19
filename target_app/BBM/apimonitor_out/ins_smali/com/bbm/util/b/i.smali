.class public abstract Lcom/bbm/util/b/i;
.super Ljava/lang/Object;
.source "ImageWorker.java"
.field private a:Z
.field public b:Lcom/bbm/util/b/d;
.field protected c:Lcom/bbm/util/bo;
.field public d:Landroid/graphics/Bitmap;
.field public e:Z
.field protected f:Z
.field final g:Ljava/lang/Object;
.field protected h:I
.field protected i:I
.field public j:Z
.field protected final k:Ljava/lang/ref/WeakReference;
.method protected constructor <init>(Landroid/app/Activity;)V
.registers 4
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/bbm/util/b/i;->a:Z
iput-boolean v0, p0, Lcom/bbm/util/b/i;->e:Z
iput-boolean v0, p0, Lcom/bbm/util/b/i;->f:Z
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
iput-boolean v1, p0, Lcom/bbm/util/b/i;->j:Z
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public static a(Landroid/widget/ImageView;)Lcom/bbm/util/b/k;
.registers 3
if-eqz p0, :cond_15
invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
instance-of v1, v0, Lcom/bbm/util/b/j;
if-eqz v1, :cond_15
check-cast v0, Lcom/bbm/util/b/j;
iget-object v0, v0, Lcom/bbm/util/b/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/util/b/k;
:goto_14
return-object v0
:cond_15
const/4 v0, 0x0
goto :goto_14
.end method
.method private a(Ljava/lang/Object;Landroid/widget/ImageView;IIZ)V
.registers 13
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v2, 0x0
if-nez p1, :cond_6
:goto_5
:cond_5
return-void
:cond_6
if-lez p3, :cond_42
if-lez p4, :cond_42
move v0, v1
:goto_b
const-string v4, "Unsafe to decode images with a height or width less than or equal to zero %dW x %dH"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v2
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v1
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {v0, v4}, Lcom/bbm/util/fb;->a(ZLjava/lang/Object;)Z
iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v0, :cond_9f
iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;)Lcom/bbm/d/fd;
move-result-object v0
:goto_31
if-eqz v0, :cond_5a
instance-of v1, p2, Lcom/bbm/ui/ObservingImageView;
if-eqz v1, :cond_44
check-cast p2, Lcom/bbm/ui/ObservingImageView;
new-instance v1, Lcom/bbm/util/cr;
invoke-direct {v1, v0}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
invoke-virtual {p2, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
goto :goto_5
:cond_42
move v0, v2
goto :goto_b
:cond_44
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_58
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:goto_54
invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_5
:cond_58
move-object v0, v3
goto :goto_54
:cond_5a
invoke-static {p1, p2}, Lcom/bbm/util/b/i;->b(Ljava/lang/Object;Landroid/widget/ImageView;)Z
move-result v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_5
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_5
new-instance v4, Lcom/bbm/util/b/k;
invoke-direct {v4, p0, p2, p3, p4}, Lcom/bbm/util/b/k;-><init>(Lcom/bbm/util/b/i;Landroid/widget/ImageView;II)V
new-instance v5, Lcom/bbm/util/b/j;
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz p5, :cond_9c
:goto_8b
invoke-direct {v5, v0, v3, v4}, Lcom/bbm/util/b/j;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bbm/util/b/k;)V
invoke-virtual {p2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
sget-object v0, Lcom/bbm/util/b;->g:Ljava/util/concurrent/Executor;
new-array v1, v1, [Ljava/lang/Object;
aput-object p1, v1, v2
invoke-virtual {v4, v0, v1}, Lcom/bbm/util/b/k;->a(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/bbm/util/b;
goto/16 :goto_5
:cond_9c
iget-object v3, p0, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;
goto :goto_8b
:cond_9f
move-object v0, v3
goto :goto_31
.end method
.method private static b(Ljava/lang/Object;Landroid/widget/ImageView;)Z
.registers 4
invoke-static {p1}, Lcom/bbm/util/b/i;->a(Landroid/widget/ImageView;)Lcom/bbm/util/b/k;
move-result-object v1
if-eqz v1, :cond_17
monitor-enter v1
:try_start_7
invoke-static {v1}, Lcom/bbm/util/b/k;->a(Lcom/bbm/util/b/k;)Ljava/lang/Object;
move-result-object v0
monitor-exit v1
:try_end_c
.catchall {:try_start_7 .. :try_end_c} :catchall_19
if-eqz v0, :cond_14
invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1c
:cond_14
invoke-virtual {v1}, Lcom/bbm/util/b/k;->a()Z
:cond_17
const/4 v0, 0x1
:goto_18
return v0
:catchall_19
move-exception v0
monitor-exit v1
throw v0
:cond_1c
const/4 v0, 0x0
goto :goto_18
.end method
.method protected abstract a(Ljava/lang/Object;IILandroid/widget/ImageView$ScaleType;)Lcom/bbm/d/fd;
.end method
.method public final a()Lcom/bbm/util/bo;
.registers 2
iget-object v0, p0, Lcom/bbm/util/b/i;->c:Lcom/bbm/util/bo;
return-object v0
.end method
.method public final a(I)V
.registers 10
const/4 v7, 0x0
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_61
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_61
:try_start_17
iget v0, p0, Lcom/bbm/util/b/i;->i:I
if-lez v0, :cond_62
iget v0, p0, Lcom/bbm/util/b/i;->h:I
if-lez v0, :cond_62
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget v1, p0, Lcom/bbm/util/b/i;->h:I
iget v2, p0, Lcom/bbm/util/b/i;->i:I
new-instance v3, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/4 v4, 0x1
iput-boolean v4, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
new-instance v4, Landroid/graphics/Point;
iget v5, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I
invoke-direct {v4, v5, v6}, Landroid/graphics/Point;-><init>(II)V
new-instance v5, Landroid/graphics/Point;
invoke-direct {v5, v1, v2}, Landroid/graphics/Point;-><init>(II)V
invoke-static {v4, v5}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Point;Landroid/graphics/Point;)I
move-result v1
iput v1, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
invoke-static {}, Lcom/bbm/util/fb;->b()Z
move-result v1
if-eqz v1, :cond_58
const/4 v1, 0x0
invoke-static {v3, v1}, Lcom/bbm/util/b/h;->a(Landroid/graphics/BitmapFactory$Options;Lcom/bbm/util/b/d;)V
:cond_58
const/4 v1, 0x0
iput-boolean v1, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {v0, p1, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;
:goto_61
:cond_61
return-void
:cond_62
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;
:try_end_74
.catch Ljava/lang/OutOfMemoryError; {:try_start_17 .. :try_end_74} :catch_75
goto :goto_61
:catch_75
move-exception v0
iget v0, p0, Lcom/bbm/util/b/i;->i:I
if-lez v0, :cond_86
iget v0, p0, Lcom/bbm/util/b/i;->h:I
if-lez v0, :cond_86
const-string v0, "Cannot load resource image with best scale"
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_61
:cond_86
const-string v0, "Cannot load resource image without scale, maybe we should scale?"
new-array v1, v7, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_61
.end method
.method public final a(Landroid/app/Activity;)V
.registers 4
if-eqz p1, :cond_2e
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2e
const-string v0, "Image Worker - removing reference"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v0, :cond_2e
iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v0, p1}, Lcom/bbm/util/b/d;->a(Landroid/app/Activity;)V
:cond_2e
return-void
.end method
.method protected a(Landroid/widget/ImageView;Lcom/bbm/d/fd;Ljava/lang/Object;)V
.registers 9
instance-of v0, p1, Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_a
check-cast p1, Lcom/bbm/ui/ObservingImageView;
invoke-virtual {p1, p2}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/d/fd;)V
:goto_9
return-void
:cond_a
iget-boolean v0, p0, Lcom/bbm/util/b/i;->a:Z
if-eqz v0, :cond_37
invoke-virtual {p2}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v0
if-eqz v0, :cond_37
new-instance v0, Landroid/graphics/drawable/TransitionDrawable;
const/4 v1, 0x2
new-array v1, v1, [Landroid/graphics/drawable/Drawable;
const/4 v2, 0x0
new-instance v3, Landroid/graphics/drawable/ColorDrawable;
const v4, 0x106000d
invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-virtual {p2}, Lcom/bbm/d/fd;->b()Landroid/graphics/drawable/BitmapDrawable;
move-result-object v3
aput-object v3, v1, v2
invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
const/16 v1, 0xc8
invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V
goto :goto_9
:cond_37
invoke-static {p2}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_4b
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:goto_47
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_9
:cond_4b
const/4 v0, 0x0
goto :goto_47
.end method
.method public final a(Lcom/bbm/util/b/f;)V
.registers 3
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-static {p1, v0}, Lcom/bbm/util/b/d;->a(Lcom/bbm/util/b/f;Landroid/app/Activity;)Lcom/bbm/util/b/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
:cond_16
return-void
.end method
.method public final a(Lcom/bbm/util/bo;)V
.registers 2
iput-object p1, p0, Lcom/bbm/util/b/i;->c:Lcom/bbm/util/bo;
return-void
.end method
.method public a(Ljava/lang/Object;Landroid/widget/ImageView;)V
.registers 4
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, v0}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;Z)V
return-void
.end method
.method public final a(Ljava/lang/Object;Landroid/widget/ImageView;II)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;IIZ)V
return-void
.end method
.method public final a(Ljava/lang/Object;Landroid/widget/ImageView;Z)V
.registers 10
invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
if-lez v3, :cond_18
if-lez v4, :cond_18
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v5, p3
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;IIZ)V
:cond_17
:goto_17
return-void
:cond_18
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/util/b/i;->k:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I
iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I
move-object v0, p0
move-object v1, p1
move-object v2, p2
move v5, p3
invoke-direct/range {v0 .. v5}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;IIZ)V
goto :goto_17
.end method
.method public final b()V
.registers 3
iget-object v1, p0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
iput-boolean v0, p0, Lcom/bbm/util/b/i;->f:Z
iget-boolean v0, p0, Lcom/bbm/util/b/i;->f:Z
if-nez v0, :cond_f
iget-object v0, p0, Lcom/bbm/util/b/i;->g:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
:cond_f
monitor-exit v1
:try_end_10
.catchall {:try_start_4 .. :try_end_10} :catchall_11
return-void
:catchall_11
move-exception v0
monitor-exit v1
throw v0
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;
invoke-virtual {v0}, Lcom/bbm/util/b/d;->a()V
:cond_9
return-void
.end method