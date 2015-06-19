.class  Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;
.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.method constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.registers 2
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSmoothScrollFinished()V
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$1;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
#calls: Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->callRefreshListener()V
invoke-static {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$4(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
return-void
.end method