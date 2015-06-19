.class Lcom/pinguo/camera360/shop/activity/StoreActivity$3;
.super Ljava/lang/Object;
.source "StoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


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
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/shop/activity/StoreActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/shop/activity/StoreActivity$3;->this$0:Lcom/pinguo/camera360/shop/activity/StoreActivity;

    #getter for: Lcom/pinguo/camera360/shop/activity/StoreActivity;->mShopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;
    invoke-static {v1}, Lcom/pinguo/camera360/shop/activity/StoreActivity;->access$2(Lcom/pinguo/camera360/shop/activity/StoreActivity;)Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    move-result-object v0

    iget-object v1, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    iget-object v2, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$Store;->storeEffectBannerShow(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
