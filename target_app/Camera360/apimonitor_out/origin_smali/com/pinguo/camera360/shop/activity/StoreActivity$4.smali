.class Lcom/pinguo/camera360/shop/activity/StoreActivity$4;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/shop/activity/StoreActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)Lcom/pinguo/camera360/shop/activity/StoreActivity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    return-object v0
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mStoreType:I
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$5(Lcom/pinguo/camera360/shop/activity/StoreActivity;)I

    move-result v0

    if-nez v0, :cond_f

    invoke-static {}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->getInstance()Lcom/pinguo/camera360/shop/model/EffectShopModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pinguo/camera360/shop/model/EffectShopModel;->updateFrontImage()V

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v0}, Lcom/pinguo/lib/network/NetworkUtils;->isAvailableNetWork(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$6(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$1;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$1;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$4;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopModel:Lcom/pinguo/camera360/shop/model/IShopModel;
    invoke-static {v0}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$0(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/model/IShopModel;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;

    invoke-direct {v1, p0}, Lcom/pinguo/camera360/shop/activity/StoreActivity$4$2;-><init>(Lcom/pinguo/camera360/shop/activity/StoreActivity$4;)V

    invoke-interface {v0, v1}, Lcom/pinguo/camera360/shop/model/IShopModel;->update(Lcom/pinguo/camera360/shop/model/IShopModel$IShopOperationCallback;)Z

    goto :goto_30
.end method
