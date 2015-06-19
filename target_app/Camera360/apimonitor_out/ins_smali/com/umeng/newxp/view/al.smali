.class  Lcom/umeng/newxp/view/al;
.super Landroid/webkit/WebViewClient;
.source "LandingWebViewDialog.java"
.field final synthetic a:Lcom/umeng/newxp/view/LandingWebViewDialog;
.method constructor <init>(Lcom/umeng/newxp/view/LandingWebViewDialog;)V
.registers 2
iput-object p1, p0, Lcom/umeng/newxp/view/al;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/umeng/newxp/view/al;->a:Lcom/umeng/newxp/view/LandingWebViewDialog;
invoke-static {v0}, Lcom/umeng/newxp/view/LandingWebViewDialog;->b(Lcom/umeng/newxp/view/LandingWebViewDialog;)Landroid/content/Context;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "Oh no! "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method