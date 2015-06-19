.class public final Lcom/userzoom/bs;
.super Landroid/webkit/WebViewClient;
.field private synthetic a:Lcom/userzoom/bw;
.field private synthetic b:Luserzoom/com/UzSurveyActivity;
.method public constructor <init>(Luserzoom/com/UzSurveyActivity;Lcom/userzoom/bw;)V
.registers 3
iput-object p1, p0, Lcom/userzoom/bs;->b:Luserzoom/com/UzSurveyActivity;
iput-object p2, p0, Lcom/userzoom/bs;->a:Lcom/userzoom/bw;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/bs;->b:Luserzoom/com/UzSurveyActivity;
invoke-static {v0, p2}, Luserzoom/com/UzSurveyActivity;->a(Luserzoom/com/UzSurveyActivity;Ljava/lang/String;)Ljava/lang/String;
const-string v0, "UzSurveyActivity"
const-string v1, "onPageFinished"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "UzSurveyActivity"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "lastUrl "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, 0x1
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/userzoom/bs;->b:Luserzoom/com/UzSurveyActivity;
invoke-static {v1}, Luserzoom/com/UzSurveyActivity;->a(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "UzSurveyActivity"
const-string v1, "onReceivedError"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/os/Message;
invoke-direct {v0}, Landroid/os/Message;-><init>()V
const/4 v1, -0x1
iput v1, v0, Landroid/os/Message;->what:I
iget-object v1, p0, Lcom/userzoom/bs;->b:Luserzoom/com/UzSurveyActivity;
invoke-static {v1}, Luserzoom/com/UzSurveyActivity;->a(Luserzoom/com/UzSurveyActivity;)Landroid/os/Handler;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
return-void
.end method
.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 6
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V
const-string v0, "UzSurveyActivity"
const-string v1, "ERROR SSL..."
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x1
const-string v1, "quit.aspx"
invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_13
iget-object v1, p0, Lcom/userzoom/bs;->b:Luserzoom/com/UzSurveyActivity;
iput-boolean v0, v1, Luserzoom/com/UzSurveyActivity;->a:Z
iget-object v1, p0, Lcom/userzoom/bs;->a:Lcom/userzoom/bw;
invoke-virtual {v1}, Lcom/userzoom/bw;->CloseAndSaveUrl()V
:goto_12
return v0
:cond_13
const/4 v0, 0x0
goto :goto_12
.end method