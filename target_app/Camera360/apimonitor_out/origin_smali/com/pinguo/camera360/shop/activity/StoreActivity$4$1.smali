.class Lcom/pinguo/camera360/shop/activity/StoreActivity$4$1;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$6(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    const v0, 0x7f080324

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$1;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v1

    const/16 v2, 0x5dc

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/pinguo/lib/util/Util;->showToast(ILandroid/app/Activity;II)V

    return-void
.end method
