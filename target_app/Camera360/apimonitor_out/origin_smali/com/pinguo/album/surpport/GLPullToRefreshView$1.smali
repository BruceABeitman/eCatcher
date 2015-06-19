.class Lcom/pinguo/album/surpport/GLPullToRefreshView$1;
.super Ljava/lang/Object;
.source "GLPullToRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/surpport/GLPullToRefreshView;->render(Lcom/pinguo/album/opengles/GLESCanvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;


# direct methods
.method constructor <init>(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$1;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$1;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    #getter for: Lcom/pinguo/album/surpport/GLPullToRefreshView;->mScrollFinishedListener:Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;
    invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->access$0(Lcom/pinguo/album/surpport/GLPullToRefreshView;)Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    return-void
.end method
