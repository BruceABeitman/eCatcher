.class  Lcom/twidroid/ui/a/am$2$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/Bitmap;
.field final synthetic b:Lcom/twidroid/ui/a/am$2;
.method constructor <init>(Lcom/twidroid/ui/a/am$2;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/am$2$1;->b:Lcom/twidroid/ui/a/am$2;
iput-object p2, p0, Lcom/twidroid/ui/a/am$2$1;->a:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/am$2$1;->b:Lcom/twidroid/ui/a/am$2;
iget-object v0, v0, Lcom/twidroid/ui/a/am$2;->a:Lcom/twidroid/ui/a/ao;
iget-object v0, v0, Lcom/twidroid/ui/a/ao;->m:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/twidroid/ui/a/am$2$1;->a:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
return-void
.end method