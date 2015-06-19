.class  Lcom/twidroid/net/b/j;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "SourceFile"
.field private final a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/twidroid/net/b/k;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/twidroid/net/b/j;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public a()Lcom/twidroid/net/b/k;
.registers 2
iget-object v0, p0, Lcom/twidroid/net/b/j;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/net/b/k;
return-object v0
.end method