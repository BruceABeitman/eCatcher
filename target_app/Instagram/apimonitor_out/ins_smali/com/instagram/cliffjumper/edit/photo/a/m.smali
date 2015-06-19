.class final Lcom/instagram/cliffjumper/edit/photo/a/m;
.super Landroid/os/Handler;
.source "PhotoFilterFragment.java"
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 6
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x1
if-ne v0, v1, :cond_18
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
sget v2, Lcom/facebook/az;->loading:I
invoke-virtual {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Ljava/lang/String;)V
:cond_17
:goto_17
return-void
:cond_18
iget v0, p1, Landroid/os/Message;->what:I
const/4 v1, 0x4
if-ne v0, v1, :cond_17
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/a;->U()Ljava/lang/Class;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->b(Lcom/instagram/cliffjumper/edit/photo/a/a;)J
move-result-wide v2
sub-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/m;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
goto :goto_17
.end method