.class Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;


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

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$6(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopItemAdapter:Lcom/pinguo/camera360/base/BaseArrayAdapter;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$7(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/base/BaseArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;->this$1:Lcom/pinguo/camera360/shop/activity/StoreActivity$4;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)Lcom/pinguo/camera360/shop/activity/StoreActivity;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;

    move-result-object v1

    invoke-interface {v1}, Lcom/pinguo/camera360/shop/model/IShopModel;->loadProductList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/base/BaseArrayAdapter;->set(Ljava/util/List;)V

    return-void
.end method

.method public onProgress(I)V
    .registers 2

    return-void
.end method
