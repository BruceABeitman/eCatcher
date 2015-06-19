.class  Lcom/twidroid/ui/a/am$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/twidroid/net/l;
.field final synthetic a:Lcom/twidroid/ui/a/ao;
.field final synthetic b:Lcom/twidroid/ui/a/am;
.method constructor <init>(Lcom/twidroid/ui/a/am;Lcom/twidroid/ui/a/ao;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/am$2;->b:Lcom/twidroid/ui/a/am;
iput-object p2, p0, Lcom/twidroid/ui/a/am$2;->a:Lcom/twidroid/ui/a/ao;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iget-object v0, p0, Lcom/twidroid/ui/a/am$2;->b:Lcom/twidroid/ui/a/am;
iget-object v0, v0, Lcom/twidroid/ui/a/am;->d:Landroid/app/Activity;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/twidroid/ui/a/am$2;->b:Lcom/twidroid/ui/a/am;
iget-object v0, v0, Lcom/twidroid/ui/a/am;->d:Landroid/app/Activity;
new-instance v1, Lcom/twidroid/ui/a/am$2$1;
invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/a/am$2$1;-><init>(Lcom/twidroid/ui/a/am$2;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
:cond_12
return-void
.end method