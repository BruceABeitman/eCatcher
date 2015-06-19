.class final Lcom/facebook/widget/n;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.java"
.field final synthetic a:Lcom/facebook/widget/h;
.method private constructor <init>(Lcom/facebook/widget/h;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/h;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/n;-><init>(Lcom/facebook/widget/h;)V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->b(Lcom/facebook/widget/h;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->c(Lcom/facebook/widget/h;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_15
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->d(Lcom/facebook/widget/h;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->e(Lcom/facebook/widget/h;)Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->f(Lcom/facebook/widget/h;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 6
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Webview loading URL: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/g/t;->a()V
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->b(Lcom/facebook/widget/h;)Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->c(Lcom/facebook/widget/h;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_21
return-void
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
new-instance v1, Lcom/facebook/y;
invoke-direct {v1, p3, p2, p4}, Lcom/facebook/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-static {v0, v1}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V
return-void
.end method
.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 8
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
new-instance v1, Lcom/facebook/y;
const/16 v2, -0xb
invoke-direct {v1, v3, v2, v3}, Lcom/facebook/y;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-static {v0, v1}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 10
const/4 v4, 0x1
const/4 v3, -0x1
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Redirect URL: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/g/t;->a()V
const-string v0, "fbconnect://success"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8c
invoke-static {p2}, Lcom/facebook/b/m;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v5
const-string v0, "error"
invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_29
const-string v0, "error_type"
invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_29
const-string v1, "error_msg"
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_37
const-string v1, "error_description"
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_37
const-string v2, "error_code"
invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_c0
:try_start_43
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_46
.catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_46} :catch_61
move-result v2
:goto_47
invoke-static {v0}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_64
invoke-static {v1}, Lcom/facebook/g/t;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_64
if-ne v2, v3, :cond_64
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0, v5}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Landroid/os/Bundle;)V
:goto_5a
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V
move v0, v4
:goto_60
return v0
:catch_61
move-exception v2
move v2, v3
goto :goto_47
:cond_64
if-eqz v0, :cond_7c
const-string v3, "access_denied"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_76
const-string v3, "OAuthAccessDeniedException"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_7c
:cond_76
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V
goto :goto_5a
:cond_7c
new-instance v3, Lcom/facebook/ac;
invoke-direct {v3, v2, v0, v1}, Lcom/facebook/ac;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
new-instance v2, Lcom/facebook/af;
invoke-direct {v2, v3, v1}, Lcom/facebook/af;-><init>(Lcom/facebook/ac;Ljava/lang/String;)V
invoke-static {v0, v2}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;Ljava/lang/Throwable;)V
goto :goto_5a
:cond_8c
const-string v0, "fbconnect://cancel"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_a0
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-static {v0}, Lcom/facebook/widget/h;->a(Lcom/facebook/widget/h;)V
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->dismiss()V
move v0, v4
goto :goto_60
:cond_a0
const-string v0, "touch"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_aa
const/4 v0, 0x0
goto :goto_60
:cond_aa
iget-object v0, p0, Lcom/facebook/widget/n;->a:Lcom/facebook/widget/h;
invoke-virtual {v0}, Lcom/facebook/widget/h;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
move v0, v4
goto :goto_60
:cond_c0
move v2, v3
goto :goto_47
.end method