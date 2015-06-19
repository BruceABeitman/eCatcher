.class final Lcom/handmark/pulltorefresh/library/PullToRefreshWebView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/j;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 3
invoke-virtual {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V
return-void
.end method