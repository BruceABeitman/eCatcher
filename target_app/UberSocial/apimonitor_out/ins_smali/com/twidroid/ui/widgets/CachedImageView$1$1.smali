.class  Lcom/twidroid/ui/widgets/CachedImageView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/Bitmap;
.field final synthetic b:Lcom/twidroid/ui/widgets/CachedImageView$1;
.method constructor <init>(Lcom/twidroid/ui/widgets/CachedImageView$1;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->b:Lcom/twidroid/ui/widgets/CachedImageView$1;
iput-object p2, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->a:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
const-string v0, "CachedImageView"
const-string v1, "Image downloaded: "
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->b:Lcom/twidroid/ui/widgets/CachedImageView$1;
iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/CachedImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->b:Lcom/twidroid/ui/widgets/CachedImageView$1;
iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView;->b:Lcom/twidroid/ui/widgets/d;
instance-of v0, v0, Lcom/twidroid/ui/widgets/d;
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->b:Lcom/twidroid/ui/widgets/CachedImageView$1;
iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;
iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView;->b:Lcom/twidroid/ui/widgets/d;
iget-object v1, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->b:Lcom/twidroid/ui/widgets/CachedImageView$1;
iget-object v1, v1, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;
invoke-interface {v0, v1}, Lcom/twidroid/ui/widgets/d;->a(Lcom/twidroid/ui/widgets/CachedImageView;)V
:cond_27
iget-object v0, p0, Lcom/twidroid/ui/widgets/CachedImageView$1$1;->b:Lcom/twidroid/ui/widgets/CachedImageView$1;
iget-object v0, v0, Lcom/twidroid/ui/widgets/CachedImageView$1;->a:Lcom/twidroid/ui/widgets/CachedImageView;
const/4 v1, 0x0
iput-object v1, v0, Lcom/twidroid/ui/widgets/CachedImageView;->a:Ljava/lang/String;
return-void
.end method