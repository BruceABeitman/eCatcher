.class public final Lcom/instagram/simplewebview/SimpleWebViewFragment;
.super Lcom/instagram/base/a/b;
.source "SimpleWebViewFragment.java"
.implements Lcom/instagram/a/b;
.field private a:Landroid/webkit/WebView;
.field private b:Landroid/content/BroadcastReceiver;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/base/a/b;-><init>()V
new-instance v0, Lcom/instagram/simplewebview/a;
invoke-direct {v0, p0}, Lcom/instagram/simplewebview/a;-><init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;)V
iput-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->b:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic a(Lcom/instagram/simplewebview/SimpleWebViewFragment;)Z
.registers 2
invoke-direct {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->c()Z
move-result v0
return v0
.end method
.method private c()Z
.registers 3
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "SimpleWebViewFragment.ARGUMENT_SHOW_REFRESH"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method public final E()V
.registers 5
invoke-super {p0}, Lcom/instagram/base/a/b;->E()V
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->b:Landroid/content/BroadcastReceiver;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "ActionBarService.action_bar_refresh_click"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final F()V
.registers 3
invoke-super {p0}, Lcom/instagram/base/a/b;->F()V
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/a/e;->a(Landroid/content/Context;)Landroid/support/v4/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->b:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/a/e;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final G()V
.registers 2
iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
:cond_c
invoke-super {p0}, Lcom/instagram/base/a/b;->G()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 4
iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/base/a/b;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "SimpleWebViewFragment.ARGUMENT_URL"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v0, 0x0
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;
move-result-object v2
const-string v3, "SimpleWebViewFragment.ARGUMENT_LOAD_SAME_HOST"
invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_22
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v0
:cond_22
new-instance v2, Lcom/instagram/ui/widget/webview/IgWebView;
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/ui/widget/webview/IgWebView;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
iget-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setScrollBarStyle(I)V
iget-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
invoke-static {v1}, Lcom/instagram/api/h/b;->a(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_4a
invoke-static {}, Lcom/instagram/api/useragent/a;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
:cond_4a
iget-object v2, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
new-instance v3, Lcom/instagram/simplewebview/b;
invoke-direct {v3, p0, v0}, Lcom/instagram/simplewebview/b;-><init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "SimpleWebViewFragment.ARGUMENT_TITLE"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->c()Z
move-result v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(Z)V
invoke-virtual {p0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;
move-result-object v0
const-string v1, "SimpleWebViewFragment.ARGUMENT_TOGGLE_DISPLAY_BACK_BUTTON"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(Z)V
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a:Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
:cond_9
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "web_view"
return-object v0
.end method