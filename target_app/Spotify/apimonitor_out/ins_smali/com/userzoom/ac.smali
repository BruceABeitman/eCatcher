.class public final Lcom/userzoom/ac;
.super Landroid/webkit/WebViewClient;
.field private synthetic a:Luserzoom/com/InterceptDialog;
.method public constructor <init>(Luserzoom/com/InterceptDialog;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/ac;->a:Luserzoom/com/InterceptDialog;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
const-string v0, "InterceptDialog"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Resource Loaded: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v0, "InterceptDialog"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "onPageFinished  "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;
move-result-object v0
invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x1
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/userzoom/ac;->a:Luserzoom/com/InterceptDialog;
invoke-static {v1}, Luserzoom/com/InterceptDialog;->a(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "InterceptDialog"
const-string v1, "onReceivedError"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, -0x1
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/userzoom/ac;->a:Luserzoom/com/InterceptDialog;
invoke-static {v1}, Luserzoom/com/InterceptDialog;->a(Luserzoom/com/InterceptDialog;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method