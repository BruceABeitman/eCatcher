.class  Lcom/pinguo/album/surpport/GLPullToRefreshView$1;
.super Ljava/lang/Object;
.source "GLPullToRefreshView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;
.method constructor <init>(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$1;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$1;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;
#getter for: Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollFinishedListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;
invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->access$0(Lcom/pinguo/album/surpport/GLPullToRefreshView;)Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;
move-result-object v0
invoke-interface {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V
return-void
.end method