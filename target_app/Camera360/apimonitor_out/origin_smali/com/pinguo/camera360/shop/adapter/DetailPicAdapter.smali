.class public Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;
.super Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;
.source "DetailPicAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/camera360/base/BaseCycleArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final ALWAYS_LOADING_URL:Ljava/lang/String; = "always_loading"

.field public static final LOADING_PICTURE_TAG:Ljava/lang/String; = "loading_picture_"

.field private static final PARA_AT_NAME:Ljava/lang/String; = "at"


# instance fields
.field private mListener:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;

.field private mType:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseCycleArrayAdapter;-><init>()V

    iput p1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mType:I

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;)Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;

    return-object v0
.end method

.method private static getUrlArgs(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x1

    const-string/jumbo v6, "\\?"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    array-length v6, v5

    if-le v6, v8, :cond_1d

    aget-object v2, v5, v8

    const-string/jumbo v6, "&"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1a
    array-length v6, v1

    if-lt v3, v6, :cond_1e

    :cond_1d
    return-object v4

    :cond_1e
    aget-object v6, v1, v3

    const-string/jumbo v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aget-object v6, v0, v6

    aget-object v7, v0, v8

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a
.end method


# virtual methods
.method public getAutoScrollTime(I)I
    .registers 3

    const v0, 0x7fffffff

    return v0
.end method

.method public getRealCount()I
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    if-nez p2, :cond_3e

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0300b7

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    iget v2, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_82

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;

    move-result-object v2

    sget-object v3, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;->BOTTOM_CROP:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;

    sget-object v4, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;->BOTTOM_FIT:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setFillType(Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;)V

    :cond_20
    :goto_20
    new-instance v2, Landroid/widget/Gallery$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->loading()V

    move-object p2, v1

    new-instance v2, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$1;-><init>(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;Lcom/pinguo/camera360/shop/view/LoadingPictureView;I)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageLoadingListener(Lcom/nostra13/universalimageloader/core/assist/ImageLoadingListener;)V

    new-instance v2, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;

    invoke-direct {v2, p0, v1, p1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$2;-><init>(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;Lcom/pinguo/camera360/shop/view/LoadingPictureView;I)V

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setOnReloadClickListener(Lcom/pinguo/camera360/shop/view/LoadingPictureView$OnReloadClickListener;)V

    :cond_3e
    move-object v1, p2

    check-cast v1, Lcom/pinguo/camera360/shop/view/LoadingPictureView;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setImageUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->getUrlArgs(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v3, "at"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string/jumbo v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {v1, v0}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setAtNameText(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->showAtNameText()V

    :cond_6e
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "loading_picture_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->setTag(Ljava/lang/Object;)V

    return-object p2

    :cond_82
    iget v2, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mType:I

    if-nez v2, :cond_20

    invoke-virtual {v1}, Lcom/pinguo/camera360/shop/view/LoadingPictureView;->getImageView()Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;

    move-result-object v2

    sget-object v3, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;->TOP_CROP:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;

    sget-object v4, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;->TOP_FIT:Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;

    invoke-virtual {v2, v3, v4}, Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView;->setFillType(Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$CorpType;Lcom/pinguo/camera360/lib/ui/CorpTopBottomImageLoaderView$FitType;)V

    goto :goto_20
.end method

.method public setListener(Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter;->mListener:Lcom/pinguo/camera360/shop/adapter/DetailPicAdapter$OnPictureLoadingFinishListener;

    return-void
.end method
