.class  Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "SourceFile"
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V
return-void
.end method
.method public onProgressChanged(Landroid/webkit/WebView;I)V
.registers 4
const/16 v0, 0x64
if-ne p2, v0, :cond_9
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->f()V
:cond_9
return-void
.end method