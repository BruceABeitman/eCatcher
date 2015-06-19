.class public final Lcom/userzoom/bl;
.super Landroid/webkit/WebViewClient;
.field private synthetic a:Luserzoom/com/UzEventsFeatureService;
.method public constructor <init>(Luserzoom/com/UzEventsFeatureService;)V
.registers 2
iput-object p1, p0, Lcom/userzoom/bl;->a:Luserzoom/com/UzEventsFeatureService;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
const-string v0, "UzEventsFeatureService"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "onPageFinished "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/userzoom/bl;->a:Luserzoom/com/UzEventsFeatureService;
invoke-static {v0}, Luserzoom/com/UzEventsFeatureService;->a(Luserzoom/com/UzEventsFeatureService;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_29
iget-object v0, p0, Lcom/userzoom/bl;->a:Luserzoom/com/UzEventsFeatureService;
invoke-static {}, Lcom/userzoom/ap;->c()Ljava/lang/String;
move-result-object v0
invoke-static {p1, v0}, Luserzoom/com/UzEventsFeatureService;->a(Landroid/webkit/WebView;Ljava/lang/String;)V
:goto_28
return-void
:cond_29
iget-object v0, p0, Lcom/userzoom/bl;->a:Luserzoom/com/UzEventsFeatureService;
invoke-static {v0}, Luserzoom/com/UzEventsFeatureService;->b(Luserzoom/com/UzEventsFeatureService;)V
goto :goto_28
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
const-string v0, "UzEventsFeatureService"
const-string v1, "onReceivedError"
invoke-static {v0, v1}, Lcom/userzoom/z;->b(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method