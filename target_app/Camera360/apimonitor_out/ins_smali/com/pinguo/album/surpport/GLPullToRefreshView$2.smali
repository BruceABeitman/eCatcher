.class  Lcom/pinguo/album/surpport/GLPullToRefreshView$2;
.super Ljava/lang/Object;
.source "GLPullToRefreshView.java"
.implements Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;
.field final synthetic this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;
.method constructor <init>(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$2;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onSmoothScrollFinished()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$2;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;
#calls: Lcom/pinguo/album/surpport/GLPullToRefreshView;->callRefreshListener()V
invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->access$2(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V
return-void
.end method