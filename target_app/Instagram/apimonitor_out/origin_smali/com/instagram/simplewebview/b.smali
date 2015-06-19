.class final Lcom/instagram/simplewebview/b;
.super Landroid/webkit/WebViewClient;
.source "SimpleWebViewFragment.java"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instagram/simplewebview/SimpleWebViewFragment;


# direct methods
.method constructor <init>(Lcom/instagram/simplewebview/SimpleWebViewFragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    iput-object p2, p0, Lcom/instagram/simplewebview/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 8

    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string v0, "file:///android_asset/webview_error.html"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    const-string v0, "javascript:document.getElementById(\"main\").innerHTML=\"<h3>%s</h3>\""

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v3}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->o()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/facebook/az;->request_error:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_26
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "file:///android_asset/webview_error.html"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->a:Ljava/lang/String;

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    move v0, v1

    :goto_19
    return v0

    :cond_1a
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v3, "instagram"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "checkpoint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/dismiss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_51

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    :cond_4f
    move v0, v1

    goto :goto_19

    :cond_51
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "browser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "/dismiss"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "SimpleWebViewFragment.ARGUMENT_DELEGATE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;

    if-eqz v0, :cond_7e

    iget-object v3, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-interface {v0, v3, v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment$DismissalDelegate;->a(Landroid/support/v4/app/Fragment;Landroid/net/Uri;)V

    :cond_7e
    const-string v0, "message"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_98

    iget-object v2, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->n()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_98
    iget-object v0, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-eqz v0, :cond_a9

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    :cond_a9
    move v0, v1

    goto/16 :goto_19

    :cond_ac
    invoke-virtual {v2}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v3, "browser"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e1

    const-string v0, "uri"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e1

    const-string v0, "uri"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->l()Landroid/support/v4/app/k;

    move-result-object v2

    if-eqz v2, :cond_de

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/instagram/simplewebview/b;->b:Lcom/instagram/simplewebview/SimpleWebViewFragment;

    invoke-virtual {v0, v2}, Lcom/instagram/simplewebview/SimpleWebViewFragment;->a(Landroid/content/Intent;)V

    :cond_de
    move v0, v1

    goto/16 :goto_19

    :cond_e1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_19
.end method
