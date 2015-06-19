.class Lcom/twidroid/net/oauth/RequestTokenActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/oauth/RequestTokenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/WebView;

.field final synthetic b:Ld/a/e;

.field final synthetic c:Ld/a/d;

.field final synthetic d:Lcom/twidroid/net/oauth/RequestTokenActivity;


# direct methods
.method constructor <init>(Lcom/twidroid/net/oauth/RequestTokenActivity;Landroid/webkit/WebView;Ld/a/e;Ld/a/d;)V
    .registers 5

    iput-object p1, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;

    iput-object p2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->a:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->b:Ld/a/e;

    iput-object p4, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->c:Ld/a/d;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    const-string v0, "https://auth.twidroyd.com/success"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->a:Landroid/webkit/WebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->a:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;

    new-instance v1, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;

    iget-object v2, p0, Lcom/twidroid/net/oauth/RequestTokenActivity$1;->d:Lcom/twidroid/net/oauth/RequestTokenActivity;

    invoke-direct {v1, p0, v2, p2}, Lcom/twidroid/net/oauth/RequestTokenActivity$1$1;-><init>(Lcom/twidroid/net/oauth/RequestTokenActivity$1;Lcom/twidroid/net/oauth/RequestTokenActivity;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/twidroid/net/oauth/RequestTokenActivity;->a(Lcom/twidroid/net/oauth/RequestTokenActivity;Lcom/ubermedia/net/b/a;)Lcom/ubermedia/net/b/a;

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method
