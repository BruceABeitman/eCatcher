.class final Lcom/facebook/b/l;
.super Landroid/webkit/WebViewClient;
.source "FbDialog.java"
.field final synthetic a:Lcom/facebook/b/j;
.method private constructor <init>(Lcom/facebook/b/j;)V
.registers 2
iput-object p1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/facebook/b/j;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/facebook/b/l;-><init>(Lcom/facebook/b/j;)V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->b(Lcom/facebook/b/j;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->c(Lcom/facebook/b/j;)Landroid/widget/FrameLayout;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->d(Lcom/facebook/b/j;)Landroid/webkit/WebView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->e(Lcom/facebook/b/j;)Landroid/widget/ImageView;
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
invoke-static {}, Lcom/facebook/b/m;->a()V
invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->b(Lcom/facebook/b/j;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
return-void
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 7
invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v0}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
move-result-object v0
new-instance v1, Lcom/facebook/b/a;
invoke-direct {v1, p3, p2, p4}, Lcom/facebook/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V
invoke-interface {v0, v1}, Lcom/facebook/b/e;->a(Lcom/facebook/b/a;)V
iget-object v0, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-virtual {v0}, Lcom/facebook/b/j;->dismiss()V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 8
const/4 v0, 0x1
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Redirect URL: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/b/m;->a()V
const-string v1, "fbconnect://success"
invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_62
invoke-static {p2}, Lcom/facebook/b/m;->a(Ljava/lang/String;)Landroid/os/Bundle;
move-result-object v2
const-string v1, "error"
invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_28
const-string v1, "error_type"
invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
:cond_28
if-nez v1, :cond_39
iget-object v1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v1}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
move-result-object v1
invoke-interface {v1, v2}, Lcom/facebook/b/e;->a(Landroid/os/Bundle;)V
:goto_33
iget-object v1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-virtual {v1}, Lcom/facebook/b/j;->dismiss()V
:goto_38
return v0
:cond_39
const-string v2, "access_denied"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_49
const-string v2, "OAuthAccessDeniedException"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_53
:cond_49
iget-object v1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v1}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
move-result-object v1
invoke-interface {v1}, Lcom/facebook/b/e;->a()V
goto :goto_33
:cond_53
iget-object v2, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v2}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
move-result-object v2
new-instance v3, Lcom/facebook/b/i;
invoke-direct {v3, v1}, Lcom/facebook/b/i;-><init>(Ljava/lang/String;)V
invoke-interface {v2, v3}, Lcom/facebook/b/e;->a(Lcom/facebook/b/i;)V
goto :goto_33
:cond_62
const-string v1, "fbconnect://cancel"
invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_79
iget-object v1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-static {v1}, Lcom/facebook/b/j;->a(Lcom/facebook/b/j;)Lcom/facebook/b/e;
move-result-object v1
invoke-interface {v1}, Lcom/facebook/b/e;->a()V
iget-object v1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-virtual {v1}, Lcom/facebook/b/j;->dismiss()V
goto :goto_38
:cond_79
const-string v1, "touch"
invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v1
if-eqz v1, :cond_83
const/4 v0, 0x0
goto :goto_38
:cond_83
iget-object v1, p0, Lcom/facebook/b/l;->a:Lcom/facebook/b/j;
invoke-virtual {v1}, Lcom/facebook/b/j;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_38
.end method