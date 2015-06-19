.class  Lcom/facebook/widget/ba;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/ax;
.method private constructor <init>(Lcom/facebook/widget/ax;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/ax;Lcom/facebook/widget/ax$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/ba;-><init>(Lcom/facebook/widget/ax;)V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->b(Lcom/facebook/widget/ax;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->c(Lcom/facebook/widget/ax;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_15
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->d(Lcom/facebook/widget/ax;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->e(Lcom/facebook/widget/ax;)Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->f(Lcom/facebook/widget/ax;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 7
const-string v0, "FacebookSDK.WebDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Webview loading URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/b/p;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->b(Lcom/facebook/widget/ax;)Z
move-result v0
if-nez v0, :cond_2c
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->c(Lcom/facebook/widget/ax;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_2c
return-void
.end method
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
new-instance v1, Lcom/facebook/s;
invoke-direct {v1, p3, p2, p4}, Lcom/facebook/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-static {v0, v1}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V
return-void
.end method
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 8
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
new-instance v1, Lcom/facebook/s;
const/16 v2, -0xb
invoke-direct {v1, v3, v2, v3}, Lcom/facebook/s;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-static {v0, v1}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;Ljava/lang/Throwable;)V
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 10
const/4 v4, 0x1
const/4 v3, -0x1
const-string v0, "FacebookSDK.WebDialog"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Redirect URL: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/b/p;->b(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "fbconnect://success"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_97
invoke-static {p2}, Lcom/facebook/a/w;->b(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v5
const-string v0, "error"
invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_34
const-string v0, "error_type"
invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_34
const-string v1, "error_msg"
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_42
const-string v1, "error_description"
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_42
const-string v2, "error_code"
invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_cb
:try_start_4e
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_51
.catch Ljava/lang/NumberFormatException; {:try_start_4e .. :try_end_51} :catch_6c
move-result v2
:goto_52
invoke-static {v0}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_6f
invoke-static {v1}, Lcom/facebook/b/p;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_6f
if-ne v2, v3, :cond_6f
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0, v5}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;Landroid/os/Bundle;)V
:goto_65
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V
move v0, v4
:goto_6b
return v0
:catch_6c
move-exception v2
move v2, v3
goto :goto_52
:cond_6f
if-eqz v0, :cond_87
const-string v3, "access_denied"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_81
const-string v3, "OAuthAccessDeniedException"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_87
:cond_81
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;)V
goto :goto_65
:cond_87
new-instance v3, Lcom/facebook/w;
invoke-direct {v3, v2, v0, v1}, Lcom/facebook/w;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
new-instance v2, Lcom/facebook/aa;
invoke-direct {v2, v3, v1}, Lcom/facebook/aa;-><init>(Lcom/facebook/w;Ljava/lang/String;)V
invoke-static {v0, v2}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;Ljava/lang/Throwable;)V
goto :goto_65
:cond_97
const-string v0, "fbconnect://cancel"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_ab
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-static {v0}, Lcom/facebook/widget/ax;->a(Lcom/facebook/widget/ax;)V
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->dismiss()V
move v0, v4
goto :goto_6b
:cond_ab
const-string v0, "touch"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_b5
const/4 v0, 0x0
goto :goto_6b
:cond_b5
iget-object v0, p0, Lcom/facebook/widget/ba;->a:Lcom/facebook/widget/ax;
invoke-virtual {v0}, Lcom/facebook/widget/ax;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
move v0, v4
goto :goto_6b
:cond_cb
move v2, v3
goto :goto_52
.end method