.class  Lcom/umeng/newxp/view/W;
.super Landroid/webkit/WebViewClient;
.source "FloatContentHelper.java"
.field final synthetic a:Lcom/umeng/newxp/view/T;
.field private final synthetic b:Landroid/webkit/WebView;
.method constructor <init>(Lcom/umeng/newxp/view/T;Landroid/webkit/WebView;)V
.registers 3
iput-object p1, p0, Lcom/umeng/newxp/view/W;->a:Lcom/umeng/newxp/view/T;
iput-object p2, p0, Lcom/umeng/newxp/view/W;->b:Landroid/webkit/WebView;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/umeng/newxp/view/W;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->e(Lcom/umeng/newxp/view/T;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/umeng/newxp/view/W;->a:Lcom/umeng/newxp/view/T;
iget-object v1, p0, Lcom/umeng/newxp/view/W;->b:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Lcom/umeng/newxp/view/T;->a(Landroid/webkit/WebView;)V
iget-object v0, p0, Lcom/umeng/newxp/view/W;->a:Lcom/umeng/newxp/view/T;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/umeng/newxp/view/T;->a(Lcom/umeng/newxp/view/T;Z)V
:cond_15
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 4
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
iget-object v0, p0, Lcom/umeng/newxp/view/W;->a:Lcom/umeng/newxp/view/T;
invoke-static {v0}, Lcom/umeng/newxp/view/T;->d(Lcom/umeng/newxp/view/T;)Landroid/content/Context;
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
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 6
invoke-static {}, Lcom/umeng/newxp/view/T;->b()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "OverrideUrl: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/umeng/common/Log;->c(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Landroid/content/Intent;
const-string/jumbo v1, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
iget-object v1, p0, Lcom/umeng/newxp/view/W;->a:Lcom/umeng/newxp/view/T;
invoke-static {v1}, Lcom/umeng/newxp/view/T;->d(Lcom/umeng/newxp/view/T;)Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const/4 v0, 0x1
return v0
.end method