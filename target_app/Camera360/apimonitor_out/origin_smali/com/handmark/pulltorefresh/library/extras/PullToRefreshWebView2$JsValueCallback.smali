.class final Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;
.super Ljava/lang/Object;
.source "PullToRefreshWebView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "JsValueCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;


# direct methods
.method constructor <init>(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)V
    .registers 2

    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isReadyForPullDownResponse(Z)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;

    #getter for: Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->mIsReadyForPullDown:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->access$1(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public isReadyForPullUpResponse(Z)V
    .registers 3

    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2$JsValueCallback;->this$0:Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;

    #getter for: Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->mIsReadyForPullUp:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->access$0(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
