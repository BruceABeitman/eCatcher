.class public Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "SourceFile"


# static fields
.field private static final o:Lcom/handmark/pulltorefresh/library/j;


# instance fields
.field private final p:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;

    invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;-><init>()V

    sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->o:Lcom/handmark/pulltorefresh/library/j;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->o:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/j;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->o:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/j;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->o:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/j;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;Lcom/handmark/pulltorefresh/library/f;)V

    new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;

    invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->o:Lcom/handmark/pulltorefresh/library/j;

    invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/j;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->p:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .registers 4

    invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->a(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
    .registers 5

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_11

    new-instance v0, Lcom/handmark/pulltorefresh/library/x;

    invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/x;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_b
    sget v1, Lcom/handmark/pulltorefresh/library/ad;->webview:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    return-object v0

    :cond_11
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_b
.end method

.method protected b(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    return-void
.end method

.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/m;
    .registers 2

    sget-object v0, Lcom/handmark/pulltorefresh/library/m;->a:Lcom/handmark/pulltorefresh/library/m;

    return-object v0
.end method

.method protected k()Z
    .registers 2

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected l()Z
    .registers 4

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    int-to-float v1, v0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->floor(F)F

    move-result v1

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    int-to-float v2, v0

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->n:Landroid/view/View;

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float v0, v1, v0

    cmpl-float v0, v2, v0

    if-ltz v0, :cond_30

    const/4 v0, 0x1

    :goto_2f
    return v0

    :cond_30
    const/4 v0, 0x0

    goto :goto_2f
.end method
