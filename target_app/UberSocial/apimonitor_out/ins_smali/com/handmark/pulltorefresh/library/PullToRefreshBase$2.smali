.class  Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$2;->a:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->requestLayout()V
return-void
.end method