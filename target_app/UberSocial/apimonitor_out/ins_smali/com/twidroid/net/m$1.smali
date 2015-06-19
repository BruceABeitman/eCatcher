.class  Lcom/twidroid/net/m$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/Bitmap;
.field final synthetic b:Lcom/twidroid/net/m;
.method constructor <init>(Lcom/twidroid/net/m;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/m$1;->b:Lcom/twidroid/net/m;
iput-object p2, p0, Lcom/twidroid/net/m$1;->a:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/net/m$1;->b:Lcom/twidroid/net/m;
invoke-static {v0}, Lcom/twidroid/net/m;->a(Lcom/twidroid/net/m;)Landroid/widget/ImageView;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/net/m$1;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method