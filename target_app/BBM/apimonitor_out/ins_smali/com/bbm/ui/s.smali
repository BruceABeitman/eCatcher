.class final Lcom/bbm/ui/s;
.super Landroid/webkit/WebViewClient;
.source "BbmWebView.java"
.field final synthetic a:Lcom/bbm/ui/BbmWebView;
.method constructor <init>(Lcom/bbm/ui/BbmWebView;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/s;->a:Lcom/bbm/ui/BbmWebView;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_39
const/4 v2, 0x0
iget-object v0, p0, Lcom/bbm/ui/s;->a:Lcom/bbm/ui/BbmWebView;
invoke-virtual {v0}, Lcom/bbm/ui/BbmWebView;->getSupportedSchemeList()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_12
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_12
move v0, v1
:goto_25
if-eqz v0, :cond_39
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v0
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v4
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_39
return v1
:cond_3a
move v0, v2
goto :goto_25
.end method