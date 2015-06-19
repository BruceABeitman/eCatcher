.class  Lcom/twidroid/TwidroidClient$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/l;
.field final synthetic a:Lcom/twidroid/TwidroidClient$3$1;
.method constructor <init>(Lcom/twidroid/TwidroidClient$3$1;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$3$1$1;->a:Lcom/twidroid/TwidroidClient$3$1;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
new-instance v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
iget-object v1, p0, Lcom/twidroid/TwidroidClient$3$1$1;->a:Lcom/twidroid/TwidroidClient$3$1;
iget-object v1, v1, Lcom/twidroid/TwidroidClient$3$1;->a:Lcom/twidroid/TwidroidClient$3;
iget-object v1, v1, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
new-instance v2, Lcom/twidroid/TwidroidClient$3$1$1$1;
invoke-direct {v2, p0, v0}, Lcom/twidroid/TwidroidClient$3$1$1$1;-><init>(Lcom/twidroid/TwidroidClient$3$1$1;Landroid/graphics/drawable/BitmapDrawable;)V
invoke-virtual {v1, v2}, Lcom/twidroid/TwidroidClient;->runOnUiThread(Ljava/lang/Runnable;)V
return-void
.end method