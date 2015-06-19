.class Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;
.super Landroid/webkit/WebChromeClient;
.source "PullToRefreshWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .registers 4

    const/16 v0, 0x64

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$2;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->onRefreshComplete()V

    :cond_9
    return-void
.end method
