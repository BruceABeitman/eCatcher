.class public Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.source "PullToRefreshWebView.java"
.field private static final defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
.field private final defaultWebChromeClient:Landroid/webkit/WebChromeClient;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;
invoke-direct {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;-><init>()V
sput-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;
invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/webkit/WebView;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;
invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/webkit/WebView;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
.registers 5
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;
invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/webkit/WebView;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;Lcom/handmark/pulltorefresh/library/PullToRefreshBase$AnimationStyle;)V
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;
invoke-direct {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultOnRefreshListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;
invoke-virtual {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/webkit/WebView;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->defaultWebChromeClient:Landroid/webkit/WebChromeClient;
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V
return-void
.end method
.method protected bridge synthetic createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
move-result-object v0
return-object v0
.end method
.method protected createRefreshableView(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
.registers 6
sget v1, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0x9
if-lt v1, v2, :cond_11
new-instance v0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;
invoke-direct {v0, p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$InternalWebViewSDK9;-><init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
:goto_b
sget v1, Lcom/handmark/pulltorefresh/library/R$id;->webview:I
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V
return-object v0
:cond_11
new-instance v0, Landroid/webkit/WebView;
invoke-direct {v0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
goto :goto_b
.end method
.method public final getPullToRefreshScrollDirection()Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
.registers 2
sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;->VERTICAL:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Orientation;
return-object v0
.end method
.method protected isReadyForPullEnd()Z
.registers 4
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v1, Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getContentHeight()I
move-result v1
int-to-float v2, v1
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v1, Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getScale()F
move-result v1
mul-float/2addr v1, v2
invoke-static {v1}, Landroid/util/FloatMath;->floor(F)F
move-result v0
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v1, Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getScrollY()I
move-result v1
int-to-float v2, v1
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v1, Landroid/webkit/WebView;
invoke-virtual {v1}, Landroid/webkit/WebView;->getHeight()I
move-result v1
int-to-float v1, v1
sub-float v1, v0, v1
cmpl-float v1, v2, v1
if-ltz v1, :cond_30
const/4 v1, 0x1
:goto_2f
return v1
:cond_30
const/4 v1, 0x0
goto :goto_2f
.end method
.method protected isReadyForPullStart()Z
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
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
.method protected onPtrRestoreInstanceState(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrRestoreInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/webkit/WebView;
invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
return-void
.end method
.method protected onPtrSaveInstanceState(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->onPtrSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->mRefreshableView:Landroid/view/View;
check-cast v0, Landroid/webkit/WebView;
invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
return-void
.end method