.class public Lcom/pinguo/camera360/lib/ui/WebViewActivity;
.super Landroid/app/Activity;
.source "WebViewActivity.java"
.implements Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;
.field public static final WEB_VIEW_HAS_TITLE_BAR:Ljava/lang/String; = "web_view_has_title_bar"
.field public static final WEB_VIEW_URL_KEY:Ljava/lang/String; = "web_view_url"
.field private mWebView:Landroid/webkit/WebView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
return-void
.end method
.method public onBackClick()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->finish()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/pinguo/camera360/lib/ui/WebViewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
const v3, 0x7f030065
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string/jumbo v4, "web_view_has_title_bar"
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_2c
const v3, 0x7f0a022e
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/pinguo/camera360/ui/TitleView;
invoke-virtual {v1, v5}, Lcom/pinguo/camera360/ui/TitleView;->setVisibility(I)V
const v3, 0x7f080376
invoke-virtual {v1, v3}, Lcom/pinguo/camera360/ui/TitleView;->setTiTleText(I)V
invoke-virtual {v1, p0}, Lcom/pinguo/camera360/ui/TitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TitleView$OnTitleViewClickListener;)V
:cond_2c
const v3, 0x7f0a022d
invoke-virtual {p0, v3}, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
check-cast v3, Landroid/webkit/WebView;
iput-object v3, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
new-instance v4, Lcom/pinguo/camera360/lib/ui/WebViewActivity$1;
invoke-direct {v4, p0}, Lcom/pinguo/camera360/lib/ui/WebViewActivity$1;-><init>(Lcom/pinguo/camera360/lib/ui/WebViewActivity;)V
invoke-virtual {v3, v4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string/jumbo v4, "web_view_url"
invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_63
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-nez v3, :cond_63
iget-object v3, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
:cond_63
const-string v1, " - Lcom/pinguo/camera360/lib/ui/WebViewActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 6
const/4 v2, 0x4
if-ne p1, v2, :cond_31
iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->canGoBack()Z
move-result v2
if-eqz v2, :cond_31
iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;
move-result-object v1
const-string/jumbo v2, "webview onkeydown"
invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->goBack()V
iget-object v2, p0, Lcom/pinguo/camera360/lib/ui/WebViewActivity;->mWebView:Landroid/webkit/WebView;
invoke-virtual {v2}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2f
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2f
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v2
:goto_2e
return v2
:cond_2f
const/4 v2, 0x1
goto :goto_2e
:cond_31
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v2
goto :goto_2e
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/lib/ui/WebViewActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onPause()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/lib/ui/WebViewActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/pinguo/camera360/lib/ui/WebViewActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V
const-string v1, " - Lcom/pinguo/camera360/lib/ui/WebViewActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onRightBtnClick()V
.registers 1
return-void
.end method