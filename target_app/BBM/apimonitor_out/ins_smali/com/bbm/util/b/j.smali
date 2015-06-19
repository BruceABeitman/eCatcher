.class final Lcom/bbm/util/b/j;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageWorker.java"
.field final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/bbm/util/b/k;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/util/b/j;->a:Ljava/lang/ref/WeakReference;
return-void
.end method