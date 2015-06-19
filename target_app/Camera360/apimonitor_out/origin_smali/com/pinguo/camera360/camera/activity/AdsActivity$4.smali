.class Lcom/pinguo/camera360/camera/activity/AdsActivity$4;
.super Ljava/lang/Object;
.source "AdsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/camera/activity/AdsActivity;->listviewchange(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/pinguo/camera360/camera/activity/AdsActivity;

.field private final synthetic val$shopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/camera/activity/AdsActivity;Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity$4;->this$0:Lcom/pinguo/camera360/camera/activity/AdsActivity;

    iput-object p2, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity$4;->val$shopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

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

    iget-object v1, p0, Lcom/pinguo/camera360/camera/activity/AdsActivity$4;->val$shopBannerAdapter:Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;

    invoke-virtual {v1, p3}, Lcom/pinguo/camera360/shop/adapter/ShopBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    move-result-object v0

    iget-object v1, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->areaId:Ljava/lang/String;

    iget-object v2, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/pinguo/camera360/lib/umeng/UmengStatistics$AppAd;->appAdBannerShow(Ljava/lang/String;Ljava/lang/String;)V

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
