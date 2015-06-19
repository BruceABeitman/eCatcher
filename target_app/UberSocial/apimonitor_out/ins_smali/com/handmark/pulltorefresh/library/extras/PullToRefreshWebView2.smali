.class public Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;
.source "SourceFile"
.field static final o:Ljava/lang/String; = "ptr"
.field static final p:Ljava/lang/String; = "javascript:isReadyForPullDown();"
.field static final q:Ljava/lang/String; = "javascript:isReadyForPullUp();"
.field private r:Lcom/handmark/pulltorefresh/library/extras/a;
.field private final s:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final t:Ljava/util/concurrent/atomic/AtomicBoolean;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0, p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->s:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->t:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->s:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->t:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
.registers 5
const/4 v1, 0x0
invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;-><init>(Landroid/content/Context;Lcom/handmark/pulltorefresh/library/g;)V
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->s:Ljava/util/concurrent/atomic/AtomicBoolean;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->t:Ljava/util/concurrent/atomic/AtomicBoolean;
return-void
.end method
.method static synthetic a(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->t:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic b(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->s:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method protected synthetic a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
move-result-object v0
return-object v0
.end method
.method protected b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
.registers 6
invoke-super {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshWebView;->b(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/webkit/WebView;
move-result-object v0
new-instance v1, Lcom/handmark/pulltorefresh/library/extras/a;
invoke-direct {v1, p0}, Lcom/handmark/pulltorefresh/library/extras/a;-><init>(Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;)V
iput-object v1, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->r:Lcom/handmark/pulltorefresh/library/extras/a;
iget-object v1, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->r:Lcom/handmark/pulltorefresh/library/extras/a;
const-string v2, "ptr"
invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
return-object v0
.end method
.method protected k()Z
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
const-string v1, "javascript:isReadyForPullDown();"
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->s:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method
.method protected l()Z
.registers 3
invoke-virtual {p0}, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->getRefreshableView()Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
const-string v1, "javascript:isReadyForPullUp();"
invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/PullToRefreshWebView2;->t:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
move-result v0
return v0
.end method