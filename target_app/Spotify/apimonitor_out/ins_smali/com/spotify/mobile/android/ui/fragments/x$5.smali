.class final Lcom/spotify/mobile/android/ui/fragments/x$5;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/x;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8
if-nez p2, :cond_9
:goto_8
:cond_8
return-void
:cond_9
invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/x;->d(Lcom/spotify/mobile/android/ui/fragments/x;)Lcom/spotify/mobile/android/util/webview/b;
move-result-object v2
invoke-virtual {v2, v0, v1}, Lcom/spotify/mobile/android/util/webview/b;->a(Landroid/net/Uri;Landroid/net/Uri;)Lcom/spotify/mobile/android/util/webview/action/b;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/webview/action/b;->a()V
goto :goto_8
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 6
const/4 v2, 0x0
const-string v0, "Page finished loading: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/ui/fragments/x;->c(Lcom/spotify/mobile/android/ui/fragments/x;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Ljava/lang/String;)V
return-void
.end method
.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 10
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const-string v1, "Page started loading: %s%s"
new-array v2, v5, [Ljava/lang/Object;
aput-object p2, v2, v3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->e(Lcom/spotify/mobile/android/ui/fragments/x;)Z
move-result v0
if-eqz v0, :cond_44
const-string v0, " (error)"
:goto_13
aput-object v0, v2, v4
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/x;->e(Lcom/spotify/mobile/android/ui/fragments/x;)Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/x;->b(Lcom/spotify/mobile/android/ui/fragments/x;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v3}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;Z)Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->c(Lcom/spotify/mobile/android/ui/fragments/x;)Z
move-result v0
if-nez v0, :cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->b(Lcom/spotify/mobile/android/ui/fragments/x;)I
move-result v0
const/4 v1, 0x3
if-eq v0, v1, :cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v5}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;I)V
:cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/x;->c(Lcom/spotify/mobile/android/ui/fragments/x;Z)V
return-void
:cond_44
const-string v0, ""
goto :goto_13
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v5, 0x3
const/4 v4, 0x1
const-string v0, "Error %d %s when loading: %s"
new-array v1, v5, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
aput-object p3, v1, v4
const/4 v2, 0x2
aput-object p4, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v5}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v4}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;Z)Z
return-void
.end method
.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.registers 8
const/4 v3, 0x1
const-string v0, "SSL error: %s"
new-array v1, v3, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
const/4 v1, 0x3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0, v3}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Lcom/spotify/mobile/android/ui/fragments/x;Z)Z
invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$5;->a:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/fragments/x;->a(Landroid/net/Uri;)Z
move-result v0
if-nez v0, :cond_f
invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_f
const/4 v0, 0x1
return v0
.end method