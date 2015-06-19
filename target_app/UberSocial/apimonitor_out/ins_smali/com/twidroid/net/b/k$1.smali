.class  Lcom/twidroid/net/b/k$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/l;
.field final synthetic a:Landroid/widget/ImageView;
.field final synthetic b:Lcom/twidroid/net/b/k;
.method constructor <init>(Lcom/twidroid/net/b/k;Landroid/widget/ImageView;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/net/b/k$1;->b:Lcom/twidroid/net/b/k;
iput-object p2, p0, Lcom/twidroid/net/b/k$1;->a:Landroid/widget/ImageView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/net/b/k$1;->a:Landroid/widget/ImageView;
new-instance v1, Lcom/twidroid/net/b/k$1$1;
invoke-direct {v1, p0, p1}, Lcom/twidroid/net/b/k$1$1;-><init>(Lcom/twidroid/net/b/k$1;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z
return-void
.end method