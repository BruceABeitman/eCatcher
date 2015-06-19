.class Lcom/umeng/newxp/view/aS;
.super Landroid/webkit/WebViewClient;
.source "WapActivity.java"


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aL;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aL;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aS;->a:Lcom/umeng/newxp/view/aL;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/umeng/newxp/view/aS;->a:Lcom/umeng/newxp/view/aL;

    invoke-static {v0}, Lcom/umeng/newxp/view/aL;->d(Lcom/umeng/newxp/view/aL;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/umeng/newxp/view/aS;->a:Lcom/umeng/newxp/view/aL;

    invoke-static {v0}, Lcom/umeng/newxp/view/aL;->e(Lcom/umeng/newxp/view/aL;)Lcom/umeng/newxp/view/aU;

    move-result-object v0

    iget-boolean v0, v0, Lcom/umeng/newxp/view/aU;->a:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/umeng/newxp/view/aS;->a:Lcom/umeng/newxp/view/aL;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aL;->a()V

    :cond_19
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/umeng/newxp/view/aS;->a:Lcom/umeng/newxp/view/aL;

    invoke-static {v0}, Lcom/umeng/newxp/view/aL;->d(Lcom/umeng/newxp/view/aL;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/umeng/newxp/view/aS;->a:Lcom/umeng/newxp/view/aL;

    invoke-static {v0}, Lcom/umeng/newxp/view/aL;->f(Lcom/umeng/newxp/view/aL;)Landroid/content/Context;

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
    .registers 4

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
