.class Lcom/pinguo/album/surpport/GLPullToRefreshView$2;
.super Ljava/lang/Object;
.source "GLPullToRefreshView.java"

# interfaces
.implements Lcom/pinguo/album/surpport/GLPullToRefreshView$OnSmoothScrollFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/album/surpport/GLPullToRefreshView;->onRefreshing(Z)V
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

    iput-object p1, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$2;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSmoothScrollFinished()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/album/surpport/GLPullToRefreshView$2;->this$0:Lcom/pinguo/album/surpport/GLPullToRefreshView;

    #calls: Lcom/pinguo/album/surpport/GLPullToRefreshView;->callRefreshListener()V
    invoke-static {v0}, Lcom/pinguo/album/surpport/GLPullToRefreshView;->access$2(Lcom/pinguo/album/surpport/GLPullToRefreshView;)V

    return-void
.end method
