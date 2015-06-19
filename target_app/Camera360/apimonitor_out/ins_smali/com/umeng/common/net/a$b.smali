.class  Lcom/umeng/common/net/a$b;
.super Landroid/os/Handler;
.source "DownloadAgent.java"
.field final synthetic a:Lcom/umeng/common/net/a;
.method constructor <init>(Lcom/umeng/common/net/a;)V
.registers 2
iput-object p1, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-direct {p0}, Landroid/os/Handler;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)V
.registers 7
:try_start_0
invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "DownloadAgent.handleMessage("
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p1, Landroid/os/Message;->what:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "): "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_d4
:pswitch_25
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
:cond_28
:goto_28
return-void
:pswitch_29
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
iget v1, p1, Landroid/os/Message;->arg1:I
invoke-interface {v0, v1}, Lcom/umeng/common/net/k;->a(I)V
:try_end_3c
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3c} :catch_3d
goto :goto_28
:catch_3d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "DownloadAgent.handleMessage("
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v3, p1, Landroid/os/Message;->what:I
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, "): "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_28
:pswitch_6a
:try_start_6a
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->j(Lcom/umeng/common/net/a;)Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v1}, Lcom/umeng/common/net/a;->k(Lcom/umeng/common/net/a;)Landroid/content/ServiceConnection;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
if-eqz v0, :cond_28
iget v0, p1, Landroid/os/Message;->arg1:I
const/4 v1, 0x1
if-eq v0, v1, :cond_8b
iget v0, p1, Landroid/os/Message;->arg1:I
const/4 v1, 0x3
if-ne v0, v1, :cond_a4
:cond_8b
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
iget v1, p1, Landroid/os/Message;->arg1:I
iget v2, p1, Landroid/os/Message;->arg2:I
invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;
move-result-object v3
const-string/jumbo v4, "filename"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-interface {v0, v1, v2, v3}, Lcom/umeng/common/net/k;->a(IILjava/lang/String;)V
goto :goto_28
:cond_a4
iget v0, p1, Landroid/os/Message;->arg1:I
const/4 v1, 0x2
if-ne v0, v1, :cond_bb
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
iget v1, p1, Landroid/os/Message;->arg1:I
iget v2, p1, Landroid/os/Message;->arg2:I
const-string/jumbo v3, ""
invoke-interface {v0, v1, v2, v3}, Lcom/umeng/common/net/k;->a(IILjava/lang/String;)V
goto/16 :goto_28
:cond_bb
iget-object v0, p0, Lcom/umeng/common/net/a$b;->a:Lcom/umeng/common/net/a;
invoke-static {v0}, Lcom/umeng/common/net/a;->a(Lcom/umeng/common/net/a;)Lcom/umeng/common/net/k;
move-result-object v0
const/4 v1, 0x0
const/4 v2, 0x0
const/4 v3, 0x0
invoke-interface {v0, v1, v2, v3}, Lcom/umeng/common/net/k;->a(IILjava/lang/String;)V
invoke-static {}, Lcom/umeng/common/net/a;->b()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "DownloadAgent.handleMessage(DownloadingService.DOWNLOAD_COMPLETE_FAIL): "
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:try_end_d1
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_d1} :catch_3d
goto/16 :goto_28
nop
:pswitch_data_d4
.packed-switch 0x3
:pswitch_29
:pswitch_25
:pswitch_6a
.end packed-switch
.end method