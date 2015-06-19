.class  Lcom/umeng/newxp/view/V;
.super Landroid/webkit/WebChromeClient;
.source "FloatContentHelper.java"
.field final synthetic a:Lcom/umeng/newxp/view/T;
.method constructor <init>(Lcom/umeng/newxp/view/T;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 7
invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V
iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->a(Lcom/umeng/newxp/view/T;)Ljava/lang/Boolean;
move-result-object v1
monitor-enter v1
:try_start_a
iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->a(Lcom/umeng/newxp/view/T;)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_62
iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->b(Lcom/umeng/newxp/view/T;)Lcom/umeng/newxp/view/FloatDialogConfig;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->isDelay()Z
move-result v0
if-eqz v0, :cond_62
iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->b(Lcom/umeng/newxp/view/T;)Lcom/umeng/newxp/view/FloatDialogConfig;
move-result-object v0
invoke-virtual {v0}, Lcom/umeng/newxp/view/FloatDialogConfig;->getDelayProgress()I
move-result v0
if-lt p2, v0, :cond_62
iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->c(Lcom/umeng/newxp/view/T;)Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
iget-object v0, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
const/4 v2, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/newxp/view/T;->a(Lcom/umeng/newxp/view/T;Ljava/lang/Boolean;)V
invoke-static {}, Lcom/umeng/newxp/view/T;->b()Ljava/lang/String;
move-result-object v0
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "show dialog on web progress = "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/umeng/newxp/view/V;->a:Lcom/umeng/newxp/view/T;
invoke-static {v3}, Lcom/umeng/newxp/view/T;->b(Lcom/umeng/newxp/view/T;)Lcom/umeng/newxp/view/FloatDialogConfig;
move-result-object v3
invoke-virtual {v3}, Lcom/umeng/newxp/view/FloatDialogConfig;->getDelayProgress()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
:cond_62
monitor-exit v1
return-void
:catchall_64
move-exception v0
monitor-exit v1
:try_end_66
.catchall {:try_start_a .. :try_end_66} :catchall_64
throw v0
.end method