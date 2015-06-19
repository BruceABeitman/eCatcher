.class final Lcom/userzoom/r;
.super Landroid/os/Handler;
.field private synthetic a:Lcom/userzoom/n;
.method constructor <init>(Lcom/userzoom/n;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 5
iget-object v0, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
invoke-static {}, Lcom/userzoom/n;->j()Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
iget-object v1, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
invoke-virtual {v1}, Lcom/userzoom/n;->a()Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
:goto_17
iget-object v0, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
const/4 v1, 0x0
iput-boolean v1, v0, Lcom/userzoom/n;->b:Z
return-void
:cond_1d
iget-object v0, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
iget-object v1, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
iget-object v2, p0, Lcom/userzoom/r;->a:Lcom/userzoom/n;
iget-object v2, v2, Lcom/userzoom/n;->f:Landroid/app/Activity;
invoke-static {v1, v2}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Landroid/app/Activity;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/n;->a(Lcom/userzoom/n;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
goto :goto_17
.end method