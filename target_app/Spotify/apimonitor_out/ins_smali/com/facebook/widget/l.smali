.class final Lcom/facebook/widget/l;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/facebook/widget/i;
.method private constructor <init>(Lcom/facebook/widget/i;)V
.registers 2
iput-object p1, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/widget/i;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/widget/l;-><init>(Lcom/facebook/widget/i;)V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->b(Lcom/facebook/widget/i;)Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->c(Lcom/facebook/widget/i;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_15
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->d(Lcom/facebook/widget/i;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->e(Lcom/facebook/widget/i;)Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->f(Lcom/facebook/widget/i;)Landroid/widget/ImageView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 5
invoke-static {}, Lcom/facebook/internal/ai;->b()V
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->b(Lcom/facebook/widget/i;)Z
move-result v0
if-nez v0, :cond_17
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->c(Lcom/facebook/widget/i;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
:cond_17
return-void
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
new-instance v1, Lcom/facebook/FacebookDialogException;
invoke-direct {v1, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-static {v0, v1}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;Ljava/lang/Throwable;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V
return-void
.end method
.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 8
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
new-instance v1, Lcom/facebook/FacebookDialogException;
const/16 v2, -0xb
invoke-direct {v1, v3, v2, v3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-static {v0, v1}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;Ljava/lang/Throwable;)V
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 10
const/4 v4, 0x1
const/4 v3, -0x1
invoke-static {}, Lcom/facebook/internal/ai;->b()V
const-string v0, "fbconnect://success"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_82
invoke-static {p2}, Lcom/facebook/a/i;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v5
const-string v0, "error"
invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_1f
const-string v0, "error_type"
invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_1f
const-string v1, "error_msg"
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_2d
const-string v1, "error_description"
invoke-virtual {v5, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_2d
const-string v2, "error_code"
invoke-virtual {v5, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v6
if-nez v6, :cond_b6
:try_start_39
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_3c
.catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_3c} :catch_57
move-result v2
:goto_3d
invoke-static {v0}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_5a
invoke-static {v1}, Lcom/facebook/internal/ai;->a(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_5a
if-ne v2, v3, :cond_5a
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0, v5}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;Landroid/os/Bundle;)V
:goto_50
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V
move v0, v4
:goto_56
return v0
:catch_57
move-exception v2
move v2, v3
goto :goto_3d
:cond_5a
if-eqz v0, :cond_72
const-string v3, "access_denied"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_6c
const-string v3, "OAuthAccessDeniedException"
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_72
:cond_6c
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;)V
goto :goto_50
:cond_72
new-instance v3, Lcom/facebook/FacebookRequestError;
invoke-direct {v3, v2, v0, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
new-instance v2, Lcom/facebook/FacebookServiceException;
invoke-direct {v2, v3, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V
invoke-static {v0, v2}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;Ljava/lang/Throwable;)V
goto :goto_50
:cond_82
const-string v0, "fbconnect://cancel"
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_96
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-static {v0}, Lcom/facebook/widget/i;->a(Lcom/facebook/widget/i;)V
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-virtual {v0}, Lcom/facebook/widget/i;->dismiss()V
move v0, v4
goto :goto_56
:cond_96
const-string v0, "touch"
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_a0
const/4 v0, 0x0
goto :goto_56
:cond_a0
iget-object v0, p0, Lcom/facebook/widget/l;->a:Lcom/facebook/widget/i;
invoke-virtual {v0}, Lcom/facebook/widget/i;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
move v0, v4
goto :goto_56
:cond_b6
move v2, v3
goto :goto_3d
.end method