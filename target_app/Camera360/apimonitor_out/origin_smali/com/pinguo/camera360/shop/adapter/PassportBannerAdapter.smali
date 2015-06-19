.class public Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;
.super Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
.source "PassportBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseCycleArrayAdapter",
        "<",
        "Lcom/pinguo/camera360/adv/AdvertisementModel$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mBannerRate:F


# direct methods
.method public constructor <init>(F)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->mBannerRate:F

    return-void
.end method


# virtual methods
.method public getAutoScrollTime(I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    move-result-object v0

    iget v0, v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->interval:I

    mul-int/lit16 v0, v0, 0x3e8

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public getCount()I
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getRealCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_b

    const v0, 0x7fffffff

    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getRealCount()I

    move-result v0

    goto :goto_a
.end method

.method public getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;
    .registers 3

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getRealCount()I

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getRealCount()I

    move-result v0

    rem-int/2addr p1, v0

    :cond_b
    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    move-result-object v0

    return-object v0
.end method

.method public getRealCount()I
    .registers 2

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->getItem(I)Lcom/pinguo/camera360/adv/AdvertisementModel$Item;

    move-result-object v1

    if-nez p2, :cond_24

    new-instance v0, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget v2, p0, Lcom/pinguo/camera360/shop/adapter/PassportBannerAdapter;->mBannerRate:F

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->setRate(F)V

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v2}, Lcom/pinguo/camera360/lib/ui/FixedRateImageLoaderView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    move-object p2, v0

    :cond_24
    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v2, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    if-eqz v2, :cond_38

    iget-object v2, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    :cond_38
    move-object v2, p2

    check-cast v2, Landroid/widget/ImageView;

    iget v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgDefault:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_40
    return-object p2

    :cond_41
    move-object v2, p2

    check-cast v2, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    const v3, 0x7f020293

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setDefaultImage(I)V

    move-object v2, p2

    check-cast v2, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;

    iget-object v3, v1, Lcom/pinguo/camera360/adv/AdvertisementModel$Item;->imgUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pinguo/camera360/lib/ui/ImageLoaderView;->setImageUrl(Ljava/lang/String;)V

    goto :goto_40
.end method
